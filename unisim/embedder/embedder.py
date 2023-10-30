"""
 Copyright 2023 Google LLC

 Licensed under the Apache License, Version 2.0 (the "License");
 you may not use this file except in compliance with the License.
 You may obtain a copy of the License at

      https://www.apache.org/licenses/LICENSE-2.0

 Unless required by applicable law or agreed to in writing, software
 distributed under the License is distributed on an "AS IS" BASIS,
 WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 See the License for the specific language governing permissions and
 limitations under the License.
 """
from abc import ABC, abstractmethod
from pathlib import Path

# typing
from typing import Any, Sequence, Tuple

import numpy as np

from .. import backend as B
from ..types import BatchEmbeddings, BatchGlobalEmbeddings, BatchPartialEmbeddings


class Embedder(ABC):
    "Convert inputs to embeddings suitable for indexing"

    def __init__(self, batch_size: int, model_id: str, verbose: int = 0) -> None:
        self.batch_size = batch_size
        self.model_id = model_id
        self.verbose = verbose

        # TODO (marinazh): host on cloud and download when needed instead
        fpath = Path(__file__)
        model_path = fpath.parent / "models" / self.model_id

        if self.verbose:
            print("[Loading model]")
            print(f"|-model_id: {model_id}")

        self.model = B.load_model(model_path, verbose=verbose)

    @property
    @abstractmethod
    def embedding_size(self):
        return NotImplementedError

    @abstractmethod
    def embed(self, inputs: Sequence[Any]) -> Tuple[BatchGlobalEmbeddings, BatchPartialEmbeddings]:
        """Compute embeddings for a batch of inputs

        Args:
            input:s the list modality input to be embedded
        Returns:
            Tuple[Embedding, Embeddings]: Inputs global embeddings,
            Input chunk embeddings (num_inputs, embedding_dim)
        """
        raise NotImplementedError

    def predict(self, data) -> BatchEmbeddings:
        "Run inference using the loaded model with the right framework"
        embeddings = []
        for idx in range(0, len(data), self.batch_size):
            batch = data[idx : idx + self.batch_size]
            batch_embs = B.predict(self.model, batch=batch)
            embeddings.extend(batch_embs)
        embeddings = np.asanyarray(embeddings)
        return embeddings
