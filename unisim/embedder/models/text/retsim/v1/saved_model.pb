śĆ
'Ü&
D
AddV2
x"T
y"T
z"T"
Ttype:
2	
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( 

BiasAdd

value"T	
bias"T
output"T""
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
,
Cos
x"T
y"T"
Ttype:

2
$
DisableCopyOnRead
resource
R
Einsum
inputs"T*N
output"T"
equationstring"
Nint(0"	
Ttype
,
Exp
x"T
y"T"
Ttype:

2
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
Ž
GatherV2
params"Tparams
indices"Tindices
axis"Taxis
output"Tparams"

batch_dimsint "
Tparamstype"
Tindicestype:
2	"
Taxistype:
2	
.
Identity

input"T
output"T"	
Ttype
9
	IdentityN

input2T
output2T"
T
list(type)(0
,
Log
x"T
y"T"
Ttype:

2
u
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
2	
>
Maximum
x"T
y"T
z"T"
Ttype:
2	

Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( ""
Ttype:
2	"
Tidxtype0:
2	

MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( 

Min

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
?
Mul
x"T
y"T
z"T"
Ttype:
2	
0
Neg
x"T
y"T"
Ttype:
2
	

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
ł
PartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
8
Pow
x"T
y"T
z"T"
Ttype:
2
	

Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( ""
Ttype:
2	"
Tidxtype0:
2	
f
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx" 
Tidxtype0:
2
	
@
ReadVariableOp
resource
value"dtype"
dtypetype
@
RealDiv
x"T
y"T
z"T"
Ttype:
2	
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
.
Rsqrt
x"T
y"T"
Ttype:

2
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
?
Select
	condition

t"T
e"T
output"T"	
Ttype
d
Shape

input"T&
output"out_typeíout_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
0
Sigmoid
x"T
y"T"
Ttype:

2
,
Sin
x"T
y"T"
Ttype:

2
[
Split
	split_dim

value"T
output"T*	num_split"
	num_splitint(0"	
Ttype

SplitV

value"T
size_splits"Tlen
	split_dim
output"T*	num_split"
	num_splitint(0"	
Ttype"
Tlentype0	:
2	
7
Square
x"T
y"T"
Ttype:
2	
Á
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ¨
@
StaticRegexFullMatch	
input

output
"
patternstring
÷
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
L

StringJoin
inputs*N

output"

Nint("
	separatorstring 
<
Sub
x"T
y"T
z"T"
Ttype:
2	

Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( ""
Ttype:
2	"
Tidxtype0:
2	
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
P
Unpack

value"T
output"T*num"
numint("	
Ttype"
axisint 

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 "serve*2.13.02v2.13.0-rc2-7-g1cb1a030a628Ü
w
similarity/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_namesimilarity/bias
p
#similarity/bias/Read/ReadVariableOpReadVariableOpsimilarity/bias*
_output_shapes	
:*
dtype0

similarity/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*"
shared_namesimilarity/kernel
y
%similarity/kernel/Read/ReadVariableOpReadVariableOpsimilarity/kernel* 
_output_shapes
:
*
dtype0
}
gau_1/dense_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*#
shared_namegau_1/dense_3/bias
v
&gau_1/dense_3/bias/Read/ReadVariableOpReadVariableOpgau_1/dense_3/bias*
_output_shapes	
:*
dtype0

gau_1/dense_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*%
shared_namegau_1/dense_3/kernel

(gau_1/dense_3/kernel/Read/ReadVariableOpReadVariableOpgau_1/dense_3/kernel* 
_output_shapes
:
*
dtype0
}
gau_1/dense_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*#
shared_namegau_1/dense_2/bias
v
&gau_1/dense_2/bias/Read/ReadVariableOpReadVariableOpgau_1/dense_2/bias*
_output_shapes	
:*
dtype0

gau_1/dense_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*%
shared_namegau_1/dense_2/kernel

(gau_1/dense_2/kernel/Read/ReadVariableOpReadVariableOpgau_1/dense_2/kernel* 
_output_shapes
:
*
dtype0
h

norm_scaleVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
norm_scale
a
norm_scale/Read/ReadVariableOpReadVariableOp
norm_scale*
_output_shapes
: *
dtype0
m
VariableVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*
shared_name
Variable
f
Variable/Read/ReadVariableOpReadVariableOpVariable*
_output_shapes
:	*
dtype0
q

Variable_1VarHandleOp*
_output_shapes
: *
dtype0*
shape:	*
shared_name
Variable_1
j
Variable_1/Read/ReadVariableOpReadVariableOp
Variable_1*
_output_shapes
:	*
dtype0
m

Variable_2VarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name
Variable_2
f
Variable_2/Read/ReadVariableOpReadVariableOp
Variable_2*
_output_shapes	
:*
dtype0
m

Variable_3VarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name
Variable_3
f
Variable_3/Read/ReadVariableOpReadVariableOp
Variable_3*
_output_shapes	
:*
dtype0
y
gau/dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_namegau/dense_1/bias
r
$gau/dense_1/bias/Read/ReadVariableOpReadVariableOpgau/dense_1/bias*
_output_shapes	
:*
dtype0

gau/dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*#
shared_namegau/dense_1/kernel
{
&gau/dense_1/kernel/Read/ReadVariableOpReadVariableOpgau/dense_1/kernel* 
_output_shapes
:
*
dtype0
u
gau/dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namegau/dense/bias
n
"gau/dense/bias/Read/ReadVariableOpReadVariableOpgau/dense/bias*
_output_shapes	
:*
dtype0
~
gau/dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*!
shared_namegau/dense/kernel
w
$gau/dense/kernel/Read/ReadVariableOpReadVariableOpgau/dense/kernel* 
_output_shapes
:
*
dtype0
l
norm_scale_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namenorm_scale_1
e
 norm_scale_1/Read/ReadVariableOpReadVariableOpnorm_scale_1*
_output_shapes
: *
dtype0
q

Variable_4VarHandleOp*
_output_shapes
: *
dtype0*
shape:	*
shared_name
Variable_4
j
Variable_4/Read/ReadVariableOpReadVariableOp
Variable_4*
_output_shapes
:	*
dtype0
q

Variable_5VarHandleOp*
_output_shapes
: *
dtype0*
shape:	*
shared_name
Variable_5
j
Variable_5/Read/ReadVariableOpReadVariableOp
Variable_5*
_output_shapes
:	*
dtype0
m

Variable_6VarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name
Variable_6
f
Variable_6/Read/ReadVariableOpReadVariableOp
Variable_6*
_output_shapes	
:*
dtype0
m

Variable_7VarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name
Variable_7
f
Variable_7/Read/ReadVariableOpReadVariableOp
Variable_7*
_output_shapes	
:*
dtype0
}
encoder_start/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*#
shared_nameencoder_start/bias
v
&encoder_start/bias/Read/ReadVariableOpReadVariableOpencoder_start/bias*
_output_shapes	
:*
dtype0

encoder_start/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*%
shared_nameencoder_start/kernel
~
(encoder_start/kernel/Read/ReadVariableOpReadVariableOpencoder_start/kernel*
_output_shapes
:	*
dtype0
f
	sin_scaleVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	sin_scale
_
sin_scale/Read/ReadVariableOpReadVariableOp	sin_scale*
_output_shapes
: *
dtype0

serving_default_input_1Placeholder*,
_output_shapes
:˙˙˙˙˙˙˙˙˙*
dtype0*!
shape:˙˙˙˙˙˙˙˙˙
Ě
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1	sin_scaleencoder_start/kernelencoder_start/biasnorm_scale_1gau/dense/kernelgau/dense/bias
Variable_5
Variable_4
Variable_7
Variable_6gau/dense_1/kernelgau/dense_1/bias
norm_scalegau_1/dense_2/kernelgau_1/dense_2/bias
Variable_1Variable
Variable_3
Variable_2gau_1/dense_3/kernelgau_1/dense_3/biassimilarity/kernelsimilarity/bias*#
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:˙˙˙˙˙˙˙˙˙*9
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *+
f&R$
"__inference_signature_wrapper_7130

NoOpNoOp
Ú
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB Bý

layer-0
layer_with_weights-0
layer-1
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
	_default_save_signature


signatures
#_self_saveable_object_factories*
'
#_self_saveable_object_factories* 
Ź
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer_with_weights-3
layer-5
layer-6
layer-7
layer_with_weights-4
layer-8
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
#_self_saveable_object_factories*
˛
0
1
2
 3
!4
"5
#6
$7
%8
&9
'10
(11
)12
*13
+14
,15
-16
.17
/18
019
120
221
322*
˛
0
1
2
 3
!4
"5
#6
$7
%8
&9
'10
(11
)12
*13
+14
,15
-16
.17
/18
019
120
221
322*
* 
°
4non_trainable_variables

5layers
6metrics
7layer_regularization_losses
8layer_metrics
	variables
trainable_variables
regularization_losses
__call__
	_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

9trace_0
:trace_1* 

;trace_0
<trace_1* 
* 

=serving_default* 
* 
* 
'
#>_self_saveable_object_factories* 
Đ
?	variables
@trainable_variables
Aregularization_losses
B	keras_api
C__call__
*D&call_and_return_all_conditional_losses
	sin_scale

_scale
#E_self_saveable_object_factories*
Ë
F	variables
Gtrainable_variables
Hregularization_losses
I	keras_api
J__call__
*K&call_and_return_all_conditional_losses

kernel
bias
#L_self_saveable_object_factories*
ł
M	variables
Ntrainable_variables
Oregularization_losses
P	keras_api
Q__call__
*R&call_and_return_all_conditional_losses
#S_self_saveable_object_factories* 
´
T	variables
Utrainable_variables
Vregularization_losses
W	keras_api
X__call__
*Y&call_and_return_all_conditional_losses
Znorm
	[proj1
	\proj2
]dropout1
^dropout2
_attention_activation_layer
 a
!b
	"gamma
#beta
#`_self_saveable_object_factories*
´
a	variables
btrainable_variables
cregularization_losses
d	keras_api
e__call__
*f&call_and_return_all_conditional_losses
gnorm
	hproj1
	iproj2
jdropout1
kdropout2
lattention_activation_layer
)a
*b
	+gamma
,beta
#m_self_saveable_object_factories*
ź
n	variables
otrainable_variables
pregularization_losses
q	keras_api
r__call__
*s&call_and_return_all_conditional_losses
tgap
#u_self_saveable_object_factories* 
Ę
v	variables
wtrainable_variables
xregularization_losses
y	keras_api
z__call__
*{&call_and_return_all_conditional_losses
|_random_generator
#}_self_saveable_object_factories* 
Đ
~	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses

2kernel
3bias
$_self_saveable_object_factories*
˛
0
1
2
 3
!4
"5
#6
$7
%8
&9
'10
(11
)12
*13
+14
,15
-16
.17
/18
019
120
221
322*
˛
0
1
2
 3
!4
"5
#6
$7
%8
&9
'10
(11
)12
*13
+14
,15
-16
.17
/18
019
120
221
322*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

trace_0
trace_1* 

trace_0
trace_1* 
* 
IC
VARIABLE_VALUE	sin_scale&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
TN
VARIABLE_VALUEencoder_start/kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
RL
VARIABLE_VALUEencoder_start/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
JD
VARIABLE_VALUE
Variable_7&variables/3/.ATTRIBUTES/VARIABLE_VALUE*
JD
VARIABLE_VALUE
Variable_6&variables/4/.ATTRIBUTES/VARIABLE_VALUE*
JD
VARIABLE_VALUE
Variable_5&variables/5/.ATTRIBUTES/VARIABLE_VALUE*
JD
VARIABLE_VALUE
Variable_4&variables/6/.ATTRIBUTES/VARIABLE_VALUE*
LF
VARIABLE_VALUEnorm_scale_1&variables/7/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEgau/dense/kernel&variables/8/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUEgau/dense/bias&variables/9/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEgau/dense_1/kernel'variables/10/.ATTRIBUTES/VARIABLE_VALUE*
QK
VARIABLE_VALUEgau/dense_1/bias'variables/11/.ATTRIBUTES/VARIABLE_VALUE*
KE
VARIABLE_VALUE
Variable_3'variables/12/.ATTRIBUTES/VARIABLE_VALUE*
KE
VARIABLE_VALUE
Variable_2'variables/13/.ATTRIBUTES/VARIABLE_VALUE*
KE
VARIABLE_VALUE
Variable_1'variables/14/.ATTRIBUTES/VARIABLE_VALUE*
IC
VARIABLE_VALUEVariable'variables/15/.ATTRIBUTES/VARIABLE_VALUE*
KE
VARIABLE_VALUE
norm_scale'variables/16/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEgau_1/dense_2/kernel'variables/17/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEgau_1/dense_2/bias'variables/18/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEgau_1/dense_3/kernel'variables/19/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEgau_1/dense_3/bias'variables/20/.ATTRIBUTES/VARIABLE_VALUE*
RL
VARIABLE_VALUEsimilarity/kernel'variables/21/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEsimilarity/bias'variables/22/.ATTRIBUTES/VARIABLE_VALUE*
* 

0
1*
* 
* 
* 
* 
* 
* 
* 
* 
* 

0*

0*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
?	variables
@trainable_variables
Aregularization_losses
C__call__
*D&call_and_return_all_conditional_losses
&D"call_and_return_conditional_losses*

trace_0* 

trace_0* 
* 

0
1*

0
1*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
F	variables
Gtrainable_variables
Hregularization_losses
J__call__
*K&call_and_return_all_conditional_losses
&K"call_and_return_conditional_losses*

trace_0* 

trace_0* 
* 
* 
* 
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
 layer_metrics
M	variables
Ntrainable_variables
Oregularization_losses
Q__call__
*R&call_and_return_all_conditional_losses
&R"call_and_return_conditional_losses* 

Ątrace_0* 

˘trace_0* 
* 
C
 0
!1
"2
#3
$4
%5
&6
'7
(8*
C
 0
!1
"2
#3
$4
%5
&6
'7
(8*
* 

Łnon_trainable_variables
¤layers
Ľmetrics
 Ślayer_regularization_losses
§layer_metrics
T	variables
Utrainable_variables
Vregularization_losses
X__call__
*Y&call_and_return_all_conditional_losses
&Y"call_and_return_conditional_losses*

¨trace_0
Štrace_1* 

Ştrace_0
Ťtrace_1* 
Ř
Ź	variables
­trainable_variables
Žregularization_losses
Ż	keras_api
°__call__
+ą&call_and_return_all_conditional_losses
$
norm_scale

$_scale
$˛_self_saveable_object_factories*
Ň
ł	variables
´trainable_variables
ľregularization_losses
ś	keras_api
ˇ__call__
+¸&call_and_return_all_conditional_losses

%kernel
&bias
$š_self_saveable_object_factories*
Ň
ş	variables
ťtrainable_variables
źregularization_losses
˝	keras_api
ž__call__
+ż&call_and_return_all_conditional_losses

'kernel
(bias
$Ŕ_self_saveable_object_factories*
Ň
Á	variables
Âtrainable_variables
Ăregularization_losses
Ä	keras_api
Ĺ__call__
+Ć&call_and_return_all_conditional_losses
Ç_random_generator
$Č_self_saveable_object_factories* 
Ň
É	variables
Ętrainable_variables
Ëregularization_losses
Ě	keras_api
Í__call__
+Î&call_and_return_all_conditional_losses
Ď_random_generator
$Đ_self_saveable_object_factories* 
ş
Ń	variables
Ňtrainable_variables
Óregularization_losses
Ô	keras_api
Ő__call__
+Ö&call_and_return_all_conditional_losses
$×_self_saveable_object_factories* 
* 
C
)0
*1
+2
,3
-4
.5
/6
07
18*
C
)0
*1
+2
,3
-4
.5
/6
07
18*
* 

Řnon_trainable_variables
Ůlayers
Úmetrics
 Űlayer_regularization_losses
Ülayer_metrics
a	variables
btrainable_variables
cregularization_losses
e__call__
*f&call_and_return_all_conditional_losses
&f"call_and_return_conditional_losses*

Ýtrace_0
Ţtrace_1* 

ßtrace_0
ŕtrace_1* 
Ř
á	variables
âtrainable_variables
ăregularization_losses
ä	keras_api
ĺ__call__
+ć&call_and_return_all_conditional_losses
-
norm_scale

-_scale
$ç_self_saveable_object_factories*
Ň
č	variables
étrainable_variables
ęregularization_losses
ë	keras_api
ě__call__
+í&call_and_return_all_conditional_losses

.kernel
/bias
$î_self_saveable_object_factories*
Ň
ď	variables
đtrainable_variables
ńregularization_losses
ň	keras_api
ó__call__
+ô&call_and_return_all_conditional_losses

0kernel
1bias
$ő_self_saveable_object_factories*
Ň
ö	variables
÷trainable_variables
řregularization_losses
ů	keras_api
ú__call__
+ű&call_and_return_all_conditional_losses
ü_random_generator
$ý_self_saveable_object_factories* 
Ň
ţ	variables
˙trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses
_random_generator
$_self_saveable_object_factories* 
ş
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses
$_self_saveable_object_factories* 
* 
* 
* 
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
n	variables
otrainable_variables
pregularization_losses
r__call__
*s&call_and_return_all_conditional_losses
&s"call_and_return_conditional_losses* 

trace_0* 

trace_0* 
ş
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses
$_self_saveable_object_factories* 
* 
* 
* 
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
v	variables
wtrainable_variables
xregularization_losses
z__call__
*{&call_and_return_all_conditional_losses
&{"call_and_return_conditional_losses* 

 trace_0
Ątrace_1* 

˘trace_0
Łtrace_1* 
(
$¤_self_saveable_object_factories* 
* 

20
31*

20
31*
* 

Ľnon_trainable_variables
Ślayers
§metrics
 ¨layer_regularization_losses
Šlayer_metrics
~	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses*

Ştrace_0* 

Ťtrace_0* 
* 
* 
C
0
1
2
3
4
5
6
7
8*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
.
Z0
[1
\2
]3
^4
_5*
* 
* 
* 
* 
* 
* 
* 

$0*

$0*
* 

Źnon_trainable_variables
­layers
Žmetrics
 Żlayer_regularization_losses
°layer_metrics
Ź	variables
­trainable_variables
Žregularization_losses
°__call__
+ą&call_and_return_all_conditional_losses
'ą"call_and_return_conditional_losses*
* 
* 
* 

%0
&1*

%0
&1*
* 

ąnon_trainable_variables
˛layers
łmetrics
 ´layer_regularization_losses
ľlayer_metrics
ł	variables
´trainable_variables
ľregularization_losses
ˇ__call__
+¸&call_and_return_all_conditional_losses
'¸"call_and_return_conditional_losses*
* 
* 
* 

'0
(1*

'0
(1*
* 

śnon_trainable_variables
ˇlayers
¸metrics
 šlayer_regularization_losses
şlayer_metrics
ş	variables
ťtrainable_variables
źregularization_losses
ž__call__
+ż&call_and_return_all_conditional_losses
'ż"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
* 

ťnon_trainable_variables
źlayers
˝metrics
 žlayer_regularization_losses
żlayer_metrics
Á	variables
Âtrainable_variables
Ăregularization_losses
Ĺ__call__
+Ć&call_and_return_all_conditional_losses
'Ć"call_and_return_conditional_losses* 
* 
* 
(
$Ŕ_self_saveable_object_factories* 
* 
* 
* 
* 

Ánon_trainable_variables
Âlayers
Ămetrics
 Älayer_regularization_losses
Ĺlayer_metrics
É	variables
Ętrainable_variables
Ëregularization_losses
Í__call__
+Î&call_and_return_all_conditional_losses
'Î"call_and_return_conditional_losses* 
* 
* 
(
$Ć_self_saveable_object_factories* 
* 
* 
* 
* 

Çnon_trainable_variables
Člayers
Émetrics
 Ęlayer_regularization_losses
Ëlayer_metrics
Ń	variables
Ňtrainable_variables
Óregularization_losses
Ő__call__
+Ö&call_and_return_all_conditional_losses
'Ö"call_and_return_conditional_losses* 
* 
* 
* 
* 
.
g0
h1
i2
j3
k4
l5*
* 
* 
* 
* 
* 
* 
* 

-0*

-0*
* 

Ěnon_trainable_variables
Ílayers
Îmetrics
 Ďlayer_regularization_losses
Đlayer_metrics
á	variables
âtrainable_variables
ăregularization_losses
ĺ__call__
+ć&call_and_return_all_conditional_losses
'ć"call_and_return_conditional_losses*
* 
* 
* 

.0
/1*

.0
/1*
* 

Ńnon_trainable_variables
Ňlayers
Ómetrics
 Ôlayer_regularization_losses
Őlayer_metrics
č	variables
étrainable_variables
ęregularization_losses
ě__call__
+í&call_and_return_all_conditional_losses
'í"call_and_return_conditional_losses*
* 
* 
* 

00
11*

00
11*
* 

Önon_trainable_variables
×layers
Řmetrics
 Ůlayer_regularization_losses
Úlayer_metrics
ď	variables
đtrainable_variables
ńregularization_losses
ó__call__
+ô&call_and_return_all_conditional_losses
'ô"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
* 

Űnon_trainable_variables
Ülayers
Ýmetrics
 Ţlayer_regularization_losses
ßlayer_metrics
ö	variables
÷trainable_variables
řregularization_losses
ú__call__
+ű&call_and_return_all_conditional_losses
'ű"call_and_return_conditional_losses* 
* 
* 
(
$ŕ_self_saveable_object_factories* 
* 
* 
* 
* 

ánon_trainable_variables
âlayers
ămetrics
 älayer_regularization_losses
ĺlayer_metrics
ţ	variables
˙trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses* 
* 
* 
(
$ć_self_saveable_object_factories* 
* 
* 
* 
* 

çnon_trainable_variables
člayers
émetrics
 ęlayer_regularization_losses
ëlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses* 
* 
* 
* 
* 
	
t0* 
* 
* 
* 
* 
* 
* 
* 
* 

ěnon_trainable_variables
ílayers
îmetrics
 ďlayer_regularization_losses
đlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses* 

ńtrace_0* 

ňtrace_0* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 

StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename	sin_scaleencoder_start/kernelencoder_start/bias
Variable_7
Variable_6
Variable_5
Variable_4norm_scale_1gau/dense/kernelgau/dense/biasgau/dense_1/kernelgau/dense_1/bias
Variable_3
Variable_2
Variable_1Variable
norm_scalegau_1/dense_2/kernelgau_1/dense_2/biasgau_1/dense_3/kernelgau_1/dense_3/biassimilarity/kernelsimilarity/biasConst*$
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *&
f!R
__inference__traced_save_7558

StatefulPartitionedCall_2StatefulPartitionedCallsaver_filename	sin_scaleencoder_start/kernelencoder_start/bias
Variable_7
Variable_6
Variable_5
Variable_4norm_scale_1gau/dense/kernelgau/dense/biasgau/dense_1/kernelgau/dense_1/bias
Variable_3
Variable_2
Variable_1Variable
norm_scalegau_1/dense_2/kernelgau_1/dense_2/biasgau_1/dense_3/kernelgau_1/dense_3/biassimilarity/kernelsimilarity/bias*#
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *)
f$R"
 __inference__traced_restore_7636Ă


Ą
__inference_gradient_func_7322
result_grads_0
result_grads_1
result_grads_2
dense_2_beta
dense_2_biasadd
identity

identity_1Á
PartitionedCallPartitionedCallresult_grads_0result_grads_1result_grads_2dense_2_betadense_2_biasadd*
Tin	
2*
Tout
2*/
_output_shapes
:˙˙˙˙˙˙˙˙˙: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 **
f%R#
!__inference_internal_grad_fn_2175f
IdentityIdentityPartitionedCall:output:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙Q

Identity_1IdentityPartitionedCall:output:1*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: : :˙˙˙˙˙˙˙˙˙:] Y
-
_output_shapes
:˙˙˙˙˙˙˙˙˙
(
_user_specified_nameresult_grads_0:]Y
-
_output_shapes
:˙˙˙˙˙˙˙˙˙
(
_user_specified_nameresult_grads_1:FB

_output_shapes
: 
(
_user_specified_nameresult_grads_2:D@

_output_shapes
: 
&
_user_specified_namedense_2/beta:^Z
-
_output_shapes
:˙˙˙˙˙˙˙˙˙
)
_user_specified_namedense_2/BiasAdd
Š

!__inference_internal_grad_fn_7420
result_grads_0
result_grads_1
result_grads_2
mul_beta

mul_inputs
identity

identity_1i
mulMulmul_beta
mul_inputs^result_grads_0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙S
SigmoidSigmoidmul:z:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙Z
mul_1Mulmul_beta
mul_inputs*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?_
subSubsub/x:output:0Sigmoid:y:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙X
mul_2Mul	mul_1:z:0sub:z:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙J
add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?_
addAddV2add/x:output:0	mul_2:z:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙Z
mul_3MulSigmoid:y:0add:z:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙T
SquareSquare
mul_inputs*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙`
mul_4Mulresult_grads_0
Square:y:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙\
mul_5Mul	mul_4:z:0Sigmoid:y:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙L
sub_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?c
sub_1Subsub_1/x:output:0Sigmoid:y:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙Z
mul_6Mul	mul_5:z:0	sub_1:z:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙Z
ConstConst*
_output_shapes
:*
dtype0*!
valueB"          F
SumSum	mul_6:z:0Const:output:0*
T0*
_output_shapes
: _
mul_7Mulresult_grads_0	mul_3:z:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙W
IdentityIdentity	mul_7:z:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙E

Identity_1IdentitySum:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: : :˙˙˙˙˙˙˙˙˙: 
&
 _has_manual_control_dependencies(
-
_output_shapes
:˙˙˙˙˙˙˙˙˙
(
_user_specified_nameresult_grads_0:]Y
-
_output_shapes
:˙˙˙˙˙˙˙˙˙
(
_user_specified_nameresult_grads_1:FB

_output_shapes
: 
(
_user_specified_nameresult_grads_2:<8

_output_shapes
: 

_user_specified_namebeta:UQ
-
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
Ú
a
C__inference_dropout_4_layer_call_and_return_conditional_losses_6740

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:˙˙˙˙˙˙˙˙˙:P L
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs

÷
C__inference_similarity_layer_call_and_return_conditional_losses_264

inputs2
matmul_readvariableop_resource:
.
biasadd_readvariableop_resource:	
identity˘BiasAdd/ReadVariableOp˘MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙b
l2_normalize/SquareSquareBiasAdd:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙d
"l2_normalize/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B : 
l2_normalize/SumSuml2_normalize/Square:y:0+l2_normalize/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
	keep_dims([
l2_normalize/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ěź+
l2_normalize/MaximumMaximuml2_normalize/Sum:output:0l2_normalize/Maximum/y:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙g
l2_normalize/RsqrtRsqrtl2_normalize/Maximum:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙p
l2_normalizeMulBiasAdd:output:0l2_normalize/Rsqrt:y:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 `
IdentityIdentityl2_normalize:z:0^NoOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:˙˙˙˙˙˙˙˙˙: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
Ó˘
Ş
>__inference_gau_1_layer_call_and_return_conditional_losses_485
x5
+scaled_norm_1_mul_1_readvariableop_resource: =
)dense_2_tensordot_readvariableop_resource:
6
'dense_2_biasadd_readvariableop_resource:	.
mul_readvariableop_resource:	.
add_readvariableop_resource:	&
readvariableop_resource:	(
readvariableop_1_resource:	=
)dense_3_tensordot_readvariableop_resource:
6
'dense_3_biasadd_readvariableop_resource:	
identity˘ReadVariableOp˘ReadVariableOp_1˘add/ReadVariableOp˘dense_2/BiasAdd/ReadVariableOp˘ dense_2/Tensordot/ReadVariableOp˘dense_3/BiasAdd/ReadVariableOp˘ dense_3/Tensordot/ReadVariableOp˘mul/ReadVariableOp˘"scaled_norm_1/mul_1/ReadVariableOpY
scaled_norm_1/SquareSquarex*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙n
$scaled_norm_1/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:Ť
scaled_norm_1/MeanMeanscaled_norm_1/Square:y:0-scaled_norm_1/Mean/reduction_indices:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙*
	keep_dims(X
scaled_norm_1/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *˝75
scaled_norm_1/addAddV2scaled_norm_1/Mean:output:0scaled_norm_1/add/y:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙j
scaled_norm_1/RsqrtRsqrtscaled_norm_1/add:z:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙l
scaled_norm_1/mulMulxscaled_norm_1/Rsqrt:y:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
"scaled_norm_1/mul_1/ReadVariableOpReadVariableOp+scaled_norm_1_mul_1_readvariableop_resource*
_output_shapes
: *
dtype0
scaled_norm_1/mul_1Mulscaled_norm_1/mul:z:0*scaled_norm_1/mul_1/ReadVariableOp:value:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙o
dropout_2/IdentityIdentityscaled_norm_1/mul_1:z:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
 dense_2/Tensordot/ReadVariableOpReadVariableOp)dense_2_tensordot_readvariableop_resource* 
_output_shapes
:
*
dtype0`
dense_2/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:g
dense_2/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       p
dense_2/Tensordot/ShapeShapedropout_2/Identity:output:0*
T0*
_output_shapes
::íĎa
dense_2/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : Ű
dense_2/Tensordot/GatherV2GatherV2 dense_2/Tensordot/Shape:output:0dense_2/Tensordot/free:output:0(dense_2/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:c
!dense_2/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ß
dense_2/Tensordot/GatherV2_1GatherV2 dense_2/Tensordot/Shape:output:0dense_2/Tensordot/axes:output:0*dense_2/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:a
dense_2/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
dense_2/Tensordot/ProdProd#dense_2/Tensordot/GatherV2:output:0 dense_2/Tensordot/Const:output:0*
T0*
_output_shapes
: c
dense_2/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 
dense_2/Tensordot/Prod_1Prod%dense_2/Tensordot/GatherV2_1:output:0"dense_2/Tensordot/Const_1:output:0*
T0*
_output_shapes
: _
dense_2/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ź
dense_2/Tensordot/concatConcatV2dense_2/Tensordot/free:output:0dense_2/Tensordot/axes:output:0&dense_2/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:
dense_2/Tensordot/stackPackdense_2/Tensordot/Prod:output:0!dense_2/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
: 
dense_2/Tensordot/transpose	Transposedropout_2/Identity:output:0!dense_2/Tensordot/concat:output:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙˘
dense_2/Tensordot/ReshapeReshapedense_2/Tensordot/transpose:y:0 dense_2/Tensordot/stack:output:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙Ł
dense_2/Tensordot/MatMulMatMul"dense_2/Tensordot/Reshape:output:0(dense_2/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙d
dense_2/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:a
dense_2/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Ç
dense_2/Tensordot/concat_1ConcatV2#dense_2/Tensordot/GatherV2:output:0"dense_2/Tensordot/Const_2:output:0(dense_2/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
dense_2/TensordotReshape"dense_2/Tensordot/MatMul:product:0#dense_2/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
dense_2/BiasAddBiasAdddense_2/Tensordot:output:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙Q
dense_2/betaConst*
_output_shapes
: *
dtype0*
valueB
 *  ?{
dense_2/mulMuldense_2/beta:output:0dense_2/BiasAdd:output:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙c
dense_2/SigmoidSigmoiddense_2/mul:z:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙{
dense_2/mul_1Muldense_2/BiasAdd:output:0dense_2/Sigmoid:y:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙g
dense_2/IdentityIdentitydense_2/mul_1:z:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙ĺ
dense_2/IdentityN	IdentityNdense_2/mul_1:z:0dense_2/BiasAdd:output:0dense_2/beta:output:0*
T
2*)
_gradient_op_typeCustomGradient-108*H
_output_shapes6
4:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: r
dropout_3/IdentityIdentitydense_2/IdentityN:output:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙Z
ConstConst*
_output_shapes
:*
dtype0*!
valueB"         Z
split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙Ý
splitSplitVdropout_3/Identity:output:0Const:output:0split/split_dim:output:0*
T0*

Tlen0*_
_output_shapesM
K:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
	num_splitP
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :}

ExpandDims
ExpandDimssplit:output:2ExpandDims/dim:output:0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙g
Tile/multiplesConst*
_output_shapes
:*
dtype0*%
valueB"            v
TileTileExpandDims:output:0Tile/multiples:output:0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙o
mul/ReadVariableOpReadVariableOpmul_readvariableop_resource*
_output_shapes
:	*
dtype0q
mulMulTile:output:0mul/ReadVariableOp:value:0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙o
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes
:	*
dtype0m
addAddV2mul:z:0add/ReadVariableOp:value:0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙
unstackUnpackadd:z:0*
T0*F
_output_shapes4
2:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
axisţ˙˙˙˙˙˙˙˙*	
num
einsum/EinsumEinsumunstack:output:0unstack:output:1*
N*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙*
equationbnd,bmd->bnmN
	truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   Dv
truedivRealDiveinsum/Einsum:output:0truediv/y:output:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:*
dtype0d
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        f
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        f
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      
strided_sliceStridedSliceReadVariableOp:value:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:	*

begin_mask*
end_mask*
new_axis_maska
Tile_1/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      l
Tile_1Tilestrided_slice:output:0Tile_1/multiples:output:0*
T0* 
_output_shapes
:
M
range/startConst*
_output_shapes
: *
dtype0*
value	B : N
range/limitConst*
_output_shapes
: *
dtype0*
value
B :P
range/deltaConst*
_output_shapes
: *
dtype0*
valueB
 *  ?X

range/CastCastrange/start:output:0*

DstT0*

SrcT0*
_output_shapes
: Z
range/Cast_1Castrange/limit:output:0*

DstT0*

SrcT0*
_output_shapes
: o
rangeRangerange/Cast:y:0range/Cast_1:y:0range/delta:output:0*

Tidx0*
_output_shapes	
:X
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:`
ReshapeReshaperange:output:0Reshape/shape:output:0*
T0*
_output_shapes	
:O
range_1/startConst*
_output_shapes
: *
dtype0*
value	B : P
range_1/limitConst*
_output_shapes
: *
dtype0*
value
B :O
range_1/deltaConst*
_output_shapes
: *
dtype0*
value	B :u
range_1Rangerange_1/start:output:0range_1/limit:output:0range_1/delta:output:0*
_output_shapes	
:S
CastCastrange_1:output:0*

DstT0*

SrcT0*
_output_shapes	
:P
truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  CZ
	truediv_1RealDivCast:y:0truediv_1/y:output:0*
T0*
_output_shapes	
:?
NegNegtruediv_1:z:0*
T0*
_output_shapes	
:J
pow/xConst*
_output_shapes
: *
dtype0*
valueB
 * @FI
powPowpow/x:output:0Neg:y:0*
T0*
_output_shapes	
:
einsum_1/EinsumEinsumReshape:output:0pow:z:0*
N*
T0* 
_output_shapes
:
*
equation...,d->...dO
SinSineinsum_1/Einsum:output:0*
T0* 
_output_shapes
:
O
CosCoseinsum_1/Einsum:output:0*
T0* 
_output_shapes
:
\
split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙
split_1Splitsplit_1/split_dim:output:0Tile_1:output:0*
T0*,
_output_shapes
:
:
*
	num_splitR
mul_1Mulsplit_1:output:0Cos:y:0*
T0* 
_output_shapes
:
R
mul_2Mulsplit_1:output:1Sin:y:0*
T0* 
_output_shapes
:
K
subSub	mul_1:z:0	mul_2:z:0*
T0* 
_output_shapes
:
R
mul_3Mulsplit_1:output:1Cos:y:0*
T0* 
_output_shapes
:
R
mul_4Mulsplit_1:output:0Sin:y:0*
T0* 
_output_shapes
:
O
add_1AddV2	mul_3:z:0	mul_4:z:0*
T0* 
_output_shapes
:
V
concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙p
concatConcatV2sub:z:0	add_1:z:0concat/axis:output:0*
N*
T0* 
_output_shapes
:
g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:*
dtype0f
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      
strided_slice_1StridedSliceReadVariableOp_1:value:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:	*

begin_mask*
end_mask*
new_axis_maska
Tile_2/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      n
Tile_2Tilestrided_slice_1:output:0Tile_2/multiples:output:0*
T0* 
_output_shapes
:
O
range_2/startConst*
_output_shapes
: *
dtype0*
value	B : P
range_2/limitConst*
_output_shapes
: *
dtype0*
value
B :R
range_2/deltaConst*
_output_shapes
: *
dtype0*
valueB
 *  ?\
range_2/CastCastrange_2/start:output:0*

DstT0*

SrcT0*
_output_shapes
: ^
range_2/Cast_1Castrange_2/limit:output:0*

DstT0*

SrcT0*
_output_shapes
: w
range_2Rangerange_2/Cast:y:0range_2/Cast_1:y:0range_2/delta:output:0*

Tidx0*
_output_shapes	
:Z
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB:f
	Reshape_1Reshaperange_2:output:0Reshape_1/shape:output:0*
T0*
_output_shapes	
:O
range_3/startConst*
_output_shapes
: *
dtype0*
value	B : P
range_3/limitConst*
_output_shapes
: *
dtype0*
value
B :O
range_3/deltaConst*
_output_shapes
: *
dtype0*
value	B :u
range_3Rangerange_3/start:output:0range_3/limit:output:0range_3/delta:output:0*
_output_shapes	
:U
Cast_1Castrange_3:output:0*

DstT0*

SrcT0*
_output_shapes	
:P
truediv_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  C\
	truediv_2RealDiv
Cast_1:y:0truediv_2/y:output:0*
T0*
_output_shapes	
:A
Neg_1Negtruediv_2:z:0*
T0*
_output_shapes	
:L
pow_1/xConst*
_output_shapes
: *
dtype0*
valueB
 * @FO
pow_1Powpow_1/x:output:0	Neg_1:y:0*
T0*
_output_shapes	
:
einsum_2/EinsumEinsumReshape_1:output:0	pow_1:z:0*
N*
T0* 
_output_shapes
:
*
equation...,d->...dQ
Sin_1Sineinsum_2/Einsum:output:0*
T0* 
_output_shapes
:
Q
Cos_1Coseinsum_2/Einsum:output:0*
T0* 
_output_shapes
:
\
split_2/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙
split_2Splitsplit_2/split_dim:output:0Tile_2:output:0*
T0*,
_output_shapes
:
:
*
	num_splitT
mul_5Mulsplit_2:output:0	Cos_1:y:0*
T0* 
_output_shapes
:
T
mul_6Mulsplit_2:output:1	Sin_1:y:0*
T0* 
_output_shapes
:
M
sub_1Sub	mul_5:z:0	mul_6:z:0*
T0* 
_output_shapes
:
T
mul_7Mulsplit_2:output:1	Cos_1:y:0*
T0* 
_output_shapes
:
T
mul_8Mulsplit_2:output:0	Sin_1:y:0*
T0* 
_output_shapes
:
O
add_2AddV2	mul_7:z:0	mul_8:z:0*
T0* 
_output_shapes
:
X
concat_1/axisConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙v
concat_1ConcatV2	sub_1:z:0	add_2:z:0concat_1/axis:output:0*
N*
T0* 
_output_shapes
:

einsum_3/EinsumEinsumconcat:output:0concat_1:output:0*
N*
T0* 
_output_shapes
:
*
equation	mk,nk->mnm
add_3AddV2truediv:z:0einsum_3/Einsum:output:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙[
sqr_re_lu_1/ReluRelu	add_3:z:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙t
sqr_re_lu_1/SquareSquaresqr_re_lu_1/Relu:activations:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
einsum_4/EinsumEinsumsqr_re_lu_1/Square:y:0split:output:1*
N*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙*
equationbnm,bme->bnen
mul_9Mulsplit:output:0einsum_4/Einsum:output:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
 dense_3/Tensordot/ReadVariableOpReadVariableOp)dense_3_tensordot_readvariableop_resource* 
_output_shapes
:
*
dtype0`
dense_3/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:g
dense_3/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       ^
dense_3/Tensordot/ShapeShape	mul_9:z:0*
T0*
_output_shapes
::íĎa
dense_3/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : Ű
dense_3/Tensordot/GatherV2GatherV2 dense_3/Tensordot/Shape:output:0dense_3/Tensordot/free:output:0(dense_3/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:c
!dense_3/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ß
dense_3/Tensordot/GatherV2_1GatherV2 dense_3/Tensordot/Shape:output:0dense_3/Tensordot/axes:output:0*dense_3/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:a
dense_3/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
dense_3/Tensordot/ProdProd#dense_3/Tensordot/GatherV2:output:0 dense_3/Tensordot/Const:output:0*
T0*
_output_shapes
: c
dense_3/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 
dense_3/Tensordot/Prod_1Prod%dense_3/Tensordot/GatherV2_1:output:0"dense_3/Tensordot/Const_1:output:0*
T0*
_output_shapes
: _
dense_3/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ź
dense_3/Tensordot/concatConcatV2dense_3/Tensordot/free:output:0dense_3/Tensordot/axes:output:0&dense_3/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:
dense_3/Tensordot/stackPackdense_3/Tensordot/Prod:output:0!dense_3/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:
dense_3/Tensordot/transpose	Transpose	mul_9:z:0!dense_3/Tensordot/concat:output:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙˘
dense_3/Tensordot/ReshapeReshapedense_3/Tensordot/transpose:y:0 dense_3/Tensordot/stack:output:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙Ł
dense_3/Tensordot/MatMulMatMul"dense_3/Tensordot/Reshape:output:0(dense_3/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙d
dense_3/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:a
dense_3/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Ç
dense_3/Tensordot/concat_1ConcatV2#dense_3/Tensordot/GatherV2:output:0"dense_3/Tensordot/Const_2:output:0(dense_3/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
dense_3/TensordotReshape"dense_3/Tensordot/MatMul:product:0#dense_3/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
dense_3/BiasAddBiasAdddense_3/Tensordot:output:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙c
add_4AddV2dense_3/BiasAdd:output:0x*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙Á
NoOpNoOp^ReadVariableOp^ReadVariableOp_1^add/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp!^dense_2/Tensordot/ReadVariableOp^dense_3/BiasAdd/ReadVariableOp!^dense_3/Tensordot/ReadVariableOp^mul/ReadVariableOp#^scaled_norm_1/mul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ^
IdentityIdentity	add_4:z:0^NoOp*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:˙˙˙˙˙˙˙˙˙: : : : : : : : : 2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12(
add/ReadVariableOpadd/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2D
 dense_2/Tensordot/ReadVariableOp dense_2/Tensordot/ReadVariableOp2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2D
 dense_3/Tensordot/ReadVariableOp dense_3/Tensordot/ReadVariableOp2(
mul/ReadVariableOpmul/ReadVariableOp2H
"scaled_norm_1/mul_1/ReadVariableOp"scaled_norm_1/mul_1/ReadVariableOp:P L
-
_output_shapes
:˙˙˙˙˙˙˙˙˙

_user_specified_namex
Ć/
é
I__inference_embedding_model_layer_call_and_return_conditional_losses_6685
input_25
+scaled_sinusoidal_positional_embedding_6536: %
encoder_start_6569:	!
encoder_start_6571:	
gau_6611: 
gau_6613:

gau_6615:	
gau_6617:	
gau_6619:	
gau_6621:	
gau_6623:	
gau_6625:

gau_6627:	

gau_1_6653: 

gau_1_6655:


gau_1_6657:	

gau_1_6659:	

gau_1_6661:	

gau_1_6663:	

gau_1_6665:	

gau_1_6667:


gau_1_6669:	#
similarity_6679:

similarity_6681:	
identity˘%encoder_start/StatefulPartitionedCall˘gau/StatefulPartitionedCall˘gau_1/StatefulPartitionedCall˘>scaled_sinusoidal_positional_embedding/StatefulPartitionedCall˘"similarity/StatefulPartitionedCall
>scaled_sinusoidal_positional_embedding/StatefulPartitionedCallStatefulPartitionedCallinput_2+scaled_sinusoidal_positional_embedding_6536*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:˙˙˙˙˙˙˙˙˙*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *0
f+R)
'__inference_restored_function_body_6388Ĺ
%encoder_start/StatefulPartitionedCallStatefulPartitionedCallGscaled_sinusoidal_positional_embedding/StatefulPartitionedCall:output:0encoder_start_6569encoder_start_6571*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_encoder_start_layer_call_and_return_conditional_losses_6568č
activation/PartitionedCallPartitionedCall.encoder_start/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:˙˙˙˙˙˙˙˙˙* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_activation_layer_call_and_return_conditional_losses_6586ˇ
gau/StatefulPartitionedCallStatefulPartitionedCall#activation/PartitionedCall:output:0gau_6611gau_6613gau_6615gau_6617gau_6619gau_6621gau_6623gau_6625gau_6627*
Tin
2
*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:˙˙˙˙˙˙˙˙˙*+
_read_only_resource_inputs
		*-
config_proto

CPU

GPU 2J 8 *0
f+R)
'__inference_restored_function_body_6610Ě
gau_1/StatefulPartitionedCallStatefulPartitionedCall$gau/StatefulPartitionedCall:output:0
gau_1_6653
gau_1_6655
gau_1_6657
gau_1_6659
gau_1_6661
gau_1_6663
gau_1_6665
gau_1_6667
gau_1_6669*
Tin
2
*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:˙˙˙˙˙˙˙˙˙*+
_read_only_resource_inputs
		*-
config_proto

CPU

GPU 2J 8 *0
f+R)
'__inference_restored_function_body_6652Î
*generalized_mean_pooling1d/PartitionedCallPartitionedCall&gau_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:˙˙˙˙˙˙˙˙˙* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *0
f+R)
'__inference_restored_function_body_6515ć
dropout_4/PartitionedCallPartitionedCall3generalized_mean_pooling1d/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:˙˙˙˙˙˙˙˙˙* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dropout_4_layer_call_and_return_conditional_losses_6677ň
"similarity/StatefulPartitionedCallStatefulPartitionedCall"dropout_4/PartitionedCall:output:0similarity_6679similarity_6681*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *0
f+R)
'__inference_restored_function_body_6526{
IdentityIdentity+similarity/StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙î
NoOpNoOp&^encoder_start/StatefulPartitionedCall^gau/StatefulPartitionedCall^gau_1/StatefulPartitionedCall?^scaled_sinusoidal_positional_embedding/StatefulPartitionedCall#^similarity/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Y
_input_shapesH
F:˙˙˙˙˙˙˙˙˙: : : : : : : : : : : : : : : : : : : : : : : 2N
%encoder_start/StatefulPartitionedCall%encoder_start/StatefulPartitionedCall2:
gau/StatefulPartitionedCallgau/StatefulPartitionedCall2>
gau_1/StatefulPartitionedCallgau_1/StatefulPartitionedCall2
>scaled_sinusoidal_positional_embedding/StatefulPartitionedCall>scaled_sinusoidal_positional_embedding/StatefulPartitionedCall2H
"similarity/StatefulPartitionedCall"similarity/StatefulPartitionedCall:U Q
,
_output_shapes
:˙˙˙˙˙˙˙˙˙
!
_user_specified_name	input_2:$ 

_user_specified_name6536:$ 

_user_specified_name6569:$ 

_user_specified_name6571:$ 

_user_specified_name6611:$ 

_user_specified_name6613:$ 

_user_specified_name6615:$ 

_user_specified_name6617:$ 

_user_specified_name6619:$	 

_user_specified_name6621:$
 

_user_specified_name6623:$ 

_user_specified_name6625:$ 

_user_specified_name6627:$ 

_user_specified_name6653:$ 

_user_specified_name6655:$ 

_user_specified_name6657:$ 

_user_specified_name6659:$ 

_user_specified_name6661:$ 

_user_specified_name6663:$ 

_user_specified_name6665:$ 

_user_specified_name6667:$ 

_user_specified_name6669:$ 

_user_specified_name6679:$ 

_user_specified_name6681

ú
?__inference_model_layer_call_and_return_conditional_losses_6976
input_1
embedding_model_6928: '
embedding_model_6930:	#
embedding_model_6932:	
embedding_model_6934: (
embedding_model_6936:
#
embedding_model_6938:	'
embedding_model_6940:	'
embedding_model_6942:	#
embedding_model_6944:	#
embedding_model_6946:	(
embedding_model_6948:
#
embedding_model_6950:	
embedding_model_6952: (
embedding_model_6954:
#
embedding_model_6956:	'
embedding_model_6958:	'
embedding_model_6960:	#
embedding_model_6962:	#
embedding_model_6964:	(
embedding_model_6966:
#
embedding_model_6968:	(
embedding_model_6970:
#
embedding_model_6972:	
identity˘'embedding_model/StatefulPartitionedCall
'embedding_model/StatefulPartitionedCallStatefulPartitionedCallinput_1embedding_model_6928embedding_model_6930embedding_model_6932embedding_model_6934embedding_model_6936embedding_model_6938embedding_model_6940embedding_model_6942embedding_model_6944embedding_model_6946embedding_model_6948embedding_model_6950embedding_model_6952embedding_model_6954embedding_model_6956embedding_model_6958embedding_model_6960embedding_model_6962embedding_model_6964embedding_model_6966embedding_model_6968embedding_model_6970embedding_model_6972*#
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:˙˙˙˙˙˙˙˙˙*9
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_embedding_model_layer_call_and_return_conditional_losses_6748
IdentityIdentity0embedding_model/StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙L
NoOpNoOp(^embedding_model/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Y
_input_shapesH
F:˙˙˙˙˙˙˙˙˙: : : : : : : : : : : : : : : : : : : : : : : 2R
'embedding_model/StatefulPartitionedCall'embedding_model/StatefulPartitionedCall:U Q
,
_output_shapes
:˙˙˙˙˙˙˙˙˙
!
_user_specified_name	input_1:$ 

_user_specified_name6928:$ 

_user_specified_name6930:$ 

_user_specified_name6932:$ 

_user_specified_name6934:$ 

_user_specified_name6936:$ 

_user_specified_name6938:$ 

_user_specified_name6940:$ 

_user_specified_name6942:$	 

_user_specified_name6944:$
 

_user_specified_name6946:$ 

_user_specified_name6948:$ 

_user_specified_name6950:$ 

_user_specified_name6952:$ 

_user_specified_name6954:$ 

_user_specified_name6956:$ 

_user_specified_name6958:$ 

_user_specified_name6960:$ 

_user_specified_name6962:$ 

_user_specified_name6964:$ 

_user_specified_name6966:$ 

_user_specified_name6968:$ 

_user_specified_name6970:$ 

_user_specified_name6972

¨
!__inference_internal_grad_fn_1955
result_grads_0
result_grads_1
result_grads_2
mul_dense_beta
mul_dense_biasadd
identity

identity_1v
mulMulmul_dense_betamul_dense_biasadd^result_grads_0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙S
SigmoidSigmoidmul:z:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙g
mul_1Mulmul_dense_betamul_dense_biasadd*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?_
subSubsub/x:output:0Sigmoid:y:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙X
mul_2Mul	mul_1:z:0sub:z:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙J
add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?_
addAddV2add/x:output:0	mul_2:z:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙Z
mul_3MulSigmoid:y:0add:z:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙[
SquareSquaremul_dense_biasadd*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙`
mul_4Mulresult_grads_0
Square:y:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙\
mul_5Mul	mul_4:z:0Sigmoid:y:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙L
sub_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?c
sub_1Subsub_1/x:output:0Sigmoid:y:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙Z
mul_6Mul	mul_5:z:0	sub_1:z:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙Z
ConstConst*
_output_shapes
:*
dtype0*!
valueB"          F
SumSum	mul_6:z:0Const:output:0*
T0*
_output_shapes
: _
mul_7Mulresult_grads_0	mul_3:z:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙W
IdentityIdentity	mul_7:z:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙E

Identity_1IdentitySum:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: : :˙˙˙˙˙˙˙˙˙: 
&
 _has_manual_control_dependencies(
-
_output_shapes
:˙˙˙˙˙˙˙˙˙
(
_user_specified_nameresult_grads_0:]Y
-
_output_shapes
:˙˙˙˙˙˙˙˙˙
(
_user_specified_nameresult_grads_1:FB

_output_shapes
: 
(
_user_specified_nameresult_grads_2:

_output_shapes
: :3/
-
_output_shapes
:˙˙˙˙˙˙˙˙˙
î	
Í
$__inference_gau_1_layer_call_fn_2372
x
unknown: 
	unknown_0:

	unknown_1:	
	unknown_2:	
	unknown_3:	
	unknown_4:	
	unknown_5:	
	unknown_6:

	unknown_7:	
identity˘StatefulPartitionedCallł
StatefulPartitionedCallStatefulPartitionedCallxunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7*
Tin
2
*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:˙˙˙˙˙˙˙˙˙*+
_read_only_resource_inputs
		*0
config_proto 

CPU

GPU2*0J 8 *H
fCRA
?__inference_gau_1_layer_call_and_return_conditional_losses_2358`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 u
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:˙˙˙˙˙˙˙˙˙: : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
-
_output_shapes
:˙˙˙˙˙˙˙˙˙

_user_specified_namex

Ü
$__inference_model_layer_call_fn_7078
input_1
unknown: 
	unknown_0:	
	unknown_1:	
	unknown_2: 
	unknown_3:

	unknown_4:	
	unknown_5:	
	unknown_6:	
	unknown_7:	
	unknown_8:	
	unknown_9:


unknown_10:	

unknown_11: 

unknown_12:


unknown_13:	

unknown_14:	

unknown_15:	

unknown_16:	

unknown_17:	

unknown_18:


unknown_19:	

unknown_20:


unknown_21:	
identity˘StatefulPartitionedCalló
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21*#
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:˙˙˙˙˙˙˙˙˙*9
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *H
fCRA
?__inference_model_layer_call_and_return_conditional_losses_6976p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Y
_input_shapesH
F:˙˙˙˙˙˙˙˙˙: : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
,
_output_shapes
:˙˙˙˙˙˙˙˙˙
!
_user_specified_name	input_1:$ 

_user_specified_name7030:$ 

_user_specified_name7032:$ 

_user_specified_name7034:$ 

_user_specified_name7036:$ 

_user_specified_name7038:$ 

_user_specified_name7040:$ 

_user_specified_name7042:$ 

_user_specified_name7044:$	 

_user_specified_name7046:$
 

_user_specified_name7048:$ 

_user_specified_name7050:$ 

_user_specified_name7052:$ 

_user_specified_name7054:$ 

_user_specified_name7056:$ 

_user_specified_name7058:$ 

_user_specified_name7060:$ 

_user_specified_name7062:$ 

_user_specified_name7064:$ 

_user_specified_name7066:$ 

_user_specified_name7068:$ 

_user_specified_name7070:$ 

_user_specified_name7072:$ 

_user_specified_name7074
Ô˘
Ť
?__inference_gau_1_layer_call_and_return_conditional_losses_1875
x5
+scaled_norm_1_mul_1_readvariableop_resource: =
)dense_2_tensordot_readvariableop_resource:
6
'dense_2_biasadd_readvariableop_resource:	.
mul_readvariableop_resource:	.
add_readvariableop_resource:	&
readvariableop_resource:	(
readvariableop_1_resource:	=
)dense_3_tensordot_readvariableop_resource:
6
'dense_3_biasadd_readvariableop_resource:	
identity˘ReadVariableOp˘ReadVariableOp_1˘add/ReadVariableOp˘dense_2/BiasAdd/ReadVariableOp˘ dense_2/Tensordot/ReadVariableOp˘dense_3/BiasAdd/ReadVariableOp˘ dense_3/Tensordot/ReadVariableOp˘mul/ReadVariableOp˘"scaled_norm_1/mul_1/ReadVariableOpY
scaled_norm_1/SquareSquarex*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙n
$scaled_norm_1/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:Ť
scaled_norm_1/MeanMeanscaled_norm_1/Square:y:0-scaled_norm_1/Mean/reduction_indices:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙*
	keep_dims(X
scaled_norm_1/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *˝75
scaled_norm_1/addAddV2scaled_norm_1/Mean:output:0scaled_norm_1/add/y:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙j
scaled_norm_1/RsqrtRsqrtscaled_norm_1/add:z:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙l
scaled_norm_1/mulMulxscaled_norm_1/Rsqrt:y:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
"scaled_norm_1/mul_1/ReadVariableOpReadVariableOp+scaled_norm_1_mul_1_readvariableop_resource*
_output_shapes
: *
dtype0
scaled_norm_1/mul_1Mulscaled_norm_1/mul:z:0*scaled_norm_1/mul_1/ReadVariableOp:value:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙o
dropout_2/IdentityIdentityscaled_norm_1/mul_1:z:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
 dense_2/Tensordot/ReadVariableOpReadVariableOp)dense_2_tensordot_readvariableop_resource* 
_output_shapes
:
*
dtype0`
dense_2/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:g
dense_2/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       p
dense_2/Tensordot/ShapeShapedropout_2/Identity:output:0*
T0*
_output_shapes
::íĎa
dense_2/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : Ű
dense_2/Tensordot/GatherV2GatherV2 dense_2/Tensordot/Shape:output:0dense_2/Tensordot/free:output:0(dense_2/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:c
!dense_2/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ß
dense_2/Tensordot/GatherV2_1GatherV2 dense_2/Tensordot/Shape:output:0dense_2/Tensordot/axes:output:0*dense_2/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:a
dense_2/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
dense_2/Tensordot/ProdProd#dense_2/Tensordot/GatherV2:output:0 dense_2/Tensordot/Const:output:0*
T0*
_output_shapes
: c
dense_2/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 
dense_2/Tensordot/Prod_1Prod%dense_2/Tensordot/GatherV2_1:output:0"dense_2/Tensordot/Const_1:output:0*
T0*
_output_shapes
: _
dense_2/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ź
dense_2/Tensordot/concatConcatV2dense_2/Tensordot/free:output:0dense_2/Tensordot/axes:output:0&dense_2/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:
dense_2/Tensordot/stackPackdense_2/Tensordot/Prod:output:0!dense_2/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
: 
dense_2/Tensordot/transpose	Transposedropout_2/Identity:output:0!dense_2/Tensordot/concat:output:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙˘
dense_2/Tensordot/ReshapeReshapedense_2/Tensordot/transpose:y:0 dense_2/Tensordot/stack:output:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙Ł
dense_2/Tensordot/MatMulMatMul"dense_2/Tensordot/Reshape:output:0(dense_2/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙d
dense_2/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:a
dense_2/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Ç
dense_2/Tensordot/concat_1ConcatV2#dense_2/Tensordot/GatherV2:output:0"dense_2/Tensordot/Const_2:output:0(dense_2/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
dense_2/TensordotReshape"dense_2/Tensordot/MatMul:product:0#dense_2/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
dense_2/BiasAddBiasAdddense_2/Tensordot:output:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙Q
dense_2/betaConst*
_output_shapes
: *
dtype0*
valueB
 *  ?{
dense_2/mulMuldense_2/beta:output:0dense_2/BiasAdd:output:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙c
dense_2/SigmoidSigmoiddense_2/mul:z:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙{
dense_2/mul_1Muldense_2/BiasAdd:output:0dense_2/Sigmoid:y:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙g
dense_2/IdentityIdentitydense_2/mul_1:z:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙ĺ
dense_2/IdentityN	IdentityNdense_2/mul_1:z:0dense_2/BiasAdd:output:0dense_2/beta:output:0*
T
2*)
_gradient_op_typeCustomGradient-111*H
_output_shapes6
4:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: r
dropout_3/IdentityIdentitydense_2/IdentityN:output:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙Z
ConstConst*
_output_shapes
:*
dtype0*!
valueB"         Z
split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙Ý
splitSplitVdropout_3/Identity:output:0Const:output:0split/split_dim:output:0*
T0*

Tlen0*_
_output_shapesM
K:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
	num_splitP
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :}

ExpandDims
ExpandDimssplit:output:2ExpandDims/dim:output:0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙g
Tile/multiplesConst*
_output_shapes
:*
dtype0*%
valueB"            v
TileTileExpandDims:output:0Tile/multiples:output:0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙o
mul/ReadVariableOpReadVariableOpmul_readvariableop_resource*
_output_shapes
:	*
dtype0q
mulMulTile:output:0mul/ReadVariableOp:value:0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙o
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes
:	*
dtype0m
addAddV2mul:z:0add/ReadVariableOp:value:0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙
unstackUnpackadd:z:0*
T0*F
_output_shapes4
2:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
axisţ˙˙˙˙˙˙˙˙*	
num
einsum/EinsumEinsumunstack:output:0unstack:output:1*
N*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙*
equationbnd,bmd->bnmN
	truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   Dv
truedivRealDiveinsum/Einsum:output:0truediv/y:output:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:*
dtype0d
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        f
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        f
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      
strided_sliceStridedSliceReadVariableOp:value:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:	*

begin_mask*
end_mask*
new_axis_maska
Tile_1/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      l
Tile_1Tilestrided_slice:output:0Tile_1/multiples:output:0*
T0* 
_output_shapes
:
M
range/startConst*
_output_shapes
: *
dtype0*
value	B : N
range/limitConst*
_output_shapes
: *
dtype0*
value
B :P
range/deltaConst*
_output_shapes
: *
dtype0*
valueB
 *  ?X

range/CastCastrange/start:output:0*

DstT0*

SrcT0*
_output_shapes
: Z
range/Cast_1Castrange/limit:output:0*

DstT0*

SrcT0*
_output_shapes
: o
rangeRangerange/Cast:y:0range/Cast_1:y:0range/delta:output:0*

Tidx0*
_output_shapes	
:X
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:`
ReshapeReshaperange:output:0Reshape/shape:output:0*
T0*
_output_shapes	
:O
range_1/startConst*
_output_shapes
: *
dtype0*
value	B : P
range_1/limitConst*
_output_shapes
: *
dtype0*
value
B :O
range_1/deltaConst*
_output_shapes
: *
dtype0*
value	B :u
range_1Rangerange_1/start:output:0range_1/limit:output:0range_1/delta:output:0*
_output_shapes	
:S
CastCastrange_1:output:0*

DstT0*

SrcT0*
_output_shapes	
:P
truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  CZ
	truediv_1RealDivCast:y:0truediv_1/y:output:0*
T0*
_output_shapes	
:?
NegNegtruediv_1:z:0*
T0*
_output_shapes	
:J
pow/xConst*
_output_shapes
: *
dtype0*
valueB
 * @FI
powPowpow/x:output:0Neg:y:0*
T0*
_output_shapes	
:
einsum_1/EinsumEinsumReshape:output:0pow:z:0*
N*
T0* 
_output_shapes
:
*
equation...,d->...dO
SinSineinsum_1/Einsum:output:0*
T0* 
_output_shapes
:
O
CosCoseinsum_1/Einsum:output:0*
T0* 
_output_shapes
:
\
split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙
split_1Splitsplit_1/split_dim:output:0Tile_1:output:0*
T0*,
_output_shapes
:
:
*
	num_splitR
mul_1Mulsplit_1:output:0Cos:y:0*
T0* 
_output_shapes
:
R
mul_2Mulsplit_1:output:1Sin:y:0*
T0* 
_output_shapes
:
K
subSub	mul_1:z:0	mul_2:z:0*
T0* 
_output_shapes
:
R
mul_3Mulsplit_1:output:1Cos:y:0*
T0* 
_output_shapes
:
R
mul_4Mulsplit_1:output:0Sin:y:0*
T0* 
_output_shapes
:
O
add_1AddV2	mul_3:z:0	mul_4:z:0*
T0* 
_output_shapes
:
V
concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙p
concatConcatV2sub:z:0	add_1:z:0concat/axis:output:0*
N*
T0* 
_output_shapes
:
g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:*
dtype0f
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      
strided_slice_1StridedSliceReadVariableOp_1:value:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:	*

begin_mask*
end_mask*
new_axis_maska
Tile_2/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      n
Tile_2Tilestrided_slice_1:output:0Tile_2/multiples:output:0*
T0* 
_output_shapes
:
O
range_2/startConst*
_output_shapes
: *
dtype0*
value	B : P
range_2/limitConst*
_output_shapes
: *
dtype0*
value
B :R
range_2/deltaConst*
_output_shapes
: *
dtype0*
valueB
 *  ?\
range_2/CastCastrange_2/start:output:0*

DstT0*

SrcT0*
_output_shapes
: ^
range_2/Cast_1Castrange_2/limit:output:0*

DstT0*

SrcT0*
_output_shapes
: w
range_2Rangerange_2/Cast:y:0range_2/Cast_1:y:0range_2/delta:output:0*

Tidx0*
_output_shapes	
:Z
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB:f
	Reshape_1Reshaperange_2:output:0Reshape_1/shape:output:0*
T0*
_output_shapes	
:O
range_3/startConst*
_output_shapes
: *
dtype0*
value	B : P
range_3/limitConst*
_output_shapes
: *
dtype0*
value
B :O
range_3/deltaConst*
_output_shapes
: *
dtype0*
value	B :u
range_3Rangerange_3/start:output:0range_3/limit:output:0range_3/delta:output:0*
_output_shapes	
:U
Cast_1Castrange_3:output:0*

DstT0*

SrcT0*
_output_shapes	
:P
truediv_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  C\
	truediv_2RealDiv
Cast_1:y:0truediv_2/y:output:0*
T0*
_output_shapes	
:A
Neg_1Negtruediv_2:z:0*
T0*
_output_shapes	
:L
pow_1/xConst*
_output_shapes
: *
dtype0*
valueB
 * @FO
pow_1Powpow_1/x:output:0	Neg_1:y:0*
T0*
_output_shapes	
:
einsum_2/EinsumEinsumReshape_1:output:0	pow_1:z:0*
N*
T0* 
_output_shapes
:
*
equation...,d->...dQ
Sin_1Sineinsum_2/Einsum:output:0*
T0* 
_output_shapes
:
Q
Cos_1Coseinsum_2/Einsum:output:0*
T0* 
_output_shapes
:
\
split_2/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙
split_2Splitsplit_2/split_dim:output:0Tile_2:output:0*
T0*,
_output_shapes
:
:
*
	num_splitT
mul_5Mulsplit_2:output:0	Cos_1:y:0*
T0* 
_output_shapes
:
T
mul_6Mulsplit_2:output:1	Sin_1:y:0*
T0* 
_output_shapes
:
M
sub_1Sub	mul_5:z:0	mul_6:z:0*
T0* 
_output_shapes
:
T
mul_7Mulsplit_2:output:1	Cos_1:y:0*
T0* 
_output_shapes
:
T
mul_8Mulsplit_2:output:0	Sin_1:y:0*
T0* 
_output_shapes
:
O
add_2AddV2	mul_7:z:0	mul_8:z:0*
T0* 
_output_shapes
:
X
concat_1/axisConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙v
concat_1ConcatV2	sub_1:z:0	add_2:z:0concat_1/axis:output:0*
N*
T0* 
_output_shapes
:

einsum_3/EinsumEinsumconcat:output:0concat_1:output:0*
N*
T0* 
_output_shapes
:
*
equation	mk,nk->mnm
add_3AddV2truediv:z:0einsum_3/Einsum:output:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙[
sqr_re_lu_1/ReluRelu	add_3:z:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙t
sqr_re_lu_1/SquareSquaresqr_re_lu_1/Relu:activations:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
einsum_4/EinsumEinsumsqr_re_lu_1/Square:y:0split:output:1*
N*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙*
equationbnm,bme->bnen
mul_9Mulsplit:output:0einsum_4/Einsum:output:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
 dense_3/Tensordot/ReadVariableOpReadVariableOp)dense_3_tensordot_readvariableop_resource* 
_output_shapes
:
*
dtype0`
dense_3/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:g
dense_3/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       ^
dense_3/Tensordot/ShapeShape	mul_9:z:0*
T0*
_output_shapes
::íĎa
dense_3/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : Ű
dense_3/Tensordot/GatherV2GatherV2 dense_3/Tensordot/Shape:output:0dense_3/Tensordot/free:output:0(dense_3/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:c
!dense_3/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ß
dense_3/Tensordot/GatherV2_1GatherV2 dense_3/Tensordot/Shape:output:0dense_3/Tensordot/axes:output:0*dense_3/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:a
dense_3/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
dense_3/Tensordot/ProdProd#dense_3/Tensordot/GatherV2:output:0 dense_3/Tensordot/Const:output:0*
T0*
_output_shapes
: c
dense_3/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 
dense_3/Tensordot/Prod_1Prod%dense_3/Tensordot/GatherV2_1:output:0"dense_3/Tensordot/Const_1:output:0*
T0*
_output_shapes
: _
dense_3/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ź
dense_3/Tensordot/concatConcatV2dense_3/Tensordot/free:output:0dense_3/Tensordot/axes:output:0&dense_3/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:
dense_3/Tensordot/stackPackdense_3/Tensordot/Prod:output:0!dense_3/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:
dense_3/Tensordot/transpose	Transpose	mul_9:z:0!dense_3/Tensordot/concat:output:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙˘
dense_3/Tensordot/ReshapeReshapedense_3/Tensordot/transpose:y:0 dense_3/Tensordot/stack:output:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙Ł
dense_3/Tensordot/MatMulMatMul"dense_3/Tensordot/Reshape:output:0(dense_3/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙d
dense_3/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:a
dense_3/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Ç
dense_3/Tensordot/concat_1ConcatV2#dense_3/Tensordot/GatherV2:output:0"dense_3/Tensordot/Const_2:output:0(dense_3/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
dense_3/TensordotReshape"dense_3/Tensordot/MatMul:product:0#dense_3/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
dense_3/BiasAddBiasAdddense_3/Tensordot:output:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙c
add_4AddV2dense_3/BiasAdd:output:0x*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙Á
NoOpNoOp^ReadVariableOp^ReadVariableOp_1^add/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp!^dense_2/Tensordot/ReadVariableOp^dense_3/BiasAdd/ReadVariableOp!^dense_3/Tensordot/ReadVariableOp^mul/ReadVariableOp#^scaled_norm_1/mul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ^
IdentityIdentity	add_4:z:0^NoOp*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:˙˙˙˙˙˙˙˙˙: : : : : : : : : 2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12(
add/ReadVariableOpadd/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2D
 dense_2/Tensordot/ReadVariableOp dense_2/Tensordot/ReadVariableOp2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2D
 dense_3/Tensordot/ReadVariableOp dense_3/Tensordot/ReadVariableOp2(
mul/ReadVariableOpmul/ReadVariableOp2H
"scaled_norm_1/mul_1/ReadVariableOp"scaled_norm_1/mul_1/ReadVariableOp:P L
-
_output_shapes
:˙˙˙˙˙˙˙˙˙

_user_specified_namex


Ą
__inference_gradient_func_7300
result_grads_0
result_grads_1
result_grads_2
dense_2_beta
dense_2_biasadd
identity

identity_1Ŕ
PartitionedCallPartitionedCallresult_grads_0result_grads_1result_grads_2dense_2_betadense_2_biasadd*
Tin	
2*
Tout
2*/
_output_shapes
:˙˙˙˙˙˙˙˙˙: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *)
f$R"
 __inference_internal_grad_fn_302f
IdentityIdentityPartitionedCall:output:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙Q

Identity_1IdentityPartitionedCall:output:1*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: : :˙˙˙˙˙˙˙˙˙:] Y
-
_output_shapes
:˙˙˙˙˙˙˙˙˙
(
_user_specified_nameresult_grads_0:]Y
-
_output_shapes
:˙˙˙˙˙˙˙˙˙
(
_user_specified_nameresult_grads_1:FB

_output_shapes
: 
(
_user_specified_nameresult_grads_2:D@

_output_shapes
: 
&
_user_specified_namedense_2/beta:^Z
-
_output_shapes
:˙˙˙˙˙˙˙˙˙
)
_user_specified_namedense_2/BiasAdd


Ą
__inference_gradient_func_7311
result_grads_0
result_grads_1
result_grads_2
dense_2_beta
dense_2_biasadd
identity

identity_1Á
PartitionedCallPartitionedCallresult_grads_0result_grads_1result_grads_2dense_2_betadense_2_biasadd*
Tin	
2*
Tout
2*/
_output_shapes
:˙˙˙˙˙˙˙˙˙: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 **
f%R#
!__inference_internal_grad_fn_1692f
IdentityIdentityPartitionedCall:output:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙Q

Identity_1IdentityPartitionedCall:output:1*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: : :˙˙˙˙˙˙˙˙˙:] Y
-
_output_shapes
:˙˙˙˙˙˙˙˙˙
(
_user_specified_nameresult_grads_0:]Y
-
_output_shapes
:˙˙˙˙˙˙˙˙˙
(
_user_specified_nameresult_grads_1:FB

_output_shapes
: 
(
_user_specified_nameresult_grads_2:D@

_output_shapes
: 
&
_user_specified_namedense_2/beta:^Z
-
_output_shapes
:˙˙˙˙˙˙˙˙˙
)
_user_specified_namedense_2/BiasAdd
˙
Đ
'__inference_restored_function_body_6610
x
unknown: 
	unknown_0:

	unknown_1:	
	unknown_2:	
	unknown_3:	
	unknown_4:	
	unknown_5:	
	unknown_6:

	unknown_7:	
identity˘StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallxunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7*
Tin
2
*
Tout
2*-
_output_shapes
:˙˙˙˙˙˙˙˙˙*+
_read_only_resource_inputs
		*-
config_proto

CPU

GPU 2J 8 *F
fAR?
=__inference_gau_layer_call_and_return_conditional_losses_1060u
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:˙˙˙˙˙˙˙˙˙: : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
-
_output_shapes
:˙˙˙˙˙˙˙˙˙

_user_specified_namex:$ 

_user_specified_name6590:$ 

_user_specified_name6592:$ 

_user_specified_name6594:$ 

_user_specified_name6596:$ 

_user_specified_name6598:$ 

_user_specified_name6600:$ 

_user_specified_name6602:$ 

_user_specified_name6604:$	 

_user_specified_name6606
Ď

'__inference_restored_function_body_6526

inputs
unknown:

	unknown_0:	
identity˘StatefulPartitionedCallş
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_similarity_layer_call_and_return_conditional_losses_264p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:˙˙˙˙˙˙˙˙˙: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs:$ 

_user_specified_name6520:$ 

_user_specified_name6522
č
á
!__inference_internal_grad_fn_7447
result_grads_0
result_grads_1
result_grads_2-
)mul_model_embedding_model_activation_beta3
/mul_model_embedding_model_encoder_start_biasadd
identity

identity_1Ż
mulMul)mul_model_embedding_model_activation_beta/mul_model_embedding_model_encoder_start_biasadd^result_grads_0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙S
SigmoidSigmoidmul:z:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
mul_1Mul)mul_model_embedding_model_activation_beta/mul_model_embedding_model_encoder_start_biasadd*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?_
subSubsub/x:output:0Sigmoid:y:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙X
mul_2Mul	mul_1:z:0sub:z:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙J
add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?_
addAddV2add/x:output:0	mul_2:z:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙Z
mul_3MulSigmoid:y:0add:z:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙y
SquareSquare/mul_model_embedding_model_encoder_start_biasadd*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙`
mul_4Mulresult_grads_0
Square:y:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙\
mul_5Mul	mul_4:z:0Sigmoid:y:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙L
sub_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?c
sub_1Subsub_1/x:output:0Sigmoid:y:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙Z
mul_6Mul	mul_5:z:0	sub_1:z:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙Z
ConstConst*
_output_shapes
:*
dtype0*!
valueB"          F
SumSum	mul_6:z:0Const:output:0*
T0*
_output_shapes
: _
mul_7Mulresult_grads_0	mul_3:z:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙W
IdentityIdentity	mul_7:z:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙E

Identity_1IdentitySum:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: : :˙˙˙˙˙˙˙˙˙: 
&
 _has_manual_control_dependencies(
-
_output_shapes
:˙˙˙˙˙˙˙˙˙
(
_user_specified_nameresult_grads_0:]Y
-
_output_shapes
:˙˙˙˙˙˙˙˙˙
(
_user_specified_nameresult_grads_1:FB

_output_shapes
: 
(
_user_specified_nameresult_grads_2:]Y

_output_shapes
: 
?
_user_specified_name'%model/embedding_model/activation/beta:zv
-
_output_shapes
:˙˙˙˙˙˙˙˙˙
E
_user_specified_name-+model/embedding_model/encoder_start/BiasAdd
Ú
a
C__inference_dropout_4_layer_call_and_return_conditional_losses_7213

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:˙˙˙˙˙˙˙˙˙:P L
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
ü
Ú
"__inference_signature_wrapper_7130
input_1
unknown: 
	unknown_0:	
	unknown_1:	
	unknown_2: 
	unknown_3:

	unknown_4:	
	unknown_5:	
	unknown_6:	
	unknown_7:	
	unknown_8:	
	unknown_9:


unknown_10:	

unknown_11: 

unknown_12:


unknown_13:	

unknown_14:	

unknown_15:	

unknown_16:	

unknown_17:	

unknown_18:


unknown_19:	

unknown_20:


unknown_21:	
identity˘StatefulPartitionedCallÓ
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21*#
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:˙˙˙˙˙˙˙˙˙*9
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *(
f#R!
__inference__wrapped_model_6533p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Y
_input_shapesH
F:˙˙˙˙˙˙˙˙˙: : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
,
_output_shapes
:˙˙˙˙˙˙˙˙˙
!
_user_specified_name	input_1:$ 

_user_specified_name7082:$ 

_user_specified_name7084:$ 

_user_specified_name7086:$ 

_user_specified_name7088:$ 

_user_specified_name7090:$ 

_user_specified_name7092:$ 

_user_specified_name7094:$ 

_user_specified_name7096:$	 

_user_specified_name7098:$
 

_user_specified_name7100:$ 

_user_specified_name7102:$ 

_user_specified_name7104:$ 

_user_specified_name7106:$ 

_user_specified_name7108:$ 

_user_specified_name7110:$ 

_user_specified_name7112:$ 

_user_specified_name7114:$ 

_user_specified_name7116:$ 

_user_specified_name7118:$ 

_user_specified_name7120:$ 

_user_specified_name7122:$ 

_user_specified_name7124:$ 

_user_specified_name7126

ú
?__inference_model_layer_call_and_return_conditional_losses_6925
input_1
embedding_model_6877: '
embedding_model_6879:	#
embedding_model_6881:	
embedding_model_6883: (
embedding_model_6885:
#
embedding_model_6887:	'
embedding_model_6889:	'
embedding_model_6891:	#
embedding_model_6893:	#
embedding_model_6895:	(
embedding_model_6897:
#
embedding_model_6899:	
embedding_model_6901: (
embedding_model_6903:
#
embedding_model_6905:	'
embedding_model_6907:	'
embedding_model_6909:	#
embedding_model_6911:	#
embedding_model_6913:	(
embedding_model_6915:
#
embedding_model_6917:	(
embedding_model_6919:
#
embedding_model_6921:	
identity˘'embedding_model/StatefulPartitionedCall
'embedding_model/StatefulPartitionedCallStatefulPartitionedCallinput_1embedding_model_6877embedding_model_6879embedding_model_6881embedding_model_6883embedding_model_6885embedding_model_6887embedding_model_6889embedding_model_6891embedding_model_6893embedding_model_6895embedding_model_6897embedding_model_6899embedding_model_6901embedding_model_6903embedding_model_6905embedding_model_6907embedding_model_6909embedding_model_6911embedding_model_6913embedding_model_6915embedding_model_6917embedding_model_6919embedding_model_6921*#
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:˙˙˙˙˙˙˙˙˙*9
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_embedding_model_layer_call_and_return_conditional_losses_6685
IdentityIdentity0embedding_model/StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙L
NoOpNoOp(^embedding_model/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Y
_input_shapesH
F:˙˙˙˙˙˙˙˙˙: : : : : : : : : : : : : : : : : : : : : : : 2R
'embedding_model/StatefulPartitionedCall'embedding_model/StatefulPartitionedCall:U Q
,
_output_shapes
:˙˙˙˙˙˙˙˙˙
!
_user_specified_name	input_1:$ 

_user_specified_name6877:$ 

_user_specified_name6879:$ 

_user_specified_name6881:$ 

_user_specified_name6883:$ 

_user_specified_name6885:$ 

_user_specified_name6887:$ 

_user_specified_name6889:$ 

_user_specified_name6891:$	 

_user_specified_name6893:$
 

_user_specified_name6895:$ 

_user_specified_name6897:$ 

_user_specified_name6899:$ 

_user_specified_name6901:$ 

_user_specified_name6903:$ 

_user_specified_name6905:$ 

_user_specified_name6907:$ 

_user_specified_name6909:$ 

_user_specified_name6911:$ 

_user_specified_name6913:$ 

_user_specified_name6915:$ 

_user_specified_name6917:$ 

_user_specified_name6919:$ 

_user_specified_name6921


G__inference_encoder_start_layer_call_and_return_conditional_losses_6568

inputs4
!tensordot_readvariableop_resource:	.
biasadd_readvariableop_resource:	
identity˘BiasAdd/ReadVariableOp˘Tensordot/ReadVariableOp{
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes
:	*
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       S
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
::íĎY
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ť
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ż
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:z
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙\
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : §
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0~
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙e
IdentityIdentityBiasAdd:output:0^NoOp*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙V
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:˙˙˙˙˙˙˙˙˙: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:T P
,
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
Ł
Ź
!__inference_internal_grad_fn_1692
result_grads_0
result_grads_1
result_grads_2
mul_dense_2_beta
mul_dense_2_biasadd
identity

identity_1z
mulMulmul_dense_2_betamul_dense_2_biasadd^result_grads_0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙S
SigmoidSigmoidmul:z:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙k
mul_1Mulmul_dense_2_betamul_dense_2_biasadd*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?_
subSubsub/x:output:0Sigmoid:y:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙X
mul_2Mul	mul_1:z:0sub:z:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙J
add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?_
addAddV2add/x:output:0	mul_2:z:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙Z
mul_3MulSigmoid:y:0add:z:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙]
SquareSquaremul_dense_2_biasadd*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙`
mul_4Mulresult_grads_0
Square:y:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙\
mul_5Mul	mul_4:z:0Sigmoid:y:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙L
sub_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?c
sub_1Subsub_1/x:output:0Sigmoid:y:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙Z
mul_6Mul	mul_5:z:0	sub_1:z:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙Z
ConstConst*
_output_shapes
:*
dtype0*!
valueB"          F
SumSum	mul_6:z:0Const:output:0*
T0*
_output_shapes
: _
mul_7Mulresult_grads_0	mul_3:z:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙W
IdentityIdentity	mul_7:z:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙E

Identity_1IdentitySum:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: : :˙˙˙˙˙˙˙˙˙: 
&
 _has_manual_control_dependencies(
-
_output_shapes
:˙˙˙˙˙˙˙˙˙
(
_user_specified_nameresult_grads_0:]Y
-
_output_shapes
:˙˙˙˙˙˙˙˙˙
(
_user_specified_nameresult_grads_1:FB

_output_shapes
: 
(
_user_specified_nameresult_grads_2:

_output_shapes
: :3/
-
_output_shapes
:˙˙˙˙˙˙˙˙˙
ľ
E
)__inference_activation_layer_call_fn_7174

inputs
identityľ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:˙˙˙˙˙˙˙˙˙* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_activation_layer_call_and_return_conditional_losses_6586f
IdentityIdentityPartitionedCall:output:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:˙˙˙˙˙˙˙˙˙:U Q
-
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
žf

__inference__wrapped_model_6533
input_1K
Amodel_embedding_model_scaled_sinusoidal_positional_embedding_6389: X
Emodel_embedding_model_encoder_start_tensordot_readvariableop_resource:	R
Cmodel_embedding_model_encoder_start_biasadd_readvariableop_resource:	(
model_embedding_model_gau_6450: 2
model_embedding_model_gau_6452:
-
model_embedding_model_gau_6454:	1
model_embedding_model_gau_6456:	1
model_embedding_model_gau_6458:	-
model_embedding_model_gau_6460:	-
model_embedding_model_gau_6462:	2
model_embedding_model_gau_6464:
-
model_embedding_model_gau_6466:	*
 model_embedding_model_gau_1_6492: 4
 model_embedding_model_gau_1_6494:
/
 model_embedding_model_gau_1_6496:	3
 model_embedding_model_gau_1_6498:	3
 model_embedding_model_gau_1_6500:	/
 model_embedding_model_gau_1_6502:	/
 model_embedding_model_gau_1_6504:	4
 model_embedding_model_gau_1_6506:
/
 model_embedding_model_gau_1_6508:	9
%model_embedding_model_similarity_6527:
4
%model_embedding_model_similarity_6529:	
identity˘:model/embedding_model/encoder_start/BiasAdd/ReadVariableOp˘<model/embedding_model/encoder_start/Tensordot/ReadVariableOp˘1model/embedding_model/gau/StatefulPartitionedCall˘3model/embedding_model/gau_1/StatefulPartitionedCall˘Tmodel/embedding_model/scaled_sinusoidal_positional_embedding/StatefulPartitionedCall˘8model/embedding_model/similarity/StatefulPartitionedCallŹ
Tmodel/embedding_model/scaled_sinusoidal_positional_embedding/StatefulPartitionedCallStatefulPartitionedCallinput_1Amodel_embedding_model_scaled_sinusoidal_positional_embedding_6389*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:˙˙˙˙˙˙˙˙˙*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *0
f+R)
'__inference_restored_function_body_6388Ă
<model/embedding_model/encoder_start/Tensordot/ReadVariableOpReadVariableOpEmodel_embedding_model_encoder_start_tensordot_readvariableop_resource*
_output_shapes
:	*
dtype0|
2model/embedding_model/encoder_start/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:
2model/embedding_model/encoder_start/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       Î
3model/embedding_model/encoder_start/Tensordot/ShapeShape]model/embedding_model/scaled_sinusoidal_positional_embedding/StatefulPartitionedCall:output:0*
T0*
_output_shapes
::íĎ}
;model/embedding_model/encoder_start/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : Ë
6model/embedding_model/encoder_start/Tensordot/GatherV2GatherV2<model/embedding_model/encoder_start/Tensordot/Shape:output:0;model/embedding_model/encoder_start/Tensordot/free:output:0Dmodel/embedding_model/encoder_start/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:
=model/embedding_model/encoder_start/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Ď
8model/embedding_model/encoder_start/Tensordot/GatherV2_1GatherV2<model/embedding_model/encoder_start/Tensordot/Shape:output:0;model/embedding_model/encoder_start/Tensordot/axes:output:0Fmodel/embedding_model/encoder_start/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:}
3model/embedding_model/encoder_start/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: Ú
2model/embedding_model/encoder_start/Tensordot/ProdProd?model/embedding_model/encoder_start/Tensordot/GatherV2:output:0<model/embedding_model/encoder_start/Tensordot/Const:output:0*
T0*
_output_shapes
: 
5model/embedding_model/encoder_start/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ŕ
4model/embedding_model/encoder_start/Tensordot/Prod_1ProdAmodel/embedding_model/encoder_start/Tensordot/GatherV2_1:output:0>model/embedding_model/encoder_start/Tensordot/Const_1:output:0*
T0*
_output_shapes
: {
9model/embedding_model/encoder_start/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ź
4model/embedding_model/encoder_start/Tensordot/concatConcatV2;model/embedding_model/encoder_start/Tensordot/free:output:0;model/embedding_model/encoder_start/Tensordot/axes:output:0Bmodel/embedding_model/encoder_start/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:ĺ
3model/embedding_model/encoder_start/Tensordot/stackPack;model/embedding_model/encoder_start/Tensordot/Prod:output:0=model/embedding_model/encoder_start/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:
7model/embedding_model/encoder_start/Tensordot/transpose	Transpose]model/embedding_model/scaled_sinusoidal_positional_embedding/StatefulPartitionedCall:output:0=model/embedding_model/encoder_start/Tensordot/concat:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙ö
5model/embedding_model/encoder_start/Tensordot/ReshapeReshape;model/embedding_model/encoder_start/Tensordot/transpose:y:0<model/embedding_model/encoder_start/Tensordot/stack:output:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙÷
4model/embedding_model/encoder_start/Tensordot/MatMulMatMul>model/embedding_model/encoder_start/Tensordot/Reshape:output:0Dmodel/embedding_model/encoder_start/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
5model/embedding_model/encoder_start/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:}
;model/embedding_model/encoder_start/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ˇ
6model/embedding_model/encoder_start/Tensordot/concat_1ConcatV2?model/embedding_model/encoder_start/Tensordot/GatherV2:output:0>model/embedding_model/encoder_start/Tensordot/Const_2:output:0Dmodel/embedding_model/encoder_start/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:ń
-model/embedding_model/encoder_start/TensordotReshape>model/embedding_model/encoder_start/Tensordot/MatMul:product:0?model/embedding_model/encoder_start/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙ť
:model/embedding_model/encoder_start/BiasAdd/ReadVariableOpReadVariableOpCmodel_embedding_model_encoder_start_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0ę
+model/embedding_model/encoder_start/BiasAddBiasAdd6model/embedding_model/encoder_start/Tensordot:output:0Bmodel/embedding_model/encoder_start/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙j
%model/embedding_model/activation/betaConst*
_output_shapes
: *
dtype0*
valueB
 *  ?É
$model/embedding_model/activation/mulMul.model/embedding_model/activation/beta:output:04model/embedding_model/encoder_start/BiasAdd:output:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
(model/embedding_model/activation/SigmoidSigmoid(model/embedding_model/activation/mul:z:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙É
&model/embedding_model/activation/mul_1Mul4model/embedding_model/encoder_start/BiasAdd:output:0,model/embedding_model/activation/Sigmoid:y:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
)model/embedding_model/activation/IdentityIdentity*model/embedding_model/activation/mul_1:z:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙Í
*model/embedding_model/activation/IdentityN	IdentityN*model/embedding_model/activation/mul_1:z:04model/embedding_model/encoder_start/BiasAdd:output:0.model/embedding_model/activation/beta:output:0*
T
2**
_gradient_op_typeCustomGradient-6419*H
_output_shapes6
4:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: Ł
1model/embedding_model/gau/StatefulPartitionedCallStatefulPartitionedCall3model/embedding_model/activation/IdentityN:output:0model_embedding_model_gau_6450model_embedding_model_gau_6452model_embedding_model_gau_6454model_embedding_model_gau_6456model_embedding_model_gau_6458model_embedding_model_gau_6460model_embedding_model_gau_6462model_embedding_model_gau_6464model_embedding_model_gau_6466*
Tin
2
*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:˙˙˙˙˙˙˙˙˙*+
_read_only_resource_inputs
		*-
config_proto

CPU

GPU 2J 8 *0
f+R)
'__inference_restored_function_body_6449ž
3model/embedding_model/gau_1/StatefulPartitionedCallStatefulPartitionedCall:model/embedding_model/gau/StatefulPartitionedCall:output:0 model_embedding_model_gau_1_6492 model_embedding_model_gau_1_6494 model_embedding_model_gau_1_6496 model_embedding_model_gau_1_6498 model_embedding_model_gau_1_6500 model_embedding_model_gau_1_6502 model_embedding_model_gau_1_6504 model_embedding_model_gau_1_6506 model_embedding_model_gau_1_6508*
Tin
2
*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:˙˙˙˙˙˙˙˙˙*+
_read_only_resource_inputs
		*-
config_proto

CPU

GPU 2J 8 *0
f+R)
'__inference_restored_function_body_6491ú
@model/embedding_model/generalized_mean_pooling1d/PartitionedCallPartitionedCall<model/embedding_model/gau_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:˙˙˙˙˙˙˙˙˙* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *0
f+R)
'__inference_restored_function_body_6515˛
(model/embedding_model/dropout_4/IdentityIdentityImodel/embedding_model/generalized_mean_pooling1d/PartitionedCall:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ă
8model/embedding_model/similarity/StatefulPartitionedCallStatefulPartitionedCall1model/embedding_model/dropout_4/Identity:output:0%model_embedding_model_similarity_6527%model_embedding_model_similarity_6529*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *0
f+R)
'__inference_restored_function_body_6526
IdentityIdentityAmodel/embedding_model/similarity/StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
NoOpNoOp;^model/embedding_model/encoder_start/BiasAdd/ReadVariableOp=^model/embedding_model/encoder_start/Tensordot/ReadVariableOp2^model/embedding_model/gau/StatefulPartitionedCall4^model/embedding_model/gau_1/StatefulPartitionedCallU^model/embedding_model/scaled_sinusoidal_positional_embedding/StatefulPartitionedCall9^model/embedding_model/similarity/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Y
_input_shapesH
F:˙˙˙˙˙˙˙˙˙: : : : : : : : : : : : : : : : : : : : : : : 2x
:model/embedding_model/encoder_start/BiasAdd/ReadVariableOp:model/embedding_model/encoder_start/BiasAdd/ReadVariableOp2|
<model/embedding_model/encoder_start/Tensordot/ReadVariableOp<model/embedding_model/encoder_start/Tensordot/ReadVariableOp2f
1model/embedding_model/gau/StatefulPartitionedCall1model/embedding_model/gau/StatefulPartitionedCall2j
3model/embedding_model/gau_1/StatefulPartitionedCall3model/embedding_model/gau_1/StatefulPartitionedCall2Ź
Tmodel/embedding_model/scaled_sinusoidal_positional_embedding/StatefulPartitionedCallTmodel/embedding_model/scaled_sinusoidal_positional_embedding/StatefulPartitionedCall2t
8model/embedding_model/similarity/StatefulPartitionedCall8model/embedding_model/similarity/StatefulPartitionedCall:U Q
,
_output_shapes
:˙˙˙˙˙˙˙˙˙
!
_user_specified_name	input_1:$ 

_user_specified_name6389:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:$ 

_user_specified_name6450:$ 

_user_specified_name6452:$ 

_user_specified_name6454:$ 

_user_specified_name6456:$ 

_user_specified_name6458:$	 

_user_specified_name6460:$
 

_user_specified_name6462:$ 

_user_specified_name6464:$ 

_user_specified_name6466:$ 

_user_specified_name6492:$ 

_user_specified_name6494:$ 

_user_specified_name6496:$ 

_user_specified_name6498:$ 

_user_specified_name6500:$ 

_user_specified_name6502:$ 

_user_specified_name6504:$ 

_user_specified_name6506:$ 

_user_specified_name6508:$ 

_user_specified_name6527:$ 

_user_specified_name6529

Đ
'__inference_restored_function_body_6652
x
unknown: 
	unknown_0:

	unknown_1:	
	unknown_2:	
	unknown_3:	
	unknown_4:	
	unknown_5:	
	unknown_6:

	unknown_7:	
identity˘StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallxunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7*
Tin
2
*
Tout
2*-
_output_shapes
:˙˙˙˙˙˙˙˙˙*+
_read_only_resource_inputs
		*-
config_proto

CPU

GPU 2J 8 *H
fCRA
?__inference_gau_1_layer_call_and_return_conditional_losses_1270u
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:˙˙˙˙˙˙˙˙˙: : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
-
_output_shapes
:˙˙˙˙˙˙˙˙˙

_user_specified_namex:$ 

_user_specified_name6632:$ 

_user_specified_name6634:$ 

_user_specified_name6636:$ 

_user_specified_name6638:$ 

_user_specified_name6640:$ 

_user_specified_name6642:$ 

_user_specified_name6644:$ 

_user_specified_name6646:$	 

_user_specified_name6648
ű
U
9__inference_generalized_mean_pooling1d_layer_call_fn_7223

inputs
identityČ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *]
fXRV
T__inference_generalized_mean_pooling1d_layer_call_and_return_conditional_losses_7193i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:e a
=
_output_shapes+
):'˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs

§
 __inference_internal_grad_fn_877
result_grads_0
result_grads_1
result_grads_2
mul_dense_beta
mul_dense_biasadd
identity

identity_1v
mulMulmul_dense_betamul_dense_biasadd^result_grads_0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙S
SigmoidSigmoidmul:z:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙g
mul_1Mulmul_dense_betamul_dense_biasadd*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?_
subSubsub/x:output:0Sigmoid:y:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙X
mul_2Mul	mul_1:z:0sub:z:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙J
add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?_
addAddV2add/x:output:0	mul_2:z:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙Z
mul_3MulSigmoid:y:0add:z:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙[
SquareSquaremul_dense_biasadd*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙`
mul_4Mulresult_grads_0
Square:y:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙\
mul_5Mul	mul_4:z:0Sigmoid:y:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙L
sub_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?c
sub_1Subsub_1/x:output:0Sigmoid:y:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙Z
mul_6Mul	mul_5:z:0	sub_1:z:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙Z
ConstConst*
_output_shapes
:*
dtype0*!
valueB"          F
SumSum	mul_6:z:0Const:output:0*
T0*
_output_shapes
: _
mul_7Mulresult_grads_0	mul_3:z:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙W
IdentityIdentity	mul_7:z:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙E

Identity_1IdentitySum:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: : :˙˙˙˙˙˙˙˙˙: 
&
 _has_manual_control_dependencies(
-
_output_shapes
:˙˙˙˙˙˙˙˙˙
(
_user_specified_nameresult_grads_0:]Y
-
_output_shapes
:˙˙˙˙˙˙˙˙˙
(
_user_specified_nameresult_grads_1:FB

_output_shapes
: 
(
_user_specified_nameresult_grads_2:

_output_shapes
: :3/
-
_output_shapes
:˙˙˙˙˙˙˙˙˙
ž
o
S__inference_generalized_mean_pooling1d_layer_call_and_return_conditional_losses_181

inputs
identityW
Min/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :e
MinMininputsMin/reduction_indices:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙h
strided_slice/stackConst*
_output_shapes
:*
dtype0*!
valueB"            j
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"            j
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         
strided_sliceStridedSliceMin:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙*

begin_mask*
end_mask*
new_axis_maskb
subSubinputsstrided_slice:output:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙J
add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?]
addAddV2sub:z:0add/y:output:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙J
Pow/yConst*
_output_shapes
: *
dtype0*
valueB
 *  @@[
PowPowadd:z:0Pow/y:output:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙s
1generalized_mean_pooling1d/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :
generalized_mean_pooling1d/MeanMeanPow:z:0:generalized_mean_pooling1d/Mean/reduction_indices:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙L
Pow_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *ŤŞŞ>{
Pow_1Pow(generalized_mean_pooling1d/Mean:output:0Pow_1/y:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Z
add_1AddV2	Pow_1:z:0Min:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙L
sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?\
sub_1Sub	add_1:z:0sub_1/y:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙R
IdentityIdentity	sub_1:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:˙˙˙˙˙˙˙˙˙:U Q
-
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs

ř
D__inference_similarity_layer_call_and_return_conditional_losses_3173

inputs2
matmul_readvariableop_resource:
.
biasadd_readvariableop_resource:	
identity˘BiasAdd/ReadVariableOp˘MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙b
l2_normalize/SquareSquareBiasAdd:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙d
"l2_normalize/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B : 
l2_normalize/SumSuml2_normalize/Square:y:0+l2_normalize/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
	keep_dims([
l2_normalize/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ěź+
l2_normalize/MaximumMaximuml2_normalize/Sum:output:0l2_normalize/Maximum/y:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙g
l2_normalize/RsqrtRsqrtl2_normalize/Maximum:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙p
l2_normalizeMulBiasAdd:output:0l2_normalize/Rsqrt:y:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 `
IdentityIdentityl2_normalize:z:0^NoOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:˙˙˙˙˙˙˙˙˙: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
ę	
Ë
"__inference_gau_layer_call_fn_1551
x
unknown: 
	unknown_0:

	unknown_1:	
	unknown_2:	
	unknown_3:	
	unknown_4:	
	unknown_5:	
	unknown_6:

	unknown_7:	
identity˘StatefulPartitionedCallą
StatefulPartitionedCallStatefulPartitionedCallxunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7*
Tin
2
*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:˙˙˙˙˙˙˙˙˙*+
_read_only_resource_inputs
		*0
config_proto 

CPU

GPU2*0J 8 *F
fAR?
=__inference_gau_layer_call_and_return_conditional_losses_1537`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 u
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:˙˙˙˙˙˙˙˙˙: : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
-
_output_shapes
:˙˙˙˙˙˙˙˙˙

_user_specified_namex
Î
U
9__inference_generalized_mean_pooling1d_layer_call_fn_3030

inputs
identityĂ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:˙˙˙˙˙˙˙˙˙* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *]
fXRV
T__inference_generalized_mean_pooling1d_layer_call_and_return_conditional_losses_3025a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:˙˙˙˙˙˙˙˙˙:U Q
-
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
Ú
a
C__inference_dropout_4_layer_call_and_return_conditional_losses_6677

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:˙˙˙˙˙˙˙˙˙:P L
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs



__inference_gradient_func_7344
result_grads_0
result_grads_1
result_grads_2

dense_beta
dense_biasadd
identity

identity_1ź
PartitionedCallPartitionedCallresult_grads_0result_grads_1result_grads_2
dense_betadense_biasadd*
Tin	
2*
Tout
2*/
_output_shapes
:˙˙˙˙˙˙˙˙˙: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *)
f$R"
 __inference_internal_grad_fn_877f
IdentityIdentityPartitionedCall:output:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙Q

Identity_1IdentityPartitionedCall:output:1*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: : :˙˙˙˙˙˙˙˙˙:] Y
-
_output_shapes
:˙˙˙˙˙˙˙˙˙
(
_user_specified_nameresult_grads_0:]Y
-
_output_shapes
:˙˙˙˙˙˙˙˙˙
(
_user_specified_nameresult_grads_1:FB

_output_shapes
: 
(
_user_specified_nameresult_grads_2:B>

_output_shapes
: 
$
_user_specified_name
dense/beta:\X
-
_output_shapes
:˙˙˙˙˙˙˙˙˙
'
_user_specified_namedense/BiasAdd
Ú
a
C__inference_dropout_4_layer_call_and_return_conditional_losses_7218

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:˙˙˙˙˙˙˙˙˙:P L
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
Ć/
é
I__inference_embedding_model_layer_call_and_return_conditional_losses_6748
input_25
+scaled_sinusoidal_positional_embedding_6688: %
encoder_start_6691:	!
encoder_start_6693:	
gau_6697: 
gau_6699:

gau_6701:	
gau_6703:	
gau_6705:	
gau_6707:	
gau_6709:	
gau_6711:

gau_6713:	

gau_1_6716: 

gau_1_6718:


gau_1_6720:	

gau_1_6722:	

gau_1_6724:	

gau_1_6726:	

gau_1_6728:	

gau_1_6730:


gau_1_6732:	#
similarity_6742:

similarity_6744:	
identity˘%encoder_start/StatefulPartitionedCall˘gau/StatefulPartitionedCall˘gau_1/StatefulPartitionedCall˘>scaled_sinusoidal_positional_embedding/StatefulPartitionedCall˘"similarity/StatefulPartitionedCall
>scaled_sinusoidal_positional_embedding/StatefulPartitionedCallStatefulPartitionedCallinput_2+scaled_sinusoidal_positional_embedding_6688*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:˙˙˙˙˙˙˙˙˙*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *0
f+R)
'__inference_restored_function_body_6388Ĺ
%encoder_start/StatefulPartitionedCallStatefulPartitionedCallGscaled_sinusoidal_positional_embedding/StatefulPartitionedCall:output:0encoder_start_6691encoder_start_6693*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_encoder_start_layer_call_and_return_conditional_losses_6568č
activation/PartitionedCallPartitionedCall.encoder_start/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:˙˙˙˙˙˙˙˙˙* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_activation_layer_call_and_return_conditional_losses_6586ˇ
gau/StatefulPartitionedCallStatefulPartitionedCall#activation/PartitionedCall:output:0gau_6697gau_6699gau_6701gau_6703gau_6705gau_6707gau_6709gau_6711gau_6713*
Tin
2
*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:˙˙˙˙˙˙˙˙˙*+
_read_only_resource_inputs
		*-
config_proto

CPU

GPU 2J 8 *0
f+R)
'__inference_restored_function_body_6449Ě
gau_1/StatefulPartitionedCallStatefulPartitionedCall$gau/StatefulPartitionedCall:output:0
gau_1_6716
gau_1_6718
gau_1_6720
gau_1_6722
gau_1_6724
gau_1_6726
gau_1_6728
gau_1_6730
gau_1_6732*
Tin
2
*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:˙˙˙˙˙˙˙˙˙*+
_read_only_resource_inputs
		*-
config_proto

CPU

GPU 2J 8 *0
f+R)
'__inference_restored_function_body_6491Î
*generalized_mean_pooling1d/PartitionedCallPartitionedCall&gau_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:˙˙˙˙˙˙˙˙˙* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *0
f+R)
'__inference_restored_function_body_6515ć
dropout_4/PartitionedCallPartitionedCall3generalized_mean_pooling1d/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:˙˙˙˙˙˙˙˙˙* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dropout_4_layer_call_and_return_conditional_losses_6740ň
"similarity/StatefulPartitionedCallStatefulPartitionedCall"dropout_4/PartitionedCall:output:0similarity_6742similarity_6744*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *0
f+R)
'__inference_restored_function_body_6526{
IdentityIdentity+similarity/StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙î
NoOpNoOp&^encoder_start/StatefulPartitionedCall^gau/StatefulPartitionedCall^gau_1/StatefulPartitionedCall?^scaled_sinusoidal_positional_embedding/StatefulPartitionedCall#^similarity/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Y
_input_shapesH
F:˙˙˙˙˙˙˙˙˙: : : : : : : : : : : : : : : : : : : : : : : 2N
%encoder_start/StatefulPartitionedCall%encoder_start/StatefulPartitionedCall2:
gau/StatefulPartitionedCallgau/StatefulPartitionedCall2>
gau_1/StatefulPartitionedCallgau_1/StatefulPartitionedCall2
>scaled_sinusoidal_positional_embedding/StatefulPartitionedCall>scaled_sinusoidal_positional_embedding/StatefulPartitionedCall2H
"similarity/StatefulPartitionedCall"similarity/StatefulPartitionedCall:U Q
,
_output_shapes
:˙˙˙˙˙˙˙˙˙
!
_user_specified_name	input_2:$ 

_user_specified_name6688:$ 

_user_specified_name6691:$ 

_user_specified_name6693:$ 

_user_specified_name6697:$ 

_user_specified_name6699:$ 

_user_specified_name6701:$ 

_user_specified_name6703:$ 

_user_specified_name6705:$	 

_user_specified_name6707:$
 

_user_specified_name6709:$ 

_user_specified_name6711:$ 

_user_specified_name6713:$ 

_user_specified_name6716:$ 

_user_specified_name6718:$ 

_user_specified_name6720:$ 

_user_specified_name6722:$ 

_user_specified_name6724:$ 

_user_specified_name6726:$ 

_user_specified_name6728:$ 

_user_specified_name6730:$ 

_user_specified_name6732:$ 

_user_specified_name6742:$ 

_user_specified_name6744

D
(__inference_dropout_4_layer_call_fn_7203

inputs
identityŻ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:˙˙˙˙˙˙˙˙˙* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dropout_4_layer_call_and_return_conditional_losses_6677a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:˙˙˙˙˙˙˙˙˙:P L
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
Ô˘
Ť
?__inference_gau_1_layer_call_and_return_conditional_losses_1270
x5
+scaled_norm_1_mul_1_readvariableop_resource: =
)dense_2_tensordot_readvariableop_resource:
6
'dense_2_biasadd_readvariableop_resource:	.
mul_readvariableop_resource:	.
add_readvariableop_resource:	&
readvariableop_resource:	(
readvariableop_1_resource:	=
)dense_3_tensordot_readvariableop_resource:
6
'dense_3_biasadd_readvariableop_resource:	
identity˘ReadVariableOp˘ReadVariableOp_1˘add/ReadVariableOp˘dense_2/BiasAdd/ReadVariableOp˘ dense_2/Tensordot/ReadVariableOp˘dense_3/BiasAdd/ReadVariableOp˘ dense_3/Tensordot/ReadVariableOp˘mul/ReadVariableOp˘"scaled_norm_1/mul_1/ReadVariableOpY
scaled_norm_1/SquareSquarex*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙n
$scaled_norm_1/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:Ť
scaled_norm_1/MeanMeanscaled_norm_1/Square:y:0-scaled_norm_1/Mean/reduction_indices:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙*
	keep_dims(X
scaled_norm_1/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *˝75
scaled_norm_1/addAddV2scaled_norm_1/Mean:output:0scaled_norm_1/add/y:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙j
scaled_norm_1/RsqrtRsqrtscaled_norm_1/add:z:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙l
scaled_norm_1/mulMulxscaled_norm_1/Rsqrt:y:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
"scaled_norm_1/mul_1/ReadVariableOpReadVariableOp+scaled_norm_1_mul_1_readvariableop_resource*
_output_shapes
: *
dtype0
scaled_norm_1/mul_1Mulscaled_norm_1/mul:z:0*scaled_norm_1/mul_1/ReadVariableOp:value:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙o
dropout_2/IdentityIdentityscaled_norm_1/mul_1:z:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
 dense_2/Tensordot/ReadVariableOpReadVariableOp)dense_2_tensordot_readvariableop_resource* 
_output_shapes
:
*
dtype0`
dense_2/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:g
dense_2/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       p
dense_2/Tensordot/ShapeShapedropout_2/Identity:output:0*
T0*
_output_shapes
::íĎa
dense_2/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : Ű
dense_2/Tensordot/GatherV2GatherV2 dense_2/Tensordot/Shape:output:0dense_2/Tensordot/free:output:0(dense_2/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:c
!dense_2/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ß
dense_2/Tensordot/GatherV2_1GatherV2 dense_2/Tensordot/Shape:output:0dense_2/Tensordot/axes:output:0*dense_2/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:a
dense_2/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
dense_2/Tensordot/ProdProd#dense_2/Tensordot/GatherV2:output:0 dense_2/Tensordot/Const:output:0*
T0*
_output_shapes
: c
dense_2/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 
dense_2/Tensordot/Prod_1Prod%dense_2/Tensordot/GatherV2_1:output:0"dense_2/Tensordot/Const_1:output:0*
T0*
_output_shapes
: _
dense_2/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ź
dense_2/Tensordot/concatConcatV2dense_2/Tensordot/free:output:0dense_2/Tensordot/axes:output:0&dense_2/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:
dense_2/Tensordot/stackPackdense_2/Tensordot/Prod:output:0!dense_2/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
: 
dense_2/Tensordot/transpose	Transposedropout_2/Identity:output:0!dense_2/Tensordot/concat:output:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙˘
dense_2/Tensordot/ReshapeReshapedense_2/Tensordot/transpose:y:0 dense_2/Tensordot/stack:output:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙Ł
dense_2/Tensordot/MatMulMatMul"dense_2/Tensordot/Reshape:output:0(dense_2/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙d
dense_2/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:a
dense_2/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Ç
dense_2/Tensordot/concat_1ConcatV2#dense_2/Tensordot/GatherV2:output:0"dense_2/Tensordot/Const_2:output:0(dense_2/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
dense_2/TensordotReshape"dense_2/Tensordot/MatMul:product:0#dense_2/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
dense_2/BiasAddBiasAdddense_2/Tensordot:output:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙Q
dense_2/betaConst*
_output_shapes
: *
dtype0*
valueB
 *  ?{
dense_2/mulMuldense_2/beta:output:0dense_2/BiasAdd:output:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙c
dense_2/SigmoidSigmoiddense_2/mul:z:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙{
dense_2/mul_1Muldense_2/BiasAdd:output:0dense_2/Sigmoid:y:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙g
dense_2/IdentityIdentitydense_2/mul_1:z:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙ĺ
dense_2/IdentityN	IdentityNdense_2/mul_1:z:0dense_2/BiasAdd:output:0dense_2/beta:output:0*
T
2*)
_gradient_op_typeCustomGradient-109*H
_output_shapes6
4:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: r
dropout_3/IdentityIdentitydense_2/IdentityN:output:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙Z
ConstConst*
_output_shapes
:*
dtype0*!
valueB"         Z
split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙Ý
splitSplitVdropout_3/Identity:output:0Const:output:0split/split_dim:output:0*
T0*

Tlen0*_
_output_shapesM
K:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
	num_splitP
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :}

ExpandDims
ExpandDimssplit:output:2ExpandDims/dim:output:0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙g
Tile/multiplesConst*
_output_shapes
:*
dtype0*%
valueB"            v
TileTileExpandDims:output:0Tile/multiples:output:0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙o
mul/ReadVariableOpReadVariableOpmul_readvariableop_resource*
_output_shapes
:	*
dtype0q
mulMulTile:output:0mul/ReadVariableOp:value:0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙o
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes
:	*
dtype0m
addAddV2mul:z:0add/ReadVariableOp:value:0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙
unstackUnpackadd:z:0*
T0*F
_output_shapes4
2:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
axisţ˙˙˙˙˙˙˙˙*	
num
einsum/EinsumEinsumunstack:output:0unstack:output:1*
N*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙*
equationbnd,bmd->bnmN
	truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   Dv
truedivRealDiveinsum/Einsum:output:0truediv/y:output:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:*
dtype0d
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        f
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        f
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      
strided_sliceStridedSliceReadVariableOp:value:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:	*

begin_mask*
end_mask*
new_axis_maska
Tile_1/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      l
Tile_1Tilestrided_slice:output:0Tile_1/multiples:output:0*
T0* 
_output_shapes
:
M
range/startConst*
_output_shapes
: *
dtype0*
value	B : N
range/limitConst*
_output_shapes
: *
dtype0*
value
B :P
range/deltaConst*
_output_shapes
: *
dtype0*
valueB
 *  ?X

range/CastCastrange/start:output:0*

DstT0*

SrcT0*
_output_shapes
: Z
range/Cast_1Castrange/limit:output:0*

DstT0*

SrcT0*
_output_shapes
: o
rangeRangerange/Cast:y:0range/Cast_1:y:0range/delta:output:0*

Tidx0*
_output_shapes	
:X
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:`
ReshapeReshaperange:output:0Reshape/shape:output:0*
T0*
_output_shapes	
:O
range_1/startConst*
_output_shapes
: *
dtype0*
value	B : P
range_1/limitConst*
_output_shapes
: *
dtype0*
value
B :O
range_1/deltaConst*
_output_shapes
: *
dtype0*
value	B :u
range_1Rangerange_1/start:output:0range_1/limit:output:0range_1/delta:output:0*
_output_shapes	
:S
CastCastrange_1:output:0*

DstT0*

SrcT0*
_output_shapes	
:P
truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  CZ
	truediv_1RealDivCast:y:0truediv_1/y:output:0*
T0*
_output_shapes	
:?
NegNegtruediv_1:z:0*
T0*
_output_shapes	
:J
pow/xConst*
_output_shapes
: *
dtype0*
valueB
 * @FI
powPowpow/x:output:0Neg:y:0*
T0*
_output_shapes	
:
einsum_1/EinsumEinsumReshape:output:0pow:z:0*
N*
T0* 
_output_shapes
:
*
equation...,d->...dO
SinSineinsum_1/Einsum:output:0*
T0* 
_output_shapes
:
O
CosCoseinsum_1/Einsum:output:0*
T0* 
_output_shapes
:
\
split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙
split_1Splitsplit_1/split_dim:output:0Tile_1:output:0*
T0*,
_output_shapes
:
:
*
	num_splitR
mul_1Mulsplit_1:output:0Cos:y:0*
T0* 
_output_shapes
:
R
mul_2Mulsplit_1:output:1Sin:y:0*
T0* 
_output_shapes
:
K
subSub	mul_1:z:0	mul_2:z:0*
T0* 
_output_shapes
:
R
mul_3Mulsplit_1:output:1Cos:y:0*
T0* 
_output_shapes
:
R
mul_4Mulsplit_1:output:0Sin:y:0*
T0* 
_output_shapes
:
O
add_1AddV2	mul_3:z:0	mul_4:z:0*
T0* 
_output_shapes
:
V
concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙p
concatConcatV2sub:z:0	add_1:z:0concat/axis:output:0*
N*
T0* 
_output_shapes
:
g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:*
dtype0f
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      
strided_slice_1StridedSliceReadVariableOp_1:value:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:	*

begin_mask*
end_mask*
new_axis_maska
Tile_2/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      n
Tile_2Tilestrided_slice_1:output:0Tile_2/multiples:output:0*
T0* 
_output_shapes
:
O
range_2/startConst*
_output_shapes
: *
dtype0*
value	B : P
range_2/limitConst*
_output_shapes
: *
dtype0*
value
B :R
range_2/deltaConst*
_output_shapes
: *
dtype0*
valueB
 *  ?\
range_2/CastCastrange_2/start:output:0*

DstT0*

SrcT0*
_output_shapes
: ^
range_2/Cast_1Castrange_2/limit:output:0*

DstT0*

SrcT0*
_output_shapes
: w
range_2Rangerange_2/Cast:y:0range_2/Cast_1:y:0range_2/delta:output:0*

Tidx0*
_output_shapes	
:Z
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB:f
	Reshape_1Reshaperange_2:output:0Reshape_1/shape:output:0*
T0*
_output_shapes	
:O
range_3/startConst*
_output_shapes
: *
dtype0*
value	B : P
range_3/limitConst*
_output_shapes
: *
dtype0*
value
B :O
range_3/deltaConst*
_output_shapes
: *
dtype0*
value	B :u
range_3Rangerange_3/start:output:0range_3/limit:output:0range_3/delta:output:0*
_output_shapes	
:U
Cast_1Castrange_3:output:0*

DstT0*

SrcT0*
_output_shapes	
:P
truediv_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  C\
	truediv_2RealDiv
Cast_1:y:0truediv_2/y:output:0*
T0*
_output_shapes	
:A
Neg_1Negtruediv_2:z:0*
T0*
_output_shapes	
:L
pow_1/xConst*
_output_shapes
: *
dtype0*
valueB
 * @FO
pow_1Powpow_1/x:output:0	Neg_1:y:0*
T0*
_output_shapes	
:
einsum_2/EinsumEinsumReshape_1:output:0	pow_1:z:0*
N*
T0* 
_output_shapes
:
*
equation...,d->...dQ
Sin_1Sineinsum_2/Einsum:output:0*
T0* 
_output_shapes
:
Q
Cos_1Coseinsum_2/Einsum:output:0*
T0* 
_output_shapes
:
\
split_2/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙
split_2Splitsplit_2/split_dim:output:0Tile_2:output:0*
T0*,
_output_shapes
:
:
*
	num_splitT
mul_5Mulsplit_2:output:0	Cos_1:y:0*
T0* 
_output_shapes
:
T
mul_6Mulsplit_2:output:1	Sin_1:y:0*
T0* 
_output_shapes
:
M
sub_1Sub	mul_5:z:0	mul_6:z:0*
T0* 
_output_shapes
:
T
mul_7Mulsplit_2:output:1	Cos_1:y:0*
T0* 
_output_shapes
:
T
mul_8Mulsplit_2:output:0	Sin_1:y:0*
T0* 
_output_shapes
:
O
add_2AddV2	mul_7:z:0	mul_8:z:0*
T0* 
_output_shapes
:
X
concat_1/axisConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙v
concat_1ConcatV2	sub_1:z:0	add_2:z:0concat_1/axis:output:0*
N*
T0* 
_output_shapes
:

einsum_3/EinsumEinsumconcat:output:0concat_1:output:0*
N*
T0* 
_output_shapes
:
*
equation	mk,nk->mnm
add_3AddV2truediv:z:0einsum_3/Einsum:output:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙[
sqr_re_lu_1/ReluRelu	add_3:z:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙t
sqr_re_lu_1/SquareSquaresqr_re_lu_1/Relu:activations:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
einsum_4/EinsumEinsumsqr_re_lu_1/Square:y:0split:output:1*
N*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙*
equationbnm,bme->bnen
mul_9Mulsplit:output:0einsum_4/Einsum:output:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
 dense_3/Tensordot/ReadVariableOpReadVariableOp)dense_3_tensordot_readvariableop_resource* 
_output_shapes
:
*
dtype0`
dense_3/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:g
dense_3/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       ^
dense_3/Tensordot/ShapeShape	mul_9:z:0*
T0*
_output_shapes
::íĎa
dense_3/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : Ű
dense_3/Tensordot/GatherV2GatherV2 dense_3/Tensordot/Shape:output:0dense_3/Tensordot/free:output:0(dense_3/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:c
!dense_3/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ß
dense_3/Tensordot/GatherV2_1GatherV2 dense_3/Tensordot/Shape:output:0dense_3/Tensordot/axes:output:0*dense_3/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:a
dense_3/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
dense_3/Tensordot/ProdProd#dense_3/Tensordot/GatherV2:output:0 dense_3/Tensordot/Const:output:0*
T0*
_output_shapes
: c
dense_3/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 
dense_3/Tensordot/Prod_1Prod%dense_3/Tensordot/GatherV2_1:output:0"dense_3/Tensordot/Const_1:output:0*
T0*
_output_shapes
: _
dense_3/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ź
dense_3/Tensordot/concatConcatV2dense_3/Tensordot/free:output:0dense_3/Tensordot/axes:output:0&dense_3/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:
dense_3/Tensordot/stackPackdense_3/Tensordot/Prod:output:0!dense_3/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:
dense_3/Tensordot/transpose	Transpose	mul_9:z:0!dense_3/Tensordot/concat:output:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙˘
dense_3/Tensordot/ReshapeReshapedense_3/Tensordot/transpose:y:0 dense_3/Tensordot/stack:output:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙Ł
dense_3/Tensordot/MatMulMatMul"dense_3/Tensordot/Reshape:output:0(dense_3/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙d
dense_3/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:a
dense_3/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Ç
dense_3/Tensordot/concat_1ConcatV2#dense_3/Tensordot/GatherV2:output:0"dense_3/Tensordot/Const_2:output:0(dense_3/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
dense_3/TensordotReshape"dense_3/Tensordot/MatMul:product:0#dense_3/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
dense_3/BiasAddBiasAdddense_3/Tensordot:output:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙c
add_4AddV2dense_3/BiasAdd:output:0x*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙Á
NoOpNoOp^ReadVariableOp^ReadVariableOp_1^add/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp!^dense_2/Tensordot/ReadVariableOp^dense_3/BiasAdd/ReadVariableOp!^dense_3/Tensordot/ReadVariableOp^mul/ReadVariableOp#^scaled_norm_1/mul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ^
IdentityIdentity	add_4:z:0^NoOp*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:˙˙˙˙˙˙˙˙˙: : : : : : : : : 2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12(
add/ReadVariableOpadd/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2D
 dense_2/Tensordot/ReadVariableOp dense_2/Tensordot/ReadVariableOp2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2D
 dense_3/Tensordot/ReadVariableOp dense_3/Tensordot/ReadVariableOp2(
mul/ReadVariableOpmul/ReadVariableOp2H
"scaled_norm_1/mul_1/ReadVariableOp"scaled_norm_1/mul_1/ReadVariableOp:P L
-
_output_shapes
:˙˙˙˙˙˙˙˙˙

_user_specified_namex
ő 

=__inference_gau_layer_call_and_return_conditional_losses_1060
x3
)scaled_norm_mul_1_readvariableop_resource: ;
'dense_tensordot_readvariableop_resource:
4
%dense_biasadd_readvariableop_resource:	.
mul_readvariableop_resource:	.
add_readvariableop_resource:	&
readvariableop_resource:	(
readvariableop_1_resource:	=
)dense_1_tensordot_readvariableop_resource:
6
'dense_1_biasadd_readvariableop_resource:	
identity˘ReadVariableOp˘ReadVariableOp_1˘add/ReadVariableOp˘dense/BiasAdd/ReadVariableOp˘dense/Tensordot/ReadVariableOp˘dense_1/BiasAdd/ReadVariableOp˘ dense_1/Tensordot/ReadVariableOp˘mul/ReadVariableOp˘ scaled_norm/mul_1/ReadVariableOpW
scaled_norm/SquareSquarex*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙l
"scaled_norm/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:Ľ
scaled_norm/MeanMeanscaled_norm/Square:y:0+scaled_norm/Mean/reduction_indices:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙*
	keep_dims(V
scaled_norm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *˝75
scaled_norm/addAddV2scaled_norm/Mean:output:0scaled_norm/add/y:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙f
scaled_norm/RsqrtRsqrtscaled_norm/add:z:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙h
scaled_norm/mulMulxscaled_norm/Rsqrt:y:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
 scaled_norm/mul_1/ReadVariableOpReadVariableOp)scaled_norm_mul_1_readvariableop_resource*
_output_shapes
: *
dtype0
scaled_norm/mul_1Mulscaled_norm/mul:z:0(scaled_norm/mul_1/ReadVariableOp:value:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙k
dropout/IdentityIdentityscaled_norm/mul_1:z:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
dense/Tensordot/ReadVariableOpReadVariableOp'dense_tensordot_readvariableop_resource* 
_output_shapes
:
*
dtype0^
dense/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:e
dense/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       l
dense/Tensordot/ShapeShapedropout/Identity:output:0*
T0*
_output_shapes
::íĎ_
dense/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : Ó
dense/Tensordot/GatherV2GatherV2dense/Tensordot/Shape:output:0dense/Tensordot/free:output:0&dense/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:a
dense/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ×
dense/Tensordot/GatherV2_1GatherV2dense/Tensordot/Shape:output:0dense/Tensordot/axes:output:0(dense/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:_
dense/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
dense/Tensordot/ProdProd!dense/Tensordot/GatherV2:output:0dense/Tensordot/Const:output:0*
T0*
_output_shapes
: a
dense/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 
dense/Tensordot/Prod_1Prod#dense/Tensordot/GatherV2_1:output:0 dense/Tensordot/Const_1:output:0*
T0*
_output_shapes
: ]
dense/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ´
dense/Tensordot/concatConcatV2dense/Tensordot/free:output:0dense/Tensordot/axes:output:0$dense/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:
dense/Tensordot/stackPackdense/Tensordot/Prod:output:0dense/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:
dense/Tensordot/transpose	Transposedropout/Identity:output:0dense/Tensordot/concat:output:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
dense/Tensordot/ReshapeReshapedense/Tensordot/transpose:y:0dense/Tensordot/stack:output:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
dense/Tensordot/MatMulMatMul dense/Tensordot/Reshape:output:0&dense/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙b
dense/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:_
dense/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ż
dense/Tensordot/concat_1ConcatV2!dense/Tensordot/GatherV2:output:0 dense/Tensordot/Const_2:output:0&dense/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
dense/TensordotReshape dense/Tensordot/MatMul:product:0!dense/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
dense/BiasAddBiasAdddense/Tensordot:output:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙O

dense/betaConst*
_output_shapes
: *
dtype0*
valueB
 *  ?u
	dense/mulMuldense/beta:output:0dense/BiasAdd:output:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙_
dense/SigmoidSigmoiddense/mul:z:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙u
dense/mul_1Muldense/BiasAdd:output:0dense/Sigmoid:y:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙c
dense/IdentityIdentitydense/mul_1:z:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙Ý
dense/IdentityN	IdentityNdense/mul_1:z:0dense/BiasAdd:output:0dense/beta:output:0*
T
2*)
_gradient_op_typeCustomGradient-113*H
_output_shapes6
4:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: p
dropout_1/IdentityIdentitydense/IdentityN:output:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙Z
ConstConst*
_output_shapes
:*
dtype0*!
valueB"         Z
split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙Ý
splitSplitVdropout_1/Identity:output:0Const:output:0split/split_dim:output:0*
T0*

Tlen0*_
_output_shapesM
K:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
	num_splitP
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :}

ExpandDims
ExpandDimssplit:output:2ExpandDims/dim:output:0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙g
Tile/multiplesConst*
_output_shapes
:*
dtype0*%
valueB"            v
TileTileExpandDims:output:0Tile/multiples:output:0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙o
mul/ReadVariableOpReadVariableOpmul_readvariableop_resource*
_output_shapes
:	*
dtype0q
mulMulTile:output:0mul/ReadVariableOp:value:0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙o
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes
:	*
dtype0m
addAddV2mul:z:0add/ReadVariableOp:value:0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙
unstackUnpackadd:z:0*
T0*F
_output_shapes4
2:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
axisţ˙˙˙˙˙˙˙˙*	
num
einsum/EinsumEinsumunstack:output:0unstack:output:1*
N*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙*
equationbnd,bmd->bnmN
	truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   Dv
truedivRealDiveinsum/Einsum:output:0truediv/y:output:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:*
dtype0d
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        f
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        f
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      
strided_sliceStridedSliceReadVariableOp:value:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:	*

begin_mask*
end_mask*
new_axis_maska
Tile_1/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      l
Tile_1Tilestrided_slice:output:0Tile_1/multiples:output:0*
T0* 
_output_shapes
:
M
range/startConst*
_output_shapes
: *
dtype0*
value	B : N
range/limitConst*
_output_shapes
: *
dtype0*
value
B :P
range/deltaConst*
_output_shapes
: *
dtype0*
valueB
 *  ?X

range/CastCastrange/start:output:0*

DstT0*

SrcT0*
_output_shapes
: Z
range/Cast_1Castrange/limit:output:0*

DstT0*

SrcT0*
_output_shapes
: o
rangeRangerange/Cast:y:0range/Cast_1:y:0range/delta:output:0*

Tidx0*
_output_shapes	
:X
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:`
ReshapeReshaperange:output:0Reshape/shape:output:0*
T0*
_output_shapes	
:O
range_1/startConst*
_output_shapes
: *
dtype0*
value	B : P
range_1/limitConst*
_output_shapes
: *
dtype0*
value
B :O
range_1/deltaConst*
_output_shapes
: *
dtype0*
value	B :u
range_1Rangerange_1/start:output:0range_1/limit:output:0range_1/delta:output:0*
_output_shapes	
:S
CastCastrange_1:output:0*

DstT0*

SrcT0*
_output_shapes	
:P
truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  CZ
	truediv_1RealDivCast:y:0truediv_1/y:output:0*
T0*
_output_shapes	
:?
NegNegtruediv_1:z:0*
T0*
_output_shapes	
:J
pow/xConst*
_output_shapes
: *
dtype0*
valueB
 * @FI
powPowpow/x:output:0Neg:y:0*
T0*
_output_shapes	
:
einsum_1/EinsumEinsumReshape:output:0pow:z:0*
N*
T0* 
_output_shapes
:
*
equation...,d->...dO
SinSineinsum_1/Einsum:output:0*
T0* 
_output_shapes
:
O
CosCoseinsum_1/Einsum:output:0*
T0* 
_output_shapes
:
\
split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙
split_1Splitsplit_1/split_dim:output:0Tile_1:output:0*
T0*,
_output_shapes
:
:
*
	num_splitR
mul_1Mulsplit_1:output:0Cos:y:0*
T0* 
_output_shapes
:
R
mul_2Mulsplit_1:output:1Sin:y:0*
T0* 
_output_shapes
:
K
subSub	mul_1:z:0	mul_2:z:0*
T0* 
_output_shapes
:
R
mul_3Mulsplit_1:output:1Cos:y:0*
T0* 
_output_shapes
:
R
mul_4Mulsplit_1:output:0Sin:y:0*
T0* 
_output_shapes
:
O
add_1AddV2	mul_3:z:0	mul_4:z:0*
T0* 
_output_shapes
:
V
concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙p
concatConcatV2sub:z:0	add_1:z:0concat/axis:output:0*
N*
T0* 
_output_shapes
:
g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:*
dtype0f
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      
strided_slice_1StridedSliceReadVariableOp_1:value:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:	*

begin_mask*
end_mask*
new_axis_maska
Tile_2/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      n
Tile_2Tilestrided_slice_1:output:0Tile_2/multiples:output:0*
T0* 
_output_shapes
:
O
range_2/startConst*
_output_shapes
: *
dtype0*
value	B : P
range_2/limitConst*
_output_shapes
: *
dtype0*
value
B :R
range_2/deltaConst*
_output_shapes
: *
dtype0*
valueB
 *  ?\
range_2/CastCastrange_2/start:output:0*

DstT0*

SrcT0*
_output_shapes
: ^
range_2/Cast_1Castrange_2/limit:output:0*

DstT0*

SrcT0*
_output_shapes
: w
range_2Rangerange_2/Cast:y:0range_2/Cast_1:y:0range_2/delta:output:0*

Tidx0*
_output_shapes	
:Z
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB:f
	Reshape_1Reshaperange_2:output:0Reshape_1/shape:output:0*
T0*
_output_shapes	
:O
range_3/startConst*
_output_shapes
: *
dtype0*
value	B : P
range_3/limitConst*
_output_shapes
: *
dtype0*
value
B :O
range_3/deltaConst*
_output_shapes
: *
dtype0*
value	B :u
range_3Rangerange_3/start:output:0range_3/limit:output:0range_3/delta:output:0*
_output_shapes	
:U
Cast_1Castrange_3:output:0*

DstT0*

SrcT0*
_output_shapes	
:P
truediv_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  C\
	truediv_2RealDiv
Cast_1:y:0truediv_2/y:output:0*
T0*
_output_shapes	
:A
Neg_1Negtruediv_2:z:0*
T0*
_output_shapes	
:L
pow_1/xConst*
_output_shapes
: *
dtype0*
valueB
 * @FO
pow_1Powpow_1/x:output:0	Neg_1:y:0*
T0*
_output_shapes	
:
einsum_2/EinsumEinsumReshape_1:output:0	pow_1:z:0*
N*
T0* 
_output_shapes
:
*
equation...,d->...dQ
Sin_1Sineinsum_2/Einsum:output:0*
T0* 
_output_shapes
:
Q
Cos_1Coseinsum_2/Einsum:output:0*
T0* 
_output_shapes
:
\
split_2/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙
split_2Splitsplit_2/split_dim:output:0Tile_2:output:0*
T0*,
_output_shapes
:
:
*
	num_splitT
mul_5Mulsplit_2:output:0	Cos_1:y:0*
T0* 
_output_shapes
:
T
mul_6Mulsplit_2:output:1	Sin_1:y:0*
T0* 
_output_shapes
:
M
sub_1Sub	mul_5:z:0	mul_6:z:0*
T0* 
_output_shapes
:
T
mul_7Mulsplit_2:output:1	Cos_1:y:0*
T0* 
_output_shapes
:
T
mul_8Mulsplit_2:output:0	Sin_1:y:0*
T0* 
_output_shapes
:
O
add_2AddV2	mul_7:z:0	mul_8:z:0*
T0* 
_output_shapes
:
X
concat_1/axisConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙v
concat_1ConcatV2	sub_1:z:0	add_2:z:0concat_1/axis:output:0*
N*
T0* 
_output_shapes
:

einsum_3/EinsumEinsumconcat:output:0concat_1:output:0*
N*
T0* 
_output_shapes
:
*
equation	mk,nk->mnm
add_3AddV2truediv:z:0einsum_3/Einsum:output:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙Y
sqr_re_lu/ReluRelu	add_3:z:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙p
sqr_re_lu/SquareSquaresqr_re_lu/Relu:activations:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
einsum_4/EinsumEinsumsqr_re_lu/Square:y:0split:output:1*
N*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙*
equationbnm,bme->bnen
mul_9Mulsplit:output:0einsum_4/Einsum:output:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
 dense_1/Tensordot/ReadVariableOpReadVariableOp)dense_1_tensordot_readvariableop_resource* 
_output_shapes
:
*
dtype0`
dense_1/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:g
dense_1/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       ^
dense_1/Tensordot/ShapeShape	mul_9:z:0*
T0*
_output_shapes
::íĎa
dense_1/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : Ű
dense_1/Tensordot/GatherV2GatherV2 dense_1/Tensordot/Shape:output:0dense_1/Tensordot/free:output:0(dense_1/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:c
!dense_1/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ß
dense_1/Tensordot/GatherV2_1GatherV2 dense_1/Tensordot/Shape:output:0dense_1/Tensordot/axes:output:0*dense_1/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:a
dense_1/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
dense_1/Tensordot/ProdProd#dense_1/Tensordot/GatherV2:output:0 dense_1/Tensordot/Const:output:0*
T0*
_output_shapes
: c
dense_1/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 
dense_1/Tensordot/Prod_1Prod%dense_1/Tensordot/GatherV2_1:output:0"dense_1/Tensordot/Const_1:output:0*
T0*
_output_shapes
: _
dense_1/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ź
dense_1/Tensordot/concatConcatV2dense_1/Tensordot/free:output:0dense_1/Tensordot/axes:output:0&dense_1/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:
dense_1/Tensordot/stackPackdense_1/Tensordot/Prod:output:0!dense_1/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:
dense_1/Tensordot/transpose	Transpose	mul_9:z:0!dense_1/Tensordot/concat:output:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙˘
dense_1/Tensordot/ReshapeReshapedense_1/Tensordot/transpose:y:0 dense_1/Tensordot/stack:output:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙Ł
dense_1/Tensordot/MatMulMatMul"dense_1/Tensordot/Reshape:output:0(dense_1/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙d
dense_1/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:a
dense_1/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Ç
dense_1/Tensordot/concat_1ConcatV2#dense_1/Tensordot/GatherV2:output:0"dense_1/Tensordot/Const_2:output:0(dense_1/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
dense_1/TensordotReshape"dense_1/Tensordot/MatMul:product:0#dense_1/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
dense_1/BiasAddBiasAdddense_1/Tensordot:output:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙c
add_4AddV2dense_1/BiasAdd:output:0x*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙ť
NoOpNoOp^ReadVariableOp^ReadVariableOp_1^add/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/Tensordot/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp!^dense_1/Tensordot/ReadVariableOp^mul/ReadVariableOp!^scaled_norm/mul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ^
IdentityIdentity	add_4:z:0^NoOp*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:˙˙˙˙˙˙˙˙˙: : : : : : : : : 2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12(
add/ReadVariableOpadd/ReadVariableOp2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2@
dense/Tensordot/ReadVariableOpdense/Tensordot/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2D
 dense_1/Tensordot/ReadVariableOp dense_1/Tensordot/ReadVariableOp2(
mul/ReadVariableOpmul/ReadVariableOp2D
 scaled_norm/mul_1/ReadVariableOp scaled_norm/mul_1/ReadVariableOp:P L
-
_output_shapes
:˙˙˙˙˙˙˙˙˙

_user_specified_namex
˘
s
'__inference_restored_function_body_6388

inputs
unknown: 
identity˘StatefulPartitionedCallÎ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*,
_output_shapes
:˙˙˙˙˙˙˙˙˙*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *i
fdRb
`__inference_scaled_sinusoidal_positional_embedding_layer_call_and_return_conditional_losses_1928t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*-
_input_shapes
:˙˙˙˙˙˙˙˙˙: 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs:$ 

_user_specified_name6384
Ôą
Ä
__inference__traced_save_7558
file_prefix*
 read_disablecopyonread_sin_scale: @
-read_1_disablecopyonread_encoder_start_kernel:	:
+read_2_disablecopyonread_encoder_start_bias:	2
#read_3_disablecopyonread_variable_7:	2
#read_4_disablecopyonread_variable_6:	6
#read_5_disablecopyonread_variable_5:	6
#read_6_disablecopyonread_variable_4:	/
%read_7_disablecopyonread_norm_scale_1: =
)read_8_disablecopyonread_gau_dense_kernel:
6
'read_9_disablecopyonread_gau_dense_bias:	@
,read_10_disablecopyonread_gau_dense_1_kernel:
9
*read_11_disablecopyonread_gau_dense_1_bias:	3
$read_12_disablecopyonread_variable_3:	3
$read_13_disablecopyonread_variable_2:	7
$read_14_disablecopyonread_variable_1:	5
"read_15_disablecopyonread_variable:	.
$read_16_disablecopyonread_norm_scale: B
.read_17_disablecopyonread_gau_1_dense_2_kernel:
;
,read_18_disablecopyonread_gau_1_dense_2_bias:	B
.read_19_disablecopyonread_gau_1_dense_3_kernel:
;
,read_20_disablecopyonread_gau_1_dense_3_bias:	?
+read_21_disablecopyonread_similarity_kernel:
8
)read_22_disablecopyonread_similarity_bias:	
savev2_const
identity_47˘MergeV2Checkpoints˘Read/DisableCopyOnRead˘Read/ReadVariableOp˘Read_1/DisableCopyOnRead˘Read_1/ReadVariableOp˘Read_10/DisableCopyOnRead˘Read_10/ReadVariableOp˘Read_11/DisableCopyOnRead˘Read_11/ReadVariableOp˘Read_12/DisableCopyOnRead˘Read_12/ReadVariableOp˘Read_13/DisableCopyOnRead˘Read_13/ReadVariableOp˘Read_14/DisableCopyOnRead˘Read_14/ReadVariableOp˘Read_15/DisableCopyOnRead˘Read_15/ReadVariableOp˘Read_16/DisableCopyOnRead˘Read_16/ReadVariableOp˘Read_17/DisableCopyOnRead˘Read_17/ReadVariableOp˘Read_18/DisableCopyOnRead˘Read_18/ReadVariableOp˘Read_19/DisableCopyOnRead˘Read_19/ReadVariableOp˘Read_2/DisableCopyOnRead˘Read_2/ReadVariableOp˘Read_20/DisableCopyOnRead˘Read_20/ReadVariableOp˘Read_21/DisableCopyOnRead˘Read_21/ReadVariableOp˘Read_22/DisableCopyOnRead˘Read_22/ReadVariableOp˘Read_3/DisableCopyOnRead˘Read_3/ReadVariableOp˘Read_4/DisableCopyOnRead˘Read_4/ReadVariableOp˘Read_5/DisableCopyOnRead˘Read_5/ReadVariableOp˘Read_6/DisableCopyOnRead˘Read_6/ReadVariableOp˘Read_7/DisableCopyOnRead˘Read_7/ReadVariableOp˘Read_8/DisableCopyOnRead˘Read_8/ReadVariableOp˘Read_9/DisableCopyOnRead˘Read_9/ReadVariableOpw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: r
Read/DisableCopyOnReadDisableCopyOnRead read_disablecopyonread_sin_scale"/device:CPU:0*
_output_shapes
 
Read/ReadVariableOpReadVariableOp read_disablecopyonread_sin_scale^Read/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0a
IdentityIdentityRead/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: Y

Identity_1IdentityIdentity:output:0"/device:CPU:0*
T0*
_output_shapes
: 
Read_1/DisableCopyOnReadDisableCopyOnRead-read_1_disablecopyonread_encoder_start_kernel"/device:CPU:0*
_output_shapes
 Ž
Read_1/ReadVariableOpReadVariableOp-read_1_disablecopyonread_encoder_start_kernel^Read_1/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	*
dtype0n

Identity_2IdentityRead_1/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	d

Identity_3IdentityIdentity_2:output:0"/device:CPU:0*
T0*
_output_shapes
:	
Read_2/DisableCopyOnReadDisableCopyOnRead+read_2_disablecopyonread_encoder_start_bias"/device:CPU:0*
_output_shapes
 ¨
Read_2/ReadVariableOpReadVariableOp+read_2_disablecopyonread_encoder_start_bias^Read_2/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:*
dtype0j

Identity_4IdentityRead_2/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:`

Identity_5IdentityIdentity_4:output:0"/device:CPU:0*
T0*
_output_shapes	
:w
Read_3/DisableCopyOnReadDisableCopyOnRead#read_3_disablecopyonread_variable_7"/device:CPU:0*
_output_shapes
  
Read_3/ReadVariableOpReadVariableOp#read_3_disablecopyonread_variable_7^Read_3/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:*
dtype0j

Identity_6IdentityRead_3/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:`

Identity_7IdentityIdentity_6:output:0"/device:CPU:0*
T0*
_output_shapes	
:w
Read_4/DisableCopyOnReadDisableCopyOnRead#read_4_disablecopyonread_variable_6"/device:CPU:0*
_output_shapes
  
Read_4/ReadVariableOpReadVariableOp#read_4_disablecopyonread_variable_6^Read_4/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:*
dtype0j

Identity_8IdentityRead_4/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:`

Identity_9IdentityIdentity_8:output:0"/device:CPU:0*
T0*
_output_shapes	
:w
Read_5/DisableCopyOnReadDisableCopyOnRead#read_5_disablecopyonread_variable_5"/device:CPU:0*
_output_shapes
 ¤
Read_5/ReadVariableOpReadVariableOp#read_5_disablecopyonread_variable_5^Read_5/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	*
dtype0o
Identity_10IdentityRead_5/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	f
Identity_11IdentityIdentity_10:output:0"/device:CPU:0*
T0*
_output_shapes
:	w
Read_6/DisableCopyOnReadDisableCopyOnRead#read_6_disablecopyonread_variable_4"/device:CPU:0*
_output_shapes
 ¤
Read_6/ReadVariableOpReadVariableOp#read_6_disablecopyonread_variable_4^Read_6/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	*
dtype0o
Identity_12IdentityRead_6/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	f
Identity_13IdentityIdentity_12:output:0"/device:CPU:0*
T0*
_output_shapes
:	y
Read_7/DisableCopyOnReadDisableCopyOnRead%read_7_disablecopyonread_norm_scale_1"/device:CPU:0*
_output_shapes
 
Read_7/ReadVariableOpReadVariableOp%read_7_disablecopyonread_norm_scale_1^Read_7/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0f
Identity_14IdentityRead_7/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_15IdentityIdentity_14:output:0"/device:CPU:0*
T0*
_output_shapes
: }
Read_8/DisableCopyOnReadDisableCopyOnRead)read_8_disablecopyonread_gau_dense_kernel"/device:CPU:0*
_output_shapes
 Ť
Read_8/ReadVariableOpReadVariableOp)read_8_disablecopyonread_gau_dense_kernel^Read_8/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
*
dtype0p
Identity_16IdentityRead_8/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
g
Identity_17IdentityIdentity_16:output:0"/device:CPU:0*
T0* 
_output_shapes
:
{
Read_9/DisableCopyOnReadDisableCopyOnRead'read_9_disablecopyonread_gau_dense_bias"/device:CPU:0*
_output_shapes
 ¤
Read_9/ReadVariableOpReadVariableOp'read_9_disablecopyonread_gau_dense_bias^Read_9/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:*
dtype0k
Identity_18IdentityRead_9/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:b
Identity_19IdentityIdentity_18:output:0"/device:CPU:0*
T0*
_output_shapes	
:
Read_10/DisableCopyOnReadDisableCopyOnRead,read_10_disablecopyonread_gau_dense_1_kernel"/device:CPU:0*
_output_shapes
 °
Read_10/ReadVariableOpReadVariableOp,read_10_disablecopyonread_gau_dense_1_kernel^Read_10/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
*
dtype0q
Identity_20IdentityRead_10/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
g
Identity_21IdentityIdentity_20:output:0"/device:CPU:0*
T0* 
_output_shapes
:

Read_11/DisableCopyOnReadDisableCopyOnRead*read_11_disablecopyonread_gau_dense_1_bias"/device:CPU:0*
_output_shapes
 Š
Read_11/ReadVariableOpReadVariableOp*read_11_disablecopyonread_gau_dense_1_bias^Read_11/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:*
dtype0l
Identity_22IdentityRead_11/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:b
Identity_23IdentityIdentity_22:output:0"/device:CPU:0*
T0*
_output_shapes	
:y
Read_12/DisableCopyOnReadDisableCopyOnRead$read_12_disablecopyonread_variable_3"/device:CPU:0*
_output_shapes
 Ł
Read_12/ReadVariableOpReadVariableOp$read_12_disablecopyonread_variable_3^Read_12/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:*
dtype0l
Identity_24IdentityRead_12/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:b
Identity_25IdentityIdentity_24:output:0"/device:CPU:0*
T0*
_output_shapes	
:y
Read_13/DisableCopyOnReadDisableCopyOnRead$read_13_disablecopyonread_variable_2"/device:CPU:0*
_output_shapes
 Ł
Read_13/ReadVariableOpReadVariableOp$read_13_disablecopyonread_variable_2^Read_13/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:*
dtype0l
Identity_26IdentityRead_13/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:b
Identity_27IdentityIdentity_26:output:0"/device:CPU:0*
T0*
_output_shapes	
:y
Read_14/DisableCopyOnReadDisableCopyOnRead$read_14_disablecopyonread_variable_1"/device:CPU:0*
_output_shapes
 §
Read_14/ReadVariableOpReadVariableOp$read_14_disablecopyonread_variable_1^Read_14/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	*
dtype0p
Identity_28IdentityRead_14/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	f
Identity_29IdentityIdentity_28:output:0"/device:CPU:0*
T0*
_output_shapes
:	w
Read_15/DisableCopyOnReadDisableCopyOnRead"read_15_disablecopyonread_variable"/device:CPU:0*
_output_shapes
 Ľ
Read_15/ReadVariableOpReadVariableOp"read_15_disablecopyonread_variable^Read_15/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	*
dtype0p
Identity_30IdentityRead_15/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	f
Identity_31IdentityIdentity_30:output:0"/device:CPU:0*
T0*
_output_shapes
:	y
Read_16/DisableCopyOnReadDisableCopyOnRead$read_16_disablecopyonread_norm_scale"/device:CPU:0*
_output_shapes
 
Read_16/ReadVariableOpReadVariableOp$read_16_disablecopyonread_norm_scale^Read_16/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_32IdentityRead_16/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_33IdentityIdentity_32:output:0"/device:CPU:0*
T0*
_output_shapes
: 
Read_17/DisableCopyOnReadDisableCopyOnRead.read_17_disablecopyonread_gau_1_dense_2_kernel"/device:CPU:0*
_output_shapes
 ˛
Read_17/ReadVariableOpReadVariableOp.read_17_disablecopyonread_gau_1_dense_2_kernel^Read_17/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
*
dtype0q
Identity_34IdentityRead_17/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
g
Identity_35IdentityIdentity_34:output:0"/device:CPU:0*
T0* 
_output_shapes
:

Read_18/DisableCopyOnReadDisableCopyOnRead,read_18_disablecopyonread_gau_1_dense_2_bias"/device:CPU:0*
_output_shapes
 Ť
Read_18/ReadVariableOpReadVariableOp,read_18_disablecopyonread_gau_1_dense_2_bias^Read_18/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:*
dtype0l
Identity_36IdentityRead_18/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:b
Identity_37IdentityIdentity_36:output:0"/device:CPU:0*
T0*
_output_shapes	
:
Read_19/DisableCopyOnReadDisableCopyOnRead.read_19_disablecopyonread_gau_1_dense_3_kernel"/device:CPU:0*
_output_shapes
 ˛
Read_19/ReadVariableOpReadVariableOp.read_19_disablecopyonread_gau_1_dense_3_kernel^Read_19/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
*
dtype0q
Identity_38IdentityRead_19/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
g
Identity_39IdentityIdentity_38:output:0"/device:CPU:0*
T0* 
_output_shapes
:

Read_20/DisableCopyOnReadDisableCopyOnRead,read_20_disablecopyonread_gau_1_dense_3_bias"/device:CPU:0*
_output_shapes
 Ť
Read_20/ReadVariableOpReadVariableOp,read_20_disablecopyonread_gau_1_dense_3_bias^Read_20/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:*
dtype0l
Identity_40IdentityRead_20/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:b
Identity_41IdentityIdentity_40:output:0"/device:CPU:0*
T0*
_output_shapes	
:
Read_21/DisableCopyOnReadDisableCopyOnRead+read_21_disablecopyonread_similarity_kernel"/device:CPU:0*
_output_shapes
 Ż
Read_21/ReadVariableOpReadVariableOp+read_21_disablecopyonread_similarity_kernel^Read_21/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
*
dtype0q
Identity_42IdentityRead_21/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
g
Identity_43IdentityIdentity_42:output:0"/device:CPU:0*
T0* 
_output_shapes
:
~
Read_22/DisableCopyOnReadDisableCopyOnRead)read_22_disablecopyonread_similarity_bias"/device:CPU:0*
_output_shapes
 ¨
Read_22/ReadVariableOpReadVariableOp)read_22_disablecopyonread_similarity_bias^Read_22/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:*
dtype0l
Identity_44IdentityRead_22/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:b
Identity_45IdentityIdentity_44:output:0"/device:CPU:0*
T0*
_output_shapes	
:Ż
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*Ř
valueÎBËB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB'variables/18/.ATTRIBUTES/VARIABLE_VALUEB'variables/19/.ATTRIBUTES/VARIABLE_VALUEB'variables/20/.ATTRIBUTES/VARIABLE_VALUEB'variables/21/.ATTRIBUTES/VARIABLE_VALUEB'variables/22/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*C
value:B8B B B B B B B B B B B B B B B B B B B B B B B B ä
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Identity_1:output:0Identity_3:output:0Identity_5:output:0Identity_7:output:0Identity_9:output:0Identity_11:output:0Identity_13:output:0Identity_15:output:0Identity_17:output:0Identity_19:output:0Identity_21:output:0Identity_23:output:0Identity_25:output:0Identity_27:output:0Identity_29:output:0Identity_31:output:0Identity_33:output:0Identity_35:output:0Identity_37:output:0Identity_39:output:0Identity_41:output:0Identity_43:output:0Identity_45:output:0savev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *&
dtypes
2
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:ł
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 i
Identity_46Identityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: U
Identity_47IdentityIdentity_46:output:0^NoOp*
T0*
_output_shapes
: â	
NoOpNoOp^MergeV2Checkpoints^Read/DisableCopyOnRead^Read/ReadVariableOp^Read_1/DisableCopyOnRead^Read_1/ReadVariableOp^Read_10/DisableCopyOnRead^Read_10/ReadVariableOp^Read_11/DisableCopyOnRead^Read_11/ReadVariableOp^Read_12/DisableCopyOnRead^Read_12/ReadVariableOp^Read_13/DisableCopyOnRead^Read_13/ReadVariableOp^Read_14/DisableCopyOnRead^Read_14/ReadVariableOp^Read_15/DisableCopyOnRead^Read_15/ReadVariableOp^Read_16/DisableCopyOnRead^Read_16/ReadVariableOp^Read_17/DisableCopyOnRead^Read_17/ReadVariableOp^Read_18/DisableCopyOnRead^Read_18/ReadVariableOp^Read_19/DisableCopyOnRead^Read_19/ReadVariableOp^Read_2/DisableCopyOnRead^Read_2/ReadVariableOp^Read_20/DisableCopyOnRead^Read_20/ReadVariableOp^Read_21/DisableCopyOnRead^Read_21/ReadVariableOp^Read_22/DisableCopyOnRead^Read_22/ReadVariableOp^Read_3/DisableCopyOnRead^Read_3/ReadVariableOp^Read_4/DisableCopyOnRead^Read_4/ReadVariableOp^Read_5/DisableCopyOnRead^Read_5/ReadVariableOp^Read_6/DisableCopyOnRead^Read_6/ReadVariableOp^Read_7/DisableCopyOnRead^Read_7/ReadVariableOp^Read_8/DisableCopyOnRead^Read_8/ReadVariableOp^Read_9/DisableCopyOnRead^Read_9/ReadVariableOp*
_output_shapes
 "#
identity_47Identity_47:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2: : : : : : : : : : : : : : : : : : : : : : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints20
Read/DisableCopyOnReadRead/DisableCopyOnRead2*
Read/ReadVariableOpRead/ReadVariableOp24
Read_1/DisableCopyOnReadRead_1/DisableCopyOnRead2.
Read_1/ReadVariableOpRead_1/ReadVariableOp26
Read_10/DisableCopyOnReadRead_10/DisableCopyOnRead20
Read_10/ReadVariableOpRead_10/ReadVariableOp26
Read_11/DisableCopyOnReadRead_11/DisableCopyOnRead20
Read_11/ReadVariableOpRead_11/ReadVariableOp26
Read_12/DisableCopyOnReadRead_12/DisableCopyOnRead20
Read_12/ReadVariableOpRead_12/ReadVariableOp26
Read_13/DisableCopyOnReadRead_13/DisableCopyOnRead20
Read_13/ReadVariableOpRead_13/ReadVariableOp26
Read_14/DisableCopyOnReadRead_14/DisableCopyOnRead20
Read_14/ReadVariableOpRead_14/ReadVariableOp26
Read_15/DisableCopyOnReadRead_15/DisableCopyOnRead20
Read_15/ReadVariableOpRead_15/ReadVariableOp26
Read_16/DisableCopyOnReadRead_16/DisableCopyOnRead20
Read_16/ReadVariableOpRead_16/ReadVariableOp26
Read_17/DisableCopyOnReadRead_17/DisableCopyOnRead20
Read_17/ReadVariableOpRead_17/ReadVariableOp26
Read_18/DisableCopyOnReadRead_18/DisableCopyOnRead20
Read_18/ReadVariableOpRead_18/ReadVariableOp26
Read_19/DisableCopyOnReadRead_19/DisableCopyOnRead20
Read_19/ReadVariableOpRead_19/ReadVariableOp24
Read_2/DisableCopyOnReadRead_2/DisableCopyOnRead2.
Read_2/ReadVariableOpRead_2/ReadVariableOp26
Read_20/DisableCopyOnReadRead_20/DisableCopyOnRead20
Read_20/ReadVariableOpRead_20/ReadVariableOp26
Read_21/DisableCopyOnReadRead_21/DisableCopyOnRead20
Read_21/ReadVariableOpRead_21/ReadVariableOp26
Read_22/DisableCopyOnReadRead_22/DisableCopyOnRead20
Read_22/ReadVariableOpRead_22/ReadVariableOp24
Read_3/DisableCopyOnReadRead_3/DisableCopyOnRead2.
Read_3/ReadVariableOpRead_3/ReadVariableOp24
Read_4/DisableCopyOnReadRead_4/DisableCopyOnRead2.
Read_4/ReadVariableOpRead_4/ReadVariableOp24
Read_5/DisableCopyOnReadRead_5/DisableCopyOnRead2.
Read_5/ReadVariableOpRead_5/ReadVariableOp24
Read_6/DisableCopyOnReadRead_6/DisableCopyOnRead2.
Read_6/ReadVariableOpRead_6/ReadVariableOp24
Read_7/DisableCopyOnReadRead_7/DisableCopyOnRead2.
Read_7/ReadVariableOpRead_7/ReadVariableOp24
Read_8/DisableCopyOnReadRead_8/DisableCopyOnRead2.
Read_8/ReadVariableOpRead_8/ReadVariableOp24
Read_9/DisableCopyOnReadRead_9/DisableCopyOnRead2.
Read_9/ReadVariableOpRead_9/ReadVariableOp:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:)%
#
_user_specified_name	sin_scale:40
.
_user_specified_nameencoder_start/kernel:2.
,
_user_specified_nameencoder_start/bias:*&
$
_user_specified_name
Variable_7:*&
$
_user_specified_name
Variable_6:*&
$
_user_specified_name
Variable_5:*&
$
_user_specified_name
Variable_4:,(
&
_user_specified_namenorm_scale_1:0	,
*
_user_specified_namegau/dense/kernel:.
*
(
_user_specified_namegau/dense/bias:2.
,
_user_specified_namegau/dense_1/kernel:0,
*
_user_specified_namegau/dense_1/bias:*&
$
_user_specified_name
Variable_3:*&
$
_user_specified_name
Variable_2:*&
$
_user_specified_name
Variable_1:($
"
_user_specified_name
Variable:*&
$
_user_specified_name
norm_scale:40
.
_user_specified_namegau_1/dense_2/kernel:2.
,
_user_specified_namegau_1/dense_2/bias:40
.
_user_specified_namegau_1/dense_3/kernel:2.
,
_user_specified_namegau_1/dense_3/bias:1-
+
_user_specified_namesimilarity/kernel:/+
)
_user_specified_namesimilarity/bias:=9

_output_shapes
: 

_user_specified_nameConst
Ě

)__inference_similarity_layer_call_fn_3327

inputs
unknown:

	unknown_0:	
identity˘StatefulPartitionedCallÝ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_similarity_layer_call_and_return_conditional_losses_3173`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:˙˙˙˙˙˙˙˙˙: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
˘
Ť
 __inference_internal_grad_fn_302
result_grads_0
result_grads_1
result_grads_2
mul_dense_2_beta
mul_dense_2_biasadd
identity

identity_1z
mulMulmul_dense_2_betamul_dense_2_biasadd^result_grads_0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙S
SigmoidSigmoidmul:z:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙k
mul_1Mulmul_dense_2_betamul_dense_2_biasadd*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?_
subSubsub/x:output:0Sigmoid:y:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙X
mul_2Mul	mul_1:z:0sub:z:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙J
add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?_
addAddV2add/x:output:0	mul_2:z:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙Z
mul_3MulSigmoid:y:0add:z:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙]
SquareSquaremul_dense_2_biasadd*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙`
mul_4Mulresult_grads_0
Square:y:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙\
mul_5Mul	mul_4:z:0Sigmoid:y:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙L
sub_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?c
sub_1Subsub_1/x:output:0Sigmoid:y:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙Z
mul_6Mul	mul_5:z:0	sub_1:z:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙Z
ConstConst*
_output_shapes
:*
dtype0*!
valueB"          F
SumSum	mul_6:z:0Const:output:0*
T0*
_output_shapes
: _
mul_7Mulresult_grads_0	mul_3:z:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙W
IdentityIdentity	mul_7:z:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙E

Identity_1IdentitySum:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: : :˙˙˙˙˙˙˙˙˙: 
&
 _has_manual_control_dependencies(
-
_output_shapes
:˙˙˙˙˙˙˙˙˙
(
_user_specified_nameresult_grads_0:]Y
-
_output_shapes
:˙˙˙˙˙˙˙˙˙
(
_user_specified_nameresult_grads_1:FB

_output_shapes
: 
(
_user_specified_nameresult_grads_2:

_output_shapes
: :3/
-
_output_shapes
:˙˙˙˙˙˙˙˙˙
ő 

=__inference_gau_layer_call_and_return_conditional_losses_1537
x3
)scaled_norm_mul_1_readvariableop_resource: ;
'dense_tensordot_readvariableop_resource:
4
%dense_biasadd_readvariableop_resource:	.
mul_readvariableop_resource:	.
add_readvariableop_resource:	&
readvariableop_resource:	(
readvariableop_1_resource:	=
)dense_1_tensordot_readvariableop_resource:
6
'dense_1_biasadd_readvariableop_resource:	
identity˘ReadVariableOp˘ReadVariableOp_1˘add/ReadVariableOp˘dense/BiasAdd/ReadVariableOp˘dense/Tensordot/ReadVariableOp˘dense_1/BiasAdd/ReadVariableOp˘ dense_1/Tensordot/ReadVariableOp˘mul/ReadVariableOp˘ scaled_norm/mul_1/ReadVariableOpW
scaled_norm/SquareSquarex*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙l
"scaled_norm/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:Ľ
scaled_norm/MeanMeanscaled_norm/Square:y:0+scaled_norm/Mean/reduction_indices:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙*
	keep_dims(V
scaled_norm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *˝75
scaled_norm/addAddV2scaled_norm/Mean:output:0scaled_norm/add/y:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙f
scaled_norm/RsqrtRsqrtscaled_norm/add:z:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙h
scaled_norm/mulMulxscaled_norm/Rsqrt:y:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
 scaled_norm/mul_1/ReadVariableOpReadVariableOp)scaled_norm_mul_1_readvariableop_resource*
_output_shapes
: *
dtype0
scaled_norm/mul_1Mulscaled_norm/mul:z:0(scaled_norm/mul_1/ReadVariableOp:value:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙k
dropout/IdentityIdentityscaled_norm/mul_1:z:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
dense/Tensordot/ReadVariableOpReadVariableOp'dense_tensordot_readvariableop_resource* 
_output_shapes
:
*
dtype0^
dense/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:e
dense/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       l
dense/Tensordot/ShapeShapedropout/Identity:output:0*
T0*
_output_shapes
::íĎ_
dense/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : Ó
dense/Tensordot/GatherV2GatherV2dense/Tensordot/Shape:output:0dense/Tensordot/free:output:0&dense/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:a
dense/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ×
dense/Tensordot/GatherV2_1GatherV2dense/Tensordot/Shape:output:0dense/Tensordot/axes:output:0(dense/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:_
dense/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
dense/Tensordot/ProdProd!dense/Tensordot/GatherV2:output:0dense/Tensordot/Const:output:0*
T0*
_output_shapes
: a
dense/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 
dense/Tensordot/Prod_1Prod#dense/Tensordot/GatherV2_1:output:0 dense/Tensordot/Const_1:output:0*
T0*
_output_shapes
: ]
dense/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ´
dense/Tensordot/concatConcatV2dense/Tensordot/free:output:0dense/Tensordot/axes:output:0$dense/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:
dense/Tensordot/stackPackdense/Tensordot/Prod:output:0dense/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:
dense/Tensordot/transpose	Transposedropout/Identity:output:0dense/Tensordot/concat:output:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
dense/Tensordot/ReshapeReshapedense/Tensordot/transpose:y:0dense/Tensordot/stack:output:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
dense/Tensordot/MatMulMatMul dense/Tensordot/Reshape:output:0&dense/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙b
dense/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:_
dense/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ż
dense/Tensordot/concat_1ConcatV2!dense/Tensordot/GatherV2:output:0 dense/Tensordot/Const_2:output:0&dense/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
dense/TensordotReshape dense/Tensordot/MatMul:product:0!dense/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
dense/BiasAddBiasAdddense/Tensordot:output:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙O

dense/betaConst*
_output_shapes
: *
dtype0*
valueB
 *  ?u
	dense/mulMuldense/beta:output:0dense/BiasAdd:output:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙_
dense/SigmoidSigmoiddense/mul:z:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙u
dense/mul_1Muldense/BiasAdd:output:0dense/Sigmoid:y:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙c
dense/IdentityIdentitydense/mul_1:z:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙Ý
dense/IdentityN	IdentityNdense/mul_1:z:0dense/BiasAdd:output:0dense/beta:output:0*
T
2*)
_gradient_op_typeCustomGradient-115*H
_output_shapes6
4:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: p
dropout_1/IdentityIdentitydense/IdentityN:output:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙Z
ConstConst*
_output_shapes
:*
dtype0*!
valueB"         Z
split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙Ý
splitSplitVdropout_1/Identity:output:0Const:output:0split/split_dim:output:0*
T0*

Tlen0*_
_output_shapesM
K:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
	num_splitP
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :}

ExpandDims
ExpandDimssplit:output:2ExpandDims/dim:output:0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙g
Tile/multiplesConst*
_output_shapes
:*
dtype0*%
valueB"            v
TileTileExpandDims:output:0Tile/multiples:output:0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙o
mul/ReadVariableOpReadVariableOpmul_readvariableop_resource*
_output_shapes
:	*
dtype0q
mulMulTile:output:0mul/ReadVariableOp:value:0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙o
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes
:	*
dtype0m
addAddV2mul:z:0add/ReadVariableOp:value:0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙
unstackUnpackadd:z:0*
T0*F
_output_shapes4
2:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
axisţ˙˙˙˙˙˙˙˙*	
num
einsum/EinsumEinsumunstack:output:0unstack:output:1*
N*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙*
equationbnd,bmd->bnmN
	truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   Dv
truedivRealDiveinsum/Einsum:output:0truediv/y:output:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:*
dtype0d
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        f
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        f
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      
strided_sliceStridedSliceReadVariableOp:value:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:	*

begin_mask*
end_mask*
new_axis_maska
Tile_1/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      l
Tile_1Tilestrided_slice:output:0Tile_1/multiples:output:0*
T0* 
_output_shapes
:
M
range/startConst*
_output_shapes
: *
dtype0*
value	B : N
range/limitConst*
_output_shapes
: *
dtype0*
value
B :P
range/deltaConst*
_output_shapes
: *
dtype0*
valueB
 *  ?X

range/CastCastrange/start:output:0*

DstT0*

SrcT0*
_output_shapes
: Z
range/Cast_1Castrange/limit:output:0*

DstT0*

SrcT0*
_output_shapes
: o
rangeRangerange/Cast:y:0range/Cast_1:y:0range/delta:output:0*

Tidx0*
_output_shapes	
:X
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:`
ReshapeReshaperange:output:0Reshape/shape:output:0*
T0*
_output_shapes	
:O
range_1/startConst*
_output_shapes
: *
dtype0*
value	B : P
range_1/limitConst*
_output_shapes
: *
dtype0*
value
B :O
range_1/deltaConst*
_output_shapes
: *
dtype0*
value	B :u
range_1Rangerange_1/start:output:0range_1/limit:output:0range_1/delta:output:0*
_output_shapes	
:S
CastCastrange_1:output:0*

DstT0*

SrcT0*
_output_shapes	
:P
truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  CZ
	truediv_1RealDivCast:y:0truediv_1/y:output:0*
T0*
_output_shapes	
:?
NegNegtruediv_1:z:0*
T0*
_output_shapes	
:J
pow/xConst*
_output_shapes
: *
dtype0*
valueB
 * @FI
powPowpow/x:output:0Neg:y:0*
T0*
_output_shapes	
:
einsum_1/EinsumEinsumReshape:output:0pow:z:0*
N*
T0* 
_output_shapes
:
*
equation...,d->...dO
SinSineinsum_1/Einsum:output:0*
T0* 
_output_shapes
:
O
CosCoseinsum_1/Einsum:output:0*
T0* 
_output_shapes
:
\
split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙
split_1Splitsplit_1/split_dim:output:0Tile_1:output:0*
T0*,
_output_shapes
:
:
*
	num_splitR
mul_1Mulsplit_1:output:0Cos:y:0*
T0* 
_output_shapes
:
R
mul_2Mulsplit_1:output:1Sin:y:0*
T0* 
_output_shapes
:
K
subSub	mul_1:z:0	mul_2:z:0*
T0* 
_output_shapes
:
R
mul_3Mulsplit_1:output:1Cos:y:0*
T0* 
_output_shapes
:
R
mul_4Mulsplit_1:output:0Sin:y:0*
T0* 
_output_shapes
:
O
add_1AddV2	mul_3:z:0	mul_4:z:0*
T0* 
_output_shapes
:
V
concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙p
concatConcatV2sub:z:0	add_1:z:0concat/axis:output:0*
N*
T0* 
_output_shapes
:
g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:*
dtype0f
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      
strided_slice_1StridedSliceReadVariableOp_1:value:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:	*

begin_mask*
end_mask*
new_axis_maska
Tile_2/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      n
Tile_2Tilestrided_slice_1:output:0Tile_2/multiples:output:0*
T0* 
_output_shapes
:
O
range_2/startConst*
_output_shapes
: *
dtype0*
value	B : P
range_2/limitConst*
_output_shapes
: *
dtype0*
value
B :R
range_2/deltaConst*
_output_shapes
: *
dtype0*
valueB
 *  ?\
range_2/CastCastrange_2/start:output:0*

DstT0*

SrcT0*
_output_shapes
: ^
range_2/Cast_1Castrange_2/limit:output:0*

DstT0*

SrcT0*
_output_shapes
: w
range_2Rangerange_2/Cast:y:0range_2/Cast_1:y:0range_2/delta:output:0*

Tidx0*
_output_shapes	
:Z
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB:f
	Reshape_1Reshaperange_2:output:0Reshape_1/shape:output:0*
T0*
_output_shapes	
:O
range_3/startConst*
_output_shapes
: *
dtype0*
value	B : P
range_3/limitConst*
_output_shapes
: *
dtype0*
value
B :O
range_3/deltaConst*
_output_shapes
: *
dtype0*
value	B :u
range_3Rangerange_3/start:output:0range_3/limit:output:0range_3/delta:output:0*
_output_shapes	
:U
Cast_1Castrange_3:output:0*

DstT0*

SrcT0*
_output_shapes	
:P
truediv_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  C\
	truediv_2RealDiv
Cast_1:y:0truediv_2/y:output:0*
T0*
_output_shapes	
:A
Neg_1Negtruediv_2:z:0*
T0*
_output_shapes	
:L
pow_1/xConst*
_output_shapes
: *
dtype0*
valueB
 * @FO
pow_1Powpow_1/x:output:0	Neg_1:y:0*
T0*
_output_shapes	
:
einsum_2/EinsumEinsumReshape_1:output:0	pow_1:z:0*
N*
T0* 
_output_shapes
:
*
equation...,d->...dQ
Sin_1Sineinsum_2/Einsum:output:0*
T0* 
_output_shapes
:
Q
Cos_1Coseinsum_2/Einsum:output:0*
T0* 
_output_shapes
:
\
split_2/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙
split_2Splitsplit_2/split_dim:output:0Tile_2:output:0*
T0*,
_output_shapes
:
:
*
	num_splitT
mul_5Mulsplit_2:output:0	Cos_1:y:0*
T0* 
_output_shapes
:
T
mul_6Mulsplit_2:output:1	Sin_1:y:0*
T0* 
_output_shapes
:
M
sub_1Sub	mul_5:z:0	mul_6:z:0*
T0* 
_output_shapes
:
T
mul_7Mulsplit_2:output:1	Cos_1:y:0*
T0* 
_output_shapes
:
T
mul_8Mulsplit_2:output:0	Sin_1:y:0*
T0* 
_output_shapes
:
O
add_2AddV2	mul_7:z:0	mul_8:z:0*
T0* 
_output_shapes
:
X
concat_1/axisConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙v
concat_1ConcatV2	sub_1:z:0	add_2:z:0concat_1/axis:output:0*
N*
T0* 
_output_shapes
:

einsum_3/EinsumEinsumconcat:output:0concat_1:output:0*
N*
T0* 
_output_shapes
:
*
equation	mk,nk->mnm
add_3AddV2truediv:z:0einsum_3/Einsum:output:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙Y
sqr_re_lu/ReluRelu	add_3:z:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙p
sqr_re_lu/SquareSquaresqr_re_lu/Relu:activations:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
einsum_4/EinsumEinsumsqr_re_lu/Square:y:0split:output:1*
N*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙*
equationbnm,bme->bnen
mul_9Mulsplit:output:0einsum_4/Einsum:output:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
 dense_1/Tensordot/ReadVariableOpReadVariableOp)dense_1_tensordot_readvariableop_resource* 
_output_shapes
:
*
dtype0`
dense_1/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:g
dense_1/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       ^
dense_1/Tensordot/ShapeShape	mul_9:z:0*
T0*
_output_shapes
::íĎa
dense_1/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : Ű
dense_1/Tensordot/GatherV2GatherV2 dense_1/Tensordot/Shape:output:0dense_1/Tensordot/free:output:0(dense_1/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:c
!dense_1/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ß
dense_1/Tensordot/GatherV2_1GatherV2 dense_1/Tensordot/Shape:output:0dense_1/Tensordot/axes:output:0*dense_1/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:a
dense_1/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
dense_1/Tensordot/ProdProd#dense_1/Tensordot/GatherV2:output:0 dense_1/Tensordot/Const:output:0*
T0*
_output_shapes
: c
dense_1/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 
dense_1/Tensordot/Prod_1Prod%dense_1/Tensordot/GatherV2_1:output:0"dense_1/Tensordot/Const_1:output:0*
T0*
_output_shapes
: _
dense_1/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ź
dense_1/Tensordot/concatConcatV2dense_1/Tensordot/free:output:0dense_1/Tensordot/axes:output:0&dense_1/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:
dense_1/Tensordot/stackPackdense_1/Tensordot/Prod:output:0!dense_1/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:
dense_1/Tensordot/transpose	Transpose	mul_9:z:0!dense_1/Tensordot/concat:output:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙˘
dense_1/Tensordot/ReshapeReshapedense_1/Tensordot/transpose:y:0 dense_1/Tensordot/stack:output:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙Ł
dense_1/Tensordot/MatMulMatMul"dense_1/Tensordot/Reshape:output:0(dense_1/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙d
dense_1/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:a
dense_1/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Ç
dense_1/Tensordot/concat_1ConcatV2#dense_1/Tensordot/GatherV2:output:0"dense_1/Tensordot/Const_2:output:0(dense_1/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
dense_1/TensordotReshape"dense_1/Tensordot/MatMul:product:0#dense_1/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
dense_1/BiasAddBiasAdddense_1/Tensordot:output:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙c
add_4AddV2dense_1/BiasAdd:output:0x*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙ť
NoOpNoOp^ReadVariableOp^ReadVariableOp_1^add/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/Tensordot/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp!^dense_1/Tensordot/ReadVariableOp^mul/ReadVariableOp!^scaled_norm/mul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ^
IdentityIdentity	add_4:z:0^NoOp*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:˙˙˙˙˙˙˙˙˙: : : : : : : : : 2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12(
add/ReadVariableOpadd/ReadVariableOp2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2@
dense/Tensordot/ReadVariableOpdense/Tensordot/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2D
 dense_1/Tensordot/ReadVariableOp dense_1/Tensordot/ReadVariableOp2(
mul/ReadVariableOpmul/ReadVariableOp2D
 scaled_norm/mul_1/ReadVariableOp scaled_norm/mul_1/ReadVariableOp:P L
-
_output_shapes
:˙˙˙˙˙˙˙˙˙

_user_specified_namex
Š

!__inference_internal_grad_fn_7393
result_grads_0
result_grads_1
result_grads_2
mul_beta

mul_inputs
identity

identity_1i
mulMulmul_beta
mul_inputs^result_grads_0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙S
SigmoidSigmoidmul:z:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙Z
mul_1Mulmul_beta
mul_inputs*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?_
subSubsub/x:output:0Sigmoid:y:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙X
mul_2Mul	mul_1:z:0sub:z:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙J
add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?_
addAddV2add/x:output:0	mul_2:z:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙Z
mul_3MulSigmoid:y:0add:z:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙T
SquareSquare
mul_inputs*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙`
mul_4Mulresult_grads_0
Square:y:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙\
mul_5Mul	mul_4:z:0Sigmoid:y:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙L
sub_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?c
sub_1Subsub_1/x:output:0Sigmoid:y:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙Z
mul_6Mul	mul_5:z:0	sub_1:z:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙Z
ConstConst*
_output_shapes
:*
dtype0*!
valueB"          F
SumSum	mul_6:z:0Const:output:0*
T0*
_output_shapes
: _
mul_7Mulresult_grads_0	mul_3:z:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙W
IdentityIdentity	mul_7:z:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙E

Identity_1IdentitySum:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: : :˙˙˙˙˙˙˙˙˙: 
&
 _has_manual_control_dependencies(
-
_output_shapes
:˙˙˙˙˙˙˙˙˙
(
_user_specified_nameresult_grads_0:]Y
-
_output_shapes
:˙˙˙˙˙˙˙˙˙
(
_user_specified_nameresult_grads_1:FB

_output_shapes
: 
(
_user_specified_nameresult_grads_2:<8

_output_shapes
: 

_user_specified_namebeta:UQ
-
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs



__inference_gradient_func_7333
result_grads_0
result_grads_1
result_grads_2

dense_beta
dense_biasadd
identity

identity_1˝
PartitionedCallPartitionedCallresult_grads_0result_grads_1result_grads_2
dense_betadense_biasadd*
Tin	
2*
Tout
2*/
_output_shapes
:˙˙˙˙˙˙˙˙˙: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 **
f%R#
!__inference_internal_grad_fn_1955f
IdentityIdentityPartitionedCall:output:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙Q

Identity_1IdentityPartitionedCall:output:1*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: : :˙˙˙˙˙˙˙˙˙:] Y
-
_output_shapes
:˙˙˙˙˙˙˙˙˙
(
_user_specified_nameresult_grads_0:]Y
-
_output_shapes
:˙˙˙˙˙˙˙˙˙
(
_user_specified_nameresult_grads_1:FB

_output_shapes
: 
(
_user_specified_nameresult_grads_2:B>

_output_shapes
: 
$
_user_specified_name
dense/beta:\X
-
_output_shapes
:˙˙˙˙˙˙˙˙˙
'
_user_specified_namedense/BiasAdd
ô 

<__inference_gau_layer_call_and_return_conditional_losses_722
x3
)scaled_norm_mul_1_readvariableop_resource: ;
'dense_tensordot_readvariableop_resource:
4
%dense_biasadd_readvariableop_resource:	.
mul_readvariableop_resource:	.
add_readvariableop_resource:	&
readvariableop_resource:	(
readvariableop_1_resource:	=
)dense_1_tensordot_readvariableop_resource:
6
'dense_1_biasadd_readvariableop_resource:	
identity˘ReadVariableOp˘ReadVariableOp_1˘add/ReadVariableOp˘dense/BiasAdd/ReadVariableOp˘dense/Tensordot/ReadVariableOp˘dense_1/BiasAdd/ReadVariableOp˘ dense_1/Tensordot/ReadVariableOp˘mul/ReadVariableOp˘ scaled_norm/mul_1/ReadVariableOpW
scaled_norm/SquareSquarex*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙l
"scaled_norm/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:Ľ
scaled_norm/MeanMeanscaled_norm/Square:y:0+scaled_norm/Mean/reduction_indices:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙*
	keep_dims(V
scaled_norm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *˝75
scaled_norm/addAddV2scaled_norm/Mean:output:0scaled_norm/add/y:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙f
scaled_norm/RsqrtRsqrtscaled_norm/add:z:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙h
scaled_norm/mulMulxscaled_norm/Rsqrt:y:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
 scaled_norm/mul_1/ReadVariableOpReadVariableOp)scaled_norm_mul_1_readvariableop_resource*
_output_shapes
: *
dtype0
scaled_norm/mul_1Mulscaled_norm/mul:z:0(scaled_norm/mul_1/ReadVariableOp:value:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙k
dropout/IdentityIdentityscaled_norm/mul_1:z:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
dense/Tensordot/ReadVariableOpReadVariableOp'dense_tensordot_readvariableop_resource* 
_output_shapes
:
*
dtype0^
dense/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:e
dense/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       l
dense/Tensordot/ShapeShapedropout/Identity:output:0*
T0*
_output_shapes
::íĎ_
dense/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : Ó
dense/Tensordot/GatherV2GatherV2dense/Tensordot/Shape:output:0dense/Tensordot/free:output:0&dense/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:a
dense/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ×
dense/Tensordot/GatherV2_1GatherV2dense/Tensordot/Shape:output:0dense/Tensordot/axes:output:0(dense/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:_
dense/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
dense/Tensordot/ProdProd!dense/Tensordot/GatherV2:output:0dense/Tensordot/Const:output:0*
T0*
_output_shapes
: a
dense/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 
dense/Tensordot/Prod_1Prod#dense/Tensordot/GatherV2_1:output:0 dense/Tensordot/Const_1:output:0*
T0*
_output_shapes
: ]
dense/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ´
dense/Tensordot/concatConcatV2dense/Tensordot/free:output:0dense/Tensordot/axes:output:0$dense/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:
dense/Tensordot/stackPackdense/Tensordot/Prod:output:0dense/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:
dense/Tensordot/transpose	Transposedropout/Identity:output:0dense/Tensordot/concat:output:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
dense/Tensordot/ReshapeReshapedense/Tensordot/transpose:y:0dense/Tensordot/stack:output:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
dense/Tensordot/MatMulMatMul dense/Tensordot/Reshape:output:0&dense/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙b
dense/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:_
dense/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ż
dense/Tensordot/concat_1ConcatV2!dense/Tensordot/GatherV2:output:0 dense/Tensordot/Const_2:output:0&dense/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
dense/TensordotReshape dense/Tensordot/MatMul:product:0!dense/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
dense/BiasAddBiasAdddense/Tensordot:output:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙O

dense/betaConst*
_output_shapes
: *
dtype0*
valueB
 *  ?u
	dense/mulMuldense/beta:output:0dense/BiasAdd:output:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙_
dense/SigmoidSigmoiddense/mul:z:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙u
dense/mul_1Muldense/BiasAdd:output:0dense/Sigmoid:y:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙c
dense/IdentityIdentitydense/mul_1:z:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙Ý
dense/IdentityN	IdentityNdense/mul_1:z:0dense/BiasAdd:output:0dense/beta:output:0*
T
2*)
_gradient_op_typeCustomGradient-114*H
_output_shapes6
4:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: p
dropout_1/IdentityIdentitydense/IdentityN:output:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙Z
ConstConst*
_output_shapes
:*
dtype0*!
valueB"         Z
split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙Ý
splitSplitVdropout_1/Identity:output:0Const:output:0split/split_dim:output:0*
T0*

Tlen0*_
_output_shapesM
K:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
	num_splitP
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :}

ExpandDims
ExpandDimssplit:output:2ExpandDims/dim:output:0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙g
Tile/multiplesConst*
_output_shapes
:*
dtype0*%
valueB"            v
TileTileExpandDims:output:0Tile/multiples:output:0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙o
mul/ReadVariableOpReadVariableOpmul_readvariableop_resource*
_output_shapes
:	*
dtype0q
mulMulTile:output:0mul/ReadVariableOp:value:0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙o
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes
:	*
dtype0m
addAddV2mul:z:0add/ReadVariableOp:value:0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙
unstackUnpackadd:z:0*
T0*F
_output_shapes4
2:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
axisţ˙˙˙˙˙˙˙˙*	
num
einsum/EinsumEinsumunstack:output:0unstack:output:1*
N*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙*
equationbnd,bmd->bnmN
	truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   Dv
truedivRealDiveinsum/Einsum:output:0truediv/y:output:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:*
dtype0d
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        f
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        f
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      
strided_sliceStridedSliceReadVariableOp:value:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:	*

begin_mask*
end_mask*
new_axis_maska
Tile_1/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      l
Tile_1Tilestrided_slice:output:0Tile_1/multiples:output:0*
T0* 
_output_shapes
:
M
range/startConst*
_output_shapes
: *
dtype0*
value	B : N
range/limitConst*
_output_shapes
: *
dtype0*
value
B :P
range/deltaConst*
_output_shapes
: *
dtype0*
valueB
 *  ?X

range/CastCastrange/start:output:0*

DstT0*

SrcT0*
_output_shapes
: Z
range/Cast_1Castrange/limit:output:0*

DstT0*

SrcT0*
_output_shapes
: o
rangeRangerange/Cast:y:0range/Cast_1:y:0range/delta:output:0*

Tidx0*
_output_shapes	
:X
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:`
ReshapeReshaperange:output:0Reshape/shape:output:0*
T0*
_output_shapes	
:O
range_1/startConst*
_output_shapes
: *
dtype0*
value	B : P
range_1/limitConst*
_output_shapes
: *
dtype0*
value
B :O
range_1/deltaConst*
_output_shapes
: *
dtype0*
value	B :u
range_1Rangerange_1/start:output:0range_1/limit:output:0range_1/delta:output:0*
_output_shapes	
:S
CastCastrange_1:output:0*

DstT0*

SrcT0*
_output_shapes	
:P
truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  CZ
	truediv_1RealDivCast:y:0truediv_1/y:output:0*
T0*
_output_shapes	
:?
NegNegtruediv_1:z:0*
T0*
_output_shapes	
:J
pow/xConst*
_output_shapes
: *
dtype0*
valueB
 * @FI
powPowpow/x:output:0Neg:y:0*
T0*
_output_shapes	
:
einsum_1/EinsumEinsumReshape:output:0pow:z:0*
N*
T0* 
_output_shapes
:
*
equation...,d->...dO
SinSineinsum_1/Einsum:output:0*
T0* 
_output_shapes
:
O
CosCoseinsum_1/Einsum:output:0*
T0* 
_output_shapes
:
\
split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙
split_1Splitsplit_1/split_dim:output:0Tile_1:output:0*
T0*,
_output_shapes
:
:
*
	num_splitR
mul_1Mulsplit_1:output:0Cos:y:0*
T0* 
_output_shapes
:
R
mul_2Mulsplit_1:output:1Sin:y:0*
T0* 
_output_shapes
:
K
subSub	mul_1:z:0	mul_2:z:0*
T0* 
_output_shapes
:
R
mul_3Mulsplit_1:output:1Cos:y:0*
T0* 
_output_shapes
:
R
mul_4Mulsplit_1:output:0Sin:y:0*
T0* 
_output_shapes
:
O
add_1AddV2	mul_3:z:0	mul_4:z:0*
T0* 
_output_shapes
:
V
concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙p
concatConcatV2sub:z:0	add_1:z:0concat/axis:output:0*
N*
T0* 
_output_shapes
:
g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:*
dtype0f
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      
strided_slice_1StridedSliceReadVariableOp_1:value:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:	*

begin_mask*
end_mask*
new_axis_maska
Tile_2/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      n
Tile_2Tilestrided_slice_1:output:0Tile_2/multiples:output:0*
T0* 
_output_shapes
:
O
range_2/startConst*
_output_shapes
: *
dtype0*
value	B : P
range_2/limitConst*
_output_shapes
: *
dtype0*
value
B :R
range_2/deltaConst*
_output_shapes
: *
dtype0*
valueB
 *  ?\
range_2/CastCastrange_2/start:output:0*

DstT0*

SrcT0*
_output_shapes
: ^
range_2/Cast_1Castrange_2/limit:output:0*

DstT0*

SrcT0*
_output_shapes
: w
range_2Rangerange_2/Cast:y:0range_2/Cast_1:y:0range_2/delta:output:0*

Tidx0*
_output_shapes	
:Z
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB:f
	Reshape_1Reshaperange_2:output:0Reshape_1/shape:output:0*
T0*
_output_shapes	
:O
range_3/startConst*
_output_shapes
: *
dtype0*
value	B : P
range_3/limitConst*
_output_shapes
: *
dtype0*
value
B :O
range_3/deltaConst*
_output_shapes
: *
dtype0*
value	B :u
range_3Rangerange_3/start:output:0range_3/limit:output:0range_3/delta:output:0*
_output_shapes	
:U
Cast_1Castrange_3:output:0*

DstT0*

SrcT0*
_output_shapes	
:P
truediv_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  C\
	truediv_2RealDiv
Cast_1:y:0truediv_2/y:output:0*
T0*
_output_shapes	
:A
Neg_1Negtruediv_2:z:0*
T0*
_output_shapes	
:L
pow_1/xConst*
_output_shapes
: *
dtype0*
valueB
 * @FO
pow_1Powpow_1/x:output:0	Neg_1:y:0*
T0*
_output_shapes	
:
einsum_2/EinsumEinsumReshape_1:output:0	pow_1:z:0*
N*
T0* 
_output_shapes
:
*
equation...,d->...dQ
Sin_1Sineinsum_2/Einsum:output:0*
T0* 
_output_shapes
:
Q
Cos_1Coseinsum_2/Einsum:output:0*
T0* 
_output_shapes
:
\
split_2/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙
split_2Splitsplit_2/split_dim:output:0Tile_2:output:0*
T0*,
_output_shapes
:
:
*
	num_splitT
mul_5Mulsplit_2:output:0	Cos_1:y:0*
T0* 
_output_shapes
:
T
mul_6Mulsplit_2:output:1	Sin_1:y:0*
T0* 
_output_shapes
:
M
sub_1Sub	mul_5:z:0	mul_6:z:0*
T0* 
_output_shapes
:
T
mul_7Mulsplit_2:output:1	Cos_1:y:0*
T0* 
_output_shapes
:
T
mul_8Mulsplit_2:output:0	Sin_1:y:0*
T0* 
_output_shapes
:
O
add_2AddV2	mul_7:z:0	mul_8:z:0*
T0* 
_output_shapes
:
X
concat_1/axisConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙v
concat_1ConcatV2	sub_1:z:0	add_2:z:0concat_1/axis:output:0*
N*
T0* 
_output_shapes
:

einsum_3/EinsumEinsumconcat:output:0concat_1:output:0*
N*
T0* 
_output_shapes
:
*
equation	mk,nk->mnm
add_3AddV2truediv:z:0einsum_3/Einsum:output:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙Y
sqr_re_lu/ReluRelu	add_3:z:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙p
sqr_re_lu/SquareSquaresqr_re_lu/Relu:activations:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
einsum_4/EinsumEinsumsqr_re_lu/Square:y:0split:output:1*
N*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙*
equationbnm,bme->bnen
mul_9Mulsplit:output:0einsum_4/Einsum:output:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
 dense_1/Tensordot/ReadVariableOpReadVariableOp)dense_1_tensordot_readvariableop_resource* 
_output_shapes
:
*
dtype0`
dense_1/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:g
dense_1/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       ^
dense_1/Tensordot/ShapeShape	mul_9:z:0*
T0*
_output_shapes
::íĎa
dense_1/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : Ű
dense_1/Tensordot/GatherV2GatherV2 dense_1/Tensordot/Shape:output:0dense_1/Tensordot/free:output:0(dense_1/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:c
!dense_1/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ß
dense_1/Tensordot/GatherV2_1GatherV2 dense_1/Tensordot/Shape:output:0dense_1/Tensordot/axes:output:0*dense_1/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:a
dense_1/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
dense_1/Tensordot/ProdProd#dense_1/Tensordot/GatherV2:output:0 dense_1/Tensordot/Const:output:0*
T0*
_output_shapes
: c
dense_1/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 
dense_1/Tensordot/Prod_1Prod%dense_1/Tensordot/GatherV2_1:output:0"dense_1/Tensordot/Const_1:output:0*
T0*
_output_shapes
: _
dense_1/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ź
dense_1/Tensordot/concatConcatV2dense_1/Tensordot/free:output:0dense_1/Tensordot/axes:output:0&dense_1/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:
dense_1/Tensordot/stackPackdense_1/Tensordot/Prod:output:0!dense_1/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:
dense_1/Tensordot/transpose	Transpose	mul_9:z:0!dense_1/Tensordot/concat:output:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙˘
dense_1/Tensordot/ReshapeReshapedense_1/Tensordot/transpose:y:0 dense_1/Tensordot/stack:output:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙Ł
dense_1/Tensordot/MatMulMatMul"dense_1/Tensordot/Reshape:output:0(dense_1/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙d
dense_1/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:a
dense_1/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Ç
dense_1/Tensordot/concat_1ConcatV2#dense_1/Tensordot/GatherV2:output:0"dense_1/Tensordot/Const_2:output:0(dense_1/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
dense_1/TensordotReshape"dense_1/Tensordot/MatMul:product:0#dense_1/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
dense_1/BiasAddBiasAdddense_1/Tensordot:output:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙c
add_4AddV2dense_1/BiasAdd:output:0x*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙ť
NoOpNoOp^ReadVariableOp^ReadVariableOp_1^add/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/Tensordot/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp!^dense_1/Tensordot/ReadVariableOp^mul/ReadVariableOp!^scaled_norm/mul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ^
IdentityIdentity	add_4:z:0^NoOp*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:˙˙˙˙˙˙˙˙˙: : : : : : : : : 2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12(
add/ReadVariableOpadd/ReadVariableOp2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2@
dense/Tensordot/ReadVariableOpdense/Tensordot/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2D
 dense_1/Tensordot/ReadVariableOp dense_1/Tensordot/ReadVariableOp2(
mul/ReadVariableOpmul/ReadVariableOp2D
 scaled_norm/mul_1/ReadVariableOp scaled_norm/mul_1/ReadVariableOp:P L
-
_output_shapes
:˙˙˙˙˙˙˙˙˙

_user_specified_namex

Ü
$__inference_model_layer_call_fn_7027
input_1
unknown: 
	unknown_0:	
	unknown_1:	
	unknown_2: 
	unknown_3:

	unknown_4:	
	unknown_5:	
	unknown_6:	
	unknown_7:	
	unknown_8:	
	unknown_9:


unknown_10:	

unknown_11: 

unknown_12:


unknown_13:	

unknown_14:	

unknown_15:	

unknown_16:	

unknown_17:	

unknown_18:


unknown_19:	

unknown_20:


unknown_21:	
identity˘StatefulPartitionedCalló
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21*#
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:˙˙˙˙˙˙˙˙˙*9
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *H
fCRA
?__inference_model_layer_call_and_return_conditional_losses_6925p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Y
_input_shapesH
F:˙˙˙˙˙˙˙˙˙: : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
,
_output_shapes
:˙˙˙˙˙˙˙˙˙
!
_user_specified_name	input_1:$ 

_user_specified_name6979:$ 

_user_specified_name6981:$ 

_user_specified_name6983:$ 

_user_specified_name6985:$ 

_user_specified_name6987:$ 

_user_specified_name6989:$ 

_user_specified_name6991:$ 

_user_specified_name6993:$	 

_user_specified_name6995:$
 

_user_specified_name6997:$ 

_user_specified_name6999:$ 

_user_specified_name7001:$ 

_user_specified_name7003:$ 

_user_specified_name7005:$ 

_user_specified_name7007:$ 

_user_specified_name7009:$ 

_user_specified_name7011:$ 

_user_specified_name7013:$ 

_user_specified_name7015:$ 

_user_specified_name7017:$ 

_user_specified_name7019:$ 

_user_specified_name7021:$ 

_user_specified_name7023

§
 __inference_internal_grad_fn_539
result_grads_0
result_grads_1
result_grads_2
mul_dense_beta
mul_dense_biasadd
identity

identity_1v
mulMulmul_dense_betamul_dense_biasadd^result_grads_0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙S
SigmoidSigmoidmul:z:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙g
mul_1Mulmul_dense_betamul_dense_biasadd*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?_
subSubsub/x:output:0Sigmoid:y:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙X
mul_2Mul	mul_1:z:0sub:z:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙J
add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?_
addAddV2add/x:output:0	mul_2:z:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙Z
mul_3MulSigmoid:y:0add:z:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙[
SquareSquaremul_dense_biasadd*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙`
mul_4Mulresult_grads_0
Square:y:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙\
mul_5Mul	mul_4:z:0Sigmoid:y:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙L
sub_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?c
sub_1Subsub_1/x:output:0Sigmoid:y:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙Z
mul_6Mul	mul_5:z:0	sub_1:z:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙Z
ConstConst*
_output_shapes
:*
dtype0*!
valueB"          F
SumSum	mul_6:z:0Const:output:0*
T0*
_output_shapes
: _
mul_7Mulresult_grads_0	mul_3:z:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙W
IdentityIdentity	mul_7:z:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙E

Identity_1IdentitySum:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: : :˙˙˙˙˙˙˙˙˙: 
&
 _has_manual_control_dependencies(
-
_output_shapes
:˙˙˙˙˙˙˙˙˙
(
_user_specified_nameresult_grads_0:]Y
-
_output_shapes
:˙˙˙˙˙˙˙˙˙
(
_user_specified_nameresult_grads_1:FB

_output_shapes
: 
(
_user_specified_nameresult_grads_2:

_output_shapes
: :3/
-
_output_shapes
:˙˙˙˙˙˙˙˙˙

D
(__inference_dropout_4_layer_call_fn_7208

inputs
identityŻ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:˙˙˙˙˙˙˙˙˙* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dropout_4_layer_call_and_return_conditional_losses_6740a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:˙˙˙˙˙˙˙˙˙:P L
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
Ł
Ź
!__inference_internal_grad_fn_2175
result_grads_0
result_grads_1
result_grads_2
mul_dense_2_beta
mul_dense_2_biasadd
identity

identity_1z
mulMulmul_dense_2_betamul_dense_2_biasadd^result_grads_0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙S
SigmoidSigmoidmul:z:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙k
mul_1Mulmul_dense_2_betamul_dense_2_biasadd*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?_
subSubsub/x:output:0Sigmoid:y:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙X
mul_2Mul	mul_1:z:0sub:z:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙J
add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?_
addAddV2add/x:output:0	mul_2:z:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙Z
mul_3MulSigmoid:y:0add:z:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙]
SquareSquaremul_dense_2_biasadd*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙`
mul_4Mulresult_grads_0
Square:y:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙\
mul_5Mul	mul_4:z:0Sigmoid:y:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙L
sub_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?c
sub_1Subsub_1/x:output:0Sigmoid:y:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙Z
mul_6Mul	mul_5:z:0	sub_1:z:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙Z
ConstConst*
_output_shapes
:*
dtype0*!
valueB"          F
SumSum	mul_6:z:0Const:output:0*
T0*
_output_shapes
: _
mul_7Mulresult_grads_0	mul_3:z:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙W
IdentityIdentity	mul_7:z:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙E

Identity_1IdentitySum:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: : :˙˙˙˙˙˙˙˙˙: 
&
 _has_manual_control_dependencies(
-
_output_shapes
:˙˙˙˙˙˙˙˙˙
(
_user_specified_nameresult_grads_0:]Y
-
_output_shapes
:˙˙˙˙˙˙˙˙˙
(
_user_specified_nameresult_grads_1:FB

_output_shapes
: 
(
_user_specified_nameresult_grads_2:

_output_shapes
: :3/
-
_output_shapes
:˙˙˙˙˙˙˙˙˙
˛
ć
.__inference_embedding_model_layer_call_fn_6850
input_2
unknown: 
	unknown_0:	
	unknown_1:	
	unknown_2: 
	unknown_3:

	unknown_4:	
	unknown_5:	
	unknown_6:	
	unknown_7:	
	unknown_8:	
	unknown_9:


unknown_10:	

unknown_11: 

unknown_12:


unknown_13:	

unknown_14:	

unknown_15:	

unknown_16:	

unknown_17:	

unknown_18:


unknown_19:	

unknown_20:


unknown_21:	
identity˘StatefulPartitionedCallý
StatefulPartitionedCallStatefulPartitionedCallinput_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21*#
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:˙˙˙˙˙˙˙˙˙*9
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_embedding_model_layer_call_and_return_conditional_losses_6748p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Y
_input_shapesH
F:˙˙˙˙˙˙˙˙˙: : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
,
_output_shapes
:˙˙˙˙˙˙˙˙˙
!
_user_specified_name	input_2:$ 

_user_specified_name6802:$ 

_user_specified_name6804:$ 

_user_specified_name6806:$ 

_user_specified_name6808:$ 

_user_specified_name6810:$ 

_user_specified_name6812:$ 

_user_specified_name6814:$ 

_user_specified_name6816:$	 

_user_specified_name6818:$
 

_user_specified_name6820:$ 

_user_specified_name6822:$ 

_user_specified_name6824:$ 

_user_specified_name6826:$ 

_user_specified_name6828:$ 

_user_specified_name6830:$ 

_user_specified_name6832:$ 

_user_specified_name6834:$ 

_user_specified_name6836:$ 

_user_specified_name6838:$ 

_user_specified_name6840:$ 

_user_specified_name6842:$ 

_user_specified_name6844:$ 

_user_specified_name6846


G__inference_encoder_start_layer_call_and_return_conditional_losses_7169

inputs4
!tensordot_readvariableop_resource:	.
biasadd_readvariableop_resource:	
identity˘BiasAdd/ReadVariableOp˘Tensordot/ReadVariableOp{
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes
:	*
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       S
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
::íĎY
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ť
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ż
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:z
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙\
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : §
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0~
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙e
IdentityIdentityBiasAdd:output:0^NoOp*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙V
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:˙˙˙˙˙˙˙˙˙: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:T P
,
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
î	
Í
$__inference_gau_1_layer_call_fn_1889
x
unknown: 
	unknown_0:

	unknown_1:	
	unknown_2:	
	unknown_3:	
	unknown_4:	
	unknown_5:	
	unknown_6:

	unknown_7:	
identity˘StatefulPartitionedCallł
StatefulPartitionedCallStatefulPartitionedCallxunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7*
Tin
2
*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:˙˙˙˙˙˙˙˙˙*+
_read_only_resource_inputs
		*0
config_proto 

CPU

GPU2*0J 8 *H
fCRA
?__inference_gau_1_layer_call_and_return_conditional_losses_1875`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 u
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:˙˙˙˙˙˙˙˙˙: : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
-
_output_shapes
:˙˙˙˙˙˙˙˙˙

_user_specified_namex

Đ
'__inference_restored_function_body_6491
x
unknown: 
	unknown_0:

	unknown_1:	
	unknown_2:	
	unknown_3:	
	unknown_4:	
	unknown_5:	
	unknown_6:

	unknown_7:	
identity˘StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallxunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7*
Tin
2
*
Tout
2*-
_output_shapes
:˙˙˙˙˙˙˙˙˙*+
_read_only_resource_inputs
		*-
config_proto

CPU

GPU 2J 8 *G
fBR@
>__inference_gau_1_layer_call_and_return_conditional_losses_485u
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:˙˙˙˙˙˙˙˙˙: : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
-
_output_shapes
:˙˙˙˙˙˙˙˙˙

_user_specified_namex:$ 

_user_specified_name6471:$ 

_user_specified_name6473:$ 

_user_specified_name6475:$ 

_user_specified_name6477:$ 

_user_specified_name6479:$ 

_user_specified_name6481:$ 

_user_specified_name6483:$ 

_user_specified_name6485:$	 

_user_specified_name6487
ő 

=__inference_gau_layer_call_and_return_conditional_losses_2138
x3
)scaled_norm_mul_1_readvariableop_resource: ;
'dense_tensordot_readvariableop_resource:
4
%dense_biasadd_readvariableop_resource:	.
mul_readvariableop_resource:	.
add_readvariableop_resource:	&
readvariableop_resource:	(
readvariableop_1_resource:	=
)dense_1_tensordot_readvariableop_resource:
6
'dense_1_biasadd_readvariableop_resource:	
identity˘ReadVariableOp˘ReadVariableOp_1˘add/ReadVariableOp˘dense/BiasAdd/ReadVariableOp˘dense/Tensordot/ReadVariableOp˘dense_1/BiasAdd/ReadVariableOp˘ dense_1/Tensordot/ReadVariableOp˘mul/ReadVariableOp˘ scaled_norm/mul_1/ReadVariableOpW
scaled_norm/SquareSquarex*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙l
"scaled_norm/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:Ľ
scaled_norm/MeanMeanscaled_norm/Square:y:0+scaled_norm/Mean/reduction_indices:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙*
	keep_dims(V
scaled_norm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *˝75
scaled_norm/addAddV2scaled_norm/Mean:output:0scaled_norm/add/y:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙f
scaled_norm/RsqrtRsqrtscaled_norm/add:z:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙h
scaled_norm/mulMulxscaled_norm/Rsqrt:y:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
 scaled_norm/mul_1/ReadVariableOpReadVariableOp)scaled_norm_mul_1_readvariableop_resource*
_output_shapes
: *
dtype0
scaled_norm/mul_1Mulscaled_norm/mul:z:0(scaled_norm/mul_1/ReadVariableOp:value:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙k
dropout/IdentityIdentityscaled_norm/mul_1:z:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
dense/Tensordot/ReadVariableOpReadVariableOp'dense_tensordot_readvariableop_resource* 
_output_shapes
:
*
dtype0^
dense/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:e
dense/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       l
dense/Tensordot/ShapeShapedropout/Identity:output:0*
T0*
_output_shapes
::íĎ_
dense/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : Ó
dense/Tensordot/GatherV2GatherV2dense/Tensordot/Shape:output:0dense/Tensordot/free:output:0&dense/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:a
dense/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ×
dense/Tensordot/GatherV2_1GatherV2dense/Tensordot/Shape:output:0dense/Tensordot/axes:output:0(dense/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:_
dense/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
dense/Tensordot/ProdProd!dense/Tensordot/GatherV2:output:0dense/Tensordot/Const:output:0*
T0*
_output_shapes
: a
dense/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 
dense/Tensordot/Prod_1Prod#dense/Tensordot/GatherV2_1:output:0 dense/Tensordot/Const_1:output:0*
T0*
_output_shapes
: ]
dense/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ´
dense/Tensordot/concatConcatV2dense/Tensordot/free:output:0dense/Tensordot/axes:output:0$dense/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:
dense/Tensordot/stackPackdense/Tensordot/Prod:output:0dense/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:
dense/Tensordot/transpose	Transposedropout/Identity:output:0dense/Tensordot/concat:output:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
dense/Tensordot/ReshapeReshapedense/Tensordot/transpose:y:0dense/Tensordot/stack:output:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
dense/Tensordot/MatMulMatMul dense/Tensordot/Reshape:output:0&dense/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙b
dense/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:_
dense/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ż
dense/Tensordot/concat_1ConcatV2!dense/Tensordot/GatherV2:output:0 dense/Tensordot/Const_2:output:0&dense/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
dense/TensordotReshape dense/Tensordot/MatMul:product:0!dense/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
dense/BiasAddBiasAdddense/Tensordot:output:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙O

dense/betaConst*
_output_shapes
: *
dtype0*
valueB
 *  ?u
	dense/mulMuldense/beta:output:0dense/BiasAdd:output:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙_
dense/SigmoidSigmoiddense/mul:z:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙u
dense/mul_1Muldense/BiasAdd:output:0dense/Sigmoid:y:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙c
dense/IdentityIdentitydense/mul_1:z:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙Ý
dense/IdentityN	IdentityNdense/mul_1:z:0dense/BiasAdd:output:0dense/beta:output:0*
T
2*)
_gradient_op_typeCustomGradient-112*H
_output_shapes6
4:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: p
dropout_1/IdentityIdentitydense/IdentityN:output:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙Z
ConstConst*
_output_shapes
:*
dtype0*!
valueB"         Z
split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙Ý
splitSplitVdropout_1/Identity:output:0Const:output:0split/split_dim:output:0*
T0*

Tlen0*_
_output_shapesM
K:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
	num_splitP
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :}

ExpandDims
ExpandDimssplit:output:2ExpandDims/dim:output:0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙g
Tile/multiplesConst*
_output_shapes
:*
dtype0*%
valueB"            v
TileTileExpandDims:output:0Tile/multiples:output:0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙o
mul/ReadVariableOpReadVariableOpmul_readvariableop_resource*
_output_shapes
:	*
dtype0q
mulMulTile:output:0mul/ReadVariableOp:value:0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙o
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes
:	*
dtype0m
addAddV2mul:z:0add/ReadVariableOp:value:0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙
unstackUnpackadd:z:0*
T0*F
_output_shapes4
2:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
axisţ˙˙˙˙˙˙˙˙*	
num
einsum/EinsumEinsumunstack:output:0unstack:output:1*
N*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙*
equationbnd,bmd->bnmN
	truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   Dv
truedivRealDiveinsum/Einsum:output:0truediv/y:output:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:*
dtype0d
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        f
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        f
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      
strided_sliceStridedSliceReadVariableOp:value:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:	*

begin_mask*
end_mask*
new_axis_maska
Tile_1/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      l
Tile_1Tilestrided_slice:output:0Tile_1/multiples:output:0*
T0* 
_output_shapes
:
M
range/startConst*
_output_shapes
: *
dtype0*
value	B : N
range/limitConst*
_output_shapes
: *
dtype0*
value
B :P
range/deltaConst*
_output_shapes
: *
dtype0*
valueB
 *  ?X

range/CastCastrange/start:output:0*

DstT0*

SrcT0*
_output_shapes
: Z
range/Cast_1Castrange/limit:output:0*

DstT0*

SrcT0*
_output_shapes
: o
rangeRangerange/Cast:y:0range/Cast_1:y:0range/delta:output:0*

Tidx0*
_output_shapes	
:X
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:`
ReshapeReshaperange:output:0Reshape/shape:output:0*
T0*
_output_shapes	
:O
range_1/startConst*
_output_shapes
: *
dtype0*
value	B : P
range_1/limitConst*
_output_shapes
: *
dtype0*
value
B :O
range_1/deltaConst*
_output_shapes
: *
dtype0*
value	B :u
range_1Rangerange_1/start:output:0range_1/limit:output:0range_1/delta:output:0*
_output_shapes	
:S
CastCastrange_1:output:0*

DstT0*

SrcT0*
_output_shapes	
:P
truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  CZ
	truediv_1RealDivCast:y:0truediv_1/y:output:0*
T0*
_output_shapes	
:?
NegNegtruediv_1:z:0*
T0*
_output_shapes	
:J
pow/xConst*
_output_shapes
: *
dtype0*
valueB
 * @FI
powPowpow/x:output:0Neg:y:0*
T0*
_output_shapes	
:
einsum_1/EinsumEinsumReshape:output:0pow:z:0*
N*
T0* 
_output_shapes
:
*
equation...,d->...dO
SinSineinsum_1/Einsum:output:0*
T0* 
_output_shapes
:
O
CosCoseinsum_1/Einsum:output:0*
T0* 
_output_shapes
:
\
split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙
split_1Splitsplit_1/split_dim:output:0Tile_1:output:0*
T0*,
_output_shapes
:
:
*
	num_splitR
mul_1Mulsplit_1:output:0Cos:y:0*
T0* 
_output_shapes
:
R
mul_2Mulsplit_1:output:1Sin:y:0*
T0* 
_output_shapes
:
K
subSub	mul_1:z:0	mul_2:z:0*
T0* 
_output_shapes
:
R
mul_3Mulsplit_1:output:1Cos:y:0*
T0* 
_output_shapes
:
R
mul_4Mulsplit_1:output:0Sin:y:0*
T0* 
_output_shapes
:
O
add_1AddV2	mul_3:z:0	mul_4:z:0*
T0* 
_output_shapes
:
V
concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙p
concatConcatV2sub:z:0	add_1:z:0concat/axis:output:0*
N*
T0* 
_output_shapes
:
g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:*
dtype0f
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      
strided_slice_1StridedSliceReadVariableOp_1:value:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:	*

begin_mask*
end_mask*
new_axis_maska
Tile_2/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      n
Tile_2Tilestrided_slice_1:output:0Tile_2/multiples:output:0*
T0* 
_output_shapes
:
O
range_2/startConst*
_output_shapes
: *
dtype0*
value	B : P
range_2/limitConst*
_output_shapes
: *
dtype0*
value
B :R
range_2/deltaConst*
_output_shapes
: *
dtype0*
valueB
 *  ?\
range_2/CastCastrange_2/start:output:0*

DstT0*

SrcT0*
_output_shapes
: ^
range_2/Cast_1Castrange_2/limit:output:0*

DstT0*

SrcT0*
_output_shapes
: w
range_2Rangerange_2/Cast:y:0range_2/Cast_1:y:0range_2/delta:output:0*

Tidx0*
_output_shapes	
:Z
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB:f
	Reshape_1Reshaperange_2:output:0Reshape_1/shape:output:0*
T0*
_output_shapes	
:O
range_3/startConst*
_output_shapes
: *
dtype0*
value	B : P
range_3/limitConst*
_output_shapes
: *
dtype0*
value
B :O
range_3/deltaConst*
_output_shapes
: *
dtype0*
value	B :u
range_3Rangerange_3/start:output:0range_3/limit:output:0range_3/delta:output:0*
_output_shapes	
:U
Cast_1Castrange_3:output:0*

DstT0*

SrcT0*
_output_shapes	
:P
truediv_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  C\
	truediv_2RealDiv
Cast_1:y:0truediv_2/y:output:0*
T0*
_output_shapes	
:A
Neg_1Negtruediv_2:z:0*
T0*
_output_shapes	
:L
pow_1/xConst*
_output_shapes
: *
dtype0*
valueB
 * @FO
pow_1Powpow_1/x:output:0	Neg_1:y:0*
T0*
_output_shapes	
:
einsum_2/EinsumEinsumReshape_1:output:0	pow_1:z:0*
N*
T0* 
_output_shapes
:
*
equation...,d->...dQ
Sin_1Sineinsum_2/Einsum:output:0*
T0* 
_output_shapes
:
Q
Cos_1Coseinsum_2/Einsum:output:0*
T0* 
_output_shapes
:
\
split_2/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙
split_2Splitsplit_2/split_dim:output:0Tile_2:output:0*
T0*,
_output_shapes
:
:
*
	num_splitT
mul_5Mulsplit_2:output:0	Cos_1:y:0*
T0* 
_output_shapes
:
T
mul_6Mulsplit_2:output:1	Sin_1:y:0*
T0* 
_output_shapes
:
M
sub_1Sub	mul_5:z:0	mul_6:z:0*
T0* 
_output_shapes
:
T
mul_7Mulsplit_2:output:1	Cos_1:y:0*
T0* 
_output_shapes
:
T
mul_8Mulsplit_2:output:0	Sin_1:y:0*
T0* 
_output_shapes
:
O
add_2AddV2	mul_7:z:0	mul_8:z:0*
T0* 
_output_shapes
:
X
concat_1/axisConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙v
concat_1ConcatV2	sub_1:z:0	add_2:z:0concat_1/axis:output:0*
N*
T0* 
_output_shapes
:

einsum_3/EinsumEinsumconcat:output:0concat_1:output:0*
N*
T0* 
_output_shapes
:
*
equation	mk,nk->mnm
add_3AddV2truediv:z:0einsum_3/Einsum:output:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙Y
sqr_re_lu/ReluRelu	add_3:z:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙p
sqr_re_lu/SquareSquaresqr_re_lu/Relu:activations:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
einsum_4/EinsumEinsumsqr_re_lu/Square:y:0split:output:1*
N*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙*
equationbnm,bme->bnen
mul_9Mulsplit:output:0einsum_4/Einsum:output:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
 dense_1/Tensordot/ReadVariableOpReadVariableOp)dense_1_tensordot_readvariableop_resource* 
_output_shapes
:
*
dtype0`
dense_1/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:g
dense_1/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       ^
dense_1/Tensordot/ShapeShape	mul_9:z:0*
T0*
_output_shapes
::íĎa
dense_1/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : Ű
dense_1/Tensordot/GatherV2GatherV2 dense_1/Tensordot/Shape:output:0dense_1/Tensordot/free:output:0(dense_1/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:c
!dense_1/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ß
dense_1/Tensordot/GatherV2_1GatherV2 dense_1/Tensordot/Shape:output:0dense_1/Tensordot/axes:output:0*dense_1/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:a
dense_1/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
dense_1/Tensordot/ProdProd#dense_1/Tensordot/GatherV2:output:0 dense_1/Tensordot/Const:output:0*
T0*
_output_shapes
: c
dense_1/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 
dense_1/Tensordot/Prod_1Prod%dense_1/Tensordot/GatherV2_1:output:0"dense_1/Tensordot/Const_1:output:0*
T0*
_output_shapes
: _
dense_1/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ź
dense_1/Tensordot/concatConcatV2dense_1/Tensordot/free:output:0dense_1/Tensordot/axes:output:0&dense_1/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:
dense_1/Tensordot/stackPackdense_1/Tensordot/Prod:output:0!dense_1/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:
dense_1/Tensordot/transpose	Transpose	mul_9:z:0!dense_1/Tensordot/concat:output:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙˘
dense_1/Tensordot/ReshapeReshapedense_1/Tensordot/transpose:y:0 dense_1/Tensordot/stack:output:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙Ł
dense_1/Tensordot/MatMulMatMul"dense_1/Tensordot/Reshape:output:0(dense_1/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙d
dense_1/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:a
dense_1/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Ç
dense_1/Tensordot/concat_1ConcatV2#dense_1/Tensordot/GatherV2:output:0"dense_1/Tensordot/Const_2:output:0(dense_1/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
dense_1/TensordotReshape"dense_1/Tensordot/MatMul:product:0#dense_1/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
dense_1/BiasAddBiasAdddense_1/Tensordot:output:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙c
add_4AddV2dense_1/BiasAdd:output:0x*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙ť
NoOpNoOp^ReadVariableOp^ReadVariableOp_1^add/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/Tensordot/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp!^dense_1/Tensordot/ReadVariableOp^mul/ReadVariableOp!^scaled_norm/mul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ^
IdentityIdentity	add_4:z:0^NoOp*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:˙˙˙˙˙˙˙˙˙: : : : : : : : : 2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12(
add/ReadVariableOpadd/ReadVariableOp2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2@
dense/Tensordot/ReadVariableOpdense/Tensordot/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2D
 dense_1/Tensordot/ReadVariableOp dense_1/Tensordot/ReadVariableOp2(
mul/ReadVariableOpmul/ReadVariableOp2D
 scaled_norm/mul_1/ReadVariableOp scaled_norm/mul_1/ReadVariableOp:P L
-
_output_shapes
:˙˙˙˙˙˙˙˙˙

_user_specified_namex


Ą
__inference_gradient_func_7289
result_grads_0
result_grads_1
result_grads_2
dense_2_beta
dense_2_biasadd
identity

identity_1Á
PartitionedCallPartitionedCallresult_grads_0result_grads_1result_grads_2dense_2_betadense_2_biasadd*
Tin	
2*
Tout
2*/
_output_shapes
:˙˙˙˙˙˙˙˙˙: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 **
f%R#
!__inference_internal_grad_fn_1087f
IdentityIdentityPartitionedCall:output:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙Q

Identity_1IdentityPartitionedCall:output:1*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: : :˙˙˙˙˙˙˙˙˙:] Y
-
_output_shapes
:˙˙˙˙˙˙˙˙˙
(
_user_specified_nameresult_grads_0:]Y
-
_output_shapes
:˙˙˙˙˙˙˙˙˙
(
_user_specified_nameresult_grads_1:FB

_output_shapes
: 
(
_user_specified_nameresult_grads_2:D@

_output_shapes
: 
&
_user_specified_namedense_2/beta:^Z
-
_output_shapes
:˙˙˙˙˙˙˙˙˙
)
_user_specified_namedense_2/BiasAdd
˙
Đ
'__inference_restored_function_body_6449
x
unknown: 
	unknown_0:

	unknown_1:	
	unknown_2:	
	unknown_3:	
	unknown_4:	
	unknown_5:	
	unknown_6:

	unknown_7:	
identity˘StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallxunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7*
Tin
2
*
Tout
2*-
_output_shapes
:˙˙˙˙˙˙˙˙˙*+
_read_only_resource_inputs
		*-
config_proto

CPU

GPU 2J 8 *F
fAR?
=__inference_gau_layer_call_and_return_conditional_losses_2138u
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:˙˙˙˙˙˙˙˙˙: : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
-
_output_shapes
:˙˙˙˙˙˙˙˙˙

_user_specified_namex:$ 

_user_specified_name6429:$ 

_user_specified_name6431:$ 

_user_specified_name6433:$ 

_user_specified_name6435:$ 

_user_specified_name6437:$ 

_user_specified_name6439:$ 

_user_specified_name6441:$ 

_user_specified_name6443:$	 

_user_specified_name6445

p
T__inference_generalized_mean_pooling1d_layer_call_and_return_conditional_losses_7193

inputs
identityX
Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :p
MeanMeaninputsMean/reduction_indices:output:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙^
IdentityIdentityMean:output:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:e a
=
_output_shapes+
):'˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs

¨
!__inference_internal_grad_fn_1354
result_grads_0
result_grads_1
result_grads_2
mul_dense_beta
mul_dense_biasadd
identity

identity_1v
mulMulmul_dense_betamul_dense_biasadd^result_grads_0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙S
SigmoidSigmoidmul:z:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙g
mul_1Mulmul_dense_betamul_dense_biasadd*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?_
subSubsub/x:output:0Sigmoid:y:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙X
mul_2Mul	mul_1:z:0sub:z:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙J
add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?_
addAddV2add/x:output:0	mul_2:z:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙Z
mul_3MulSigmoid:y:0add:z:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙[
SquareSquaremul_dense_biasadd*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙`
mul_4Mulresult_grads_0
Square:y:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙\
mul_5Mul	mul_4:z:0Sigmoid:y:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙L
sub_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?c
sub_1Subsub_1/x:output:0Sigmoid:y:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙Z
mul_6Mul	mul_5:z:0	sub_1:z:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙Z
ConstConst*
_output_shapes
:*
dtype0*!
valueB"          F
SumSum	mul_6:z:0Const:output:0*
T0*
_output_shapes
: _
mul_7Mulresult_grads_0	mul_3:z:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙W
IdentityIdentity	mul_7:z:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙E

Identity_1IdentitySum:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: : :˙˙˙˙˙˙˙˙˙: 
&
 _has_manual_control_dependencies(
-
_output_shapes
:˙˙˙˙˙˙˙˙˙
(
_user_specified_nameresult_grads_0:]Y
-
_output_shapes
:˙˙˙˙˙˙˙˙˙
(
_user_specified_nameresult_grads_1:FB

_output_shapes
: 
(
_user_specified_nameresult_grads_2:

_output_shapes
: :3/
-
_output_shapes
:˙˙˙˙˙˙˙˙˙



__inference_gradient_func_7355
result_grads_0
result_grads_1
result_grads_2

dense_beta
dense_biasadd
identity

identity_1ź
PartitionedCallPartitionedCallresult_grads_0result_grads_1result_grads_2
dense_betadense_biasadd*
Tin	
2*
Tout
2*/
_output_shapes
:˙˙˙˙˙˙˙˙˙: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *)
f$R"
 __inference_internal_grad_fn_539f
IdentityIdentityPartitionedCall:output:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙Q

Identity_1IdentityPartitionedCall:output:1*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: : :˙˙˙˙˙˙˙˙˙:] Y
-
_output_shapes
:˙˙˙˙˙˙˙˙˙
(
_user_specified_nameresult_grads_0:]Y
-
_output_shapes
:˙˙˙˙˙˙˙˙˙
(
_user_specified_nameresult_grads_1:FB

_output_shapes
: 
(
_user_specified_nameresult_grads_2:B>

_output_shapes
: 
$
_user_specified_name
dense/beta:\X
-
_output_shapes
:˙˙˙˙˙˙˙˙˙
'
_user_specified_namedense/BiasAdd


,__inference_encoder_start_layer_call_fn_7139

inputs
unknown:	
	unknown_0:	
identity˘StatefulPartitionedCallâ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_encoder_start_layer_call_and_return_conditional_losses_6568u
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:˙˙˙˙˙˙˙˙˙: : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs:$ 

_user_specified_name7133:$ 

_user_specified_name7135

p
T__inference_generalized_mean_pooling1d_layer_call_and_return_conditional_losses_7229

inputs
identityX
Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :p
MeanMeaninputsMean/reduction_indices:output:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙^
IdentityIdentityMean:output:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:e a
=
_output_shapes+
):'˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs

ż
`__inference_scaled_sinusoidal_positional_embedding_layer_call_and_return_conditional_losses_1928

inputs'
mul_3_readvariableop_resource: 
identity˘mul_3/ReadVariableOpM
range/startConst*
_output_shapes
: *
dtype0*
value	B : N
range/limitConst*
_output_shapes
: *
dtype0*
value
B :M
range/deltaConst*
_output_shapes
: *
dtype0*
value	B :m
rangeRangerange/start:output:0range/limit:output:0range/delta:output:0*
_output_shapes	
:Q
CastCastrange:output:0*

DstT0*

SrcT0*
_output_shapes	
:J
Log/xConst*
_output_shapes
: *
dtype0*
valueB
 * @F;
LogLogLog/x:output:0*
T0*
_output_shapes
: J
Cast_1/xConst*
_output_shapes
: *
dtype0*
value	B :Q
Cast_1CastCast_1/x:output:0*

DstT0*

SrcT0*
_output_shapes
: J
sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?G
subSub
Cast_1:y:0sub/y:output:0*
T0*
_output_shapes
: E
truedivRealDivLog:y:0sub:z:0*
T0*
_output_shapes
: O
range_1/startConst*
_output_shapes
: *
dtype0*
value	B : O
range_1/limitConst*
_output_shapes
: *
dtype0*
value	B :O
range_1/deltaConst*
_output_shapes
: *
dtype0*
value	B :t
range_1Rangerange_1/start:output:0range_1/limit:output:0range_1/delta:output:0*
_output_shapes
:T
Cast_2Castrange_1:output:0*

DstT0*

SrcT0*
_output_shapes
:8
NegNegtruediv:z:0*
T0*
_output_shapes
: D
mulMul
Cast_2:y:0Neg:y:0*
T0*
_output_shapes
:8
ExpExpmul:z:0*
T0*
_output_shapes
:L
mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?L
mul_1Mulmul_1/x:output:0Exp:y:0*
T0*
_output_shapes
:P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :e

ExpandDims
ExpandDimsCast:y:0ExpandDims/dim:output:0*
T0*
_output_shapes
:	R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : i
ExpandDims_1
ExpandDims	mul_1:z:0ExpandDims_1/dim:output:0*
T0*
_output_shapes

:b
mul_2MulExpandDims:output:0ExpandDims_1:output:0*
T0*
_output_shapes
:	?
SinSin	mul_2:z:0*
T0*
_output_shapes
:	?
CosCos	mul_2:z:0*
T0*
_output_shapes
:	M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :m
concatConcatV2Sin:y:0Cos:y:0concat/axis:output:0*
N*
T0*
_output_shapes
:	j
mul_3/ReadVariableOpReadVariableOpmul_3_readvariableop_resource*
_output_shapes
: *
dtype0e
mul_3Mulconcat:output:0mul_3/ReadVariableOp:value:0*
T0*
_output_shapes
:	V
addAddV2inputs	mul_3:z:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙]
NoOpNoOp^mul_3/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 [
IdentityIdentityadd:z:0^NoOp*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*-
_input_shapes
:˙˙˙˙˙˙˙˙˙: 2,
mul_3/ReadVariableOpmul_3/ReadVariableOp:T P
,
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
đh
Ů
 __inference__traced_restore_7636
file_prefix$
assignvariableop_sin_scale: :
'assignvariableop_1_encoder_start_kernel:	4
%assignvariableop_2_encoder_start_bias:	,
assignvariableop_3_variable_7:	,
assignvariableop_4_variable_6:	0
assignvariableop_5_variable_5:	0
assignvariableop_6_variable_4:	)
assignvariableop_7_norm_scale_1: 7
#assignvariableop_8_gau_dense_kernel:
0
!assignvariableop_9_gau_dense_bias:	:
&assignvariableop_10_gau_dense_1_kernel:
3
$assignvariableop_11_gau_dense_1_bias:	-
assignvariableop_12_variable_3:	-
assignvariableop_13_variable_2:	1
assignvariableop_14_variable_1:	/
assignvariableop_15_variable:	(
assignvariableop_16_norm_scale: <
(assignvariableop_17_gau_1_dense_2_kernel:
5
&assignvariableop_18_gau_1_dense_2_bias:	<
(assignvariableop_19_gau_1_dense_3_kernel:
5
&assignvariableop_20_gau_1_dense_3_bias:	9
%assignvariableop_21_similarity_kernel:
2
#assignvariableop_22_similarity_bias:	
identity_24˘AssignVariableOp˘AssignVariableOp_1˘AssignVariableOp_10˘AssignVariableOp_11˘AssignVariableOp_12˘AssignVariableOp_13˘AssignVariableOp_14˘AssignVariableOp_15˘AssignVariableOp_16˘AssignVariableOp_17˘AssignVariableOp_18˘AssignVariableOp_19˘AssignVariableOp_2˘AssignVariableOp_20˘AssignVariableOp_21˘AssignVariableOp_22˘AssignVariableOp_3˘AssignVariableOp_4˘AssignVariableOp_5˘AssignVariableOp_6˘AssignVariableOp_7˘AssignVariableOp_8˘AssignVariableOp_9˛
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*Ř
valueÎBËB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB'variables/18/.ATTRIBUTES/VARIABLE_VALUEB'variables/19/.ATTRIBUTES/VARIABLE_VALUEB'variables/20/.ATTRIBUTES/VARIABLE_VALUEB'variables/21/.ATTRIBUTES/VARIABLE_VALUEB'variables/22/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH 
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*C
value:B8B B B B B B B B B B B B B B B B B B B B B B B B 
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*t
_output_shapesb
`::::::::::::::::::::::::*&
dtypes
2[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:­
AssignVariableOpAssignVariableOpassignvariableop_sin_scaleIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:ž
AssignVariableOp_1AssignVariableOp'assignvariableop_1_encoder_start_kernelIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:ź
AssignVariableOp_2AssignVariableOp%assignvariableop_2_encoder_start_biasIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:´
AssignVariableOp_3AssignVariableOpassignvariableop_3_variable_7Identity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:´
AssignVariableOp_4AssignVariableOpassignvariableop_4_variable_6Identity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:´
AssignVariableOp_5AssignVariableOpassignvariableop_5_variable_5Identity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:´
AssignVariableOp_6AssignVariableOpassignvariableop_6_variable_4Identity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:ś
AssignVariableOp_7AssignVariableOpassignvariableop_7_norm_scale_1Identity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:ş
AssignVariableOp_8AssignVariableOp#assignvariableop_8_gau_dense_kernelIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:¸
AssignVariableOp_9AssignVariableOp!assignvariableop_9_gau_dense_biasIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:ż
AssignVariableOp_10AssignVariableOp&assignvariableop_10_gau_dense_1_kernelIdentity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:˝
AssignVariableOp_11AssignVariableOp$assignvariableop_11_gau_dense_1_biasIdentity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:ˇ
AssignVariableOp_12AssignVariableOpassignvariableop_12_variable_3Identity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:ˇ
AssignVariableOp_13AssignVariableOpassignvariableop_13_variable_2Identity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:ˇ
AssignVariableOp_14AssignVariableOpassignvariableop_14_variable_1Identity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:ľ
AssignVariableOp_15AssignVariableOpassignvariableop_15_variableIdentity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:ˇ
AssignVariableOp_16AssignVariableOpassignvariableop_16_norm_scaleIdentity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:Á
AssignVariableOp_17AssignVariableOp(assignvariableop_17_gau_1_dense_2_kernelIdentity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:ż
AssignVariableOp_18AssignVariableOp&assignvariableop_18_gau_1_dense_2_biasIdentity_18:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:Á
AssignVariableOp_19AssignVariableOp(assignvariableop_19_gau_1_dense_3_kernelIdentity_19:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:ż
AssignVariableOp_20AssignVariableOp&assignvariableop_20_gau_1_dense_3_biasIdentity_20:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:ž
AssignVariableOp_21AssignVariableOp%assignvariableop_21_similarity_kernelIdentity_21:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:ź
AssignVariableOp_22AssignVariableOp#assignvariableop_22_similarity_biasIdentity_22:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 É
Identity_23Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_24IdentityIdentity_23:output:0^NoOp_1*
T0*
_output_shapes
: 
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
_output_shapes
 "#
identity_24Identity_24:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0: : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:)%
#
_user_specified_name	sin_scale:40
.
_user_specified_nameencoder_start/kernel:2.
,
_user_specified_nameencoder_start/bias:*&
$
_user_specified_name
Variable_7:*&
$
_user_specified_name
Variable_6:*&
$
_user_specified_name
Variable_5:*&
$
_user_specified_name
Variable_4:,(
&
_user_specified_namenorm_scale_1:0	,
*
_user_specified_namegau/dense/kernel:.
*
(
_user_specified_namegau/dense/bias:2.
,
_user_specified_namegau/dense_1/kernel:0,
*
_user_specified_namegau/dense_1/bias:*&
$
_user_specified_name
Variable_3:*&
$
_user_specified_name
Variable_2:*&
$
_user_specified_name
Variable_1:($
"
_user_specified_name
Variable:*&
$
_user_specified_name
norm_scale:40
.
_user_specified_namegau_1/dense_2/kernel:2.
,
_user_specified_namegau_1/dense_2/bias:40
.
_user_specified_namegau_1/dense_3/kernel:2.
,
_user_specified_namegau_1/dense_3/bias:1-
+
_user_specified_namesimilarity/kernel:/+
)
_user_specified_namesimilarity/bias
ż
p
T__inference_generalized_mean_pooling1d_layer_call_and_return_conditional_losses_3025

inputs
identityW
Min/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :e
MinMininputsMin/reduction_indices:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙h
strided_slice/stackConst*
_output_shapes
:*
dtype0*!
valueB"            j
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"            j
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         
strided_sliceStridedSliceMin:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙*

begin_mask*
end_mask*
new_axis_maskb
subSubinputsstrided_slice:output:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙J
add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?]
addAddV2sub:z:0add/y:output:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙J
Pow/yConst*
_output_shapes
: *
dtype0*
valueB
 *  @@[
PowPowadd:z:0Pow/y:output:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙s
1generalized_mean_pooling1d/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :
generalized_mean_pooling1d/MeanMeanPow:z:0:generalized_mean_pooling1d/Mean/reduction_indices:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙L
Pow_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *ŤŞŞ>{
Pow_1Pow(generalized_mean_pooling1d/Mean:output:0Pow_1/y:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Z
add_1AddV2	Pow_1:z:0Min:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙L
sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?\
sub_1Sub	add_1:z:0sub_1/y:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙R
IdentityIdentity	sub_1:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:˙˙˙˙˙˙˙˙˙:U Q
-
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
á

E__inference_scaled_sinusoidal_positional_embedding_layer_call_fn_3156

inputs
unknown: 
identity˘StatefulPartitionedCallđ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:˙˙˙˙˙˙˙˙˙*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *i
fdRb
`__inference_scaled_sinusoidal_positional_embedding_layer_call_and_return_conditional_losses_3150`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*-
_input_shapes
:˙˙˙˙˙˙˙˙˙: 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs

C
'__inference_restored_function_body_6515

inputs
identity 
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*(
_output_shapes
:˙˙˙˙˙˙˙˙˙* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *\
fWRU
S__inference_generalized_mean_pooling1d_layer_call_and_return_conditional_losses_181a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:˙˙˙˙˙˙˙˙˙:U Q
-
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
Ł
Ź
!__inference_internal_grad_fn_1087
result_grads_0
result_grads_1
result_grads_2
mul_dense_2_beta
mul_dense_2_biasadd
identity

identity_1z
mulMulmul_dense_2_betamul_dense_2_biasadd^result_grads_0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙S
SigmoidSigmoidmul:z:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙k
mul_1Mulmul_dense_2_betamul_dense_2_biasadd*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?_
subSubsub/x:output:0Sigmoid:y:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙X
mul_2Mul	mul_1:z:0sub:z:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙J
add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?_
addAddV2add/x:output:0	mul_2:z:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙Z
mul_3MulSigmoid:y:0add:z:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙]
SquareSquaremul_dense_2_biasadd*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙`
mul_4Mulresult_grads_0
Square:y:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙\
mul_5Mul	mul_4:z:0Sigmoid:y:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙L
sub_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?c
sub_1Subsub_1/x:output:0Sigmoid:y:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙Z
mul_6Mul	mul_5:z:0	sub_1:z:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙Z
ConstConst*
_output_shapes
:*
dtype0*!
valueB"          F
SumSum	mul_6:z:0Const:output:0*
T0*
_output_shapes
: _
mul_7Mulresult_grads_0	mul_3:z:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙W
IdentityIdentity	mul_7:z:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙E

Identity_1IdentitySum:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: : :˙˙˙˙˙˙˙˙˙: 
&
 _has_manual_control_dependencies(
-
_output_shapes
:˙˙˙˙˙˙˙˙˙
(
_user_specified_nameresult_grads_0:]Y
-
_output_shapes
:˙˙˙˙˙˙˙˙˙
(
_user_specified_nameresult_grads_1:FB

_output_shapes
: 
(
_user_specified_nameresult_grads_2:

_output_shapes
: :3/
-
_output_shapes
:˙˙˙˙˙˙˙˙˙

ż
`__inference_scaled_sinusoidal_positional_embedding_layer_call_and_return_conditional_losses_3150

inputs'
mul_3_readvariableop_resource: 
identity˘mul_3/ReadVariableOpM
range/startConst*
_output_shapes
: *
dtype0*
value	B : N
range/limitConst*
_output_shapes
: *
dtype0*
value
B :M
range/deltaConst*
_output_shapes
: *
dtype0*
value	B :m
rangeRangerange/start:output:0range/limit:output:0range/delta:output:0*
_output_shapes	
:Q
CastCastrange:output:0*

DstT0*

SrcT0*
_output_shapes	
:J
Log/xConst*
_output_shapes
: *
dtype0*
valueB
 * @F;
LogLogLog/x:output:0*
T0*
_output_shapes
: J
Cast_1/xConst*
_output_shapes
: *
dtype0*
value	B :Q
Cast_1CastCast_1/x:output:0*

DstT0*

SrcT0*
_output_shapes
: J
sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?G
subSub
Cast_1:y:0sub/y:output:0*
T0*
_output_shapes
: E
truedivRealDivLog:y:0sub:z:0*
T0*
_output_shapes
: O
range_1/startConst*
_output_shapes
: *
dtype0*
value	B : O
range_1/limitConst*
_output_shapes
: *
dtype0*
value	B :O
range_1/deltaConst*
_output_shapes
: *
dtype0*
value	B :t
range_1Rangerange_1/start:output:0range_1/limit:output:0range_1/delta:output:0*
_output_shapes
:T
Cast_2Castrange_1:output:0*

DstT0*

SrcT0*
_output_shapes
:8
NegNegtruediv:z:0*
T0*
_output_shapes
: D
mulMul
Cast_2:y:0Neg:y:0*
T0*
_output_shapes
:8
ExpExpmul:z:0*
T0*
_output_shapes
:L
mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?L
mul_1Mulmul_1/x:output:0Exp:y:0*
T0*
_output_shapes
:P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :e

ExpandDims
ExpandDimsCast:y:0ExpandDims/dim:output:0*
T0*
_output_shapes
:	R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : i
ExpandDims_1
ExpandDims	mul_1:z:0ExpandDims_1/dim:output:0*
T0*
_output_shapes

:b
mul_2MulExpandDims:output:0ExpandDims_1:output:0*
T0*
_output_shapes
:	?
SinSin	mul_2:z:0*
T0*
_output_shapes
:	?
CosCos	mul_2:z:0*
T0*
_output_shapes
:	M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :m
concatConcatV2Sin:y:0Cos:y:0concat/axis:output:0*
N*
T0*
_output_shapes
:	j
mul_3/ReadVariableOpReadVariableOpmul_3_readvariableop_resource*
_output_shapes
: *
dtype0e
mul_3Mulconcat:output:0mul_3/ReadVariableOp:value:0*
T0*
_output_shapes
:	V
addAddV2inputs	mul_3:z:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙]
NoOpNoOp^mul_3/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 [
IdentityIdentityadd:z:0^NoOp*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*-
_input_shapes
:˙˙˙˙˙˙˙˙˙: 2,
mul_3/ReadVariableOpmul_3/ReadVariableOp:T P
,
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs

b
D__inference_activation_layer_call_and_return_conditional_losses_6586

inputs

identity_1I
betaConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Y
mulMulbeta:output:0inputs*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙S
SigmoidSigmoidmul:z:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙Y
mul_1MulinputsSigmoid:y:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙W
IdentityIdentity	mul_1:z:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙ź
	IdentityN	IdentityN	mul_1:z:0inputsbeta:output:0*
T
2**
_gradient_op_typeCustomGradient-6577*H
_output_shapes6
4:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: b

Identity_1IdentityIdentityN:output:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:˙˙˙˙˙˙˙˙˙:U Q
-
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
č	
Ę
!__inference_gau_layer_call_fn_736
x
unknown: 
	unknown_0:

	unknown_1:	
	unknown_2:	
	unknown_3:	
	unknown_4:	
	unknown_5:	
	unknown_6:

	unknown_7:	
identity˘StatefulPartitionedCall°
StatefulPartitionedCallStatefulPartitionedCallxunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7*
Tin
2
*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:˙˙˙˙˙˙˙˙˙*+
_read_only_resource_inputs
		*0
config_proto 

CPU

GPU2*0J 8 *E
f@R>
<__inference_gau_layer_call_and_return_conditional_losses_722`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 u
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:˙˙˙˙˙˙˙˙˙: : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
-
_output_shapes
:˙˙˙˙˙˙˙˙˙

_user_specified_namex
˛
ć
.__inference_embedding_model_layer_call_fn_6799
input_2
unknown: 
	unknown_0:	
	unknown_1:	
	unknown_2: 
	unknown_3:

	unknown_4:	
	unknown_5:	
	unknown_6:	
	unknown_7:	
	unknown_8:	
	unknown_9:


unknown_10:	

unknown_11: 

unknown_12:


unknown_13:	

unknown_14:	

unknown_15:	

unknown_16:	

unknown_17:	

unknown_18:


unknown_19:	

unknown_20:


unknown_21:	
identity˘StatefulPartitionedCallý
StatefulPartitionedCallStatefulPartitionedCallinput_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21*#
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:˙˙˙˙˙˙˙˙˙*9
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_embedding_model_layer_call_and_return_conditional_losses_6685p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Y
_input_shapesH
F:˙˙˙˙˙˙˙˙˙: : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
,
_output_shapes
:˙˙˙˙˙˙˙˙˙
!
_user_specified_name	input_2:$ 

_user_specified_name6751:$ 

_user_specified_name6753:$ 

_user_specified_name6755:$ 

_user_specified_name6757:$ 

_user_specified_name6759:$ 

_user_specified_name6761:$ 

_user_specified_name6763:$ 

_user_specified_name6765:$	 

_user_specified_name6767:$
 

_user_specified_name6769:$ 

_user_specified_name6771:$ 

_user_specified_name6773:$ 

_user_specified_name6775:$ 

_user_specified_name6777:$ 

_user_specified_name6779:$ 

_user_specified_name6781:$ 

_user_specified_name6783:$ 

_user_specified_name6785:$ 

_user_specified_name6787:$ 

_user_specified_name6789:$ 

_user_specified_name6791:$ 

_user_specified_name6793:$ 

_user_specified_name6795

b
D__inference_activation_layer_call_and_return_conditional_losses_7187

inputs

identity_1I
betaConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Y
mulMulbeta:output:0inputs*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙S
SigmoidSigmoidmul:z:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙Y
mul_1MulinputsSigmoid:y:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙W
IdentityIdentity	mul_1:z:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙ź
	IdentityN	IdentityN	mul_1:z:0inputsbeta:output:0*
T
2**
_gradient_op_typeCustomGradient-7178*H
_output_shapes6
4:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: b

Identity_1IdentityIdentityN:output:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:˙˙˙˙˙˙˙˙˙:U Q
-
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs



__inference_gradient_func_7366
result_grads_0
result_grads_1
result_grads_2

dense_beta
dense_biasadd
identity

identity_1˝
PartitionedCallPartitionedCallresult_grads_0result_grads_1result_grads_2
dense_betadense_biasadd*
Tin	
2*
Tout
2*/
_output_shapes
:˙˙˙˙˙˙˙˙˙: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 **
f%R#
!__inference_internal_grad_fn_1354f
IdentityIdentityPartitionedCall:output:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙Q

Identity_1IdentityPartitionedCall:output:1*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: : :˙˙˙˙˙˙˙˙˙:] Y
-
_output_shapes
:˙˙˙˙˙˙˙˙˙
(
_user_specified_nameresult_grads_0:]Y
-
_output_shapes
:˙˙˙˙˙˙˙˙˙
(
_user_specified_nameresult_grads_1:FB

_output_shapes
: 
(
_user_specified_nameresult_grads_2:B>

_output_shapes
: 
$
_user_specified_name
dense/beta:\X
-
_output_shapes
:˙˙˙˙˙˙˙˙˙
'
_user_specified_namedense/BiasAdd
Ô˘
Ť
?__inference_gau_1_layer_call_and_return_conditional_losses_2358
x5
+scaled_norm_1_mul_1_readvariableop_resource: =
)dense_2_tensordot_readvariableop_resource:
6
'dense_2_biasadd_readvariableop_resource:	.
mul_readvariableop_resource:	.
add_readvariableop_resource:	&
readvariableop_resource:	(
readvariableop_1_resource:	=
)dense_3_tensordot_readvariableop_resource:
6
'dense_3_biasadd_readvariableop_resource:	
identity˘ReadVariableOp˘ReadVariableOp_1˘add/ReadVariableOp˘dense_2/BiasAdd/ReadVariableOp˘ dense_2/Tensordot/ReadVariableOp˘dense_3/BiasAdd/ReadVariableOp˘ dense_3/Tensordot/ReadVariableOp˘mul/ReadVariableOp˘"scaled_norm_1/mul_1/ReadVariableOpY
scaled_norm_1/SquareSquarex*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙n
$scaled_norm_1/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:Ť
scaled_norm_1/MeanMeanscaled_norm_1/Square:y:0-scaled_norm_1/Mean/reduction_indices:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙*
	keep_dims(X
scaled_norm_1/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *˝75
scaled_norm_1/addAddV2scaled_norm_1/Mean:output:0scaled_norm_1/add/y:output:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙j
scaled_norm_1/RsqrtRsqrtscaled_norm_1/add:z:0*
T0*,
_output_shapes
:˙˙˙˙˙˙˙˙˙l
scaled_norm_1/mulMulxscaled_norm_1/Rsqrt:y:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
"scaled_norm_1/mul_1/ReadVariableOpReadVariableOp+scaled_norm_1_mul_1_readvariableop_resource*
_output_shapes
: *
dtype0
scaled_norm_1/mul_1Mulscaled_norm_1/mul:z:0*scaled_norm_1/mul_1/ReadVariableOp:value:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙o
dropout_2/IdentityIdentityscaled_norm_1/mul_1:z:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
 dense_2/Tensordot/ReadVariableOpReadVariableOp)dense_2_tensordot_readvariableop_resource* 
_output_shapes
:
*
dtype0`
dense_2/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:g
dense_2/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       p
dense_2/Tensordot/ShapeShapedropout_2/Identity:output:0*
T0*
_output_shapes
::íĎa
dense_2/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : Ű
dense_2/Tensordot/GatherV2GatherV2 dense_2/Tensordot/Shape:output:0dense_2/Tensordot/free:output:0(dense_2/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:c
!dense_2/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ß
dense_2/Tensordot/GatherV2_1GatherV2 dense_2/Tensordot/Shape:output:0dense_2/Tensordot/axes:output:0*dense_2/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:a
dense_2/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
dense_2/Tensordot/ProdProd#dense_2/Tensordot/GatherV2:output:0 dense_2/Tensordot/Const:output:0*
T0*
_output_shapes
: c
dense_2/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 
dense_2/Tensordot/Prod_1Prod%dense_2/Tensordot/GatherV2_1:output:0"dense_2/Tensordot/Const_1:output:0*
T0*
_output_shapes
: _
dense_2/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ź
dense_2/Tensordot/concatConcatV2dense_2/Tensordot/free:output:0dense_2/Tensordot/axes:output:0&dense_2/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:
dense_2/Tensordot/stackPackdense_2/Tensordot/Prod:output:0!dense_2/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
: 
dense_2/Tensordot/transpose	Transposedropout_2/Identity:output:0!dense_2/Tensordot/concat:output:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙˘
dense_2/Tensordot/ReshapeReshapedense_2/Tensordot/transpose:y:0 dense_2/Tensordot/stack:output:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙Ł
dense_2/Tensordot/MatMulMatMul"dense_2/Tensordot/Reshape:output:0(dense_2/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙d
dense_2/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:a
dense_2/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Ç
dense_2/Tensordot/concat_1ConcatV2#dense_2/Tensordot/GatherV2:output:0"dense_2/Tensordot/Const_2:output:0(dense_2/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
dense_2/TensordotReshape"dense_2/Tensordot/MatMul:product:0#dense_2/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
dense_2/BiasAddBiasAdddense_2/Tensordot:output:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙Q
dense_2/betaConst*
_output_shapes
: *
dtype0*
valueB
 *  ?{
dense_2/mulMuldense_2/beta:output:0dense_2/BiasAdd:output:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙c
dense_2/SigmoidSigmoiddense_2/mul:z:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙{
dense_2/mul_1Muldense_2/BiasAdd:output:0dense_2/Sigmoid:y:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙g
dense_2/IdentityIdentitydense_2/mul_1:z:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙ĺ
dense_2/IdentityN	IdentityNdense_2/mul_1:z:0dense_2/BiasAdd:output:0dense_2/beta:output:0*
T
2*)
_gradient_op_typeCustomGradient-110*H
_output_shapes6
4:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: r
dropout_3/IdentityIdentitydense_2/IdentityN:output:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙Z
ConstConst*
_output_shapes
:*
dtype0*!
valueB"         Z
split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙Ý
splitSplitVdropout_3/Identity:output:0Const:output:0split/split_dim:output:0*
T0*

Tlen0*_
_output_shapesM
K:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
	num_splitP
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :}

ExpandDims
ExpandDimssplit:output:2ExpandDims/dim:output:0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙g
Tile/multiplesConst*
_output_shapes
:*
dtype0*%
valueB"            v
TileTileExpandDims:output:0Tile/multiples:output:0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙o
mul/ReadVariableOpReadVariableOpmul_readvariableop_resource*
_output_shapes
:	*
dtype0q
mulMulTile:output:0mul/ReadVariableOp:value:0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙o
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes
:	*
dtype0m
addAddV2mul:z:0add/ReadVariableOp:value:0*
T0*1
_output_shapes
:˙˙˙˙˙˙˙˙˙
unstackUnpackadd:z:0*
T0*F
_output_shapes4
2:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
axisţ˙˙˙˙˙˙˙˙*	
num
einsum/EinsumEinsumunstack:output:0unstack:output:1*
N*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙*
equationbnd,bmd->bnmN
	truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   Dv
truedivRealDiveinsum/Einsum:output:0truediv/y:output:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:*
dtype0d
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        f
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        f
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      
strided_sliceStridedSliceReadVariableOp:value:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:	*

begin_mask*
end_mask*
new_axis_maska
Tile_1/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      l
Tile_1Tilestrided_slice:output:0Tile_1/multiples:output:0*
T0* 
_output_shapes
:
M
range/startConst*
_output_shapes
: *
dtype0*
value	B : N
range/limitConst*
_output_shapes
: *
dtype0*
value
B :P
range/deltaConst*
_output_shapes
: *
dtype0*
valueB
 *  ?X

range/CastCastrange/start:output:0*

DstT0*

SrcT0*
_output_shapes
: Z
range/Cast_1Castrange/limit:output:0*

DstT0*

SrcT0*
_output_shapes
: o
rangeRangerange/Cast:y:0range/Cast_1:y:0range/delta:output:0*

Tidx0*
_output_shapes	
:X
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:`
ReshapeReshaperange:output:0Reshape/shape:output:0*
T0*
_output_shapes	
:O
range_1/startConst*
_output_shapes
: *
dtype0*
value	B : P
range_1/limitConst*
_output_shapes
: *
dtype0*
value
B :O
range_1/deltaConst*
_output_shapes
: *
dtype0*
value	B :u
range_1Rangerange_1/start:output:0range_1/limit:output:0range_1/delta:output:0*
_output_shapes	
:S
CastCastrange_1:output:0*

DstT0*

SrcT0*
_output_shapes	
:P
truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  CZ
	truediv_1RealDivCast:y:0truediv_1/y:output:0*
T0*
_output_shapes	
:?
NegNegtruediv_1:z:0*
T0*
_output_shapes	
:J
pow/xConst*
_output_shapes
: *
dtype0*
valueB
 * @FI
powPowpow/x:output:0Neg:y:0*
T0*
_output_shapes	
:
einsum_1/EinsumEinsumReshape:output:0pow:z:0*
N*
T0* 
_output_shapes
:
*
equation...,d->...dO
SinSineinsum_1/Einsum:output:0*
T0* 
_output_shapes
:
O
CosCoseinsum_1/Einsum:output:0*
T0* 
_output_shapes
:
\
split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙
split_1Splitsplit_1/split_dim:output:0Tile_1:output:0*
T0*,
_output_shapes
:
:
*
	num_splitR
mul_1Mulsplit_1:output:0Cos:y:0*
T0* 
_output_shapes
:
R
mul_2Mulsplit_1:output:1Sin:y:0*
T0* 
_output_shapes
:
K
subSub	mul_1:z:0	mul_2:z:0*
T0* 
_output_shapes
:
R
mul_3Mulsplit_1:output:1Cos:y:0*
T0* 
_output_shapes
:
R
mul_4Mulsplit_1:output:0Sin:y:0*
T0* 
_output_shapes
:
O
add_1AddV2	mul_3:z:0	mul_4:z:0*
T0* 
_output_shapes
:
V
concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙p
concatConcatV2sub:z:0	add_1:z:0concat/axis:output:0*
N*
T0* 
_output_shapes
:
g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:*
dtype0f
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      
strided_slice_1StridedSliceReadVariableOp_1:value:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:	*

begin_mask*
end_mask*
new_axis_maska
Tile_2/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      n
Tile_2Tilestrided_slice_1:output:0Tile_2/multiples:output:0*
T0* 
_output_shapes
:
O
range_2/startConst*
_output_shapes
: *
dtype0*
value	B : P
range_2/limitConst*
_output_shapes
: *
dtype0*
value
B :R
range_2/deltaConst*
_output_shapes
: *
dtype0*
valueB
 *  ?\
range_2/CastCastrange_2/start:output:0*

DstT0*

SrcT0*
_output_shapes
: ^
range_2/Cast_1Castrange_2/limit:output:0*

DstT0*

SrcT0*
_output_shapes
: w
range_2Rangerange_2/Cast:y:0range_2/Cast_1:y:0range_2/delta:output:0*

Tidx0*
_output_shapes	
:Z
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB:f
	Reshape_1Reshaperange_2:output:0Reshape_1/shape:output:0*
T0*
_output_shapes	
:O
range_3/startConst*
_output_shapes
: *
dtype0*
value	B : P
range_3/limitConst*
_output_shapes
: *
dtype0*
value
B :O
range_3/deltaConst*
_output_shapes
: *
dtype0*
value	B :u
range_3Rangerange_3/start:output:0range_3/limit:output:0range_3/delta:output:0*
_output_shapes	
:U
Cast_1Castrange_3:output:0*

DstT0*

SrcT0*
_output_shapes	
:P
truediv_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  C\
	truediv_2RealDiv
Cast_1:y:0truediv_2/y:output:0*
T0*
_output_shapes	
:A
Neg_1Negtruediv_2:z:0*
T0*
_output_shapes	
:L
pow_1/xConst*
_output_shapes
: *
dtype0*
valueB
 * @FO
pow_1Powpow_1/x:output:0	Neg_1:y:0*
T0*
_output_shapes	
:
einsum_2/EinsumEinsumReshape_1:output:0	pow_1:z:0*
N*
T0* 
_output_shapes
:
*
equation...,d->...dQ
Sin_1Sineinsum_2/Einsum:output:0*
T0* 
_output_shapes
:
Q
Cos_1Coseinsum_2/Einsum:output:0*
T0* 
_output_shapes
:
\
split_2/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙
split_2Splitsplit_2/split_dim:output:0Tile_2:output:0*
T0*,
_output_shapes
:
:
*
	num_splitT
mul_5Mulsplit_2:output:0	Cos_1:y:0*
T0* 
_output_shapes
:
T
mul_6Mulsplit_2:output:1	Sin_1:y:0*
T0* 
_output_shapes
:
M
sub_1Sub	mul_5:z:0	mul_6:z:0*
T0* 
_output_shapes
:
T
mul_7Mulsplit_2:output:1	Cos_1:y:0*
T0* 
_output_shapes
:
T
mul_8Mulsplit_2:output:0	Sin_1:y:0*
T0* 
_output_shapes
:
O
add_2AddV2	mul_7:z:0	mul_8:z:0*
T0* 
_output_shapes
:
X
concat_1/axisConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙v
concat_1ConcatV2	sub_1:z:0	add_2:z:0concat_1/axis:output:0*
N*
T0* 
_output_shapes
:

einsum_3/EinsumEinsumconcat:output:0concat_1:output:0*
N*
T0* 
_output_shapes
:
*
equation	mk,nk->mnm
add_3AddV2truediv:z:0einsum_3/Einsum:output:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙[
sqr_re_lu_1/ReluRelu	add_3:z:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙t
sqr_re_lu_1/SquareSquaresqr_re_lu_1/Relu:activations:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
einsum_4/EinsumEinsumsqr_re_lu_1/Square:y:0split:output:1*
N*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙*
equationbnm,bme->bnen
mul_9Mulsplit:output:0einsum_4/Einsum:output:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
 dense_3/Tensordot/ReadVariableOpReadVariableOp)dense_3_tensordot_readvariableop_resource* 
_output_shapes
:
*
dtype0`
dense_3/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:g
dense_3/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       ^
dense_3/Tensordot/ShapeShape	mul_9:z:0*
T0*
_output_shapes
::íĎa
dense_3/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : Ű
dense_3/Tensordot/GatherV2GatherV2 dense_3/Tensordot/Shape:output:0dense_3/Tensordot/free:output:0(dense_3/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:c
!dense_3/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ß
dense_3/Tensordot/GatherV2_1GatherV2 dense_3/Tensordot/Shape:output:0dense_3/Tensordot/axes:output:0*dense_3/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:a
dense_3/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
dense_3/Tensordot/ProdProd#dense_3/Tensordot/GatherV2:output:0 dense_3/Tensordot/Const:output:0*
T0*
_output_shapes
: c
dense_3/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 
dense_3/Tensordot/Prod_1Prod%dense_3/Tensordot/GatherV2_1:output:0"dense_3/Tensordot/Const_1:output:0*
T0*
_output_shapes
: _
dense_3/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ź
dense_3/Tensordot/concatConcatV2dense_3/Tensordot/free:output:0dense_3/Tensordot/axes:output:0&dense_3/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:
dense_3/Tensordot/stackPackdense_3/Tensordot/Prod:output:0!dense_3/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:
dense_3/Tensordot/transpose	Transpose	mul_9:z:0!dense_3/Tensordot/concat:output:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙˘
dense_3/Tensordot/ReshapeReshapedense_3/Tensordot/transpose:y:0 dense_3/Tensordot/stack:output:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙Ł
dense_3/Tensordot/MatMulMatMul"dense_3/Tensordot/Reshape:output:0(dense_3/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙d
dense_3/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:a
dense_3/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Ç
dense_3/Tensordot/concat_1ConcatV2#dense_3/Tensordot/GatherV2:output:0"dense_3/Tensordot/Const_2:output:0(dense_3/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
dense_3/TensordotReshape"dense_3/Tensordot/MatMul:product:0#dense_3/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
dense_3/BiasAddBiasAdddense_3/Tensordot:output:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙c
add_4AddV2dense_3/BiasAdd:output:0x*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙Á
NoOpNoOp^ReadVariableOp^ReadVariableOp_1^add/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp!^dense_2/Tensordot/ReadVariableOp^dense_3/BiasAdd/ReadVariableOp!^dense_3/Tensordot/ReadVariableOp^mul/ReadVariableOp#^scaled_norm_1/mul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ^
IdentityIdentity	add_4:z:0^NoOp*
T0*-
_output_shapes
:˙˙˙˙˙˙˙˙˙"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:˙˙˙˙˙˙˙˙˙: : : : : : : : : 2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12(
add/ReadVariableOpadd/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2D
 dense_2/Tensordot/ReadVariableOp dense_2/Tensordot/ReadVariableOp2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2D
 dense_3/Tensordot/ReadVariableOp dense_3/Tensordot/ReadVariableOp2(
mul/ReadVariableOpmul/ReadVariableOp2H
"scaled_norm_1/mul_1/ReadVariableOp"scaled_norm_1/mul_1/ReadVariableOp:P L
-
_output_shapes
:˙˙˙˙˙˙˙˙˙

_user_specified_namex4
__inference_gradient_func_7289CustomGradient-1094
__inference_gradient_func_7300CustomGradient-1084
__inference_gradient_func_7311CustomGradient-1114
__inference_gradient_func_7322CustomGradient-1104
__inference_gradient_func_7333CustomGradient-1124
__inference_gradient_func_7344CustomGradient-1134
__inference_gradient_func_7355CustomGradient-1144
__inference_gradient_func_7366CustomGradient-1158
!__inference_internal_grad_fn_7393CustomGradient-71788
!__inference_internal_grad_fn_7420CustomGradient-65778
!__inference_internal_grad_fn_7447CustomGradient-6419"ĘL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*¸
serving_default¤
@
input_15
serving_default_input_1:0˙˙˙˙˙˙˙˙˙D
embedding_model1
StatefulPartitionedCall:0˙˙˙˙˙˙˙˙˙tensorflow/serving/predict:Ů
­
layer-0
layer_with_weights-0
layer-1
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
	_default_save_signature


signatures
#_self_saveable_object_factories"
_tf_keras_network
D
#_self_saveable_object_factories"
_tf_keras_input_layer
Ă
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer_with_weights-3
layer-5
layer-6
layer-7
layer_with_weights-4
layer-8
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
#_self_saveable_object_factories"
_tf_keras_network
Î
0
1
2
 3
!4
"5
#6
$7
%8
&9
'10
(11
)12
*13
+14
,15
-16
.17
/18
019
120
221
322"
trackable_list_wrapper
Î
0
1
2
 3
!4
"5
#6
$7
%8
&9
'10
(11
)12
*13
+14
,15
-16
.17
/18
019
120
221
322"
trackable_list_wrapper
 "
trackable_list_wrapper
Ę
4non_trainable_variables

5layers
6metrics
7layer_regularization_losses
8layer_metrics
	variables
trainable_variables
regularization_losses
__call__
	_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
ť
9trace_0
:trace_12
$__inference_model_layer_call_fn_7027
$__inference_model_layer_call_fn_7078ľ
Ž˛Ş
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults˘
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 z9trace_0z:trace_1
ń
;trace_0
<trace_12ş
?__inference_model_layer_call_and_return_conditional_losses_6925
?__inference_model_layer_call_and_return_conditional_losses_6976ľ
Ž˛Ş
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults˘
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 z;trace_0z<trace_1
ĘBÇ
__inference__wrapped_model_6533input_1"
˛
FullArgSpec
args 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
,
=serving_default"
signature_map
 "
trackable_dict_wrapper
 "
trackable_dict_wrapper
D
#>_self_saveable_object_factories"
_tf_keras_input_layer
ĺ
?	variables
@trainable_variables
Aregularization_losses
B	keras_api
C__call__
*D&call_and_return_all_conditional_losses
	sin_scale

_scale
#E_self_saveable_object_factories"
_tf_keras_layer
ŕ
F	variables
Gtrainable_variables
Hregularization_losses
I	keras_api
J__call__
*K&call_and_return_all_conditional_losses

kernel
bias
#L_self_saveable_object_factories"
_tf_keras_layer
Ę
M	variables
Ntrainable_variables
Oregularization_losses
P	keras_api
Q__call__
*R&call_and_return_all_conditional_losses
#S_self_saveable_object_factories"
_tf_keras_layer
É
T	variables
Utrainable_variables
Vregularization_losses
W	keras_api
X__call__
*Y&call_and_return_all_conditional_losses
Znorm
	[proj1
	\proj2
]dropout1
^dropout2
_attention_activation_layer
 a
!b
	"gamma
#beta
#`_self_saveable_object_factories"
_tf_keras_layer
É
a	variables
btrainable_variables
cregularization_losses
d	keras_api
e__call__
*f&call_and_return_all_conditional_losses
gnorm
	hproj1
	iproj2
jdropout1
kdropout2
lattention_activation_layer
)a
*b
	+gamma
,beta
#m_self_saveable_object_factories"
_tf_keras_layer
Ó
n	variables
otrainable_variables
pregularization_losses
q	keras_api
r__call__
*s&call_and_return_all_conditional_losses
tgap
#u_self_saveable_object_factories"
_tf_keras_layer
á
v	variables
wtrainable_variables
xregularization_losses
y	keras_api
z__call__
*{&call_and_return_all_conditional_losses
|_random_generator
#}_self_saveable_object_factories"
_tf_keras_layer
ĺ
~	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses

2kernel
3bias
$_self_saveable_object_factories"
_tf_keras_layer
Î
0
1
2
 3
!4
"5
#6
$7
%8
&9
'10
(11
)12
*13
+14
,15
-16
.17
/18
019
120
221
322"
trackable_list_wrapper
Î
0
1
2
 3
!4
"5
#6
$7
%8
&9
'10
(11
)12
*13
+14
,15
-16
.17
/18
019
120
221
322"
trackable_list_wrapper
 "
trackable_list_wrapper
˛
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
Ó
trace_0
trace_12
.__inference_embedding_model_layer_call_fn_6799
.__inference_embedding_model_layer_call_fn_6850ľ
Ž˛Ş
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults˘
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 ztrace_0ztrace_1

trace_0
trace_12Î
I__inference_embedding_model_layer_call_and_return_conditional_losses_6685
I__inference_embedding_model_layer_call_and_return_conditional_losses_6748ľ
Ž˛Ş
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults˘
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 ztrace_0ztrace_1
 "
trackable_dict_wrapper
: 2	sin_scale
':%	2encoder_start/kernel
!:2encoder_start/bias
:2Variable
:2Variable
:	2Variable
:	2Variable
: 2
norm_scale
$:"
2gau/dense/kernel
:2gau/dense/bias
&:$
2gau/dense_1/kernel
:2gau/dense_1/bias
:2Variable
:2Variable
:	2Variable
:	2Variable
: 2
norm_scale
(:&
2gau_1/dense_2/kernel
!:2gau_1/dense_2/bias
(:&
2gau_1/dense_3/kernel
!:2gau_1/dense_3/bias
%:#
2similarity/kernel
:2similarity/bias
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ěBé
$__inference_model_layer_call_fn_7027input_1"ľ
Ž˛Ş
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults˘
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
ěBé
$__inference_model_layer_call_fn_7078input_1"ľ
Ž˛Ş
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults˘
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
B
?__inference_model_layer_call_and_return_conditional_losses_6925input_1"ľ
Ž˛Ş
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults˘
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
B
?__inference_model_layer_call_and_return_conditional_losses_6976input_1"ľ
Ž˛Ş
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults˘
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
ÉBĆ
"__inference_signature_wrapper_7130input_1"
˛
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
 "
trackable_dict_wrapper
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
˛
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
?	variables
@trainable_variables
Aregularization_losses
C__call__
*D&call_and_return_all_conditional_losses
&D"call_and_return_conditional_losses"
_generic_user_object

trace_02â
E__inference_scaled_sinusoidal_positional_embedding_layer_call_fn_3156
˛
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 ztrace_0

trace_02ý
`__inference_scaled_sinusoidal_positional_embedding_layer_call_and_return_conditional_losses_1928
˛
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 ztrace_0
 "
trackable_dict_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
˛
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
F	variables
Gtrainable_variables
Hregularization_losses
J__call__
*K&call_and_return_all_conditional_losses
&K"call_and_return_conditional_losses"
_generic_user_object
č
trace_02É
,__inference_encoder_start_layer_call_fn_7139
˛
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 ztrace_0

trace_02ä
G__inference_encoder_start_layer_call_and_return_conditional_losses_7169
˛
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 ztrace_0
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
˛
non_trainable_variables
layers
metrics
 layer_regularization_losses
 layer_metrics
M	variables
Ntrainable_variables
Oregularization_losses
Q__call__
*R&call_and_return_all_conditional_losses
&R"call_and_return_conditional_losses"
_generic_user_object
ĺ
Ątrace_02Ć
)__inference_activation_layer_call_fn_7174
˛
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 zĄtrace_0

˘trace_02á
D__inference_activation_layer_call_and_return_conditional_losses_7187
˛
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 z˘trace_0
 "
trackable_dict_wrapper
_
 0
!1
"2
#3
$4
%5
&6
'7
(8"
trackable_list_wrapper
_
 0
!1
"2
#3
$4
%5
&6
'7
(8"
trackable_list_wrapper
 "
trackable_list_wrapper
˛
Łnon_trainable_variables
¤layers
Ľmetrics
 Ślayer_regularization_losses
§layer_metrics
T	variables
Utrainable_variables
Vregularization_losses
X__call__
*Y&call_and_return_all_conditional_losses
&Y"call_and_return_conditional_losses"
_generic_user_object
Š
¨trace_0
Štrace_12î
"__inference_gau_layer_call_fn_1551
!__inference_gau_layer_call_fn_736¤
˛
FullArgSpec
args
jx

jtraining
varargs
 
varkw
 
defaults˘
p 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 z¨trace_0zŠtrace_1
ŕ
Ştrace_0
Ťtrace_12Ľ
=__inference_gau_layer_call_and_return_conditional_losses_1060
=__inference_gau_layer_call_and_return_conditional_losses_2138¤
˛
FullArgSpec
args
jx

jtraining
varargs
 
varkw
 
defaults˘
p 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 zŞtrace_0zŤtrace_1
í
Ź	variables
­trainable_variables
Žregularization_losses
Ż	keras_api
°__call__
+ą&call_and_return_all_conditional_losses
$
norm_scale

$_scale
$˛_self_saveable_object_factories"
_tf_keras_layer
ç
ł	variables
´trainable_variables
ľregularization_losses
ś	keras_api
ˇ__call__
+¸&call_and_return_all_conditional_losses

%kernel
&bias
$š_self_saveable_object_factories"
_tf_keras_layer
ç
ş	variables
ťtrainable_variables
źregularization_losses
˝	keras_api
ž__call__
+ż&call_and_return_all_conditional_losses

'kernel
(bias
$Ŕ_self_saveable_object_factories"
_tf_keras_layer
é
Á	variables
Âtrainable_variables
Ăregularization_losses
Ä	keras_api
Ĺ__call__
+Ć&call_and_return_all_conditional_losses
Ç_random_generator
$Č_self_saveable_object_factories"
_tf_keras_layer
é
É	variables
Ętrainable_variables
Ëregularization_losses
Ě	keras_api
Í__call__
+Î&call_and_return_all_conditional_losses
Ď_random_generator
$Đ_self_saveable_object_factories"
_tf_keras_layer
Ń
Ń	variables
Ňtrainable_variables
Óregularization_losses
Ô	keras_api
Ő__call__
+Ö&call_and_return_all_conditional_losses
$×_self_saveable_object_factories"
_tf_keras_layer
 "
trackable_dict_wrapper
_
)0
*1
+2
,3
-4
.5
/6
07
18"
trackable_list_wrapper
_
)0
*1
+2
,3
-4
.5
/6
07
18"
trackable_list_wrapper
 "
trackable_list_wrapper
˛
Řnon_trainable_variables
Ůlayers
Úmetrics
 Űlayer_regularization_losses
Ülayer_metrics
a	variables
btrainable_variables
cregularization_losses
e__call__
*f&call_and_return_all_conditional_losses
&f"call_and_return_conditional_losses"
_generic_user_object
Ž
Ýtrace_0
Ţtrace_12ó
$__inference_gau_1_layer_call_fn_2372
$__inference_gau_1_layer_call_fn_1889¤
˛
FullArgSpec
args
jx

jtraining
varargs
 
varkw
 
defaults˘
p 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 zÝtrace_0zŢtrace_1
ă
ßtrace_0
ŕtrace_12¨
?__inference_gau_1_layer_call_and_return_conditional_losses_1270
>__inference_gau_1_layer_call_and_return_conditional_losses_485¤
˛
FullArgSpec
args
jx

jtraining
varargs
 
varkw
 
defaults˘
p 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 zßtrace_0zŕtrace_1
í
á	variables
âtrainable_variables
ăregularization_losses
ä	keras_api
ĺ__call__
+ć&call_and_return_all_conditional_losses
-
norm_scale

-_scale
$ç_self_saveable_object_factories"
_tf_keras_layer
ç
č	variables
étrainable_variables
ęregularization_losses
ë	keras_api
ě__call__
+í&call_and_return_all_conditional_losses

.kernel
/bias
$î_self_saveable_object_factories"
_tf_keras_layer
ç
ď	variables
đtrainable_variables
ńregularization_losses
ň	keras_api
ó__call__
+ô&call_and_return_all_conditional_losses

0kernel
1bias
$ő_self_saveable_object_factories"
_tf_keras_layer
é
ö	variables
÷trainable_variables
řregularization_losses
ů	keras_api
ú__call__
+ű&call_and_return_all_conditional_losses
ü_random_generator
$ý_self_saveable_object_factories"
_tf_keras_layer
é
ţ	variables
˙trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses
_random_generator
$_self_saveable_object_factories"
_tf_keras_layer
Ń
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses
$_self_saveable_object_factories"
_tf_keras_layer
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
˛
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
n	variables
otrainable_variables
pregularization_losses
r__call__
*s&call_and_return_all_conditional_losses
&s"call_and_return_conditional_losses"
_generic_user_object
ő
trace_02Ö
9__inference_generalized_mean_pooling1d_layer_call_fn_3030
˛
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 ztrace_0

trace_02đ
S__inference_generalized_mean_pooling1d_layer_call_and_return_conditional_losses_181
˛
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 ztrace_0
Ń
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses
$_self_saveable_object_factories"
_tf_keras_layer
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
˛
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
v	variables
wtrainable_variables
xregularization_losses
z__call__
*{&call_and_return_all_conditional_losses
&{"call_and_return_conditional_losses"
_generic_user_object
ť
 trace_0
Ątrace_12
(__inference_dropout_4_layer_call_fn_7203
(__inference_dropout_4_layer_call_fn_7208Š
˘˛
FullArgSpec!
args
jinputs

jtraining
varargs
 
varkw
 
defaults˘
p 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 z trace_0zĄtrace_1
ń
˘trace_0
Łtrace_12ś
C__inference_dropout_4_layer_call_and_return_conditional_losses_7213
C__inference_dropout_4_layer_call_and_return_conditional_losses_7218Š
˘˛
FullArgSpec!
args
jinputs

jtraining
varargs
 
varkw
 
defaults˘
p 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 z˘trace_0zŁtrace_1
D
$¤_self_saveable_object_factories"
_generic_user_object
 "
trackable_dict_wrapper
.
20
31"
trackable_list_wrapper
.
20
31"
trackable_list_wrapper
 "
trackable_list_wrapper
ś
Ľnon_trainable_variables
Ślayers
§metrics
 ¨layer_regularization_losses
Šlayer_metrics
~	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
ĺ
Ştrace_02Ć
)__inference_similarity_layer_call_fn_3327
˛
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 zŞtrace_0
˙
Ťtrace_02ŕ
C__inference_similarity_layer_call_and_return_conditional_losses_264
˛
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 zŤtrace_0
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
_
0
1
2
3
4
5
6
7
8"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
öBó
.__inference_embedding_model_layer_call_fn_6799input_2"ľ
Ž˛Ş
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults˘
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
öBó
.__inference_embedding_model_layer_call_fn_6850input_2"ľ
Ž˛Ş
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults˘
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
B
I__inference_embedding_model_layer_call_and_return_conditional_losses_6685input_2"ľ
Ž˛Ş
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults˘
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
B
I__inference_embedding_model_layer_call_and_return_conditional_losses_6748input_2"ľ
Ž˛Ş
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults˘
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ďBě
E__inference_scaled_sinusoidal_positional_embedding_layer_call_fn_3156inputs"
˛
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
B
`__inference_scaled_sinusoidal_positional_embedding_layer_call_and_return_conditional_losses_1928inputs"
˛
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ÖBÓ
,__inference_encoder_start_layer_call_fn_7139inputs"
˛
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
ńBî
G__inference_encoder_start_layer_call_and_return_conditional_losses_7169inputs"
˛
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ÓBĐ
)__inference_activation_layer_call_fn_7174inputs"
˛
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
îBë
D__inference_activation_layer_call_and_return_conditional_losses_7187inputs"
˛
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
 "
trackable_list_wrapper
J
Z0
[1
\2
]3
^4
_5"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ÓBĐ
"__inference_gau_layer_call_fn_1551x"¤
˛
FullArgSpec
args
jx

jtraining
varargs
 
varkw
 
defaults˘
p 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
ŇBĎ
!__inference_gau_layer_call_fn_736x"¤
˛
FullArgSpec
args
jx

jtraining
varargs
 
varkw
 
defaults˘
p 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
îBë
=__inference_gau_layer_call_and_return_conditional_losses_1060x"¤
˛
FullArgSpec
args
jx

jtraining
varargs
 
varkw
 
defaults˘
p 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
îBë
=__inference_gau_layer_call_and_return_conditional_losses_2138x"¤
˛
FullArgSpec
args
jx

jtraining
varargs
 
varkw
 
defaults˘
p 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
'
$0"
trackable_list_wrapper
'
$0"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
Źnon_trainable_variables
­layers
Žmetrics
 Żlayer_regularization_losses
°layer_metrics
Ź	variables
­trainable_variables
Žregularization_losses
°__call__
+ą&call_and_return_all_conditional_losses
'ą"call_and_return_conditional_losses"
_generic_user_object
2
˛
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
2
˛
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
 "
trackable_dict_wrapper
.
%0
&1"
trackable_list_wrapper
.
%0
&1"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
ąnon_trainable_variables
˛layers
łmetrics
 ´layer_regularization_losses
ľlayer_metrics
ł	variables
´trainable_variables
ľregularization_losses
ˇ__call__
+¸&call_and_return_all_conditional_losses
'¸"call_and_return_conditional_losses"
_generic_user_object
2
˛
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
2
˛
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
 "
trackable_dict_wrapper
.
'0
(1"
trackable_list_wrapper
.
'0
(1"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
śnon_trainable_variables
ˇlayers
¸metrics
 šlayer_regularization_losses
şlayer_metrics
ş	variables
ťtrainable_variables
źregularization_losses
ž__call__
+ż&call_and_return_all_conditional_losses
'ż"call_and_return_conditional_losses"
_generic_user_object
2
˛
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
2
˛
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
ťnon_trainable_variables
źlayers
˝metrics
 žlayer_regularization_losses
żlayer_metrics
Á	variables
Âtrainable_variables
Ăregularization_losses
Ĺ__call__
+Ć&call_and_return_all_conditional_losses
'Ć"call_and_return_conditional_losses"
_generic_user_object
Ż2ŹŠ
˘˛
FullArgSpec!
args
jinputs

jtraining
varargs
 
varkw
 
defaults˘
p 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
Ż2ŹŠ
˘˛
FullArgSpec!
args
jinputs

jtraining
varargs
 
varkw
 
defaults˘
p 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
D
$Ŕ_self_saveable_object_factories"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
Ánon_trainable_variables
Âlayers
Ămetrics
 Älayer_regularization_losses
Ĺlayer_metrics
É	variables
Ętrainable_variables
Ëregularization_losses
Í__call__
+Î&call_and_return_all_conditional_losses
'Î"call_and_return_conditional_losses"
_generic_user_object
Ż2ŹŠ
˘˛
FullArgSpec!
args
jinputs

jtraining
varargs
 
varkw
 
defaults˘
p 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
Ż2ŹŠ
˘˛
FullArgSpec!
args
jinputs

jtraining
varargs
 
varkw
 
defaults˘
p 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
D
$Ć_self_saveable_object_factories"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
Çnon_trainable_variables
Člayers
Émetrics
 Ęlayer_regularization_losses
Ëlayer_metrics
Ń	variables
Ňtrainable_variables
Óregularization_losses
Ő__call__
+Ö&call_and_return_all_conditional_losses
'Ö"call_and_return_conditional_losses"
_generic_user_object
2
˛
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
2
˛
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
J
g0
h1
i2
j3
k4
l5"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ŐBŇ
$__inference_gau_1_layer_call_fn_2372x"¤
˛
FullArgSpec
args
jx

jtraining
varargs
 
varkw
 
defaults˘
p 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
ŐBŇ
$__inference_gau_1_layer_call_fn_1889x"¤
˛
FullArgSpec
args
jx

jtraining
varargs
 
varkw
 
defaults˘
p 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
đBí
?__inference_gau_1_layer_call_and_return_conditional_losses_1270x"¤
˛
FullArgSpec
args
jx

jtraining
varargs
 
varkw
 
defaults˘
p 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
ďBě
>__inference_gau_1_layer_call_and_return_conditional_losses_485x"¤
˛
FullArgSpec
args
jx

jtraining
varargs
 
varkw
 
defaults˘
p 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
'
-0"
trackable_list_wrapper
'
-0"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
Ěnon_trainable_variables
Ílayers
Îmetrics
 Ďlayer_regularization_losses
Đlayer_metrics
á	variables
âtrainable_variables
ăregularization_losses
ĺ__call__
+ć&call_and_return_all_conditional_losses
'ć"call_and_return_conditional_losses"
_generic_user_object
2
˛
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
2
˛
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
 "
trackable_dict_wrapper
.
.0
/1"
trackable_list_wrapper
.
.0
/1"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
Ńnon_trainable_variables
Ňlayers
Ómetrics
 Ôlayer_regularization_losses
Őlayer_metrics
č	variables
étrainable_variables
ęregularization_losses
ě__call__
+í&call_and_return_all_conditional_losses
'í"call_and_return_conditional_losses"
_generic_user_object
2
˛
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
2
˛
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
 "
trackable_dict_wrapper
.
00
11"
trackable_list_wrapper
.
00
11"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
Önon_trainable_variables
×layers
Řmetrics
 Ůlayer_regularization_losses
Úlayer_metrics
ď	variables
đtrainable_variables
ńregularization_losses
ó__call__
+ô&call_and_return_all_conditional_losses
'ô"call_and_return_conditional_losses"
_generic_user_object
2
˛
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
2
˛
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
Űnon_trainable_variables
Ülayers
Ýmetrics
 Ţlayer_regularization_losses
ßlayer_metrics
ö	variables
÷trainable_variables
řregularization_losses
ú__call__
+ű&call_and_return_all_conditional_losses
'ű"call_and_return_conditional_losses"
_generic_user_object
Ż2ŹŠ
˘˛
FullArgSpec!
args
jinputs

jtraining
varargs
 
varkw
 
defaults˘
p 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
Ż2ŹŠ
˘˛
FullArgSpec!
args
jinputs

jtraining
varargs
 
varkw
 
defaults˘
p 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
D
$ŕ_self_saveable_object_factories"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
ánon_trainable_variables
âlayers
ămetrics
 älayer_regularization_losses
ĺlayer_metrics
ţ	variables
˙trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
Ż2ŹŠ
˘˛
FullArgSpec!
args
jinputs

jtraining
varargs
 
varkw
 
defaults˘
p 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
Ż2ŹŠ
˘˛
FullArgSpec!
args
jinputs

jtraining
varargs
 
varkw
 
defaults˘
p 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
D
$ć_self_saveable_object_factories"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
çnon_trainable_variables
člayers
émetrics
 ęlayer_regularization_losses
ëlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
2
˛
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
2
˛
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
'
t0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ăBŕ
9__inference_generalized_mean_pooling1d_layer_call_fn_3030inputs"
˛
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
ýBú
S__inference_generalized_mean_pooling1d_layer_call_and_return_conditional_losses_181inputs"
˛
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
ěnon_trainable_variables
ílayers
îmetrics
 ďlayer_regularization_losses
đlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object

ńtrace_02ă
9__inference_generalized_mean_pooling1d_layer_call_fn_7223Ľ
˛
FullArgSpec
args
jinputs
jmask
varargs
 
varkw
 
defaults˘

 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 zńtrace_0

ňtrace_02ţ
T__inference_generalized_mean_pooling1d_layer_call_and_return_conditional_losses_7229Ľ
˛
FullArgSpec
args
jinputs
jmask
varargs
 
varkw
 
defaults˘

 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 zňtrace_0
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ăBŕ
(__inference_dropout_4_layer_call_fn_7203inputs"Š
˘˛
FullArgSpec!
args
jinputs

jtraining
varargs
 
varkw
 
defaults˘
p 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
ăBŕ
(__inference_dropout_4_layer_call_fn_7208inputs"Š
˘˛
FullArgSpec!
args
jinputs

jtraining
varargs
 
varkw
 
defaults˘
p 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
ţBű
C__inference_dropout_4_layer_call_and_return_conditional_losses_7213inputs"Š
˘˛
FullArgSpec!
args
jinputs

jtraining
varargs
 
varkw
 
defaults˘
p 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
ţBű
C__inference_dropout_4_layer_call_and_return_conditional_losses_7218inputs"Š
˘˛
FullArgSpec!
args
jinputs

jtraining
varargs
 
varkw
 
defaults˘
p 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ÓBĐ
)__inference_similarity_layer_call_fn_3327inputs"
˛
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
íBę
C__inference_similarity_layer_call_and_return_conditional_losses_264inputs"
˛
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
đBí
9__inference_generalized_mean_pooling1d_layer_call_fn_7223inputs"Ľ
˛
FullArgSpec
args
jinputs
jmask
varargs
 
varkw
 
defaults˘

 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
B
T__inference_generalized_mean_pooling1d_layer_call_and_return_conditional_losses_7229inputs"Ľ
˛
FullArgSpec
args
jinputs
jmask
varargs
 
varkw
 
defaults˘

 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
SbQ
dense_2/beta:0?__inference_gau_1_layer_call_and_return_conditional_losses_1270
VbT
dense_2/BiasAdd:0?__inference_gau_1_layer_call_and_return_conditional_losses_1270
RbP
dense_2/beta:0>__inference_gau_1_layer_call_and_return_conditional_losses_485
UbS
dense_2/BiasAdd:0>__inference_gau_1_layer_call_and_return_conditional_losses_485
SbQ
dense_2/beta:0?__inference_gau_1_layer_call_and_return_conditional_losses_1875
VbT
dense_2/BiasAdd:0?__inference_gau_1_layer_call_and_return_conditional_losses_1875
SbQ
dense_2/beta:0?__inference_gau_1_layer_call_and_return_conditional_losses_2358
VbT
dense_2/BiasAdd:0?__inference_gau_1_layer_call_and_return_conditional_losses_2358
ObM
dense/beta:0=__inference_gau_layer_call_and_return_conditional_losses_2138
RbP
dense/BiasAdd:0=__inference_gau_layer_call_and_return_conditional_losses_2138
ObM
dense/beta:0=__inference_gau_layer_call_and_return_conditional_losses_1060
RbP
dense/BiasAdd:0=__inference_gau_layer_call_and_return_conditional_losses_1060
NbL
dense/beta:0<__inference_gau_layer_call_and_return_conditional_losses_722
QbO
dense/BiasAdd:0<__inference_gau_layer_call_and_return_conditional_losses_722
ObM
dense/beta:0=__inference_gau_layer_call_and_return_conditional_losses_1537
RbP
dense/BiasAdd:0=__inference_gau_layer_call_and_return_conditional_losses_1537
PbN
beta:0D__inference_activation_layer_call_and_return_conditional_losses_7187
RbP
inputs:0D__inference_activation_layer_call_and_return_conditional_losses_7187
PbN
beta:0D__inference_activation_layer_call_and_return_conditional_losses_6586
RbP
inputs:0D__inference_activation_layer_call_and_return_conditional_losses_6586
LbJ
'model/embedding_model/activation/beta:0__inference__wrapped_model_6533
RbP
-model/embedding_model/encoder_start/BiasAdd:0__inference__wrapped_model_6533¸
__inference__wrapped_model_6533$%&"# !'(-./+,)*01235˘2
+˘(
&#
input_1˙˙˙˙˙˙˙˙˙
Ş "BŞ?
=
embedding_model*'
embedding_model˙˙˙˙˙˙˙˙˙ł
D__inference_activation_layer_call_and_return_conditional_losses_7187k5˘2
+˘(
&#
inputs˙˙˙˙˙˙˙˙˙
Ş "2˘/
(%
tensor_0˙˙˙˙˙˙˙˙˙
 
)__inference_activation_layer_call_fn_7174`5˘2
+˘(
&#
inputs˙˙˙˙˙˙˙˙˙
Ş "'$
unknown˙˙˙˙˙˙˙˙˙Ź
C__inference_dropout_4_layer_call_and_return_conditional_losses_7213e4˘1
*˘'
!
inputs˙˙˙˙˙˙˙˙˙
p
Ş "-˘*
# 
tensor_0˙˙˙˙˙˙˙˙˙
 Ź
C__inference_dropout_4_layer_call_and_return_conditional_losses_7218e4˘1
*˘'
!
inputs˙˙˙˙˙˙˙˙˙
p 
Ş "-˘*
# 
tensor_0˙˙˙˙˙˙˙˙˙
 
(__inference_dropout_4_layer_call_fn_7203Z4˘1
*˘'
!
inputs˙˙˙˙˙˙˙˙˙
p
Ş ""
unknown˙˙˙˙˙˙˙˙˙
(__inference_dropout_4_layer_call_fn_7208Z4˘1
*˘'
!
inputs˙˙˙˙˙˙˙˙˙
p 
Ş ""
unknown˙˙˙˙˙˙˙˙˙Ő
I__inference_embedding_model_layer_call_and_return_conditional_losses_6685$%&"# !'(-./+,)*0123=˘:
3˘0
&#
input_2˙˙˙˙˙˙˙˙˙
p

 
Ş "-˘*
# 
tensor_0˙˙˙˙˙˙˙˙˙
 Ő
I__inference_embedding_model_layer_call_and_return_conditional_losses_6748$%&"# !'(-./+,)*0123=˘:
3˘0
&#
input_2˙˙˙˙˙˙˙˙˙
p 

 
Ş "-˘*
# 
tensor_0˙˙˙˙˙˙˙˙˙
 Ž
.__inference_embedding_model_layer_call_fn_6799|$%&"# !'(-./+,)*0123=˘:
3˘0
&#
input_2˙˙˙˙˙˙˙˙˙
p

 
Ş ""
unknown˙˙˙˙˙˙˙˙˙Ž
.__inference_embedding_model_layer_call_fn_6850|$%&"# !'(-./+,)*0123=˘:
3˘0
&#
input_2˙˙˙˙˙˙˙˙˙
p 

 
Ş ""
unknown˙˙˙˙˙˙˙˙˙š
G__inference_encoder_start_layer_call_and_return_conditional_losses_7169n4˘1
*˘'
%"
inputs˙˙˙˙˙˙˙˙˙
Ş "2˘/
(%
tensor_0˙˙˙˙˙˙˙˙˙
 
,__inference_encoder_start_layer_call_fn_7139c4˘1
*˘'
%"
inputs˙˙˙˙˙˙˙˙˙
Ş "'$
unknown˙˙˙˙˙˙˙˙˙¸
?__inference_gau_1_layer_call_and_return_conditional_losses_1270u	-./+,)*014˘1
*˘'
!
x˙˙˙˙˙˙˙˙˙
p
Ş "2˘/
(%
tensor_0˙˙˙˙˙˙˙˙˙
 ˇ
>__inference_gau_1_layer_call_and_return_conditional_losses_485u	-./+,)*014˘1
*˘'
!
x˙˙˙˙˙˙˙˙˙
p 
Ş "2˘/
(%
tensor_0˙˙˙˙˙˙˙˙˙
 
$__inference_gau_1_layer_call_fn_1889j	-./+,)*014˘1
*˘'
!
x˙˙˙˙˙˙˙˙˙
p 
Ş "'$
unknown˙˙˙˙˙˙˙˙˙
$__inference_gau_1_layer_call_fn_2372j	-./+,)*014˘1
*˘'
!
x˙˙˙˙˙˙˙˙˙
p
Ş "'$
unknown˙˙˙˙˙˙˙˙˙ś
=__inference_gau_layer_call_and_return_conditional_losses_1060u	$%&"# !'(4˘1
*˘'
!
x˙˙˙˙˙˙˙˙˙
p
Ş "2˘/
(%
tensor_0˙˙˙˙˙˙˙˙˙
 ś
=__inference_gau_layer_call_and_return_conditional_losses_2138u	$%&"# !'(4˘1
*˘'
!
x˙˙˙˙˙˙˙˙˙
p 
Ş "2˘/
(%
tensor_0˙˙˙˙˙˙˙˙˙
 
"__inference_gau_layer_call_fn_1551j	$%&"# !'(4˘1
*˘'
!
x˙˙˙˙˙˙˙˙˙
p
Ş "'$
unknown˙˙˙˙˙˙˙˙˙
!__inference_gau_layer_call_fn_736j	$%&"# !'(4˘1
*˘'
!
x˙˙˙˙˙˙˙˙˙
p 
Ş "'$
unknown˙˙˙˙˙˙˙˙˙˝
S__inference_generalized_mean_pooling1d_layer_call_and_return_conditional_losses_181f5˘2
+˘(
&#
inputs˙˙˙˙˙˙˙˙˙
Ş "-˘*
# 
tensor_0˙˙˙˙˙˙˙˙˙
 Ű
T__inference_generalized_mean_pooling1d_layer_call_and_return_conditional_losses_7229I˘F
?˘<
63
inputs'˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙

 
Ş "5˘2
+(
tensor_0˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
 
9__inference_generalized_mean_pooling1d_layer_call_fn_3030[5˘2
+˘(
&#
inputs˙˙˙˙˙˙˙˙˙
Ş ""
unknown˙˙˙˙˙˙˙˙˙´
9__inference_generalized_mean_pooling1d_layer_call_fn_7223wI˘F
?˘<
63
inputs'˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙

 
Ş "*'
unknown˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙ţ
__inference_gradient_func_7289Űóô˘
˘}

 
.+
result_grads_0˙˙˙˙˙˙˙˙˙
.+
result_grads_1˙˙˙˙˙˙˙˙˙

result_grads_2 
Ş "DA

 
(%
tensor_1˙˙˙˙˙˙˙˙˙

tensor_2 ţ
__inference_gradient_func_7300Űőö˘
˘}

 
.+
result_grads_0˙˙˙˙˙˙˙˙˙
.+
result_grads_1˙˙˙˙˙˙˙˙˙

result_grads_2 
Ş "DA

 
(%
tensor_1˙˙˙˙˙˙˙˙˙

tensor_2 ţ
__inference_gradient_func_7311Ű÷ř˘
˘}

 
.+
result_grads_0˙˙˙˙˙˙˙˙˙
.+
result_grads_1˙˙˙˙˙˙˙˙˙

result_grads_2 
Ş "DA

 
(%
tensor_1˙˙˙˙˙˙˙˙˙

tensor_2 ţ
__inference_gradient_func_7322Űůú˘
˘}

 
.+
result_grads_0˙˙˙˙˙˙˙˙˙
.+
result_grads_1˙˙˙˙˙˙˙˙˙

result_grads_2 
Ş "DA

 
(%
tensor_1˙˙˙˙˙˙˙˙˙

tensor_2 ţ
__inference_gradient_func_7333Űűü˘
˘}

 
.+
result_grads_0˙˙˙˙˙˙˙˙˙
.+
result_grads_1˙˙˙˙˙˙˙˙˙

result_grads_2 
Ş "DA

 
(%
tensor_1˙˙˙˙˙˙˙˙˙

tensor_2 ţ
__inference_gradient_func_7344Űýţ˘
˘}

 
.+
result_grads_0˙˙˙˙˙˙˙˙˙
.+
result_grads_1˙˙˙˙˙˙˙˙˙

result_grads_2 
Ş "DA

 
(%
tensor_1˙˙˙˙˙˙˙˙˙

tensor_2 ţ
__inference_gradient_func_7355Ű˙˘
˘}

 
.+
result_grads_0˙˙˙˙˙˙˙˙˙
.+
result_grads_1˙˙˙˙˙˙˙˙˙

result_grads_2 
Ş "DA

 
(%
tensor_1˙˙˙˙˙˙˙˙˙

tensor_2 ţ
__inference_gradient_func_7366Ű˘
˘}

 
.+
result_grads_0˙˙˙˙˙˙˙˙˙
.+
result_grads_1˙˙˙˙˙˙˙˙˙

result_grads_2 
Ş "DA

 
(%
tensor_1˙˙˙˙˙˙˙˙˙

tensor_2 
!__inference_internal_grad_fn_7393Ű˘
˘}

 
.+
result_grads_0˙˙˙˙˙˙˙˙˙
.+
result_grads_1˙˙˙˙˙˙˙˙˙

result_grads_2 
Ş "DA

 
(%
tensor_1˙˙˙˙˙˙˙˙˙

tensor_2 
!__inference_internal_grad_fn_7420Ű˘
˘}

 
.+
result_grads_0˙˙˙˙˙˙˙˙˙
.+
result_grads_1˙˙˙˙˙˙˙˙˙

result_grads_2 
Ş "DA

 
(%
tensor_1˙˙˙˙˙˙˙˙˙

tensor_2 
!__inference_internal_grad_fn_7447Ű˘
˘}

 
.+
result_grads_0˙˙˙˙˙˙˙˙˙
.+
result_grads_1˙˙˙˙˙˙˙˙˙

result_grads_2 
Ş "DA

 
(%
tensor_1˙˙˙˙˙˙˙˙˙

tensor_2 Ë
?__inference_model_layer_call_and_return_conditional_losses_6925$%&"# !'(-./+,)*0123=˘:
3˘0
&#
input_1˙˙˙˙˙˙˙˙˙
p

 
Ş "-˘*
# 
tensor_0˙˙˙˙˙˙˙˙˙
 Ë
?__inference_model_layer_call_and_return_conditional_losses_6976$%&"# !'(-./+,)*0123=˘:
3˘0
&#
input_1˙˙˙˙˙˙˙˙˙
p 

 
Ş "-˘*
# 
tensor_0˙˙˙˙˙˙˙˙˙
 ¤
$__inference_model_layer_call_fn_7027|$%&"# !'(-./+,)*0123=˘:
3˘0
&#
input_1˙˙˙˙˙˙˙˙˙
p

 
Ş ""
unknown˙˙˙˙˙˙˙˙˙¤
$__inference_model_layer_call_fn_7078|$%&"# !'(-./+,)*0123=˘:
3˘0
&#
input_1˙˙˙˙˙˙˙˙˙
p 

 
Ş ""
unknown˙˙˙˙˙˙˙˙˙Đ
`__inference_scaled_sinusoidal_positional_embedding_layer_call_and_return_conditional_losses_1928l4˘1
*˘'
%"
inputs˙˙˙˙˙˙˙˙˙
Ş "1˘.
'$
tensor_0˙˙˙˙˙˙˙˙˙
 Ş
E__inference_scaled_sinusoidal_positional_embedding_layer_call_fn_3156a4˘1
*˘'
%"
inputs˙˙˙˙˙˙˙˙˙
Ş "&#
unknown˙˙˙˙˙˙˙˙˙Ć
"__inference_signature_wrapper_7130$%&"# !'(-./+,)*0123@˘=
˘ 
6Ş3
1
input_1&#
input_1˙˙˙˙˙˙˙˙˙"BŞ?
=
embedding_model*'
embedding_model˙˙˙˙˙˙˙˙˙Ź
C__inference_similarity_layer_call_and_return_conditional_losses_264e230˘-
&˘#
!
inputs˙˙˙˙˙˙˙˙˙
Ş "-˘*
# 
tensor_0˙˙˙˙˙˙˙˙˙
 
)__inference_similarity_layer_call_fn_3327Z230˘-
&˘#
!
inputs˙˙˙˙˙˙˙˙˙
Ş ""
unknown˙˙˙˙˙˙˙˙˙