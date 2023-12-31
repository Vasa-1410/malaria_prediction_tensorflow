��
��
D
AddV2
x"T
y"T
z"T"
Ttype:
2	��
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( �
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
�
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

�
FusedBatchNormV3
x"T

scale"U
offset"U	
mean"U
variance"U
y"T

batch_mean"U
batch_variance"U
reserve_space_1"U
reserve_space_2"U
reserve_space_3"U"
Ttype:
2"
Utype:
2"
epsilonfloat%��8"&
exponential_avg_factorfloat%  �?";
data_formatstringNHWC:
NHWCNCHWNDHWCNCDHW"
is_trainingbool(
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
�
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
�
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( �
?
Mul
x"T
y"T
z"T"
Ttype:
2	�

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype�
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
list(type)(0�
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
list(type)(0�
?
Select
	condition

t"T
e"T
output"T"	
Ttype
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
�
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
executor_typestring ��
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
<
Sub
x"T
y"T
z"T"
Ttype:
2	
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �"serve*2.11.02v2.11.0-rc2-15-g6290819256d8ߒ
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
�
#Adam/v/lenet_model_12/dense_47/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#Adam/v/lenet_model_12/dense_47/bias
�
7Adam/v/lenet_model_12/dense_47/bias/Read/ReadVariableOpReadVariableOp#Adam/v/lenet_model_12/dense_47/bias*
_output_shapes
:*
dtype0
�
#Adam/m/lenet_model_12/dense_47/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#Adam/m/lenet_model_12/dense_47/bias
�
7Adam/m/lenet_model_12/dense_47/bias/Read/ReadVariableOpReadVariableOp#Adam/m/lenet_model_12/dense_47/bias*
_output_shapes
:*
dtype0
�
%Adam/v/lenet_model_12/dense_47/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*6
shared_name'%Adam/v/lenet_model_12/dense_47/kernel
�
9Adam/v/lenet_model_12/dense_47/kernel/Read/ReadVariableOpReadVariableOp%Adam/v/lenet_model_12/dense_47/kernel*
_output_shapes

:
*
dtype0
�
%Adam/m/lenet_model_12/dense_47/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*6
shared_name'%Adam/m/lenet_model_12/dense_47/kernel
�
9Adam/m/lenet_model_12/dense_47/kernel/Read/ReadVariableOpReadVariableOp%Adam/m/lenet_model_12/dense_47/kernel*
_output_shapes

:
*
dtype0
�
1Adam/v/lenet_model_12/batch_normalization_65/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*B
shared_name31Adam/v/lenet_model_12/batch_normalization_65/beta
�
EAdam/v/lenet_model_12/batch_normalization_65/beta/Read/ReadVariableOpReadVariableOp1Adam/v/lenet_model_12/batch_normalization_65/beta*
_output_shapes
:
*
dtype0
�
1Adam/m/lenet_model_12/batch_normalization_65/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*B
shared_name31Adam/m/lenet_model_12/batch_normalization_65/beta
�
EAdam/m/lenet_model_12/batch_normalization_65/beta/Read/ReadVariableOpReadVariableOp1Adam/m/lenet_model_12/batch_normalization_65/beta*
_output_shapes
:
*
dtype0
�
2Adam/v/lenet_model_12/batch_normalization_65/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*C
shared_name42Adam/v/lenet_model_12/batch_normalization_65/gamma
�
FAdam/v/lenet_model_12/batch_normalization_65/gamma/Read/ReadVariableOpReadVariableOp2Adam/v/lenet_model_12/batch_normalization_65/gamma*
_output_shapes
:
*
dtype0
�
2Adam/m/lenet_model_12/batch_normalization_65/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*C
shared_name42Adam/m/lenet_model_12/batch_normalization_65/gamma
�
FAdam/m/lenet_model_12/batch_normalization_65/gamma/Read/ReadVariableOpReadVariableOp2Adam/m/lenet_model_12/batch_normalization_65/gamma*
_output_shapes
:
*
dtype0
�
#Adam/v/lenet_model_12/dense_46/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*4
shared_name%#Adam/v/lenet_model_12/dense_46/bias
�
7Adam/v/lenet_model_12/dense_46/bias/Read/ReadVariableOpReadVariableOp#Adam/v/lenet_model_12/dense_46/bias*
_output_shapes
:
*
dtype0
�
#Adam/m/lenet_model_12/dense_46/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*4
shared_name%#Adam/m/lenet_model_12/dense_46/bias
�
7Adam/m/lenet_model_12/dense_46/bias/Read/ReadVariableOpReadVariableOp#Adam/m/lenet_model_12/dense_46/bias*
_output_shapes
:
*
dtype0
�
%Adam/v/lenet_model_12/dense_46/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d
*6
shared_name'%Adam/v/lenet_model_12/dense_46/kernel
�
9Adam/v/lenet_model_12/dense_46/kernel/Read/ReadVariableOpReadVariableOp%Adam/v/lenet_model_12/dense_46/kernel*
_output_shapes

:d
*
dtype0
�
%Adam/m/lenet_model_12/dense_46/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d
*6
shared_name'%Adam/m/lenet_model_12/dense_46/kernel
�
9Adam/m/lenet_model_12/dense_46/kernel/Read/ReadVariableOpReadVariableOp%Adam/m/lenet_model_12/dense_46/kernel*
_output_shapes

:d
*
dtype0
�
1Adam/v/lenet_model_12/batch_normalization_64/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*B
shared_name31Adam/v/lenet_model_12/batch_normalization_64/beta
�
EAdam/v/lenet_model_12/batch_normalization_64/beta/Read/ReadVariableOpReadVariableOp1Adam/v/lenet_model_12/batch_normalization_64/beta*
_output_shapes
:d*
dtype0
�
1Adam/m/lenet_model_12/batch_normalization_64/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*B
shared_name31Adam/m/lenet_model_12/batch_normalization_64/beta
�
EAdam/m/lenet_model_12/batch_normalization_64/beta/Read/ReadVariableOpReadVariableOp1Adam/m/lenet_model_12/batch_normalization_64/beta*
_output_shapes
:d*
dtype0
�
2Adam/v/lenet_model_12/batch_normalization_64/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*C
shared_name42Adam/v/lenet_model_12/batch_normalization_64/gamma
�
FAdam/v/lenet_model_12/batch_normalization_64/gamma/Read/ReadVariableOpReadVariableOp2Adam/v/lenet_model_12/batch_normalization_64/gamma*
_output_shapes
:d*
dtype0
�
2Adam/m/lenet_model_12/batch_normalization_64/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*C
shared_name42Adam/m/lenet_model_12/batch_normalization_64/gamma
�
FAdam/m/lenet_model_12/batch_normalization_64/gamma/Read/ReadVariableOpReadVariableOp2Adam/m/lenet_model_12/batch_normalization_64/gamma*
_output_shapes
:d*
dtype0
�
#Adam/v/lenet_model_12/dense_45/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*4
shared_name%#Adam/v/lenet_model_12/dense_45/bias
�
7Adam/v/lenet_model_12/dense_45/bias/Read/ReadVariableOpReadVariableOp#Adam/v/lenet_model_12/dense_45/bias*
_output_shapes
:d*
dtype0
�
#Adam/m/lenet_model_12/dense_45/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*4
shared_name%#Adam/m/lenet_model_12/dense_45/bias
�
7Adam/m/lenet_model_12/dense_45/bias/Read/ReadVariableOpReadVariableOp#Adam/m/lenet_model_12/dense_45/bias*
_output_shapes
:d*
dtype0
�
%Adam/v/lenet_model_12/dense_45/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��d*6
shared_name'%Adam/v/lenet_model_12/dense_45/kernel
�
9Adam/v/lenet_model_12/dense_45/kernel/Read/ReadVariableOpReadVariableOp%Adam/v/lenet_model_12/dense_45/kernel* 
_output_shapes
:
��d*
dtype0
�
%Adam/m/lenet_model_12/dense_45/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��d*6
shared_name'%Adam/m/lenet_model_12/dense_45/kernel
�
9Adam/m/lenet_model_12/dense_45/kernel/Read/ReadVariableOpReadVariableOp%Adam/m/lenet_model_12/dense_45/kernel* 
_output_shapes
:
��d*
dtype0
�
FAdam/v/lenet_model_12/feature_extractor_14/batch_normalization_63/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*W
shared_nameHFAdam/v/lenet_model_12/feature_extractor_14/batch_normalization_63/beta
�
ZAdam/v/lenet_model_12/feature_extractor_14/batch_normalization_63/beta/Read/ReadVariableOpReadVariableOpFAdam/v/lenet_model_12/feature_extractor_14/batch_normalization_63/beta*
_output_shapes
:*
dtype0
�
FAdam/m/lenet_model_12/feature_extractor_14/batch_normalization_63/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*W
shared_nameHFAdam/m/lenet_model_12/feature_extractor_14/batch_normalization_63/beta
�
ZAdam/m/lenet_model_12/feature_extractor_14/batch_normalization_63/beta/Read/ReadVariableOpReadVariableOpFAdam/m/lenet_model_12/feature_extractor_14/batch_normalization_63/beta*
_output_shapes
:*
dtype0
�
GAdam/v/lenet_model_12/feature_extractor_14/batch_normalization_63/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*X
shared_nameIGAdam/v/lenet_model_12/feature_extractor_14/batch_normalization_63/gamma
�
[Adam/v/lenet_model_12/feature_extractor_14/batch_normalization_63/gamma/Read/ReadVariableOpReadVariableOpGAdam/v/lenet_model_12/feature_extractor_14/batch_normalization_63/gamma*
_output_shapes
:*
dtype0
�
GAdam/m/lenet_model_12/feature_extractor_14/batch_normalization_63/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*X
shared_nameIGAdam/m/lenet_model_12/feature_extractor_14/batch_normalization_63/gamma
�
[Adam/m/lenet_model_12/feature_extractor_14/batch_normalization_63/gamma/Read/ReadVariableOpReadVariableOpGAdam/m/lenet_model_12/feature_extractor_14/batch_normalization_63/gamma*
_output_shapes
:*
dtype0
�
9Adam/v/lenet_model_12/feature_extractor_14/conv2d_33/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*J
shared_name;9Adam/v/lenet_model_12/feature_extractor_14/conv2d_33/bias
�
MAdam/v/lenet_model_12/feature_extractor_14/conv2d_33/bias/Read/ReadVariableOpReadVariableOp9Adam/v/lenet_model_12/feature_extractor_14/conv2d_33/bias*
_output_shapes
:*
dtype0
�
9Adam/m/lenet_model_12/feature_extractor_14/conv2d_33/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*J
shared_name;9Adam/m/lenet_model_12/feature_extractor_14/conv2d_33/bias
�
MAdam/m/lenet_model_12/feature_extractor_14/conv2d_33/bias/Read/ReadVariableOpReadVariableOp9Adam/m/lenet_model_12/feature_extractor_14/conv2d_33/bias*
_output_shapes
:*
dtype0
�
;Adam/v/lenet_model_12/feature_extractor_14/conv2d_33/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*L
shared_name=;Adam/v/lenet_model_12/feature_extractor_14/conv2d_33/kernel
�
OAdam/v/lenet_model_12/feature_extractor_14/conv2d_33/kernel/Read/ReadVariableOpReadVariableOp;Adam/v/lenet_model_12/feature_extractor_14/conv2d_33/kernel*&
_output_shapes
:*
dtype0
�
;Adam/m/lenet_model_12/feature_extractor_14/conv2d_33/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*L
shared_name=;Adam/m/lenet_model_12/feature_extractor_14/conv2d_33/kernel
�
OAdam/m/lenet_model_12/feature_extractor_14/conv2d_33/kernel/Read/ReadVariableOpReadVariableOp;Adam/m/lenet_model_12/feature_extractor_14/conv2d_33/kernel*&
_output_shapes
:*
dtype0
�
FAdam/v/lenet_model_12/feature_extractor_14/batch_normalization_62/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*W
shared_nameHFAdam/v/lenet_model_12/feature_extractor_14/batch_normalization_62/beta
�
ZAdam/v/lenet_model_12/feature_extractor_14/batch_normalization_62/beta/Read/ReadVariableOpReadVariableOpFAdam/v/lenet_model_12/feature_extractor_14/batch_normalization_62/beta*
_output_shapes
:*
dtype0
�
FAdam/m/lenet_model_12/feature_extractor_14/batch_normalization_62/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*W
shared_nameHFAdam/m/lenet_model_12/feature_extractor_14/batch_normalization_62/beta
�
ZAdam/m/lenet_model_12/feature_extractor_14/batch_normalization_62/beta/Read/ReadVariableOpReadVariableOpFAdam/m/lenet_model_12/feature_extractor_14/batch_normalization_62/beta*
_output_shapes
:*
dtype0
�
GAdam/v/lenet_model_12/feature_extractor_14/batch_normalization_62/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*X
shared_nameIGAdam/v/lenet_model_12/feature_extractor_14/batch_normalization_62/gamma
�
[Adam/v/lenet_model_12/feature_extractor_14/batch_normalization_62/gamma/Read/ReadVariableOpReadVariableOpGAdam/v/lenet_model_12/feature_extractor_14/batch_normalization_62/gamma*
_output_shapes
:*
dtype0
�
GAdam/m/lenet_model_12/feature_extractor_14/batch_normalization_62/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*X
shared_nameIGAdam/m/lenet_model_12/feature_extractor_14/batch_normalization_62/gamma
�
[Adam/m/lenet_model_12/feature_extractor_14/batch_normalization_62/gamma/Read/ReadVariableOpReadVariableOpGAdam/m/lenet_model_12/feature_extractor_14/batch_normalization_62/gamma*
_output_shapes
:*
dtype0
�
9Adam/v/lenet_model_12/feature_extractor_14/conv2d_32/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*J
shared_name;9Adam/v/lenet_model_12/feature_extractor_14/conv2d_32/bias
�
MAdam/v/lenet_model_12/feature_extractor_14/conv2d_32/bias/Read/ReadVariableOpReadVariableOp9Adam/v/lenet_model_12/feature_extractor_14/conv2d_32/bias*
_output_shapes
:*
dtype0
�
9Adam/m/lenet_model_12/feature_extractor_14/conv2d_32/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*J
shared_name;9Adam/m/lenet_model_12/feature_extractor_14/conv2d_32/bias
�
MAdam/m/lenet_model_12/feature_extractor_14/conv2d_32/bias/Read/ReadVariableOpReadVariableOp9Adam/m/lenet_model_12/feature_extractor_14/conv2d_32/bias*
_output_shapes
:*
dtype0
�
;Adam/v/lenet_model_12/feature_extractor_14/conv2d_32/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*L
shared_name=;Adam/v/lenet_model_12/feature_extractor_14/conv2d_32/kernel
�
OAdam/v/lenet_model_12/feature_extractor_14/conv2d_32/kernel/Read/ReadVariableOpReadVariableOp;Adam/v/lenet_model_12/feature_extractor_14/conv2d_32/kernel*&
_output_shapes
:*
dtype0
�
;Adam/m/lenet_model_12/feature_extractor_14/conv2d_32/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*L
shared_name=;Adam/m/lenet_model_12/feature_extractor_14/conv2d_32/kernel
�
OAdam/m/lenet_model_12/feature_extractor_14/conv2d_32/kernel/Read/ReadVariableOpReadVariableOp;Adam/m/lenet_model_12/feature_extractor_14/conv2d_32/kernel*&
_output_shapes
:*
dtype0
n
learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namelearning_rate
g
!learning_rate/Read/ReadVariableOpReadVariableOplearning_rate*
_output_shapes
: *
dtype0
f
	iterationVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	iteration
_
iteration/Read/ReadVariableOpReadVariableOp	iteration*
_output_shapes
: *
dtype0	
�
lenet_model_12/dense_47/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_namelenet_model_12/dense_47/bias
�
0lenet_model_12/dense_47/bias/Read/ReadVariableOpReadVariableOplenet_model_12/dense_47/bias*
_output_shapes
:*
dtype0
�
lenet_model_12/dense_47/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*/
shared_name lenet_model_12/dense_47/kernel
�
2lenet_model_12/dense_47/kernel/Read/ReadVariableOpReadVariableOplenet_model_12/dense_47/kernel*
_output_shapes

:
*
dtype0
�
5lenet_model_12/batch_normalization_65/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*F
shared_name75lenet_model_12/batch_normalization_65/moving_variance
�
Ilenet_model_12/batch_normalization_65/moving_variance/Read/ReadVariableOpReadVariableOp5lenet_model_12/batch_normalization_65/moving_variance*
_output_shapes
:
*
dtype0
�
1lenet_model_12/batch_normalization_65/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*B
shared_name31lenet_model_12/batch_normalization_65/moving_mean
�
Elenet_model_12/batch_normalization_65/moving_mean/Read/ReadVariableOpReadVariableOp1lenet_model_12/batch_normalization_65/moving_mean*
_output_shapes
:
*
dtype0
�
*lenet_model_12/batch_normalization_65/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*;
shared_name,*lenet_model_12/batch_normalization_65/beta
�
>lenet_model_12/batch_normalization_65/beta/Read/ReadVariableOpReadVariableOp*lenet_model_12/batch_normalization_65/beta*
_output_shapes
:
*
dtype0
�
+lenet_model_12/batch_normalization_65/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*<
shared_name-+lenet_model_12/batch_normalization_65/gamma
�
?lenet_model_12/batch_normalization_65/gamma/Read/ReadVariableOpReadVariableOp+lenet_model_12/batch_normalization_65/gamma*
_output_shapes
:
*
dtype0
�
lenet_model_12/dense_46/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*-
shared_namelenet_model_12/dense_46/bias
�
0lenet_model_12/dense_46/bias/Read/ReadVariableOpReadVariableOplenet_model_12/dense_46/bias*
_output_shapes
:
*
dtype0
�
lenet_model_12/dense_46/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d
*/
shared_name lenet_model_12/dense_46/kernel
�
2lenet_model_12/dense_46/kernel/Read/ReadVariableOpReadVariableOplenet_model_12/dense_46/kernel*
_output_shapes

:d
*
dtype0
�
5lenet_model_12/batch_normalization_64/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*F
shared_name75lenet_model_12/batch_normalization_64/moving_variance
�
Ilenet_model_12/batch_normalization_64/moving_variance/Read/ReadVariableOpReadVariableOp5lenet_model_12/batch_normalization_64/moving_variance*
_output_shapes
:d*
dtype0
�
1lenet_model_12/batch_normalization_64/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*B
shared_name31lenet_model_12/batch_normalization_64/moving_mean
�
Elenet_model_12/batch_normalization_64/moving_mean/Read/ReadVariableOpReadVariableOp1lenet_model_12/batch_normalization_64/moving_mean*
_output_shapes
:d*
dtype0
�
*lenet_model_12/batch_normalization_64/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*;
shared_name,*lenet_model_12/batch_normalization_64/beta
�
>lenet_model_12/batch_normalization_64/beta/Read/ReadVariableOpReadVariableOp*lenet_model_12/batch_normalization_64/beta*
_output_shapes
:d*
dtype0
�
+lenet_model_12/batch_normalization_64/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*<
shared_name-+lenet_model_12/batch_normalization_64/gamma
�
?lenet_model_12/batch_normalization_64/gamma/Read/ReadVariableOpReadVariableOp+lenet_model_12/batch_normalization_64/gamma*
_output_shapes
:d*
dtype0
�
lenet_model_12/dense_45/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*-
shared_namelenet_model_12/dense_45/bias
�
0lenet_model_12/dense_45/bias/Read/ReadVariableOpReadVariableOplenet_model_12/dense_45/bias*
_output_shapes
:d*
dtype0
�
lenet_model_12/dense_45/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��d*/
shared_name lenet_model_12/dense_45/kernel
�
2lenet_model_12/dense_45/kernel/Read/ReadVariableOpReadVariableOplenet_model_12/dense_45/kernel* 
_output_shapes
:
��d*
dtype0
�
Jlenet_model_12/feature_extractor_14/batch_normalization_63/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*[
shared_nameLJlenet_model_12/feature_extractor_14/batch_normalization_63/moving_variance
�
^lenet_model_12/feature_extractor_14/batch_normalization_63/moving_variance/Read/ReadVariableOpReadVariableOpJlenet_model_12/feature_extractor_14/batch_normalization_63/moving_variance*
_output_shapes
:*
dtype0
�
Flenet_model_12/feature_extractor_14/batch_normalization_63/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*W
shared_nameHFlenet_model_12/feature_extractor_14/batch_normalization_63/moving_mean
�
Zlenet_model_12/feature_extractor_14/batch_normalization_63/moving_mean/Read/ReadVariableOpReadVariableOpFlenet_model_12/feature_extractor_14/batch_normalization_63/moving_mean*
_output_shapes
:*
dtype0
�
Jlenet_model_12/feature_extractor_14/batch_normalization_62/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*[
shared_nameLJlenet_model_12/feature_extractor_14/batch_normalization_62/moving_variance
�
^lenet_model_12/feature_extractor_14/batch_normalization_62/moving_variance/Read/ReadVariableOpReadVariableOpJlenet_model_12/feature_extractor_14/batch_normalization_62/moving_variance*
_output_shapes
:*
dtype0
�
Flenet_model_12/feature_extractor_14/batch_normalization_62/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*W
shared_nameHFlenet_model_12/feature_extractor_14/batch_normalization_62/moving_mean
�
Zlenet_model_12/feature_extractor_14/batch_normalization_62/moving_mean/Read/ReadVariableOpReadVariableOpFlenet_model_12/feature_extractor_14/batch_normalization_62/moving_mean*
_output_shapes
:*
dtype0
�
?lenet_model_12/feature_extractor_14/batch_normalization_63/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*P
shared_nameA?lenet_model_12/feature_extractor_14/batch_normalization_63/beta
�
Slenet_model_12/feature_extractor_14/batch_normalization_63/beta/Read/ReadVariableOpReadVariableOp?lenet_model_12/feature_extractor_14/batch_normalization_63/beta*
_output_shapes
:*
dtype0
�
@lenet_model_12/feature_extractor_14/batch_normalization_63/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*Q
shared_nameB@lenet_model_12/feature_extractor_14/batch_normalization_63/gamma
�
Tlenet_model_12/feature_extractor_14/batch_normalization_63/gamma/Read/ReadVariableOpReadVariableOp@lenet_model_12/feature_extractor_14/batch_normalization_63/gamma*
_output_shapes
:*
dtype0
�
2lenet_model_12/feature_extractor_14/conv2d_33/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*C
shared_name42lenet_model_12/feature_extractor_14/conv2d_33/bias
�
Flenet_model_12/feature_extractor_14/conv2d_33/bias/Read/ReadVariableOpReadVariableOp2lenet_model_12/feature_extractor_14/conv2d_33/bias*
_output_shapes
:*
dtype0
�
4lenet_model_12/feature_extractor_14/conv2d_33/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*E
shared_name64lenet_model_12/feature_extractor_14/conv2d_33/kernel
�
Hlenet_model_12/feature_extractor_14/conv2d_33/kernel/Read/ReadVariableOpReadVariableOp4lenet_model_12/feature_extractor_14/conv2d_33/kernel*&
_output_shapes
:*
dtype0
�
?lenet_model_12/feature_extractor_14/batch_normalization_62/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*P
shared_nameA?lenet_model_12/feature_extractor_14/batch_normalization_62/beta
�
Slenet_model_12/feature_extractor_14/batch_normalization_62/beta/Read/ReadVariableOpReadVariableOp?lenet_model_12/feature_extractor_14/batch_normalization_62/beta*
_output_shapes
:*
dtype0
�
@lenet_model_12/feature_extractor_14/batch_normalization_62/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*Q
shared_nameB@lenet_model_12/feature_extractor_14/batch_normalization_62/gamma
�
Tlenet_model_12/feature_extractor_14/batch_normalization_62/gamma/Read/ReadVariableOpReadVariableOp@lenet_model_12/feature_extractor_14/batch_normalization_62/gamma*
_output_shapes
:*
dtype0
�
2lenet_model_12/feature_extractor_14/conv2d_32/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*C
shared_name42lenet_model_12/feature_extractor_14/conv2d_32/bias
�
Flenet_model_12/feature_extractor_14/conv2d_32/bias/Read/ReadVariableOpReadVariableOp2lenet_model_12/feature_extractor_14/conv2d_32/bias*
_output_shapes
:*
dtype0
�
4lenet_model_12/feature_extractor_14/conv2d_32/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*E
shared_name64lenet_model_12/feature_extractor_14/conv2d_32/kernel
�
Hlenet_model_12/feature_extractor_14/conv2d_32/kernel/Read/ReadVariableOpReadVariableOp4lenet_model_12/feature_extractor_14/conv2d_32/kernel*&
_output_shapes
:*
dtype0
�
serving_default_input_1Placeholder*1
_output_shapes
:�����������*
dtype0*&
shape:�����������
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_14lenet_model_12/feature_extractor_14/conv2d_32/kernel2lenet_model_12/feature_extractor_14/conv2d_32/bias@lenet_model_12/feature_extractor_14/batch_normalization_62/gamma?lenet_model_12/feature_extractor_14/batch_normalization_62/betaFlenet_model_12/feature_extractor_14/batch_normalization_62/moving_meanJlenet_model_12/feature_extractor_14/batch_normalization_62/moving_variance4lenet_model_12/feature_extractor_14/conv2d_33/kernel2lenet_model_12/feature_extractor_14/conv2d_33/bias@lenet_model_12/feature_extractor_14/batch_normalization_63/gamma?lenet_model_12/feature_extractor_14/batch_normalization_63/betaFlenet_model_12/feature_extractor_14/batch_normalization_63/moving_meanJlenet_model_12/feature_extractor_14/batch_normalization_63/moving_variancelenet_model_12/dense_45/kernellenet_model_12/dense_45/bias5lenet_model_12/batch_normalization_64/moving_variance+lenet_model_12/batch_normalization_64/gamma1lenet_model_12/batch_normalization_64/moving_mean*lenet_model_12/batch_normalization_64/betalenet_model_12/dense_46/kernellenet_model_12/dense_46/bias5lenet_model_12/batch_normalization_65/moving_variance+lenet_model_12/batch_normalization_65/gamma1lenet_model_12/batch_normalization_65/moving_mean*lenet_model_12/batch_normalization_65/betalenet_model_12/dense_47/kernellenet_model_12/dense_47/bias*&
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*<
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *,
f'R%
#__inference_signature_wrapper_35791

NoOpNoOp
��
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*��
value��B�� B��
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
feature_extractor
	flatten

dense_1
batch_1
dense_2
batch_2
dense_3
	optimizer

signatures*
�
0
1
2
3
4
5
6
7
8
9
10
11
12
13
14
 15
!16
"17
#18
$19
%20
&21
'22
(23
)24
*25*
�
0
1
2
3
4
5
6
7
8
9
10
 11
#12
$13
%14
&15
)16
*17*
* 
�
+non_trainable_variables

,layers
-metrics
.layer_regularization_losses
/layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
0trace_0
1trace_1
2trace_2
3trace_3* 
6
4trace_0
5trace_1
6trace_2
7trace_3* 
* 
�
8	variables
9trainable_variables
:regularization_losses
;	keras_api
<__call__
*=&call_and_return_all_conditional_losses

>conv_1
?batch_1

@pool_1

Aconv_2
Bbatch_2

Cpool_2*
�
D	variables
Etrainable_variables
Fregularization_losses
G	keras_api
H__call__
*I&call_and_return_all_conditional_losses* 
�
J	variables
Ktrainable_variables
Lregularization_losses
M	keras_api
N__call__
*O&call_and_return_all_conditional_losses

kernel
bias*
�
P	variables
Qtrainable_variables
Rregularization_losses
S	keras_api
T__call__
*U&call_and_return_all_conditional_losses
Vaxis
	gamma
 beta
!moving_mean
"moving_variance*
�
W	variables
Xtrainable_variables
Yregularization_losses
Z	keras_api
[__call__
*\&call_and_return_all_conditional_losses

#kernel
$bias*
�
]	variables
^trainable_variables
_regularization_losses
`	keras_api
a__call__
*b&call_and_return_all_conditional_losses
caxis
	%gamma
&beta
'moving_mean
(moving_variance*
�
d	variables
etrainable_variables
fregularization_losses
g	keras_api
h__call__
*i&call_and_return_all_conditional_losses

)kernel
*bias*
�
j
_variables
k_iterations
l_learning_rate
m_index_dict
n
_momentums
o_velocities
p_update_step_xla*

qserving_default* 
tn
VARIABLE_VALUE4lenet_model_12/feature_extractor_14/conv2d_32/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
rl
VARIABLE_VALUE2lenet_model_12/feature_extractor_14/conv2d_32/bias&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
�z
VARIABLE_VALUE@lenet_model_12/feature_extractor_14/batch_normalization_62/gamma&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE?lenet_model_12/feature_extractor_14/batch_normalization_62/beta&variables/3/.ATTRIBUTES/VARIABLE_VALUE*
tn
VARIABLE_VALUE4lenet_model_12/feature_extractor_14/conv2d_33/kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE*
rl
VARIABLE_VALUE2lenet_model_12/feature_extractor_14/conv2d_33/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE*
�z
VARIABLE_VALUE@lenet_model_12/feature_extractor_14/batch_normalization_63/gamma&variables/6/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE?lenet_model_12/feature_extractor_14/batch_normalization_63/beta&variables/7/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUEFlenet_model_12/feature_extractor_14/batch_normalization_62/moving_mean&variables/8/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUEJlenet_model_12/feature_extractor_14/batch_normalization_62/moving_variance&variables/9/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUEFlenet_model_12/feature_extractor_14/batch_normalization_63/moving_mean'variables/10/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUEJlenet_model_12/feature_extractor_14/batch_normalization_63/moving_variance'variables/11/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUElenet_model_12/dense_45/kernel'variables/12/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUElenet_model_12/dense_45/bias'variables/13/.ATTRIBUTES/VARIABLE_VALUE*
lf
VARIABLE_VALUE+lenet_model_12/batch_normalization_64/gamma'variables/14/.ATTRIBUTES/VARIABLE_VALUE*
ke
VARIABLE_VALUE*lenet_model_12/batch_normalization_64/beta'variables/15/.ATTRIBUTES/VARIABLE_VALUE*
rl
VARIABLE_VALUE1lenet_model_12/batch_normalization_64/moving_mean'variables/16/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUE5lenet_model_12/batch_normalization_64/moving_variance'variables/17/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUElenet_model_12/dense_46/kernel'variables/18/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUElenet_model_12/dense_46/bias'variables/19/.ATTRIBUTES/VARIABLE_VALUE*
lf
VARIABLE_VALUE+lenet_model_12/batch_normalization_65/gamma'variables/20/.ATTRIBUTES/VARIABLE_VALUE*
ke
VARIABLE_VALUE*lenet_model_12/batch_normalization_65/beta'variables/21/.ATTRIBUTES/VARIABLE_VALUE*
rl
VARIABLE_VALUE1lenet_model_12/batch_normalization_65/moving_mean'variables/22/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUE5lenet_model_12/batch_normalization_65/moving_variance'variables/23/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUElenet_model_12/dense_47/kernel'variables/24/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUElenet_model_12/dense_47/bias'variables/25/.ATTRIBUTES/VARIABLE_VALUE*
<
0
1
2
3
!4
"5
'6
(7*
5
0
	1

2
3
4
5
6*

r0
s1*
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
Z
0
1
2
3
4
5
6
7
8
9
10
11*
<
0
1
2
3
4
5
6
7*
* 
�
tnon_trainable_variables

ulayers
vmetrics
wlayer_regularization_losses
xlayer_metrics
8	variables
9trainable_variables
:regularization_losses
<__call__
*=&call_and_return_all_conditional_losses
&="call_and_return_conditional_losses*

ytrace_0
ztrace_1* 

{trace_0
|trace_1* 
�
}	variables
~trainable_variables
regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

kernel
bias
!�_jit_compiled_convolution_op*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis
	gamma
beta
moving_mean
moving_variance*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

kernel
bias
!�_jit_compiled_convolution_op*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis
	gamma
beta
moving_mean
moving_variance*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
D	variables
Etrainable_variables
Fregularization_losses
H__call__
*I&call_and_return_all_conditional_losses
&I"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 

0
1*

0
1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
J	variables
Ktrainable_variables
Lregularization_losses
N__call__
*O&call_and_return_all_conditional_losses
&O"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
 
0
 1
!2
"3*

0
 1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
P	variables
Qtrainable_variables
Rregularization_losses
T__call__
*U&call_and_return_all_conditional_losses
&U"call_and_return_conditional_losses*

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 

#0
$1*

#0
$1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
W	variables
Xtrainable_variables
Yregularization_losses
[__call__
*\&call_and_return_all_conditional_losses
&\"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
 
%0
&1
'2
(3*

%0
&1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
]	variables
^trainable_variables
_regularization_losses
a__call__
*b&call_and_return_all_conditional_losses
&b"call_and_return_conditional_losses*

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 

)0
*1*

)0
*1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
d	variables
etrainable_variables
fregularization_losses
h__call__
*i&call_and_return_all_conditional_losses
&i"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
�
k0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10
�11
�12
�13
�14
�15
�16
�17
�18
�19
�20
�21
�22
�23
�24
�25
�26
�27
�28
�29
�30
�31
�32
�33
�34
�35
�36*
SM
VARIABLE_VALUE	iteration0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUElearning_rate3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
�
�0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10
�11
�12
�13
�14
�15
�16
�17*
�
�0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10
�11
�12
�13
�14
�15
�16
�17*
* 
* 
<
�	variables
�	keras_api

�total

�count*
M
�	variables
�	keras_api

�total

�count
�
_fn_kwargs*
 
0
1
2
3*
.
>0
?1
@2
A3
B4
C5*
* 
* 
* 
* 
* 
* 
* 

0
1*

0
1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
}	variables
~trainable_variables
regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*
* 
* 
* 
 
0
1
2
3*

0
1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 

0
1*

0
1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*
* 
* 
* 
 
0
1
2
3*

0
1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 
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

!0
"1*
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

'0
(1*
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
��
VARIABLE_VALUE;Adam/m/lenet_model_12/feature_extractor_14/conv2d_32/kernel1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE;Adam/v/lenet_model_12/feature_extractor_14/conv2d_32/kernel1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUE*
�~
VARIABLE_VALUE9Adam/m/lenet_model_12/feature_extractor_14/conv2d_32/bias1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUE*
�~
VARIABLE_VALUE9Adam/v/lenet_model_12/feature_extractor_14/conv2d_32/bias1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUEGAdam/m/lenet_model_12/feature_extractor_14/batch_normalization_62/gamma1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUEGAdam/v/lenet_model_12/feature_extractor_14/batch_normalization_62/gamma1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUEFAdam/m/lenet_model_12/feature_extractor_14/batch_normalization_62/beta1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUEFAdam/v/lenet_model_12/feature_extractor_14/batch_normalization_62/beta1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE;Adam/m/lenet_model_12/feature_extractor_14/conv2d_33/kernel1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE;Adam/v/lenet_model_12/feature_extractor_14/conv2d_33/kernel2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUE*
�
VARIABLE_VALUE9Adam/m/lenet_model_12/feature_extractor_14/conv2d_33/bias2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUE*
�
VARIABLE_VALUE9Adam/v/lenet_model_12/feature_extractor_14/conv2d_33/bias2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUEGAdam/m/lenet_model_12/feature_extractor_14/batch_normalization_63/gamma2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUEGAdam/v/lenet_model_12/feature_extractor_14/batch_normalization_63/gamma2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUEFAdam/m/lenet_model_12/feature_extractor_14/batch_normalization_63/beta2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUEFAdam/v/lenet_model_12/feature_extractor_14/batch_normalization_63/beta2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUE*
qk
VARIABLE_VALUE%Adam/m/lenet_model_12/dense_45/kernel2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUE*
qk
VARIABLE_VALUE%Adam/v/lenet_model_12/dense_45/kernel2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUE#Adam/m/lenet_model_12/dense_45/bias2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUE#Adam/v/lenet_model_12/dense_45/bias2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUE2Adam/m/lenet_model_12/batch_normalization_64/gamma2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUE2Adam/v/lenet_model_12/batch_normalization_64/gamma2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUE1Adam/m/lenet_model_12/batch_normalization_64/beta2optimizer/_variables/23/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUE1Adam/v/lenet_model_12/batch_normalization_64/beta2optimizer/_variables/24/.ATTRIBUTES/VARIABLE_VALUE*
qk
VARIABLE_VALUE%Adam/m/lenet_model_12/dense_46/kernel2optimizer/_variables/25/.ATTRIBUTES/VARIABLE_VALUE*
qk
VARIABLE_VALUE%Adam/v/lenet_model_12/dense_46/kernel2optimizer/_variables/26/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUE#Adam/m/lenet_model_12/dense_46/bias2optimizer/_variables/27/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUE#Adam/v/lenet_model_12/dense_46/bias2optimizer/_variables/28/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUE2Adam/m/lenet_model_12/batch_normalization_65/gamma2optimizer/_variables/29/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUE2Adam/v/lenet_model_12/batch_normalization_65/gamma2optimizer/_variables/30/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUE1Adam/m/lenet_model_12/batch_normalization_65/beta2optimizer/_variables/31/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUE1Adam/v/lenet_model_12/batch_normalization_65/beta2optimizer/_variables/32/.ATTRIBUTES/VARIABLE_VALUE*
qk
VARIABLE_VALUE%Adam/m/lenet_model_12/dense_47/kernel2optimizer/_variables/33/.ATTRIBUTES/VARIABLE_VALUE*
qk
VARIABLE_VALUE%Adam/v/lenet_model_12/dense_47/kernel2optimizer/_variables/34/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUE#Adam/m/lenet_model_12/dense_47/bias2optimizer/_variables/35/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUE#Adam/v/lenet_model_12/dense_47/bias2optimizer/_variables/36/.ATTRIBUTES/VARIABLE_VALUE*

�0
�1*

�	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

�0
�1*

�	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
* 
* 

0
1*
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

0
1*
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
�'
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenameHlenet_model_12/feature_extractor_14/conv2d_32/kernel/Read/ReadVariableOpFlenet_model_12/feature_extractor_14/conv2d_32/bias/Read/ReadVariableOpTlenet_model_12/feature_extractor_14/batch_normalization_62/gamma/Read/ReadVariableOpSlenet_model_12/feature_extractor_14/batch_normalization_62/beta/Read/ReadVariableOpHlenet_model_12/feature_extractor_14/conv2d_33/kernel/Read/ReadVariableOpFlenet_model_12/feature_extractor_14/conv2d_33/bias/Read/ReadVariableOpTlenet_model_12/feature_extractor_14/batch_normalization_63/gamma/Read/ReadVariableOpSlenet_model_12/feature_extractor_14/batch_normalization_63/beta/Read/ReadVariableOpZlenet_model_12/feature_extractor_14/batch_normalization_62/moving_mean/Read/ReadVariableOp^lenet_model_12/feature_extractor_14/batch_normalization_62/moving_variance/Read/ReadVariableOpZlenet_model_12/feature_extractor_14/batch_normalization_63/moving_mean/Read/ReadVariableOp^lenet_model_12/feature_extractor_14/batch_normalization_63/moving_variance/Read/ReadVariableOp2lenet_model_12/dense_45/kernel/Read/ReadVariableOp0lenet_model_12/dense_45/bias/Read/ReadVariableOp?lenet_model_12/batch_normalization_64/gamma/Read/ReadVariableOp>lenet_model_12/batch_normalization_64/beta/Read/ReadVariableOpElenet_model_12/batch_normalization_64/moving_mean/Read/ReadVariableOpIlenet_model_12/batch_normalization_64/moving_variance/Read/ReadVariableOp2lenet_model_12/dense_46/kernel/Read/ReadVariableOp0lenet_model_12/dense_46/bias/Read/ReadVariableOp?lenet_model_12/batch_normalization_65/gamma/Read/ReadVariableOp>lenet_model_12/batch_normalization_65/beta/Read/ReadVariableOpElenet_model_12/batch_normalization_65/moving_mean/Read/ReadVariableOpIlenet_model_12/batch_normalization_65/moving_variance/Read/ReadVariableOp2lenet_model_12/dense_47/kernel/Read/ReadVariableOp0lenet_model_12/dense_47/bias/Read/ReadVariableOpiteration/Read/ReadVariableOp!learning_rate/Read/ReadVariableOpOAdam/m/lenet_model_12/feature_extractor_14/conv2d_32/kernel/Read/ReadVariableOpOAdam/v/lenet_model_12/feature_extractor_14/conv2d_32/kernel/Read/ReadVariableOpMAdam/m/lenet_model_12/feature_extractor_14/conv2d_32/bias/Read/ReadVariableOpMAdam/v/lenet_model_12/feature_extractor_14/conv2d_32/bias/Read/ReadVariableOp[Adam/m/lenet_model_12/feature_extractor_14/batch_normalization_62/gamma/Read/ReadVariableOp[Adam/v/lenet_model_12/feature_extractor_14/batch_normalization_62/gamma/Read/ReadVariableOpZAdam/m/lenet_model_12/feature_extractor_14/batch_normalization_62/beta/Read/ReadVariableOpZAdam/v/lenet_model_12/feature_extractor_14/batch_normalization_62/beta/Read/ReadVariableOpOAdam/m/lenet_model_12/feature_extractor_14/conv2d_33/kernel/Read/ReadVariableOpOAdam/v/lenet_model_12/feature_extractor_14/conv2d_33/kernel/Read/ReadVariableOpMAdam/m/lenet_model_12/feature_extractor_14/conv2d_33/bias/Read/ReadVariableOpMAdam/v/lenet_model_12/feature_extractor_14/conv2d_33/bias/Read/ReadVariableOp[Adam/m/lenet_model_12/feature_extractor_14/batch_normalization_63/gamma/Read/ReadVariableOp[Adam/v/lenet_model_12/feature_extractor_14/batch_normalization_63/gamma/Read/ReadVariableOpZAdam/m/lenet_model_12/feature_extractor_14/batch_normalization_63/beta/Read/ReadVariableOpZAdam/v/lenet_model_12/feature_extractor_14/batch_normalization_63/beta/Read/ReadVariableOp9Adam/m/lenet_model_12/dense_45/kernel/Read/ReadVariableOp9Adam/v/lenet_model_12/dense_45/kernel/Read/ReadVariableOp7Adam/m/lenet_model_12/dense_45/bias/Read/ReadVariableOp7Adam/v/lenet_model_12/dense_45/bias/Read/ReadVariableOpFAdam/m/lenet_model_12/batch_normalization_64/gamma/Read/ReadVariableOpFAdam/v/lenet_model_12/batch_normalization_64/gamma/Read/ReadVariableOpEAdam/m/lenet_model_12/batch_normalization_64/beta/Read/ReadVariableOpEAdam/v/lenet_model_12/batch_normalization_64/beta/Read/ReadVariableOp9Adam/m/lenet_model_12/dense_46/kernel/Read/ReadVariableOp9Adam/v/lenet_model_12/dense_46/kernel/Read/ReadVariableOp7Adam/m/lenet_model_12/dense_46/bias/Read/ReadVariableOp7Adam/v/lenet_model_12/dense_46/bias/Read/ReadVariableOpFAdam/m/lenet_model_12/batch_normalization_65/gamma/Read/ReadVariableOpFAdam/v/lenet_model_12/batch_normalization_65/gamma/Read/ReadVariableOpEAdam/m/lenet_model_12/batch_normalization_65/beta/Read/ReadVariableOpEAdam/v/lenet_model_12/batch_normalization_65/beta/Read/ReadVariableOp9Adam/m/lenet_model_12/dense_47/kernel/Read/ReadVariableOp9Adam/v/lenet_model_12/dense_47/kernel/Read/ReadVariableOp7Adam/m/lenet_model_12/dense_47/bias/Read/ReadVariableOp7Adam/v/lenet_model_12/dense_47/bias/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOpConst*Q
TinJ
H2F	*
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
GPU 2J 8� *'
f"R 
__inference__traced_save_36895
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filename4lenet_model_12/feature_extractor_14/conv2d_32/kernel2lenet_model_12/feature_extractor_14/conv2d_32/bias@lenet_model_12/feature_extractor_14/batch_normalization_62/gamma?lenet_model_12/feature_extractor_14/batch_normalization_62/beta4lenet_model_12/feature_extractor_14/conv2d_33/kernel2lenet_model_12/feature_extractor_14/conv2d_33/bias@lenet_model_12/feature_extractor_14/batch_normalization_63/gamma?lenet_model_12/feature_extractor_14/batch_normalization_63/betaFlenet_model_12/feature_extractor_14/batch_normalization_62/moving_meanJlenet_model_12/feature_extractor_14/batch_normalization_62/moving_varianceFlenet_model_12/feature_extractor_14/batch_normalization_63/moving_meanJlenet_model_12/feature_extractor_14/batch_normalization_63/moving_variancelenet_model_12/dense_45/kernellenet_model_12/dense_45/bias+lenet_model_12/batch_normalization_64/gamma*lenet_model_12/batch_normalization_64/beta1lenet_model_12/batch_normalization_64/moving_mean5lenet_model_12/batch_normalization_64/moving_variancelenet_model_12/dense_46/kernellenet_model_12/dense_46/bias+lenet_model_12/batch_normalization_65/gamma*lenet_model_12/batch_normalization_65/beta1lenet_model_12/batch_normalization_65/moving_mean5lenet_model_12/batch_normalization_65/moving_variancelenet_model_12/dense_47/kernellenet_model_12/dense_47/bias	iterationlearning_rate;Adam/m/lenet_model_12/feature_extractor_14/conv2d_32/kernel;Adam/v/lenet_model_12/feature_extractor_14/conv2d_32/kernel9Adam/m/lenet_model_12/feature_extractor_14/conv2d_32/bias9Adam/v/lenet_model_12/feature_extractor_14/conv2d_32/biasGAdam/m/lenet_model_12/feature_extractor_14/batch_normalization_62/gammaGAdam/v/lenet_model_12/feature_extractor_14/batch_normalization_62/gammaFAdam/m/lenet_model_12/feature_extractor_14/batch_normalization_62/betaFAdam/v/lenet_model_12/feature_extractor_14/batch_normalization_62/beta;Adam/m/lenet_model_12/feature_extractor_14/conv2d_33/kernel;Adam/v/lenet_model_12/feature_extractor_14/conv2d_33/kernel9Adam/m/lenet_model_12/feature_extractor_14/conv2d_33/bias9Adam/v/lenet_model_12/feature_extractor_14/conv2d_33/biasGAdam/m/lenet_model_12/feature_extractor_14/batch_normalization_63/gammaGAdam/v/lenet_model_12/feature_extractor_14/batch_normalization_63/gammaFAdam/m/lenet_model_12/feature_extractor_14/batch_normalization_63/betaFAdam/v/lenet_model_12/feature_extractor_14/batch_normalization_63/beta%Adam/m/lenet_model_12/dense_45/kernel%Adam/v/lenet_model_12/dense_45/kernel#Adam/m/lenet_model_12/dense_45/bias#Adam/v/lenet_model_12/dense_45/bias2Adam/m/lenet_model_12/batch_normalization_64/gamma2Adam/v/lenet_model_12/batch_normalization_64/gamma1Adam/m/lenet_model_12/batch_normalization_64/beta1Adam/v/lenet_model_12/batch_normalization_64/beta%Adam/m/lenet_model_12/dense_46/kernel%Adam/v/lenet_model_12/dense_46/kernel#Adam/m/lenet_model_12/dense_46/bias#Adam/v/lenet_model_12/dense_46/bias2Adam/m/lenet_model_12/batch_normalization_65/gamma2Adam/v/lenet_model_12/batch_normalization_65/gamma1Adam/m/lenet_model_12/batch_normalization_65/beta1Adam/v/lenet_model_12/batch_normalization_65/beta%Adam/m/lenet_model_12/dense_47/kernel%Adam/v/lenet_model_12/dense_47/kernel#Adam/m/lenet_model_12/dense_47/bias#Adam/v/lenet_model_12/dense_47/biastotal_1count_1totalcount*P
TinI
G2E*
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
GPU 2J 8� **
f%R#
!__inference__traced_restore_37109��
�
g
K__inference_max_pooling2d_33_layer_call_and_return_conditional_losses_34846

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�

�
C__inference_dense_47_layer_call_and_return_conditional_losses_36524

inputs0
matmul_readvariableop_resource:
-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:
*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������V
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:���������Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������
: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������

 
_user_specified_nameinputs
�

�
C__inference_dense_47_layer_call_and_return_conditional_losses_35165

inputs0
matmul_readvariableop_resource:
-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:
*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������V
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:���������Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������
: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������

 
_user_specified_nameinputs
�
�
Q__inference_batch_normalization_64_layer_call_and_return_conditional_losses_34873

inputs/
!batchnorm_readvariableop_resource:d3
%batchnorm_mul_readvariableop_resource:d1
#batchnorm_readvariableop_1_resource:d1
#batchnorm_readvariableop_2_resource:d
identity��batchnorm/ReadVariableOp�batchnorm/ReadVariableOp_1�batchnorm/ReadVariableOp_2�batchnorm/mul/ReadVariableOpv
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:d*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:w
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:dP
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:d~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:d*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:dc
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:���������dz
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:d*
dtype0r
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:dz
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:d*
dtype0r
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:dr
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:���������db
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:���������d�
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������d: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:���������d
 
_user_specified_nameinputs
�.
�
I__inference_lenet_model_12_layer_call_and_return_conditional_losses_35667
input_14
feature_extractor_14_35607:(
feature_extractor_14_35609:(
feature_extractor_14_35611:(
feature_extractor_14_35613:(
feature_extractor_14_35615:(
feature_extractor_14_35617:4
feature_extractor_14_35619:(
feature_extractor_14_35621:(
feature_extractor_14_35623:(
feature_extractor_14_35625:(
feature_extractor_14_35627:(
feature_extractor_14_35629:"
dense_45_35633:
��d
dense_45_35635:d*
batch_normalization_64_35638:d*
batch_normalization_64_35640:d*
batch_normalization_64_35642:d*
batch_normalization_64_35644:d 
dense_46_35647:d

dense_46_35649:
*
batch_normalization_65_35652:
*
batch_normalization_65_35654:
*
batch_normalization_65_35656:
*
batch_normalization_65_35658:
 
dense_47_35661:

dense_47_35663:
identity��.batch_normalization_64/StatefulPartitionedCall�.batch_normalization_65/StatefulPartitionedCall� dense_45/StatefulPartitionedCall� dense_46/StatefulPartitionedCall� dense_47/StatefulPartitionedCall�,feature_extractor_14/StatefulPartitionedCall�
,feature_extractor_14/StatefulPartitionedCallStatefulPartitionedCallinput_1feature_extractor_14_35607feature_extractor_14_35609feature_extractor_14_35611feature_extractor_14_35613feature_extractor_14_35615feature_extractor_14_35617feature_extractor_14_35619feature_extractor_14_35621feature_extractor_14_35623feature_extractor_14_35625feature_extractor_14_35627feature_extractor_14_35629*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������66*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *X
fSRQ
O__inference_feature_extractor_14_layer_call_and_return_conditional_losses_35068�
flatten_15/PartitionedCallPartitionedCall5feature_extractor_14/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:�����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_flatten_15_layer_call_and_return_conditional_losses_35100�
 dense_45/StatefulPartitionedCallStatefulPartitionedCall#flatten_15/PartitionedCall:output:0dense_45_35633dense_45_35635*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������d*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_dense_45_layer_call_and_return_conditional_losses_35113�
.batch_normalization_64/StatefulPartitionedCallStatefulPartitionedCall)dense_45/StatefulPartitionedCall:output:0batch_normalization_64_35638batch_normalization_64_35640batch_normalization_64_35642batch_normalization_64_35644*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������d*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_64_layer_call_and_return_conditional_losses_34873�
 dense_46/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_64/StatefulPartitionedCall:output:0dense_46_35647dense_46_35649*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_dense_46_layer_call_and_return_conditional_losses_35139�
.batch_normalization_65/StatefulPartitionedCallStatefulPartitionedCall)dense_46/StatefulPartitionedCall:output:0batch_normalization_65_35652batch_normalization_65_35654batch_normalization_65_35656batch_normalization_65_35658*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_65_layer_call_and_return_conditional_losses_34955�
 dense_47/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_65/StatefulPartitionedCall:output:0dense_47_35661dense_47_35663*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_dense_47_layer_call_and_return_conditional_losses_35165x
IdentityIdentity)dense_47/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp/^batch_normalization_64/StatefulPartitionedCall/^batch_normalization_65/StatefulPartitionedCall!^dense_45/StatefulPartitionedCall!^dense_46/StatefulPartitionedCall!^dense_47/StatefulPartitionedCall-^feature_extractor_14/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*d
_input_shapesS
Q:�����������: : : : : : : : : : : : : : : : : : : : : : : : : : 2`
.batch_normalization_64/StatefulPartitionedCall.batch_normalization_64/StatefulPartitionedCall2`
.batch_normalization_65/StatefulPartitionedCall.batch_normalization_65/StatefulPartitionedCall2D
 dense_45/StatefulPartitionedCall dense_45/StatefulPartitionedCall2D
 dense_46/StatefulPartitionedCall dense_46/StatefulPartitionedCall2D
 dense_47/StatefulPartitionedCall dense_47/StatefulPartitionedCall2\
,feature_extractor_14/StatefulPartitionedCall,feature_extractor_14/StatefulPartitionedCall:Z V
1
_output_shapes
:�����������
!
_user_specified_name	input_1
�.
�
I__inference_lenet_model_12_layer_call_and_return_conditional_losses_35172
x4
feature_extractor_14_35069:(
feature_extractor_14_35071:(
feature_extractor_14_35073:(
feature_extractor_14_35075:(
feature_extractor_14_35077:(
feature_extractor_14_35079:4
feature_extractor_14_35081:(
feature_extractor_14_35083:(
feature_extractor_14_35085:(
feature_extractor_14_35087:(
feature_extractor_14_35089:(
feature_extractor_14_35091:"
dense_45_35114:
��d
dense_45_35116:d*
batch_normalization_64_35119:d*
batch_normalization_64_35121:d*
batch_normalization_64_35123:d*
batch_normalization_64_35125:d 
dense_46_35140:d

dense_46_35142:
*
batch_normalization_65_35145:
*
batch_normalization_65_35147:
*
batch_normalization_65_35149:
*
batch_normalization_65_35151:
 
dense_47_35166:

dense_47_35168:
identity��.batch_normalization_64/StatefulPartitionedCall�.batch_normalization_65/StatefulPartitionedCall� dense_45/StatefulPartitionedCall� dense_46/StatefulPartitionedCall� dense_47/StatefulPartitionedCall�,feature_extractor_14/StatefulPartitionedCall�
,feature_extractor_14/StatefulPartitionedCallStatefulPartitionedCallxfeature_extractor_14_35069feature_extractor_14_35071feature_extractor_14_35073feature_extractor_14_35075feature_extractor_14_35077feature_extractor_14_35079feature_extractor_14_35081feature_extractor_14_35083feature_extractor_14_35085feature_extractor_14_35087feature_extractor_14_35089feature_extractor_14_35091*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������66*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *X
fSRQ
O__inference_feature_extractor_14_layer_call_and_return_conditional_losses_35068�
flatten_15/PartitionedCallPartitionedCall5feature_extractor_14/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:�����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_flatten_15_layer_call_and_return_conditional_losses_35100�
 dense_45/StatefulPartitionedCallStatefulPartitionedCall#flatten_15/PartitionedCall:output:0dense_45_35114dense_45_35116*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������d*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_dense_45_layer_call_and_return_conditional_losses_35113�
.batch_normalization_64/StatefulPartitionedCallStatefulPartitionedCall)dense_45/StatefulPartitionedCall:output:0batch_normalization_64_35119batch_normalization_64_35121batch_normalization_64_35123batch_normalization_64_35125*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������d*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_64_layer_call_and_return_conditional_losses_34873�
 dense_46/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_64/StatefulPartitionedCall:output:0dense_46_35140dense_46_35142*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_dense_46_layer_call_and_return_conditional_losses_35139�
.batch_normalization_65/StatefulPartitionedCallStatefulPartitionedCall)dense_46/StatefulPartitionedCall:output:0batch_normalization_65_35145batch_normalization_65_35147batch_normalization_65_35149batch_normalization_65_35151*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_65_layer_call_and_return_conditional_losses_34955�
 dense_47/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_65/StatefulPartitionedCall:output:0dense_47_35166dense_47_35168*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_dense_47_layer_call_and_return_conditional_losses_35165x
IdentityIdentity)dense_47/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp/^batch_normalization_64/StatefulPartitionedCall/^batch_normalization_65/StatefulPartitionedCall!^dense_45/StatefulPartitionedCall!^dense_46/StatefulPartitionedCall!^dense_47/StatefulPartitionedCall-^feature_extractor_14/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*d
_input_shapesS
Q:�����������: : : : : : : : : : : : : : : : : : : : : : : : : : 2`
.batch_normalization_64/StatefulPartitionedCall.batch_normalization_64/StatefulPartitionedCall2`
.batch_normalization_65/StatefulPartitionedCall.batch_normalization_65/StatefulPartitionedCall2D
 dense_45/StatefulPartitionedCall dense_45/StatefulPartitionedCall2D
 dense_46/StatefulPartitionedCall dense_46/StatefulPartitionedCall2D
 dense_47/StatefulPartitionedCall dense_47/StatefulPartitionedCall2\
,feature_extractor_14/StatefulPartitionedCall,feature_extractor_14/StatefulPartitionedCall:T P
1
_output_shapes
:�����������

_user_specified_namex
�
�
Q__inference_batch_normalization_62_layer_call_and_return_conditional_losses_34750

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������:::::*
epsilon%o�:*
exponential_avg_factor%
�#<�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+����������������������������
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
��
�
I__inference_lenet_model_12_layer_call_and_return_conditional_losses_36139
xW
=feature_extractor_14_conv2d_32_conv2d_readvariableop_resource:L
>feature_extractor_14_conv2d_32_biasadd_readvariableop_resource:Q
Cfeature_extractor_14_batch_normalization_62_readvariableop_resource:S
Efeature_extractor_14_batch_normalization_62_readvariableop_1_resource:b
Tfeature_extractor_14_batch_normalization_62_fusedbatchnormv3_readvariableop_resource:d
Vfeature_extractor_14_batch_normalization_62_fusedbatchnormv3_readvariableop_1_resource:W
=feature_extractor_14_conv2d_33_conv2d_readvariableop_resource:L
>feature_extractor_14_conv2d_33_biasadd_readvariableop_resource:Q
Cfeature_extractor_14_batch_normalization_63_readvariableop_resource:S
Efeature_extractor_14_batch_normalization_63_readvariableop_1_resource:b
Tfeature_extractor_14_batch_normalization_63_fusedbatchnormv3_readvariableop_resource:d
Vfeature_extractor_14_batch_normalization_63_fusedbatchnormv3_readvariableop_1_resource:;
'dense_45_matmul_readvariableop_resource:
��d6
(dense_45_biasadd_readvariableop_resource:dL
>batch_normalization_64_assignmovingavg_readvariableop_resource:dN
@batch_normalization_64_assignmovingavg_1_readvariableop_resource:dJ
<batch_normalization_64_batchnorm_mul_readvariableop_resource:dF
8batch_normalization_64_batchnorm_readvariableop_resource:d9
'dense_46_matmul_readvariableop_resource:d
6
(dense_46_biasadd_readvariableop_resource:
L
>batch_normalization_65_assignmovingavg_readvariableop_resource:
N
@batch_normalization_65_assignmovingavg_1_readvariableop_resource:
J
<batch_normalization_65_batchnorm_mul_readvariableop_resource:
F
8batch_normalization_65_batchnorm_readvariableop_resource:
9
'dense_47_matmul_readvariableop_resource:
6
(dense_47_biasadd_readvariableop_resource:
identity��&batch_normalization_64/AssignMovingAvg�5batch_normalization_64/AssignMovingAvg/ReadVariableOp�(batch_normalization_64/AssignMovingAvg_1�7batch_normalization_64/AssignMovingAvg_1/ReadVariableOp�/batch_normalization_64/batchnorm/ReadVariableOp�3batch_normalization_64/batchnorm/mul/ReadVariableOp�&batch_normalization_65/AssignMovingAvg�5batch_normalization_65/AssignMovingAvg/ReadVariableOp�(batch_normalization_65/AssignMovingAvg_1�7batch_normalization_65/AssignMovingAvg_1/ReadVariableOp�/batch_normalization_65/batchnorm/ReadVariableOp�3batch_normalization_65/batchnorm/mul/ReadVariableOp�dense_45/BiasAdd/ReadVariableOp�dense_45/MatMul/ReadVariableOp�dense_46/BiasAdd/ReadVariableOp�dense_46/MatMul/ReadVariableOp�dense_47/BiasAdd/ReadVariableOp�dense_47/MatMul/ReadVariableOp�:feature_extractor_14/batch_normalization_62/AssignNewValue�<feature_extractor_14/batch_normalization_62/AssignNewValue_1�Kfeature_extractor_14/batch_normalization_62/FusedBatchNormV3/ReadVariableOp�Mfeature_extractor_14/batch_normalization_62/FusedBatchNormV3/ReadVariableOp_1�:feature_extractor_14/batch_normalization_62/ReadVariableOp�<feature_extractor_14/batch_normalization_62/ReadVariableOp_1�:feature_extractor_14/batch_normalization_63/AssignNewValue�<feature_extractor_14/batch_normalization_63/AssignNewValue_1�Kfeature_extractor_14/batch_normalization_63/FusedBatchNormV3/ReadVariableOp�Mfeature_extractor_14/batch_normalization_63/FusedBatchNormV3/ReadVariableOp_1�:feature_extractor_14/batch_normalization_63/ReadVariableOp�<feature_extractor_14/batch_normalization_63/ReadVariableOp_1�5feature_extractor_14/conv2d_32/BiasAdd/ReadVariableOp�4feature_extractor_14/conv2d_32/Conv2D/ReadVariableOp�5feature_extractor_14/conv2d_33/BiasAdd/ReadVariableOp�4feature_extractor_14/conv2d_33/Conv2D/ReadVariableOp�
4feature_extractor_14/conv2d_32/Conv2D/ReadVariableOpReadVariableOp=feature_extractor_14_conv2d_32_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
%feature_extractor_14/conv2d_32/Conv2DConv2Dx<feature_extractor_14/conv2d_32/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingVALID*
strides
�
5feature_extractor_14/conv2d_32/BiasAdd/ReadVariableOpReadVariableOp>feature_extractor_14_conv2d_32_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
&feature_extractor_14/conv2d_32/BiasAddBiasAdd.feature_extractor_14/conv2d_32/Conv2D:output:0=feature_extractor_14/conv2d_32/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:������������
#feature_extractor_14/conv2d_32/ReluRelu/feature_extractor_14/conv2d_32/BiasAdd:output:0*
T0*1
_output_shapes
:������������
:feature_extractor_14/batch_normalization_62/ReadVariableOpReadVariableOpCfeature_extractor_14_batch_normalization_62_readvariableop_resource*
_output_shapes
:*
dtype0�
<feature_extractor_14/batch_normalization_62/ReadVariableOp_1ReadVariableOpEfeature_extractor_14_batch_normalization_62_readvariableop_1_resource*
_output_shapes
:*
dtype0�
Kfeature_extractor_14/batch_normalization_62/FusedBatchNormV3/ReadVariableOpReadVariableOpTfeature_extractor_14_batch_normalization_62_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
Mfeature_extractor_14/batch_normalization_62/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpVfeature_extractor_14_batch_normalization_62_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
<feature_extractor_14/batch_normalization_62/FusedBatchNormV3FusedBatchNormV31feature_extractor_14/conv2d_32/Relu:activations:0Bfeature_extractor_14/batch_normalization_62/ReadVariableOp:value:0Dfeature_extractor_14/batch_normalization_62/ReadVariableOp_1:value:0Sfeature_extractor_14/batch_normalization_62/FusedBatchNormV3/ReadVariableOp:value:0Ufeature_extractor_14/batch_normalization_62/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*M
_output_shapes;
9:�����������:::::*
epsilon%o�:*
exponential_avg_factor%
�#<�
:feature_extractor_14/batch_normalization_62/AssignNewValueAssignVariableOpTfeature_extractor_14_batch_normalization_62_fusedbatchnormv3_readvariableop_resourceIfeature_extractor_14/batch_normalization_62/FusedBatchNormV3:batch_mean:0L^feature_extractor_14/batch_normalization_62/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
<feature_extractor_14/batch_normalization_62/AssignNewValue_1AssignVariableOpVfeature_extractor_14_batch_normalization_62_fusedbatchnormv3_readvariableop_1_resourceMfeature_extractor_14/batch_normalization_62/FusedBatchNormV3:batch_variance:0N^feature_extractor_14/batch_normalization_62/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(�
-feature_extractor_14/max_pooling2d_32/MaxPoolMaxPool@feature_extractor_14/batch_normalization_62/FusedBatchNormV3:y:0*/
_output_shapes
:���������oo*
ksize
*
paddingVALID*
strides
�
4feature_extractor_14/conv2d_33/Conv2D/ReadVariableOpReadVariableOp=feature_extractor_14_conv2d_33_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
%feature_extractor_14/conv2d_33/Conv2DConv2D6feature_extractor_14/max_pooling2d_32/MaxPool:output:0<feature_extractor_14/conv2d_33/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������mm*
paddingVALID*
strides
�
5feature_extractor_14/conv2d_33/BiasAdd/ReadVariableOpReadVariableOp>feature_extractor_14_conv2d_33_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
&feature_extractor_14/conv2d_33/BiasAddBiasAdd.feature_extractor_14/conv2d_33/Conv2D:output:0=feature_extractor_14/conv2d_33/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������mm�
#feature_extractor_14/conv2d_33/ReluRelu/feature_extractor_14/conv2d_33/BiasAdd:output:0*
T0*/
_output_shapes
:���������mm�
:feature_extractor_14/batch_normalization_63/ReadVariableOpReadVariableOpCfeature_extractor_14_batch_normalization_63_readvariableop_resource*
_output_shapes
:*
dtype0�
<feature_extractor_14/batch_normalization_63/ReadVariableOp_1ReadVariableOpEfeature_extractor_14_batch_normalization_63_readvariableop_1_resource*
_output_shapes
:*
dtype0�
Kfeature_extractor_14/batch_normalization_63/FusedBatchNormV3/ReadVariableOpReadVariableOpTfeature_extractor_14_batch_normalization_63_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
Mfeature_extractor_14/batch_normalization_63/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpVfeature_extractor_14_batch_normalization_63_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
<feature_extractor_14/batch_normalization_63/FusedBatchNormV3FusedBatchNormV31feature_extractor_14/conv2d_33/Relu:activations:0Bfeature_extractor_14/batch_normalization_63/ReadVariableOp:value:0Dfeature_extractor_14/batch_normalization_63/ReadVariableOp_1:value:0Sfeature_extractor_14/batch_normalization_63/FusedBatchNormV3/ReadVariableOp:value:0Ufeature_extractor_14/batch_normalization_63/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������mm:::::*
epsilon%o�:*
exponential_avg_factor%
�#<�
:feature_extractor_14/batch_normalization_63/AssignNewValueAssignVariableOpTfeature_extractor_14_batch_normalization_63_fusedbatchnormv3_readvariableop_resourceIfeature_extractor_14/batch_normalization_63/FusedBatchNormV3:batch_mean:0L^feature_extractor_14/batch_normalization_63/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
<feature_extractor_14/batch_normalization_63/AssignNewValue_1AssignVariableOpVfeature_extractor_14_batch_normalization_63_fusedbatchnormv3_readvariableop_1_resourceMfeature_extractor_14/batch_normalization_63/FusedBatchNormV3:batch_variance:0N^feature_extractor_14/batch_normalization_63/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(�
-feature_extractor_14/max_pooling2d_33/MaxPoolMaxPool@feature_extractor_14/batch_normalization_63/FusedBatchNormV3:y:0*/
_output_shapes
:���������66*
ksize
*
paddingVALID*
strides
a
flatten_15/ConstConst*
_output_shapes
:*
dtype0*
valueB"����@�  �
flatten_15/ReshapeReshape6feature_extractor_14/max_pooling2d_33/MaxPool:output:0flatten_15/Const:output:0*
T0*)
_output_shapes
:������������
dense_45/MatMul/ReadVariableOpReadVariableOp'dense_45_matmul_readvariableop_resource* 
_output_shapes
:
��d*
dtype0�
dense_45/MatMulMatMulflatten_15/Reshape:output:0&dense_45/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������d�
dense_45/BiasAdd/ReadVariableOpReadVariableOp(dense_45_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype0�
dense_45/BiasAddBiasAdddense_45/MatMul:product:0'dense_45/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������db
dense_45/ReluReludense_45/BiasAdd:output:0*
T0*'
_output_shapes
:���������d
5batch_normalization_64/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
#batch_normalization_64/moments/meanMeandense_45/Relu:activations:0>batch_normalization_64/moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:d*
	keep_dims(�
+batch_normalization_64/moments/StopGradientStopGradient,batch_normalization_64/moments/mean:output:0*
T0*
_output_shapes

:d�
0batch_normalization_64/moments/SquaredDifferenceSquaredDifferencedense_45/Relu:activations:04batch_normalization_64/moments/StopGradient:output:0*
T0*'
_output_shapes
:���������d�
9batch_normalization_64/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
'batch_normalization_64/moments/varianceMean4batch_normalization_64/moments/SquaredDifference:z:0Bbatch_normalization_64/moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:d*
	keep_dims(�
&batch_normalization_64/moments/SqueezeSqueeze,batch_normalization_64/moments/mean:output:0*
T0*
_output_shapes
:d*
squeeze_dims
 �
(batch_normalization_64/moments/Squeeze_1Squeeze0batch_normalization_64/moments/variance:output:0*
T0*
_output_shapes
:d*
squeeze_dims
 q
,batch_normalization_64/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
5batch_normalization_64/AssignMovingAvg/ReadVariableOpReadVariableOp>batch_normalization_64_assignmovingavg_readvariableop_resource*
_output_shapes
:d*
dtype0�
*batch_normalization_64/AssignMovingAvg/subSub=batch_normalization_64/AssignMovingAvg/ReadVariableOp:value:0/batch_normalization_64/moments/Squeeze:output:0*
T0*
_output_shapes
:d�
*batch_normalization_64/AssignMovingAvg/mulMul.batch_normalization_64/AssignMovingAvg/sub:z:05batch_normalization_64/AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:d�
&batch_normalization_64/AssignMovingAvgAssignSubVariableOp>batch_normalization_64_assignmovingavg_readvariableop_resource.batch_normalization_64/AssignMovingAvg/mul:z:06^batch_normalization_64/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0s
.batch_normalization_64/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
7batch_normalization_64/AssignMovingAvg_1/ReadVariableOpReadVariableOp@batch_normalization_64_assignmovingavg_1_readvariableop_resource*
_output_shapes
:d*
dtype0�
,batch_normalization_64/AssignMovingAvg_1/subSub?batch_normalization_64/AssignMovingAvg_1/ReadVariableOp:value:01batch_normalization_64/moments/Squeeze_1:output:0*
T0*
_output_shapes
:d�
,batch_normalization_64/AssignMovingAvg_1/mulMul0batch_normalization_64/AssignMovingAvg_1/sub:z:07batch_normalization_64/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:d�
(batch_normalization_64/AssignMovingAvg_1AssignSubVariableOp@batch_normalization_64_assignmovingavg_1_readvariableop_resource0batch_normalization_64/AssignMovingAvg_1/mul:z:08^batch_normalization_64/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0k
&batch_normalization_64/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
$batch_normalization_64/batchnorm/addAddV21batch_normalization_64/moments/Squeeze_1:output:0/batch_normalization_64/batchnorm/add/y:output:0*
T0*
_output_shapes
:d~
&batch_normalization_64/batchnorm/RsqrtRsqrt(batch_normalization_64/batchnorm/add:z:0*
T0*
_output_shapes
:d�
3batch_normalization_64/batchnorm/mul/ReadVariableOpReadVariableOp<batch_normalization_64_batchnorm_mul_readvariableop_resource*
_output_shapes
:d*
dtype0�
$batch_normalization_64/batchnorm/mulMul*batch_normalization_64/batchnorm/Rsqrt:y:0;batch_normalization_64/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:d�
&batch_normalization_64/batchnorm/mul_1Muldense_45/Relu:activations:0(batch_normalization_64/batchnorm/mul:z:0*
T0*'
_output_shapes
:���������d�
&batch_normalization_64/batchnorm/mul_2Mul/batch_normalization_64/moments/Squeeze:output:0(batch_normalization_64/batchnorm/mul:z:0*
T0*
_output_shapes
:d�
/batch_normalization_64/batchnorm/ReadVariableOpReadVariableOp8batch_normalization_64_batchnorm_readvariableop_resource*
_output_shapes
:d*
dtype0�
$batch_normalization_64/batchnorm/subSub7batch_normalization_64/batchnorm/ReadVariableOp:value:0*batch_normalization_64/batchnorm/mul_2:z:0*
T0*
_output_shapes
:d�
&batch_normalization_64/batchnorm/add_1AddV2*batch_normalization_64/batchnorm/mul_1:z:0(batch_normalization_64/batchnorm/sub:z:0*
T0*'
_output_shapes
:���������d�
dense_46/MatMul/ReadVariableOpReadVariableOp'dense_46_matmul_readvariableop_resource*
_output_shapes

:d
*
dtype0�
dense_46/MatMulMatMul*batch_normalization_64/batchnorm/add_1:z:0&dense_46/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
�
dense_46/BiasAdd/ReadVariableOpReadVariableOp(dense_46_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype0�
dense_46/BiasAddBiasAdddense_46/MatMul:product:0'dense_46/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
b
dense_46/ReluReludense_46/BiasAdd:output:0*
T0*'
_output_shapes
:���������

5batch_normalization_65/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
#batch_normalization_65/moments/meanMeandense_46/Relu:activations:0>batch_normalization_65/moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:
*
	keep_dims(�
+batch_normalization_65/moments/StopGradientStopGradient,batch_normalization_65/moments/mean:output:0*
T0*
_output_shapes

:
�
0batch_normalization_65/moments/SquaredDifferenceSquaredDifferencedense_46/Relu:activations:04batch_normalization_65/moments/StopGradient:output:0*
T0*'
_output_shapes
:���������
�
9batch_normalization_65/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
'batch_normalization_65/moments/varianceMean4batch_normalization_65/moments/SquaredDifference:z:0Bbatch_normalization_65/moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:
*
	keep_dims(�
&batch_normalization_65/moments/SqueezeSqueeze,batch_normalization_65/moments/mean:output:0*
T0*
_output_shapes
:
*
squeeze_dims
 �
(batch_normalization_65/moments/Squeeze_1Squeeze0batch_normalization_65/moments/variance:output:0*
T0*
_output_shapes
:
*
squeeze_dims
 q
,batch_normalization_65/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
5batch_normalization_65/AssignMovingAvg/ReadVariableOpReadVariableOp>batch_normalization_65_assignmovingavg_readvariableop_resource*
_output_shapes
:
*
dtype0�
*batch_normalization_65/AssignMovingAvg/subSub=batch_normalization_65/AssignMovingAvg/ReadVariableOp:value:0/batch_normalization_65/moments/Squeeze:output:0*
T0*
_output_shapes
:
�
*batch_normalization_65/AssignMovingAvg/mulMul.batch_normalization_65/AssignMovingAvg/sub:z:05batch_normalization_65/AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:
�
&batch_normalization_65/AssignMovingAvgAssignSubVariableOp>batch_normalization_65_assignmovingavg_readvariableop_resource.batch_normalization_65/AssignMovingAvg/mul:z:06^batch_normalization_65/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0s
.batch_normalization_65/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
7batch_normalization_65/AssignMovingAvg_1/ReadVariableOpReadVariableOp@batch_normalization_65_assignmovingavg_1_readvariableop_resource*
_output_shapes
:
*
dtype0�
,batch_normalization_65/AssignMovingAvg_1/subSub?batch_normalization_65/AssignMovingAvg_1/ReadVariableOp:value:01batch_normalization_65/moments/Squeeze_1:output:0*
T0*
_output_shapes
:
�
,batch_normalization_65/AssignMovingAvg_1/mulMul0batch_normalization_65/AssignMovingAvg_1/sub:z:07batch_normalization_65/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:
�
(batch_normalization_65/AssignMovingAvg_1AssignSubVariableOp@batch_normalization_65_assignmovingavg_1_readvariableop_resource0batch_normalization_65/AssignMovingAvg_1/mul:z:08^batch_normalization_65/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0k
&batch_normalization_65/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
$batch_normalization_65/batchnorm/addAddV21batch_normalization_65/moments/Squeeze_1:output:0/batch_normalization_65/batchnorm/add/y:output:0*
T0*
_output_shapes
:
~
&batch_normalization_65/batchnorm/RsqrtRsqrt(batch_normalization_65/batchnorm/add:z:0*
T0*
_output_shapes
:
�
3batch_normalization_65/batchnorm/mul/ReadVariableOpReadVariableOp<batch_normalization_65_batchnorm_mul_readvariableop_resource*
_output_shapes
:
*
dtype0�
$batch_normalization_65/batchnorm/mulMul*batch_normalization_65/batchnorm/Rsqrt:y:0;batch_normalization_65/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:
�
&batch_normalization_65/batchnorm/mul_1Muldense_46/Relu:activations:0(batch_normalization_65/batchnorm/mul:z:0*
T0*'
_output_shapes
:���������
�
&batch_normalization_65/batchnorm/mul_2Mul/batch_normalization_65/moments/Squeeze:output:0(batch_normalization_65/batchnorm/mul:z:0*
T0*
_output_shapes
:
�
/batch_normalization_65/batchnorm/ReadVariableOpReadVariableOp8batch_normalization_65_batchnorm_readvariableop_resource*
_output_shapes
:
*
dtype0�
$batch_normalization_65/batchnorm/subSub7batch_normalization_65/batchnorm/ReadVariableOp:value:0*batch_normalization_65/batchnorm/mul_2:z:0*
T0*
_output_shapes
:
�
&batch_normalization_65/batchnorm/add_1AddV2*batch_normalization_65/batchnorm/mul_1:z:0(batch_normalization_65/batchnorm/sub:z:0*
T0*'
_output_shapes
:���������
�
dense_47/MatMul/ReadVariableOpReadVariableOp'dense_47_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0�
dense_47/MatMulMatMul*batch_normalization_65/batchnorm/add_1:z:0&dense_47/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
dense_47/BiasAdd/ReadVariableOpReadVariableOp(dense_47_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
dense_47/BiasAddBiasAdddense_47/MatMul:product:0'dense_47/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������h
dense_47/SigmoidSigmoiddense_47/BiasAdd:output:0*
T0*'
_output_shapes
:���������c
IdentityIdentitydense_47/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp'^batch_normalization_64/AssignMovingAvg6^batch_normalization_64/AssignMovingAvg/ReadVariableOp)^batch_normalization_64/AssignMovingAvg_18^batch_normalization_64/AssignMovingAvg_1/ReadVariableOp0^batch_normalization_64/batchnorm/ReadVariableOp4^batch_normalization_64/batchnorm/mul/ReadVariableOp'^batch_normalization_65/AssignMovingAvg6^batch_normalization_65/AssignMovingAvg/ReadVariableOp)^batch_normalization_65/AssignMovingAvg_18^batch_normalization_65/AssignMovingAvg_1/ReadVariableOp0^batch_normalization_65/batchnorm/ReadVariableOp4^batch_normalization_65/batchnorm/mul/ReadVariableOp ^dense_45/BiasAdd/ReadVariableOp^dense_45/MatMul/ReadVariableOp ^dense_46/BiasAdd/ReadVariableOp^dense_46/MatMul/ReadVariableOp ^dense_47/BiasAdd/ReadVariableOp^dense_47/MatMul/ReadVariableOp;^feature_extractor_14/batch_normalization_62/AssignNewValue=^feature_extractor_14/batch_normalization_62/AssignNewValue_1L^feature_extractor_14/batch_normalization_62/FusedBatchNormV3/ReadVariableOpN^feature_extractor_14/batch_normalization_62/FusedBatchNormV3/ReadVariableOp_1;^feature_extractor_14/batch_normalization_62/ReadVariableOp=^feature_extractor_14/batch_normalization_62/ReadVariableOp_1;^feature_extractor_14/batch_normalization_63/AssignNewValue=^feature_extractor_14/batch_normalization_63/AssignNewValue_1L^feature_extractor_14/batch_normalization_63/FusedBatchNormV3/ReadVariableOpN^feature_extractor_14/batch_normalization_63/FusedBatchNormV3/ReadVariableOp_1;^feature_extractor_14/batch_normalization_63/ReadVariableOp=^feature_extractor_14/batch_normalization_63/ReadVariableOp_16^feature_extractor_14/conv2d_32/BiasAdd/ReadVariableOp5^feature_extractor_14/conv2d_32/Conv2D/ReadVariableOp6^feature_extractor_14/conv2d_33/BiasAdd/ReadVariableOp5^feature_extractor_14/conv2d_33/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*d
_input_shapesS
Q:�����������: : : : : : : : : : : : : : : : : : : : : : : : : : 2P
&batch_normalization_64/AssignMovingAvg&batch_normalization_64/AssignMovingAvg2n
5batch_normalization_64/AssignMovingAvg/ReadVariableOp5batch_normalization_64/AssignMovingAvg/ReadVariableOp2T
(batch_normalization_64/AssignMovingAvg_1(batch_normalization_64/AssignMovingAvg_12r
7batch_normalization_64/AssignMovingAvg_1/ReadVariableOp7batch_normalization_64/AssignMovingAvg_1/ReadVariableOp2b
/batch_normalization_64/batchnorm/ReadVariableOp/batch_normalization_64/batchnorm/ReadVariableOp2j
3batch_normalization_64/batchnorm/mul/ReadVariableOp3batch_normalization_64/batchnorm/mul/ReadVariableOp2P
&batch_normalization_65/AssignMovingAvg&batch_normalization_65/AssignMovingAvg2n
5batch_normalization_65/AssignMovingAvg/ReadVariableOp5batch_normalization_65/AssignMovingAvg/ReadVariableOp2T
(batch_normalization_65/AssignMovingAvg_1(batch_normalization_65/AssignMovingAvg_12r
7batch_normalization_65/AssignMovingAvg_1/ReadVariableOp7batch_normalization_65/AssignMovingAvg_1/ReadVariableOp2b
/batch_normalization_65/batchnorm/ReadVariableOp/batch_normalization_65/batchnorm/ReadVariableOp2j
3batch_normalization_65/batchnorm/mul/ReadVariableOp3batch_normalization_65/batchnorm/mul/ReadVariableOp2B
dense_45/BiasAdd/ReadVariableOpdense_45/BiasAdd/ReadVariableOp2@
dense_45/MatMul/ReadVariableOpdense_45/MatMul/ReadVariableOp2B
dense_46/BiasAdd/ReadVariableOpdense_46/BiasAdd/ReadVariableOp2@
dense_46/MatMul/ReadVariableOpdense_46/MatMul/ReadVariableOp2B
dense_47/BiasAdd/ReadVariableOpdense_47/BiasAdd/ReadVariableOp2@
dense_47/MatMul/ReadVariableOpdense_47/MatMul/ReadVariableOp2x
:feature_extractor_14/batch_normalization_62/AssignNewValue:feature_extractor_14/batch_normalization_62/AssignNewValue2|
<feature_extractor_14/batch_normalization_62/AssignNewValue_1<feature_extractor_14/batch_normalization_62/AssignNewValue_12�
Kfeature_extractor_14/batch_normalization_62/FusedBatchNormV3/ReadVariableOpKfeature_extractor_14/batch_normalization_62/FusedBatchNormV3/ReadVariableOp2�
Mfeature_extractor_14/batch_normalization_62/FusedBatchNormV3/ReadVariableOp_1Mfeature_extractor_14/batch_normalization_62/FusedBatchNormV3/ReadVariableOp_12x
:feature_extractor_14/batch_normalization_62/ReadVariableOp:feature_extractor_14/batch_normalization_62/ReadVariableOp2|
<feature_extractor_14/batch_normalization_62/ReadVariableOp_1<feature_extractor_14/batch_normalization_62/ReadVariableOp_12x
:feature_extractor_14/batch_normalization_63/AssignNewValue:feature_extractor_14/batch_normalization_63/AssignNewValue2|
<feature_extractor_14/batch_normalization_63/AssignNewValue_1<feature_extractor_14/batch_normalization_63/AssignNewValue_12�
Kfeature_extractor_14/batch_normalization_63/FusedBatchNormV3/ReadVariableOpKfeature_extractor_14/batch_normalization_63/FusedBatchNormV3/ReadVariableOp2�
Mfeature_extractor_14/batch_normalization_63/FusedBatchNormV3/ReadVariableOp_1Mfeature_extractor_14/batch_normalization_63/FusedBatchNormV3/ReadVariableOp_12x
:feature_extractor_14/batch_normalization_63/ReadVariableOp:feature_extractor_14/batch_normalization_63/ReadVariableOp2|
<feature_extractor_14/batch_normalization_63/ReadVariableOp_1<feature_extractor_14/batch_normalization_63/ReadVariableOp_12n
5feature_extractor_14/conv2d_32/BiasAdd/ReadVariableOp5feature_extractor_14/conv2d_32/BiasAdd/ReadVariableOp2l
4feature_extractor_14/conv2d_32/Conv2D/ReadVariableOp4feature_extractor_14/conv2d_32/Conv2D/ReadVariableOp2n
5feature_extractor_14/conv2d_33/BiasAdd/ReadVariableOp5feature_extractor_14/conv2d_33/BiasAdd/ReadVariableOp2l
4feature_extractor_14/conv2d_33/Conv2D/ReadVariableOp4feature_extractor_14/conv2d_33/Conv2D/ReadVariableOp:T P
1
_output_shapes
:�����������

_user_specified_namex
�
�
Q__inference_batch_normalization_63_layer_call_and_return_conditional_losses_34826

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������:::::*
epsilon%o�:*
exponential_avg_factor%
�#<�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+����������������������������
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
�
�
(__inference_dense_45_layer_call_fn_36313

inputs
unknown:
��d
	unknown_0:d
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������d*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_dense_45_layer_call_and_return_conditional_losses_35113o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������d`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:�����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
)
_output_shapes
:�����������
 
_user_specified_nameinputs
�
L
0__inference_max_pooling2d_32_layer_call_fn_36591

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4������������������������������������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_max_pooling2d_32_layer_call_and_return_conditional_losses_34770�
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�

�
C__inference_dense_45_layer_call_and_return_conditional_losses_35113

inputs2
matmul_readvariableop_resource:
��d-
biasadd_readvariableop_resource:d
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��d*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������dr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:d*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������dP
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:���������da
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:���������dw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:�����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:Q M
)
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
Q__inference_batch_normalization_62_layer_call_and_return_conditional_losses_36586

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������:::::*
epsilon%o�:*
exponential_avg_factor%
�#<�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+����������������������������
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
�
�
Q__inference_batch_normalization_64_layer_call_and_return_conditional_losses_36370

inputs/
!batchnorm_readvariableop_resource:d3
%batchnorm_mul_readvariableop_resource:d1
#batchnorm_readvariableop_1_resource:d1
#batchnorm_readvariableop_2_resource:d
identity��batchnorm/ReadVariableOp�batchnorm/ReadVariableOp_1�batchnorm/ReadVariableOp_2�batchnorm/mul/ReadVariableOpv
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:d*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:w
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:dP
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:d~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:d*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:dc
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:���������dz
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:d*
dtype0r
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:dz
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:d*
dtype0r
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:dr
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:���������db
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:���������d�
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������d: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:���������d
 
_user_specified_nameinputs
�.
�
I__inference_lenet_model_12_layer_call_and_return_conditional_losses_35730
input_14
feature_extractor_14_35670:(
feature_extractor_14_35672:(
feature_extractor_14_35674:(
feature_extractor_14_35676:(
feature_extractor_14_35678:(
feature_extractor_14_35680:4
feature_extractor_14_35682:(
feature_extractor_14_35684:(
feature_extractor_14_35686:(
feature_extractor_14_35688:(
feature_extractor_14_35690:(
feature_extractor_14_35692:"
dense_45_35696:
��d
dense_45_35698:d*
batch_normalization_64_35701:d*
batch_normalization_64_35703:d*
batch_normalization_64_35705:d*
batch_normalization_64_35707:d 
dense_46_35710:d

dense_46_35712:
*
batch_normalization_65_35715:
*
batch_normalization_65_35717:
*
batch_normalization_65_35719:
*
batch_normalization_65_35721:
 
dense_47_35724:

dense_47_35726:
identity��.batch_normalization_64/StatefulPartitionedCall�.batch_normalization_65/StatefulPartitionedCall� dense_45/StatefulPartitionedCall� dense_46/StatefulPartitionedCall� dense_47/StatefulPartitionedCall�,feature_extractor_14/StatefulPartitionedCall�
,feature_extractor_14/StatefulPartitionedCallStatefulPartitionedCallinput_1feature_extractor_14_35670feature_extractor_14_35672feature_extractor_14_35674feature_extractor_14_35676feature_extractor_14_35678feature_extractor_14_35680feature_extractor_14_35682feature_extractor_14_35684feature_extractor_14_35686feature_extractor_14_35688feature_extractor_14_35690feature_extractor_14_35692*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������66**
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8� *X
fSRQ
O__inference_feature_extractor_14_layer_call_and_return_conditional_losses_35343�
flatten_15/PartitionedCallPartitionedCall5feature_extractor_14/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:�����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_flatten_15_layer_call_and_return_conditional_losses_35100�
 dense_45/StatefulPartitionedCallStatefulPartitionedCall#flatten_15/PartitionedCall:output:0dense_45_35696dense_45_35698*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������d*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_dense_45_layer_call_and_return_conditional_losses_35113�
.batch_normalization_64/StatefulPartitionedCallStatefulPartitionedCall)dense_45/StatefulPartitionedCall:output:0batch_normalization_64_35701batch_normalization_64_35703batch_normalization_64_35705batch_normalization_64_35707*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������d*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_64_layer_call_and_return_conditional_losses_34920�
 dense_46/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_64/StatefulPartitionedCall:output:0dense_46_35710dense_46_35712*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_dense_46_layer_call_and_return_conditional_losses_35139�
.batch_normalization_65/StatefulPartitionedCallStatefulPartitionedCall)dense_46/StatefulPartitionedCall:output:0batch_normalization_65_35715batch_normalization_65_35717batch_normalization_65_35719batch_normalization_65_35721*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_65_layer_call_and_return_conditional_losses_35002�
 dense_47/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_65/StatefulPartitionedCall:output:0dense_47_35724dense_47_35726*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_dense_47_layer_call_and_return_conditional_losses_35165x
IdentityIdentity)dense_47/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp/^batch_normalization_64/StatefulPartitionedCall/^batch_normalization_65/StatefulPartitionedCall!^dense_45/StatefulPartitionedCall!^dense_46/StatefulPartitionedCall!^dense_47/StatefulPartitionedCall-^feature_extractor_14/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*d
_input_shapesS
Q:�����������: : : : : : : : : : : : : : : : : : : : : : : : : : 2`
.batch_normalization_64/StatefulPartitionedCall.batch_normalization_64/StatefulPartitionedCall2`
.batch_normalization_65/StatefulPartitionedCall.batch_normalization_65/StatefulPartitionedCall2D
 dense_45/StatefulPartitionedCall dense_45/StatefulPartitionedCall2D
 dense_46/StatefulPartitionedCall dense_46/StatefulPartitionedCall2D
 dense_47/StatefulPartitionedCall dense_47/StatefulPartitionedCall2\
,feature_extractor_14/StatefulPartitionedCall,feature_extractor_14/StatefulPartitionedCall:Z V
1
_output_shapes
:�����������
!
_user_specified_name	input_1
�
�
Q__inference_batch_normalization_63_layer_call_and_return_conditional_losses_34795

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������:::::*
epsilon%o�:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+����������������������������
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
�
�
4__inference_feature_extractor_14_layer_call_fn_36197
x!
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:#
	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:
	unknown_9:

unknown_10:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallxunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������66**
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8� *X
fSRQ
O__inference_feature_extractor_14_layer_call_and_return_conditional_losses_35343w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������66`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:�����������: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
1
_output_shapes
:�����������

_user_specified_namex
�	
�
6__inference_batch_normalization_62_layer_call_fn_36550

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_62_layer_call_and_return_conditional_losses_34750�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
�
�
Q__inference_batch_normalization_63_layer_call_and_return_conditional_losses_36658

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������:::::*
epsilon%o�:*
exponential_avg_factor%
�#<�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+����������������������������
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
�
�
(__inference_dense_47_layer_call_fn_36513

inputs
unknown:

	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_dense_47_layer_call_and_return_conditional_losses_35165o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������
: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������

 
_user_specified_nameinputs
�
g
K__inference_max_pooling2d_32_layer_call_and_return_conditional_losses_34770

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�	
�
6__inference_batch_normalization_62_layer_call_fn_36537

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_62_layer_call_and_return_conditional_losses_34719�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
�
�
.__inference_lenet_model_12_layer_call_fn_35848
x!
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:#
	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:
	unknown_9:

unknown_10:

unknown_11:
��d

unknown_12:d

unknown_13:d

unknown_14:d

unknown_15:d

unknown_16:d

unknown_17:d


unknown_18:


unknown_19:


unknown_20:


unknown_21:


unknown_22:


unknown_23:


unknown_24:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallxunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
unknown_21
unknown_22
unknown_23
unknown_24*&
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*<
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_lenet_model_12_layer_call_and_return_conditional_losses_35172o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*d
_input_shapesS
Q:�����������: : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
1
_output_shapes
:�����������

_user_specified_namex
�;
�
O__inference_feature_extractor_14_layer_call_and_return_conditional_losses_35068
xB
(conv2d_32_conv2d_readvariableop_resource:7
)conv2d_32_biasadd_readvariableop_resource:<
.batch_normalization_62_readvariableop_resource:>
0batch_normalization_62_readvariableop_1_resource:M
?batch_normalization_62_fusedbatchnormv3_readvariableop_resource:O
Abatch_normalization_62_fusedbatchnormv3_readvariableop_1_resource:B
(conv2d_33_conv2d_readvariableop_resource:7
)conv2d_33_biasadd_readvariableop_resource:<
.batch_normalization_63_readvariableop_resource:>
0batch_normalization_63_readvariableop_1_resource:M
?batch_normalization_63_fusedbatchnormv3_readvariableop_resource:O
Abatch_normalization_63_fusedbatchnormv3_readvariableop_1_resource:
identity��6batch_normalization_62/FusedBatchNormV3/ReadVariableOp�8batch_normalization_62/FusedBatchNormV3/ReadVariableOp_1�%batch_normalization_62/ReadVariableOp�'batch_normalization_62/ReadVariableOp_1�6batch_normalization_63/FusedBatchNormV3/ReadVariableOp�8batch_normalization_63/FusedBatchNormV3/ReadVariableOp_1�%batch_normalization_63/ReadVariableOp�'batch_normalization_63/ReadVariableOp_1� conv2d_32/BiasAdd/ReadVariableOp�conv2d_32/Conv2D/ReadVariableOp� conv2d_33/BiasAdd/ReadVariableOp�conv2d_33/Conv2D/ReadVariableOp�
conv2d_32/Conv2D/ReadVariableOpReadVariableOp(conv2d_32_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
conv2d_32/Conv2DConv2Dx'conv2d_32/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingVALID*
strides
�
 conv2d_32/BiasAdd/ReadVariableOpReadVariableOp)conv2d_32_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
conv2d_32/BiasAddBiasAddconv2d_32/Conv2D:output:0(conv2d_32/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������n
conv2d_32/ReluReluconv2d_32/BiasAdd:output:0*
T0*1
_output_shapes
:������������
%batch_normalization_62/ReadVariableOpReadVariableOp.batch_normalization_62_readvariableop_resource*
_output_shapes
:*
dtype0�
'batch_normalization_62/ReadVariableOp_1ReadVariableOp0batch_normalization_62_readvariableop_1_resource*
_output_shapes
:*
dtype0�
6batch_normalization_62/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_62_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
8batch_normalization_62/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_62_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
'batch_normalization_62/FusedBatchNormV3FusedBatchNormV3conv2d_32/Relu:activations:0-batch_normalization_62/ReadVariableOp:value:0/batch_normalization_62/ReadVariableOp_1:value:0>batch_normalization_62/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_62/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*M
_output_shapes;
9:�����������:::::*
epsilon%o�:*
is_training( �
max_pooling2d_32/MaxPoolMaxPool+batch_normalization_62/FusedBatchNormV3:y:0*/
_output_shapes
:���������oo*
ksize
*
paddingVALID*
strides
�
conv2d_33/Conv2D/ReadVariableOpReadVariableOp(conv2d_33_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
conv2d_33/Conv2DConv2D!max_pooling2d_32/MaxPool:output:0'conv2d_33/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������mm*
paddingVALID*
strides
�
 conv2d_33/BiasAdd/ReadVariableOpReadVariableOp)conv2d_33_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
conv2d_33/BiasAddBiasAddconv2d_33/Conv2D:output:0(conv2d_33/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������mml
conv2d_33/ReluReluconv2d_33/BiasAdd:output:0*
T0*/
_output_shapes
:���������mm�
%batch_normalization_63/ReadVariableOpReadVariableOp.batch_normalization_63_readvariableop_resource*
_output_shapes
:*
dtype0�
'batch_normalization_63/ReadVariableOp_1ReadVariableOp0batch_normalization_63_readvariableop_1_resource*
_output_shapes
:*
dtype0�
6batch_normalization_63/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_63_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
8batch_normalization_63/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_63_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
'batch_normalization_63/FusedBatchNormV3FusedBatchNormV3conv2d_33/Relu:activations:0-batch_normalization_63/ReadVariableOp:value:0/batch_normalization_63/ReadVariableOp_1:value:0>batch_normalization_63/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_63/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������mm:::::*
epsilon%o�:*
is_training( �
max_pooling2d_33/MaxPoolMaxPool+batch_normalization_63/FusedBatchNormV3:y:0*/
_output_shapes
:���������66*
ksize
*
paddingVALID*
strides
x
IdentityIdentity!max_pooling2d_33/MaxPool:output:0^NoOp*
T0*/
_output_shapes
:���������66�
NoOpNoOp7^batch_normalization_62/FusedBatchNormV3/ReadVariableOp9^batch_normalization_62/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_62/ReadVariableOp(^batch_normalization_62/ReadVariableOp_17^batch_normalization_63/FusedBatchNormV3/ReadVariableOp9^batch_normalization_63/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_63/ReadVariableOp(^batch_normalization_63/ReadVariableOp_1!^conv2d_32/BiasAdd/ReadVariableOp ^conv2d_32/Conv2D/ReadVariableOp!^conv2d_33/BiasAdd/ReadVariableOp ^conv2d_33/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:�����������: : : : : : : : : : : : 2p
6batch_normalization_62/FusedBatchNormV3/ReadVariableOp6batch_normalization_62/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_62/FusedBatchNormV3/ReadVariableOp_18batch_normalization_62/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_62/ReadVariableOp%batch_normalization_62/ReadVariableOp2R
'batch_normalization_62/ReadVariableOp_1'batch_normalization_62/ReadVariableOp_12p
6batch_normalization_63/FusedBatchNormV3/ReadVariableOp6batch_normalization_63/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_63/FusedBatchNormV3/ReadVariableOp_18batch_normalization_63/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_63/ReadVariableOp%batch_normalization_63/ReadVariableOp2R
'batch_normalization_63/ReadVariableOp_1'batch_normalization_63/ReadVariableOp_12D
 conv2d_32/BiasAdd/ReadVariableOp conv2d_32/BiasAdd/ReadVariableOp2B
conv2d_32/Conv2D/ReadVariableOpconv2d_32/Conv2D/ReadVariableOp2D
 conv2d_33/BiasAdd/ReadVariableOp conv2d_33/BiasAdd/ReadVariableOp2B
conv2d_33/Conv2D/ReadVariableOpconv2d_33/Conv2D/ReadVariableOp:T P
1
_output_shapes
:�����������

_user_specified_namex
�I
�
O__inference_feature_extractor_14_layer_call_and_return_conditional_losses_35343
xB
(conv2d_32_conv2d_readvariableop_resource:7
)conv2d_32_biasadd_readvariableop_resource:<
.batch_normalization_62_readvariableop_resource:>
0batch_normalization_62_readvariableop_1_resource:M
?batch_normalization_62_fusedbatchnormv3_readvariableop_resource:O
Abatch_normalization_62_fusedbatchnormv3_readvariableop_1_resource:B
(conv2d_33_conv2d_readvariableop_resource:7
)conv2d_33_biasadd_readvariableop_resource:<
.batch_normalization_63_readvariableop_resource:>
0batch_normalization_63_readvariableop_1_resource:M
?batch_normalization_63_fusedbatchnormv3_readvariableop_resource:O
Abatch_normalization_63_fusedbatchnormv3_readvariableop_1_resource:
identity��%batch_normalization_62/AssignNewValue�'batch_normalization_62/AssignNewValue_1�6batch_normalization_62/FusedBatchNormV3/ReadVariableOp�8batch_normalization_62/FusedBatchNormV3/ReadVariableOp_1�%batch_normalization_62/ReadVariableOp�'batch_normalization_62/ReadVariableOp_1�%batch_normalization_63/AssignNewValue�'batch_normalization_63/AssignNewValue_1�6batch_normalization_63/FusedBatchNormV3/ReadVariableOp�8batch_normalization_63/FusedBatchNormV3/ReadVariableOp_1�%batch_normalization_63/ReadVariableOp�'batch_normalization_63/ReadVariableOp_1� conv2d_32/BiasAdd/ReadVariableOp�conv2d_32/Conv2D/ReadVariableOp� conv2d_33/BiasAdd/ReadVariableOp�conv2d_33/Conv2D/ReadVariableOp�
conv2d_32/Conv2D/ReadVariableOpReadVariableOp(conv2d_32_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
conv2d_32/Conv2DConv2Dx'conv2d_32/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingVALID*
strides
�
 conv2d_32/BiasAdd/ReadVariableOpReadVariableOp)conv2d_32_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
conv2d_32/BiasAddBiasAddconv2d_32/Conv2D:output:0(conv2d_32/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������n
conv2d_32/ReluReluconv2d_32/BiasAdd:output:0*
T0*1
_output_shapes
:������������
%batch_normalization_62/ReadVariableOpReadVariableOp.batch_normalization_62_readvariableop_resource*
_output_shapes
:*
dtype0�
'batch_normalization_62/ReadVariableOp_1ReadVariableOp0batch_normalization_62_readvariableop_1_resource*
_output_shapes
:*
dtype0�
6batch_normalization_62/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_62_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
8batch_normalization_62/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_62_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
'batch_normalization_62/FusedBatchNormV3FusedBatchNormV3conv2d_32/Relu:activations:0-batch_normalization_62/ReadVariableOp:value:0/batch_normalization_62/ReadVariableOp_1:value:0>batch_normalization_62/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_62/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*M
_output_shapes;
9:�����������:::::*
epsilon%o�:*
exponential_avg_factor%
�#<�
%batch_normalization_62/AssignNewValueAssignVariableOp?batch_normalization_62_fusedbatchnormv3_readvariableop_resource4batch_normalization_62/FusedBatchNormV3:batch_mean:07^batch_normalization_62/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
'batch_normalization_62/AssignNewValue_1AssignVariableOpAbatch_normalization_62_fusedbatchnormv3_readvariableop_1_resource8batch_normalization_62/FusedBatchNormV3:batch_variance:09^batch_normalization_62/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(�
max_pooling2d_32/MaxPoolMaxPool+batch_normalization_62/FusedBatchNormV3:y:0*/
_output_shapes
:���������oo*
ksize
*
paddingVALID*
strides
�
conv2d_33/Conv2D/ReadVariableOpReadVariableOp(conv2d_33_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
conv2d_33/Conv2DConv2D!max_pooling2d_32/MaxPool:output:0'conv2d_33/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������mm*
paddingVALID*
strides
�
 conv2d_33/BiasAdd/ReadVariableOpReadVariableOp)conv2d_33_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
conv2d_33/BiasAddBiasAddconv2d_33/Conv2D:output:0(conv2d_33/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������mml
conv2d_33/ReluReluconv2d_33/BiasAdd:output:0*
T0*/
_output_shapes
:���������mm�
%batch_normalization_63/ReadVariableOpReadVariableOp.batch_normalization_63_readvariableop_resource*
_output_shapes
:*
dtype0�
'batch_normalization_63/ReadVariableOp_1ReadVariableOp0batch_normalization_63_readvariableop_1_resource*
_output_shapes
:*
dtype0�
6batch_normalization_63/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_63_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
8batch_normalization_63/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_63_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
'batch_normalization_63/FusedBatchNormV3FusedBatchNormV3conv2d_33/Relu:activations:0-batch_normalization_63/ReadVariableOp:value:0/batch_normalization_63/ReadVariableOp_1:value:0>batch_normalization_63/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_63/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������mm:::::*
epsilon%o�:*
exponential_avg_factor%
�#<�
%batch_normalization_63/AssignNewValueAssignVariableOp?batch_normalization_63_fusedbatchnormv3_readvariableop_resource4batch_normalization_63/FusedBatchNormV3:batch_mean:07^batch_normalization_63/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
'batch_normalization_63/AssignNewValue_1AssignVariableOpAbatch_normalization_63_fusedbatchnormv3_readvariableop_1_resource8batch_normalization_63/FusedBatchNormV3:batch_variance:09^batch_normalization_63/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(�
max_pooling2d_33/MaxPoolMaxPool+batch_normalization_63/FusedBatchNormV3:y:0*/
_output_shapes
:���������66*
ksize
*
paddingVALID*
strides
x
IdentityIdentity!max_pooling2d_33/MaxPool:output:0^NoOp*
T0*/
_output_shapes
:���������66�
NoOpNoOp&^batch_normalization_62/AssignNewValue(^batch_normalization_62/AssignNewValue_17^batch_normalization_62/FusedBatchNormV3/ReadVariableOp9^batch_normalization_62/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_62/ReadVariableOp(^batch_normalization_62/ReadVariableOp_1&^batch_normalization_63/AssignNewValue(^batch_normalization_63/AssignNewValue_17^batch_normalization_63/FusedBatchNormV3/ReadVariableOp9^batch_normalization_63/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_63/ReadVariableOp(^batch_normalization_63/ReadVariableOp_1!^conv2d_32/BiasAdd/ReadVariableOp ^conv2d_32/Conv2D/ReadVariableOp!^conv2d_33/BiasAdd/ReadVariableOp ^conv2d_33/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:�����������: : : : : : : : : : : : 2N
%batch_normalization_62/AssignNewValue%batch_normalization_62/AssignNewValue2R
'batch_normalization_62/AssignNewValue_1'batch_normalization_62/AssignNewValue_12p
6batch_normalization_62/FusedBatchNormV3/ReadVariableOp6batch_normalization_62/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_62/FusedBatchNormV3/ReadVariableOp_18batch_normalization_62/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_62/ReadVariableOp%batch_normalization_62/ReadVariableOp2R
'batch_normalization_62/ReadVariableOp_1'batch_normalization_62/ReadVariableOp_12N
%batch_normalization_63/AssignNewValue%batch_normalization_63/AssignNewValue2R
'batch_normalization_63/AssignNewValue_1'batch_normalization_63/AssignNewValue_12p
6batch_normalization_63/FusedBatchNormV3/ReadVariableOp6batch_normalization_63/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_63/FusedBatchNormV3/ReadVariableOp_18batch_normalization_63/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_63/ReadVariableOp%batch_normalization_63/ReadVariableOp2R
'batch_normalization_63/ReadVariableOp_1'batch_normalization_63/ReadVariableOp_12D
 conv2d_32/BiasAdd/ReadVariableOp conv2d_32/BiasAdd/ReadVariableOp2B
conv2d_32/Conv2D/ReadVariableOpconv2d_32/Conv2D/ReadVariableOp2D
 conv2d_33/BiasAdd/ReadVariableOp conv2d_33/BiasAdd/ReadVariableOp2B
conv2d_33/Conv2D/ReadVariableOpconv2d_33/Conv2D/ReadVariableOp:T P
1
_output_shapes
:�����������

_user_specified_namex
�
�
6__inference_batch_normalization_64_layer_call_fn_36350

inputs
unknown:d
	unknown_0:d
	unknown_1:d
	unknown_2:d
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������d*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_64_layer_call_and_return_conditional_losses_34920o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������d`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������d: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������d
 
_user_specified_nameinputs
�;
�
O__inference_feature_extractor_14_layer_call_and_return_conditional_losses_36245
xB
(conv2d_32_conv2d_readvariableop_resource:7
)conv2d_32_biasadd_readvariableop_resource:<
.batch_normalization_62_readvariableop_resource:>
0batch_normalization_62_readvariableop_1_resource:M
?batch_normalization_62_fusedbatchnormv3_readvariableop_resource:O
Abatch_normalization_62_fusedbatchnormv3_readvariableop_1_resource:B
(conv2d_33_conv2d_readvariableop_resource:7
)conv2d_33_biasadd_readvariableop_resource:<
.batch_normalization_63_readvariableop_resource:>
0batch_normalization_63_readvariableop_1_resource:M
?batch_normalization_63_fusedbatchnormv3_readvariableop_resource:O
Abatch_normalization_63_fusedbatchnormv3_readvariableop_1_resource:
identity��6batch_normalization_62/FusedBatchNormV3/ReadVariableOp�8batch_normalization_62/FusedBatchNormV3/ReadVariableOp_1�%batch_normalization_62/ReadVariableOp�'batch_normalization_62/ReadVariableOp_1�6batch_normalization_63/FusedBatchNormV3/ReadVariableOp�8batch_normalization_63/FusedBatchNormV3/ReadVariableOp_1�%batch_normalization_63/ReadVariableOp�'batch_normalization_63/ReadVariableOp_1� conv2d_32/BiasAdd/ReadVariableOp�conv2d_32/Conv2D/ReadVariableOp� conv2d_33/BiasAdd/ReadVariableOp�conv2d_33/Conv2D/ReadVariableOp�
conv2d_32/Conv2D/ReadVariableOpReadVariableOp(conv2d_32_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
conv2d_32/Conv2DConv2Dx'conv2d_32/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingVALID*
strides
�
 conv2d_32/BiasAdd/ReadVariableOpReadVariableOp)conv2d_32_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
conv2d_32/BiasAddBiasAddconv2d_32/Conv2D:output:0(conv2d_32/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������n
conv2d_32/ReluReluconv2d_32/BiasAdd:output:0*
T0*1
_output_shapes
:������������
%batch_normalization_62/ReadVariableOpReadVariableOp.batch_normalization_62_readvariableop_resource*
_output_shapes
:*
dtype0�
'batch_normalization_62/ReadVariableOp_1ReadVariableOp0batch_normalization_62_readvariableop_1_resource*
_output_shapes
:*
dtype0�
6batch_normalization_62/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_62_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
8batch_normalization_62/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_62_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
'batch_normalization_62/FusedBatchNormV3FusedBatchNormV3conv2d_32/Relu:activations:0-batch_normalization_62/ReadVariableOp:value:0/batch_normalization_62/ReadVariableOp_1:value:0>batch_normalization_62/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_62/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*M
_output_shapes;
9:�����������:::::*
epsilon%o�:*
is_training( �
max_pooling2d_32/MaxPoolMaxPool+batch_normalization_62/FusedBatchNormV3:y:0*/
_output_shapes
:���������oo*
ksize
*
paddingVALID*
strides
�
conv2d_33/Conv2D/ReadVariableOpReadVariableOp(conv2d_33_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
conv2d_33/Conv2DConv2D!max_pooling2d_32/MaxPool:output:0'conv2d_33/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������mm*
paddingVALID*
strides
�
 conv2d_33/BiasAdd/ReadVariableOpReadVariableOp)conv2d_33_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
conv2d_33/BiasAddBiasAddconv2d_33/Conv2D:output:0(conv2d_33/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������mml
conv2d_33/ReluReluconv2d_33/BiasAdd:output:0*
T0*/
_output_shapes
:���������mm�
%batch_normalization_63/ReadVariableOpReadVariableOp.batch_normalization_63_readvariableop_resource*
_output_shapes
:*
dtype0�
'batch_normalization_63/ReadVariableOp_1ReadVariableOp0batch_normalization_63_readvariableop_1_resource*
_output_shapes
:*
dtype0�
6batch_normalization_63/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_63_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
8batch_normalization_63/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_63_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
'batch_normalization_63/FusedBatchNormV3FusedBatchNormV3conv2d_33/Relu:activations:0-batch_normalization_63/ReadVariableOp:value:0/batch_normalization_63/ReadVariableOp_1:value:0>batch_normalization_63/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_63/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������mm:::::*
epsilon%o�:*
is_training( �
max_pooling2d_33/MaxPoolMaxPool+batch_normalization_63/FusedBatchNormV3:y:0*/
_output_shapes
:���������66*
ksize
*
paddingVALID*
strides
x
IdentityIdentity!max_pooling2d_33/MaxPool:output:0^NoOp*
T0*/
_output_shapes
:���������66�
NoOpNoOp7^batch_normalization_62/FusedBatchNormV3/ReadVariableOp9^batch_normalization_62/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_62/ReadVariableOp(^batch_normalization_62/ReadVariableOp_17^batch_normalization_63/FusedBatchNormV3/ReadVariableOp9^batch_normalization_63/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_63/ReadVariableOp(^batch_normalization_63/ReadVariableOp_1!^conv2d_32/BiasAdd/ReadVariableOp ^conv2d_32/Conv2D/ReadVariableOp!^conv2d_33/BiasAdd/ReadVariableOp ^conv2d_33/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:�����������: : : : : : : : : : : : 2p
6batch_normalization_62/FusedBatchNormV3/ReadVariableOp6batch_normalization_62/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_62/FusedBatchNormV3/ReadVariableOp_18batch_normalization_62/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_62/ReadVariableOp%batch_normalization_62/ReadVariableOp2R
'batch_normalization_62/ReadVariableOp_1'batch_normalization_62/ReadVariableOp_12p
6batch_normalization_63/FusedBatchNormV3/ReadVariableOp6batch_normalization_63/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_63/FusedBatchNormV3/ReadVariableOp_18batch_normalization_63/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_63/ReadVariableOp%batch_normalization_63/ReadVariableOp2R
'batch_normalization_63/ReadVariableOp_1'batch_normalization_63/ReadVariableOp_12D
 conv2d_32/BiasAdd/ReadVariableOp conv2d_32/BiasAdd/ReadVariableOp2B
conv2d_32/Conv2D/ReadVariableOpconv2d_32/Conv2D/ReadVariableOp2D
 conv2d_33/BiasAdd/ReadVariableOp conv2d_33/BiasAdd/ReadVariableOp2B
conv2d_33/Conv2D/ReadVariableOpconv2d_33/Conv2D/ReadVariableOp:T P
1
_output_shapes
:�����������

_user_specified_namex
�
�
.__inference_lenet_model_12_layer_call_fn_35905
x!
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:#
	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:
	unknown_9:

unknown_10:

unknown_11:
��d

unknown_12:d

unknown_13:d

unknown_14:d

unknown_15:d

unknown_16:d

unknown_17:d


unknown_18:


unknown_19:


unknown_20:


unknown_21:


unknown_22:


unknown_23:


unknown_24:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallxunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
unknown_21
unknown_22
unknown_23
unknown_24*&
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*4
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_lenet_model_12_layer_call_and_return_conditional_losses_35492o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*d
_input_shapesS
Q:�����������: : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
1
_output_shapes
:�����������

_user_specified_namex
�
�
4__inference_feature_extractor_14_layer_call_fn_36168
x!
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:#
	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:
	unknown_9:

unknown_10:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallxunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������66*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *X
fSRQ
O__inference_feature_extractor_14_layer_call_and_return_conditional_losses_35068w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������66`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:�����������: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
1
_output_shapes
:�����������

_user_specified_namex
�
�
Q__inference_batch_normalization_65_layer_call_and_return_conditional_losses_34955

inputs/
!batchnorm_readvariableop_resource:
3
%batchnorm_mul_readvariableop_resource:
1
#batchnorm_readvariableop_1_resource:
1
#batchnorm_readvariableop_2_resource:

identity��batchnorm/ReadVariableOp�batchnorm/ReadVariableOp_1�batchnorm/ReadVariableOp_2�batchnorm/mul/ReadVariableOpv
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:
*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:w
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:
P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:
~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:
*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:
c
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:���������
z
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:
*
dtype0r
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:
z
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:
*
dtype0r
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:
r
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:���������
b
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:���������
�
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������
: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:���������

 
_user_specified_nameinputs
�

�
C__inference_dense_46_layer_call_and_return_conditional_losses_36424

inputs0
matmul_readvariableop_resource:d
-
biasadd_readvariableop_resource:

identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:d
*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:���������
a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:���������
w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������d: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������d
 
_user_specified_nameinputs
�%
�
Q__inference_batch_normalization_64_layer_call_and_return_conditional_losses_34920

inputs5
'assignmovingavg_readvariableop_resource:d7
)assignmovingavg_1_readvariableop_resource:d3
%batchnorm_mul_readvariableop_resource:d/
!batchnorm_readvariableop_resource:d
identity��AssignMovingAvg�AssignMovingAvg/ReadVariableOp�AssignMovingAvg_1� AssignMovingAvg_1/ReadVariableOp�batchnorm/ReadVariableOp�batchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:d*
	keep_dims(d
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes

:d�
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*'
_output_shapes
:���������dl
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:d*
	keep_dims(m
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:d*
squeeze_dims
 s
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:d*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
:d*
dtype0�
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
:dx
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:d�
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
:d*
dtype0�
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
:d~
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:d�
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:q
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:dP
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:d~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:d*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:dc
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:���������dh
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:dv
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:d*
dtype0p
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:dr
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:���������db
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:���������d�
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������d: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:���������d
 
_user_specified_nameinputs
�

�
C__inference_dense_46_layer_call_and_return_conditional_losses_35139

inputs0
matmul_readvariableop_resource:d
-
biasadd_readvariableop_resource:

identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:d
*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:���������
a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:���������
w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������d: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������d
 
_user_specified_nameinputs
�
g
K__inference_max_pooling2d_32_layer_call_and_return_conditional_losses_36596

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
F
*__inference_flatten_15_layer_call_fn_36298

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:�����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_flatten_15_layer_call_and_return_conditional_losses_35100b
IdentityIdentityPartitionedCall:output:0*
T0*)
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������66:W S
/
_output_shapes
:���������66
 
_user_specified_nameinputs
�.
�
I__inference_lenet_model_12_layer_call_and_return_conditional_losses_35492
x4
feature_extractor_14_35432:(
feature_extractor_14_35434:(
feature_extractor_14_35436:(
feature_extractor_14_35438:(
feature_extractor_14_35440:(
feature_extractor_14_35442:4
feature_extractor_14_35444:(
feature_extractor_14_35446:(
feature_extractor_14_35448:(
feature_extractor_14_35450:(
feature_extractor_14_35452:(
feature_extractor_14_35454:"
dense_45_35458:
��d
dense_45_35460:d*
batch_normalization_64_35463:d*
batch_normalization_64_35465:d*
batch_normalization_64_35467:d*
batch_normalization_64_35469:d 
dense_46_35472:d

dense_46_35474:
*
batch_normalization_65_35477:
*
batch_normalization_65_35479:
*
batch_normalization_65_35481:
*
batch_normalization_65_35483:
 
dense_47_35486:

dense_47_35488:
identity��.batch_normalization_64/StatefulPartitionedCall�.batch_normalization_65/StatefulPartitionedCall� dense_45/StatefulPartitionedCall� dense_46/StatefulPartitionedCall� dense_47/StatefulPartitionedCall�,feature_extractor_14/StatefulPartitionedCall�
,feature_extractor_14/StatefulPartitionedCallStatefulPartitionedCallxfeature_extractor_14_35432feature_extractor_14_35434feature_extractor_14_35436feature_extractor_14_35438feature_extractor_14_35440feature_extractor_14_35442feature_extractor_14_35444feature_extractor_14_35446feature_extractor_14_35448feature_extractor_14_35450feature_extractor_14_35452feature_extractor_14_35454*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������66**
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8� *X
fSRQ
O__inference_feature_extractor_14_layer_call_and_return_conditional_losses_35343�
flatten_15/PartitionedCallPartitionedCall5feature_extractor_14/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:�����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_flatten_15_layer_call_and_return_conditional_losses_35100�
 dense_45/StatefulPartitionedCallStatefulPartitionedCall#flatten_15/PartitionedCall:output:0dense_45_35458dense_45_35460*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������d*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_dense_45_layer_call_and_return_conditional_losses_35113�
.batch_normalization_64/StatefulPartitionedCallStatefulPartitionedCall)dense_45/StatefulPartitionedCall:output:0batch_normalization_64_35463batch_normalization_64_35465batch_normalization_64_35467batch_normalization_64_35469*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������d*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_64_layer_call_and_return_conditional_losses_34920�
 dense_46/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_64/StatefulPartitionedCall:output:0dense_46_35472dense_46_35474*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_dense_46_layer_call_and_return_conditional_losses_35139�
.batch_normalization_65/StatefulPartitionedCallStatefulPartitionedCall)dense_46/StatefulPartitionedCall:output:0batch_normalization_65_35477batch_normalization_65_35479batch_normalization_65_35481batch_normalization_65_35483*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_65_layer_call_and_return_conditional_losses_35002�
 dense_47/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_65/StatefulPartitionedCall:output:0dense_47_35486dense_47_35488*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_dense_47_layer_call_and_return_conditional_losses_35165x
IdentityIdentity)dense_47/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp/^batch_normalization_64/StatefulPartitionedCall/^batch_normalization_65/StatefulPartitionedCall!^dense_45/StatefulPartitionedCall!^dense_46/StatefulPartitionedCall!^dense_47/StatefulPartitionedCall-^feature_extractor_14/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*d
_input_shapesS
Q:�����������: : : : : : : : : : : : : : : : : : : : : : : : : : 2`
.batch_normalization_64/StatefulPartitionedCall.batch_normalization_64/StatefulPartitionedCall2`
.batch_normalization_65/StatefulPartitionedCall.batch_normalization_65/StatefulPartitionedCall2D
 dense_45/StatefulPartitionedCall dense_45/StatefulPartitionedCall2D
 dense_46/StatefulPartitionedCall dense_46/StatefulPartitionedCall2D
 dense_47/StatefulPartitionedCall dense_47/StatefulPartitionedCall2\
,feature_extractor_14/StatefulPartitionedCall,feature_extractor_14/StatefulPartitionedCall:T P
1
_output_shapes
:�����������

_user_specified_namex
�
�
Q__inference_batch_normalization_62_layer_call_and_return_conditional_losses_36568

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������:::::*
epsilon%o�:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+����������������������������
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
�
�
Q__inference_batch_normalization_63_layer_call_and_return_conditional_losses_36640

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������:::::*
epsilon%o�:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+����������������������������
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
�
L
0__inference_max_pooling2d_33_layer_call_fn_36663

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4������������������������������������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_max_pooling2d_33_layer_call_and_return_conditional_losses_34846�
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
�
6__inference_batch_normalization_64_layer_call_fn_36337

inputs
unknown:d
	unknown_0:d
	unknown_1:d
	unknown_2:d
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������d*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_64_layer_call_and_return_conditional_losses_34873o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������d`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������d: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������d
 
_user_specified_nameinputs
�
a
E__inference_flatten_15_layer_call_and_return_conditional_losses_35100

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"����@�  ^
ReshapeReshapeinputsConst:output:0*
T0*)
_output_shapes
:�����������Z
IdentityIdentityReshape:output:0*
T0*)
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������66:W S
/
_output_shapes
:���������66
 
_user_specified_nameinputs
�	
�
6__inference_batch_normalization_63_layer_call_fn_36622

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_63_layer_call_and_return_conditional_losses_34826�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
�	
�
6__inference_batch_normalization_63_layer_call_fn_36609

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_63_layer_call_and_return_conditional_losses_34795�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
��
�8
!__inference__traced_restore_37109
file_prefix_
Eassignvariableop_lenet_model_12_feature_extractor_14_conv2d_32_kernel:S
Eassignvariableop_1_lenet_model_12_feature_extractor_14_conv2d_32_bias:a
Sassignvariableop_2_lenet_model_12_feature_extractor_14_batch_normalization_62_gamma:`
Rassignvariableop_3_lenet_model_12_feature_extractor_14_batch_normalization_62_beta:a
Gassignvariableop_4_lenet_model_12_feature_extractor_14_conv2d_33_kernel:S
Eassignvariableop_5_lenet_model_12_feature_extractor_14_conv2d_33_bias:a
Sassignvariableop_6_lenet_model_12_feature_extractor_14_batch_normalization_63_gamma:`
Rassignvariableop_7_lenet_model_12_feature_extractor_14_batch_normalization_63_beta:g
Yassignvariableop_8_lenet_model_12_feature_extractor_14_batch_normalization_62_moving_mean:k
]assignvariableop_9_lenet_model_12_feature_extractor_14_batch_normalization_62_moving_variance:h
Zassignvariableop_10_lenet_model_12_feature_extractor_14_batch_normalization_63_moving_mean:l
^assignvariableop_11_lenet_model_12_feature_extractor_14_batch_normalization_63_moving_variance:F
2assignvariableop_12_lenet_model_12_dense_45_kernel:
��d>
0assignvariableop_13_lenet_model_12_dense_45_bias:dM
?assignvariableop_14_lenet_model_12_batch_normalization_64_gamma:dL
>assignvariableop_15_lenet_model_12_batch_normalization_64_beta:dS
Eassignvariableop_16_lenet_model_12_batch_normalization_64_moving_mean:dW
Iassignvariableop_17_lenet_model_12_batch_normalization_64_moving_variance:dD
2assignvariableop_18_lenet_model_12_dense_46_kernel:d
>
0assignvariableop_19_lenet_model_12_dense_46_bias:
M
?assignvariableop_20_lenet_model_12_batch_normalization_65_gamma:
L
>assignvariableop_21_lenet_model_12_batch_normalization_65_beta:
S
Eassignvariableop_22_lenet_model_12_batch_normalization_65_moving_mean:
W
Iassignvariableop_23_lenet_model_12_batch_normalization_65_moving_variance:
D
2assignvariableop_24_lenet_model_12_dense_47_kernel:
>
0assignvariableop_25_lenet_model_12_dense_47_bias:'
assignvariableop_26_iteration:	 +
!assignvariableop_27_learning_rate: i
Oassignvariableop_28_adam_m_lenet_model_12_feature_extractor_14_conv2d_32_kernel:i
Oassignvariableop_29_adam_v_lenet_model_12_feature_extractor_14_conv2d_32_kernel:[
Massignvariableop_30_adam_m_lenet_model_12_feature_extractor_14_conv2d_32_bias:[
Massignvariableop_31_adam_v_lenet_model_12_feature_extractor_14_conv2d_32_bias:i
[assignvariableop_32_adam_m_lenet_model_12_feature_extractor_14_batch_normalization_62_gamma:i
[assignvariableop_33_adam_v_lenet_model_12_feature_extractor_14_batch_normalization_62_gamma:h
Zassignvariableop_34_adam_m_lenet_model_12_feature_extractor_14_batch_normalization_62_beta:h
Zassignvariableop_35_adam_v_lenet_model_12_feature_extractor_14_batch_normalization_62_beta:i
Oassignvariableop_36_adam_m_lenet_model_12_feature_extractor_14_conv2d_33_kernel:i
Oassignvariableop_37_adam_v_lenet_model_12_feature_extractor_14_conv2d_33_kernel:[
Massignvariableop_38_adam_m_lenet_model_12_feature_extractor_14_conv2d_33_bias:[
Massignvariableop_39_adam_v_lenet_model_12_feature_extractor_14_conv2d_33_bias:i
[assignvariableop_40_adam_m_lenet_model_12_feature_extractor_14_batch_normalization_63_gamma:i
[assignvariableop_41_adam_v_lenet_model_12_feature_extractor_14_batch_normalization_63_gamma:h
Zassignvariableop_42_adam_m_lenet_model_12_feature_extractor_14_batch_normalization_63_beta:h
Zassignvariableop_43_adam_v_lenet_model_12_feature_extractor_14_batch_normalization_63_beta:M
9assignvariableop_44_adam_m_lenet_model_12_dense_45_kernel:
��dM
9assignvariableop_45_adam_v_lenet_model_12_dense_45_kernel:
��dE
7assignvariableop_46_adam_m_lenet_model_12_dense_45_bias:dE
7assignvariableop_47_adam_v_lenet_model_12_dense_45_bias:dT
Fassignvariableop_48_adam_m_lenet_model_12_batch_normalization_64_gamma:dT
Fassignvariableop_49_adam_v_lenet_model_12_batch_normalization_64_gamma:dS
Eassignvariableop_50_adam_m_lenet_model_12_batch_normalization_64_beta:dS
Eassignvariableop_51_adam_v_lenet_model_12_batch_normalization_64_beta:dK
9assignvariableop_52_adam_m_lenet_model_12_dense_46_kernel:d
K
9assignvariableop_53_adam_v_lenet_model_12_dense_46_kernel:d
E
7assignvariableop_54_adam_m_lenet_model_12_dense_46_bias:
E
7assignvariableop_55_adam_v_lenet_model_12_dense_46_bias:
T
Fassignvariableop_56_adam_m_lenet_model_12_batch_normalization_65_gamma:
T
Fassignvariableop_57_adam_v_lenet_model_12_batch_normalization_65_gamma:
S
Eassignvariableop_58_adam_m_lenet_model_12_batch_normalization_65_beta:
S
Eassignvariableop_59_adam_v_lenet_model_12_batch_normalization_65_beta:
K
9assignvariableop_60_adam_m_lenet_model_12_dense_47_kernel:
K
9assignvariableop_61_adam_v_lenet_model_12_dense_47_kernel:
E
7assignvariableop_62_adam_m_lenet_model_12_dense_47_bias:E
7assignvariableop_63_adam_v_lenet_model_12_dense_47_bias:%
assignvariableop_64_total_1: %
assignvariableop_65_count_1: #
assignvariableop_66_total: #
assignvariableop_67_count: 
identity_69��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_21�AssignVariableOp_22�AssignVariableOp_23�AssignVariableOp_24�AssignVariableOp_25�AssignVariableOp_26�AssignVariableOp_27�AssignVariableOp_28�AssignVariableOp_29�AssignVariableOp_3�AssignVariableOp_30�AssignVariableOp_31�AssignVariableOp_32�AssignVariableOp_33�AssignVariableOp_34�AssignVariableOp_35�AssignVariableOp_36�AssignVariableOp_37�AssignVariableOp_38�AssignVariableOp_39�AssignVariableOp_4�AssignVariableOp_40�AssignVariableOp_41�AssignVariableOp_42�AssignVariableOp_43�AssignVariableOp_44�AssignVariableOp_45�AssignVariableOp_46�AssignVariableOp_47�AssignVariableOp_48�AssignVariableOp_49�AssignVariableOp_5�AssignVariableOp_50�AssignVariableOp_51�AssignVariableOp_52�AssignVariableOp_53�AssignVariableOp_54�AssignVariableOp_55�AssignVariableOp_56�AssignVariableOp_57�AssignVariableOp_58�AssignVariableOp_59�AssignVariableOp_6�AssignVariableOp_60�AssignVariableOp_61�AssignVariableOp_62�AssignVariableOp_63�AssignVariableOp_64�AssignVariableOp_65�AssignVariableOp_66�AssignVariableOp_67�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:E*
dtype0*�
value�B�EB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB'variables/18/.ATTRIBUTES/VARIABLE_VALUEB'variables/19/.ATTRIBUTES/VARIABLE_VALUEB'variables/20/.ATTRIBUTES/VARIABLE_VALUEB'variables/21/.ATTRIBUTES/VARIABLE_VALUEB'variables/22/.ATTRIBUTES/VARIABLE_VALUEB'variables/23/.ATTRIBUTES/VARIABLE_VALUEB'variables/24/.ATTRIBUTES/VARIABLE_VALUEB'variables/25/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/23/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/24/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/25/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/26/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/27/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/28/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/29/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/30/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/31/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/32/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/33/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/34/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/35/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/36/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:E*
dtype0*�
value�B�EB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*�
_output_shapes�
�:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*S
dtypesI
G2E	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOpAssignVariableOpEassignvariableop_lenet_model_12_feature_extractor_14_conv2d_32_kernelIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOpEassignvariableop_1_lenet_model_12_feature_extractor_14_conv2d_32_biasIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOpSassignvariableop_2_lenet_model_12_feature_extractor_14_batch_normalization_62_gammaIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOpRassignvariableop_3_lenet_model_12_feature_extractor_14_batch_normalization_62_betaIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_4AssignVariableOpGassignvariableop_4_lenet_model_12_feature_extractor_14_conv2d_33_kernelIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOpEassignvariableop_5_lenet_model_12_feature_extractor_14_conv2d_33_biasIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_6AssignVariableOpSassignvariableop_6_lenet_model_12_feature_extractor_14_batch_normalization_63_gammaIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_7AssignVariableOpRassignvariableop_7_lenet_model_12_feature_extractor_14_batch_normalization_63_betaIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_8AssignVariableOpYassignvariableop_8_lenet_model_12_feature_extractor_14_batch_normalization_62_moving_meanIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOp]assignvariableop_9_lenet_model_12_feature_extractor_14_batch_normalization_62_moving_varianceIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_10AssignVariableOpZassignvariableop_10_lenet_model_12_feature_extractor_14_batch_normalization_63_moving_meanIdentity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_11AssignVariableOp^assignvariableop_11_lenet_model_12_feature_extractor_14_batch_normalization_63_moving_varianceIdentity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_12AssignVariableOp2assignvariableop_12_lenet_model_12_dense_45_kernelIdentity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_13AssignVariableOp0assignvariableop_13_lenet_model_12_dense_45_biasIdentity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_14AssignVariableOp?assignvariableop_14_lenet_model_12_batch_normalization_64_gammaIdentity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_15AssignVariableOp>assignvariableop_15_lenet_model_12_batch_normalization_64_betaIdentity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_16AssignVariableOpEassignvariableop_16_lenet_model_12_batch_normalization_64_moving_meanIdentity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_17AssignVariableOpIassignvariableop_17_lenet_model_12_batch_normalization_64_moving_varianceIdentity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_18AssignVariableOp2assignvariableop_18_lenet_model_12_dense_46_kernelIdentity_18:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_19AssignVariableOp0assignvariableop_19_lenet_model_12_dense_46_biasIdentity_19:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_20AssignVariableOp?assignvariableop_20_lenet_model_12_batch_normalization_65_gammaIdentity_20:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_21AssignVariableOp>assignvariableop_21_lenet_model_12_batch_normalization_65_betaIdentity_21:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_22AssignVariableOpEassignvariableop_22_lenet_model_12_batch_normalization_65_moving_meanIdentity_22:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_23AssignVariableOpIassignvariableop_23_lenet_model_12_batch_normalization_65_moving_varianceIdentity_23:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_24AssignVariableOp2assignvariableop_24_lenet_model_12_dense_47_kernelIdentity_24:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_25AssignVariableOp0assignvariableop_25_lenet_model_12_dense_47_biasIdentity_25:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOp_26AssignVariableOpassignvariableop_26_iterationIdentity_26:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_27AssignVariableOp!assignvariableop_27_learning_rateIdentity_27:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_28AssignVariableOpOassignvariableop_28_adam_m_lenet_model_12_feature_extractor_14_conv2d_32_kernelIdentity_28:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_29AssignVariableOpOassignvariableop_29_adam_v_lenet_model_12_feature_extractor_14_conv2d_32_kernelIdentity_29:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_30AssignVariableOpMassignvariableop_30_adam_m_lenet_model_12_feature_extractor_14_conv2d_32_biasIdentity_30:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_31AssignVariableOpMassignvariableop_31_adam_v_lenet_model_12_feature_extractor_14_conv2d_32_biasIdentity_31:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_32AssignVariableOp[assignvariableop_32_adam_m_lenet_model_12_feature_extractor_14_batch_normalization_62_gammaIdentity_32:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_33AssignVariableOp[assignvariableop_33_adam_v_lenet_model_12_feature_extractor_14_batch_normalization_62_gammaIdentity_33:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_34AssignVariableOpZassignvariableop_34_adam_m_lenet_model_12_feature_extractor_14_batch_normalization_62_betaIdentity_34:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_35AssignVariableOpZassignvariableop_35_adam_v_lenet_model_12_feature_extractor_14_batch_normalization_62_betaIdentity_35:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_36AssignVariableOpOassignvariableop_36_adam_m_lenet_model_12_feature_extractor_14_conv2d_33_kernelIdentity_36:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_37AssignVariableOpOassignvariableop_37_adam_v_lenet_model_12_feature_extractor_14_conv2d_33_kernelIdentity_37:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_38AssignVariableOpMassignvariableop_38_adam_m_lenet_model_12_feature_extractor_14_conv2d_33_biasIdentity_38:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_39AssignVariableOpMassignvariableop_39_adam_v_lenet_model_12_feature_extractor_14_conv2d_33_biasIdentity_39:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_40AssignVariableOp[assignvariableop_40_adam_m_lenet_model_12_feature_extractor_14_batch_normalization_63_gammaIdentity_40:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_41AssignVariableOp[assignvariableop_41_adam_v_lenet_model_12_feature_extractor_14_batch_normalization_63_gammaIdentity_41:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_42AssignVariableOpZassignvariableop_42_adam_m_lenet_model_12_feature_extractor_14_batch_normalization_63_betaIdentity_42:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_43AssignVariableOpZassignvariableop_43_adam_v_lenet_model_12_feature_extractor_14_batch_normalization_63_betaIdentity_43:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_44AssignVariableOp9assignvariableop_44_adam_m_lenet_model_12_dense_45_kernelIdentity_44:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_45AssignVariableOp9assignvariableop_45_adam_v_lenet_model_12_dense_45_kernelIdentity_45:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_46AssignVariableOp7assignvariableop_46_adam_m_lenet_model_12_dense_45_biasIdentity_46:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_47AssignVariableOp7assignvariableop_47_adam_v_lenet_model_12_dense_45_biasIdentity_47:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_48AssignVariableOpFassignvariableop_48_adam_m_lenet_model_12_batch_normalization_64_gammaIdentity_48:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_49AssignVariableOpFassignvariableop_49_adam_v_lenet_model_12_batch_normalization_64_gammaIdentity_49:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_50AssignVariableOpEassignvariableop_50_adam_m_lenet_model_12_batch_normalization_64_betaIdentity_50:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_51AssignVariableOpEassignvariableop_51_adam_v_lenet_model_12_batch_normalization_64_betaIdentity_51:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_52AssignVariableOp9assignvariableop_52_adam_m_lenet_model_12_dense_46_kernelIdentity_52:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_53AssignVariableOp9assignvariableop_53_adam_v_lenet_model_12_dense_46_kernelIdentity_53:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_54AssignVariableOp7assignvariableop_54_adam_m_lenet_model_12_dense_46_biasIdentity_54:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_55AssignVariableOp7assignvariableop_55_adam_v_lenet_model_12_dense_46_biasIdentity_55:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_56AssignVariableOpFassignvariableop_56_adam_m_lenet_model_12_batch_normalization_65_gammaIdentity_56:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_57AssignVariableOpFassignvariableop_57_adam_v_lenet_model_12_batch_normalization_65_gammaIdentity_57:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_58AssignVariableOpEassignvariableop_58_adam_m_lenet_model_12_batch_normalization_65_betaIdentity_58:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_59AssignVariableOpEassignvariableop_59_adam_v_lenet_model_12_batch_normalization_65_betaIdentity_59:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_60AssignVariableOp9assignvariableop_60_adam_m_lenet_model_12_dense_47_kernelIdentity_60:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_61AssignVariableOp9assignvariableop_61_adam_v_lenet_model_12_dense_47_kernelIdentity_61:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_62AssignVariableOp7assignvariableop_62_adam_m_lenet_model_12_dense_47_biasIdentity_62:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_63IdentityRestoreV2:tensors:63"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_63AssignVariableOp7assignvariableop_63_adam_v_lenet_model_12_dense_47_biasIdentity_63:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_64IdentityRestoreV2:tensors:64"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_64AssignVariableOpassignvariableop_64_total_1Identity_64:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_65IdentityRestoreV2:tensors:65"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_65AssignVariableOpassignvariableop_65_count_1Identity_65:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_66IdentityRestoreV2:tensors:66"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_66AssignVariableOpassignvariableop_66_totalIdentity_66:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_67IdentityRestoreV2:tensors:67"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_67AssignVariableOpassignvariableop_67_countIdentity_67:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 �
Identity_68Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_69IdentityIdentity_68:output:0^NoOp_1*
T0*
_output_shapes
: �
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_69Identity_69:output:0*�
_input_shapes�
�: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482*
AssignVariableOp_49AssignVariableOp_492(
AssignVariableOp_5AssignVariableOp_52*
AssignVariableOp_50AssignVariableOp_502*
AssignVariableOp_51AssignVariableOp_512*
AssignVariableOp_52AssignVariableOp_522*
AssignVariableOp_53AssignVariableOp_532*
AssignVariableOp_54AssignVariableOp_542*
AssignVariableOp_55AssignVariableOp_552*
AssignVariableOp_56AssignVariableOp_562*
AssignVariableOp_57AssignVariableOp_572*
AssignVariableOp_58AssignVariableOp_582*
AssignVariableOp_59AssignVariableOp_592(
AssignVariableOp_6AssignVariableOp_62*
AssignVariableOp_60AssignVariableOp_602*
AssignVariableOp_61AssignVariableOp_612*
AssignVariableOp_62AssignVariableOp_622*
AssignVariableOp_63AssignVariableOp_632*
AssignVariableOp_64AssignVariableOp_642*
AssignVariableOp_65AssignVariableOp_652*
AssignVariableOp_66AssignVariableOp_662*
AssignVariableOp_67AssignVariableOp_672(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�%
�
Q__inference_batch_normalization_65_layer_call_and_return_conditional_losses_35002

inputs5
'assignmovingavg_readvariableop_resource:
7
)assignmovingavg_1_readvariableop_resource:
3
%batchnorm_mul_readvariableop_resource:
/
!batchnorm_readvariableop_resource:

identity��AssignMovingAvg�AssignMovingAvg/ReadVariableOp�AssignMovingAvg_1� AssignMovingAvg_1/ReadVariableOp�batchnorm/ReadVariableOp�batchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:
*
	keep_dims(d
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes

:
�
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*'
_output_shapes
:���������
l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:
*
	keep_dims(m
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:
*
squeeze_dims
 s
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:
*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
:
*
dtype0�
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
:
x
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:
�
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
:
*
dtype0�
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
:
~
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:
�
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:q
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:
P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:
~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:
*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:
c
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:���������
h
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:
v
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:
*
dtype0p
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:
r
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:���������
b
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:���������
�
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������
: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:���������

 
_user_specified_nameinputs
�
�
Q__inference_batch_normalization_62_layer_call_and_return_conditional_losses_34719

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������:::::*
epsilon%o�:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+����������������������������
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
�
�
Q__inference_batch_normalization_65_layer_call_and_return_conditional_losses_36470

inputs/
!batchnorm_readvariableop_resource:
3
%batchnorm_mul_readvariableop_resource:
1
#batchnorm_readvariableop_1_resource:
1
#batchnorm_readvariableop_2_resource:

identity��batchnorm/ReadVariableOp�batchnorm/ReadVariableOp_1�batchnorm/ReadVariableOp_2�batchnorm/mul/ReadVariableOpv
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:
*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:w
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:
P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:
~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:
*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:
c
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:���������
z
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:
*
dtype0r
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:
z
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:
*
dtype0r
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:
r
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:���������
b
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:���������
�
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������
: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:���������

 
_user_specified_nameinputs
�
�
6__inference_batch_normalization_65_layer_call_fn_36437

inputs
unknown:

	unknown_0:

	unknown_1:

	unknown_2:

identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_65_layer_call_and_return_conditional_losses_34955o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������
: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������

 
_user_specified_nameinputs
�

�
C__inference_dense_45_layer_call_and_return_conditional_losses_36324

inputs2
matmul_readvariableop_resource:
��d-
biasadd_readvariableop_resource:d
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��d*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������dr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:d*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������dP
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:���������da
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:���������dw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:�����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:Q M
)
_output_shapes
:�����������
 
_user_specified_nameinputs
��
�+
__inference__traced_save_36895
file_prefixS
Osavev2_lenet_model_12_feature_extractor_14_conv2d_32_kernel_read_readvariableopQ
Msavev2_lenet_model_12_feature_extractor_14_conv2d_32_bias_read_readvariableop_
[savev2_lenet_model_12_feature_extractor_14_batch_normalization_62_gamma_read_readvariableop^
Zsavev2_lenet_model_12_feature_extractor_14_batch_normalization_62_beta_read_readvariableopS
Osavev2_lenet_model_12_feature_extractor_14_conv2d_33_kernel_read_readvariableopQ
Msavev2_lenet_model_12_feature_extractor_14_conv2d_33_bias_read_readvariableop_
[savev2_lenet_model_12_feature_extractor_14_batch_normalization_63_gamma_read_readvariableop^
Zsavev2_lenet_model_12_feature_extractor_14_batch_normalization_63_beta_read_readvariableope
asavev2_lenet_model_12_feature_extractor_14_batch_normalization_62_moving_mean_read_readvariableopi
esavev2_lenet_model_12_feature_extractor_14_batch_normalization_62_moving_variance_read_readvariableope
asavev2_lenet_model_12_feature_extractor_14_batch_normalization_63_moving_mean_read_readvariableopi
esavev2_lenet_model_12_feature_extractor_14_batch_normalization_63_moving_variance_read_readvariableop=
9savev2_lenet_model_12_dense_45_kernel_read_readvariableop;
7savev2_lenet_model_12_dense_45_bias_read_readvariableopJ
Fsavev2_lenet_model_12_batch_normalization_64_gamma_read_readvariableopI
Esavev2_lenet_model_12_batch_normalization_64_beta_read_readvariableopP
Lsavev2_lenet_model_12_batch_normalization_64_moving_mean_read_readvariableopT
Psavev2_lenet_model_12_batch_normalization_64_moving_variance_read_readvariableop=
9savev2_lenet_model_12_dense_46_kernel_read_readvariableop;
7savev2_lenet_model_12_dense_46_bias_read_readvariableopJ
Fsavev2_lenet_model_12_batch_normalization_65_gamma_read_readvariableopI
Esavev2_lenet_model_12_batch_normalization_65_beta_read_readvariableopP
Lsavev2_lenet_model_12_batch_normalization_65_moving_mean_read_readvariableopT
Psavev2_lenet_model_12_batch_normalization_65_moving_variance_read_readvariableop=
9savev2_lenet_model_12_dense_47_kernel_read_readvariableop;
7savev2_lenet_model_12_dense_47_bias_read_readvariableop(
$savev2_iteration_read_readvariableop	,
(savev2_learning_rate_read_readvariableopZ
Vsavev2_adam_m_lenet_model_12_feature_extractor_14_conv2d_32_kernel_read_readvariableopZ
Vsavev2_adam_v_lenet_model_12_feature_extractor_14_conv2d_32_kernel_read_readvariableopX
Tsavev2_adam_m_lenet_model_12_feature_extractor_14_conv2d_32_bias_read_readvariableopX
Tsavev2_adam_v_lenet_model_12_feature_extractor_14_conv2d_32_bias_read_readvariableopf
bsavev2_adam_m_lenet_model_12_feature_extractor_14_batch_normalization_62_gamma_read_readvariableopf
bsavev2_adam_v_lenet_model_12_feature_extractor_14_batch_normalization_62_gamma_read_readvariableope
asavev2_adam_m_lenet_model_12_feature_extractor_14_batch_normalization_62_beta_read_readvariableope
asavev2_adam_v_lenet_model_12_feature_extractor_14_batch_normalization_62_beta_read_readvariableopZ
Vsavev2_adam_m_lenet_model_12_feature_extractor_14_conv2d_33_kernel_read_readvariableopZ
Vsavev2_adam_v_lenet_model_12_feature_extractor_14_conv2d_33_kernel_read_readvariableopX
Tsavev2_adam_m_lenet_model_12_feature_extractor_14_conv2d_33_bias_read_readvariableopX
Tsavev2_adam_v_lenet_model_12_feature_extractor_14_conv2d_33_bias_read_readvariableopf
bsavev2_adam_m_lenet_model_12_feature_extractor_14_batch_normalization_63_gamma_read_readvariableopf
bsavev2_adam_v_lenet_model_12_feature_extractor_14_batch_normalization_63_gamma_read_readvariableope
asavev2_adam_m_lenet_model_12_feature_extractor_14_batch_normalization_63_beta_read_readvariableope
asavev2_adam_v_lenet_model_12_feature_extractor_14_batch_normalization_63_beta_read_readvariableopD
@savev2_adam_m_lenet_model_12_dense_45_kernel_read_readvariableopD
@savev2_adam_v_lenet_model_12_dense_45_kernel_read_readvariableopB
>savev2_adam_m_lenet_model_12_dense_45_bias_read_readvariableopB
>savev2_adam_v_lenet_model_12_dense_45_bias_read_readvariableopQ
Msavev2_adam_m_lenet_model_12_batch_normalization_64_gamma_read_readvariableopQ
Msavev2_adam_v_lenet_model_12_batch_normalization_64_gamma_read_readvariableopP
Lsavev2_adam_m_lenet_model_12_batch_normalization_64_beta_read_readvariableopP
Lsavev2_adam_v_lenet_model_12_batch_normalization_64_beta_read_readvariableopD
@savev2_adam_m_lenet_model_12_dense_46_kernel_read_readvariableopD
@savev2_adam_v_lenet_model_12_dense_46_kernel_read_readvariableopB
>savev2_adam_m_lenet_model_12_dense_46_bias_read_readvariableopB
>savev2_adam_v_lenet_model_12_dense_46_bias_read_readvariableopQ
Msavev2_adam_m_lenet_model_12_batch_normalization_65_gamma_read_readvariableopQ
Msavev2_adam_v_lenet_model_12_batch_normalization_65_gamma_read_readvariableopP
Lsavev2_adam_m_lenet_model_12_batch_normalization_65_beta_read_readvariableopP
Lsavev2_adam_v_lenet_model_12_batch_normalization_65_beta_read_readvariableopD
@savev2_adam_m_lenet_model_12_dense_47_kernel_read_readvariableopD
@savev2_adam_v_lenet_model_12_dense_47_kernel_read_readvariableopB
>savev2_adam_m_lenet_model_12_dense_47_bias_read_readvariableopB
>savev2_adam_v_lenet_model_12_dense_47_bias_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop
savev2_const

identity_1��MergeV2Checkpointsw
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
_temp/part�
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
value	B : �
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: �
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:E*
dtype0*�
value�B�EB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB'variables/18/.ATTRIBUTES/VARIABLE_VALUEB'variables/19/.ATTRIBUTES/VARIABLE_VALUEB'variables/20/.ATTRIBUTES/VARIABLE_VALUEB'variables/21/.ATTRIBUTES/VARIABLE_VALUEB'variables/22/.ATTRIBUTES/VARIABLE_VALUEB'variables/23/.ATTRIBUTES/VARIABLE_VALUEB'variables/24/.ATTRIBUTES/VARIABLE_VALUEB'variables/25/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/23/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/24/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/25/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/26/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/27/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/28/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/29/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/30/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/31/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/32/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/33/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/34/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/35/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/36/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:E*
dtype0*�
value�B�EB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �*
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Osavev2_lenet_model_12_feature_extractor_14_conv2d_32_kernel_read_readvariableopMsavev2_lenet_model_12_feature_extractor_14_conv2d_32_bias_read_readvariableop[savev2_lenet_model_12_feature_extractor_14_batch_normalization_62_gamma_read_readvariableopZsavev2_lenet_model_12_feature_extractor_14_batch_normalization_62_beta_read_readvariableopOsavev2_lenet_model_12_feature_extractor_14_conv2d_33_kernel_read_readvariableopMsavev2_lenet_model_12_feature_extractor_14_conv2d_33_bias_read_readvariableop[savev2_lenet_model_12_feature_extractor_14_batch_normalization_63_gamma_read_readvariableopZsavev2_lenet_model_12_feature_extractor_14_batch_normalization_63_beta_read_readvariableopasavev2_lenet_model_12_feature_extractor_14_batch_normalization_62_moving_mean_read_readvariableopesavev2_lenet_model_12_feature_extractor_14_batch_normalization_62_moving_variance_read_readvariableopasavev2_lenet_model_12_feature_extractor_14_batch_normalization_63_moving_mean_read_readvariableopesavev2_lenet_model_12_feature_extractor_14_batch_normalization_63_moving_variance_read_readvariableop9savev2_lenet_model_12_dense_45_kernel_read_readvariableop7savev2_lenet_model_12_dense_45_bias_read_readvariableopFsavev2_lenet_model_12_batch_normalization_64_gamma_read_readvariableopEsavev2_lenet_model_12_batch_normalization_64_beta_read_readvariableopLsavev2_lenet_model_12_batch_normalization_64_moving_mean_read_readvariableopPsavev2_lenet_model_12_batch_normalization_64_moving_variance_read_readvariableop9savev2_lenet_model_12_dense_46_kernel_read_readvariableop7savev2_lenet_model_12_dense_46_bias_read_readvariableopFsavev2_lenet_model_12_batch_normalization_65_gamma_read_readvariableopEsavev2_lenet_model_12_batch_normalization_65_beta_read_readvariableopLsavev2_lenet_model_12_batch_normalization_65_moving_mean_read_readvariableopPsavev2_lenet_model_12_batch_normalization_65_moving_variance_read_readvariableop9savev2_lenet_model_12_dense_47_kernel_read_readvariableop7savev2_lenet_model_12_dense_47_bias_read_readvariableop$savev2_iteration_read_readvariableop(savev2_learning_rate_read_readvariableopVsavev2_adam_m_lenet_model_12_feature_extractor_14_conv2d_32_kernel_read_readvariableopVsavev2_adam_v_lenet_model_12_feature_extractor_14_conv2d_32_kernel_read_readvariableopTsavev2_adam_m_lenet_model_12_feature_extractor_14_conv2d_32_bias_read_readvariableopTsavev2_adam_v_lenet_model_12_feature_extractor_14_conv2d_32_bias_read_readvariableopbsavev2_adam_m_lenet_model_12_feature_extractor_14_batch_normalization_62_gamma_read_readvariableopbsavev2_adam_v_lenet_model_12_feature_extractor_14_batch_normalization_62_gamma_read_readvariableopasavev2_adam_m_lenet_model_12_feature_extractor_14_batch_normalization_62_beta_read_readvariableopasavev2_adam_v_lenet_model_12_feature_extractor_14_batch_normalization_62_beta_read_readvariableopVsavev2_adam_m_lenet_model_12_feature_extractor_14_conv2d_33_kernel_read_readvariableopVsavev2_adam_v_lenet_model_12_feature_extractor_14_conv2d_33_kernel_read_readvariableopTsavev2_adam_m_lenet_model_12_feature_extractor_14_conv2d_33_bias_read_readvariableopTsavev2_adam_v_lenet_model_12_feature_extractor_14_conv2d_33_bias_read_readvariableopbsavev2_adam_m_lenet_model_12_feature_extractor_14_batch_normalization_63_gamma_read_readvariableopbsavev2_adam_v_lenet_model_12_feature_extractor_14_batch_normalization_63_gamma_read_readvariableopasavev2_adam_m_lenet_model_12_feature_extractor_14_batch_normalization_63_beta_read_readvariableopasavev2_adam_v_lenet_model_12_feature_extractor_14_batch_normalization_63_beta_read_readvariableop@savev2_adam_m_lenet_model_12_dense_45_kernel_read_readvariableop@savev2_adam_v_lenet_model_12_dense_45_kernel_read_readvariableop>savev2_adam_m_lenet_model_12_dense_45_bias_read_readvariableop>savev2_adam_v_lenet_model_12_dense_45_bias_read_readvariableopMsavev2_adam_m_lenet_model_12_batch_normalization_64_gamma_read_readvariableopMsavev2_adam_v_lenet_model_12_batch_normalization_64_gamma_read_readvariableopLsavev2_adam_m_lenet_model_12_batch_normalization_64_beta_read_readvariableopLsavev2_adam_v_lenet_model_12_batch_normalization_64_beta_read_readvariableop@savev2_adam_m_lenet_model_12_dense_46_kernel_read_readvariableop@savev2_adam_v_lenet_model_12_dense_46_kernel_read_readvariableop>savev2_adam_m_lenet_model_12_dense_46_bias_read_readvariableop>savev2_adam_v_lenet_model_12_dense_46_bias_read_readvariableopMsavev2_adam_m_lenet_model_12_batch_normalization_65_gamma_read_readvariableopMsavev2_adam_v_lenet_model_12_batch_normalization_65_gamma_read_readvariableopLsavev2_adam_m_lenet_model_12_batch_normalization_65_beta_read_readvariableopLsavev2_adam_v_lenet_model_12_batch_normalization_65_beta_read_readvariableop@savev2_adam_m_lenet_model_12_dense_47_kernel_read_readvariableop@savev2_adam_v_lenet_model_12_dense_47_kernel_read_readvariableop>savev2_adam_m_lenet_model_12_dense_47_bias_read_readvariableop>savev2_adam_v_lenet_model_12_dense_47_bias_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableopsavev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *S
dtypesI
G2E	�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*�
_input_shapes�
�: :::::::::::::
��d:d:d:d:d:d:d
:
:
:
:
:
:
:: : :::::::::::::::::
��d:
��d:d:d:d:d:d:d:d
:d
:
:
:
:
:
:
:
:
::: : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 	

_output_shapes
:: 


_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::&"
 
_output_shapes
:
��d: 

_output_shapes
:d: 

_output_shapes
:d: 

_output_shapes
:d: 

_output_shapes
:d: 

_output_shapes
:d:$ 

_output_shapes

:d
: 

_output_shapes
:
: 

_output_shapes
:
: 

_output_shapes
:
: 

_output_shapes
:
: 

_output_shapes
:
:$ 

_output_shapes

:
: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :,(
&
_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
::  

_output_shapes
:: !

_output_shapes
:: "

_output_shapes
:: #

_output_shapes
:: $

_output_shapes
::,%(
&
_output_shapes
::,&(
&
_output_shapes
:: '

_output_shapes
:: (

_output_shapes
:: )

_output_shapes
:: *

_output_shapes
:: +

_output_shapes
:: ,

_output_shapes
::&-"
 
_output_shapes
:
��d:&."
 
_output_shapes
:
��d: /

_output_shapes
:d: 0

_output_shapes
:d: 1

_output_shapes
:d: 2

_output_shapes
:d: 3

_output_shapes
:d: 4

_output_shapes
:d:$5 

_output_shapes

:d
:$6 

_output_shapes

:d
: 7

_output_shapes
:
: 8

_output_shapes
:
: 9

_output_shapes
:
: :

_output_shapes
:
: ;

_output_shapes
:
: <

_output_shapes
:
:$= 

_output_shapes

:
:$> 

_output_shapes

:
: ?

_output_shapes
:: @

_output_shapes
::A

_output_shapes
: :B

_output_shapes
: :C

_output_shapes
: :D

_output_shapes
: :E

_output_shapes
: 
�%
�
Q__inference_batch_normalization_64_layer_call_and_return_conditional_losses_36404

inputs5
'assignmovingavg_readvariableop_resource:d7
)assignmovingavg_1_readvariableop_resource:d3
%batchnorm_mul_readvariableop_resource:d/
!batchnorm_readvariableop_resource:d
identity��AssignMovingAvg�AssignMovingAvg/ReadVariableOp�AssignMovingAvg_1� AssignMovingAvg_1/ReadVariableOp�batchnorm/ReadVariableOp�batchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:d*
	keep_dims(d
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes

:d�
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*'
_output_shapes
:���������dl
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:d*
	keep_dims(m
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:d*
squeeze_dims
 s
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:d*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
:d*
dtype0�
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
:dx
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:d�
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
:d*
dtype0�
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
:d~
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:d�
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:q
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:dP
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:d~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:d*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:dc
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:���������dh
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:dv
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:d*
dtype0p
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:dr
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:���������db
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:���������d�
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������d: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:���������d
 
_user_specified_nameinputs
�
g
K__inference_max_pooling2d_33_layer_call_and_return_conditional_losses_36668

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
a
E__inference_flatten_15_layer_call_and_return_conditional_losses_36304

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"����@�  ^
ReshapeReshapeinputsConst:output:0*
T0*)
_output_shapes
:�����������Z
IdentityIdentityReshape:output:0*
T0*)
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������66:W S
/
_output_shapes
:���������66
 
_user_specified_nameinputs
�
�
6__inference_batch_normalization_65_layer_call_fn_36450

inputs
unknown:

	unknown_0:

	unknown_1:

	unknown_2:

identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_65_layer_call_and_return_conditional_losses_35002o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������
: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������

 
_user_specified_nameinputs
�
�
.__inference_lenet_model_12_layer_call_fn_35604
input_1!
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:#
	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:
	unknown_9:

unknown_10:

unknown_11:
��d

unknown_12:d

unknown_13:d

unknown_14:d

unknown_15:d

unknown_16:d

unknown_17:d


unknown_18:


unknown_19:


unknown_20:


unknown_21:


unknown_22:


unknown_23:


unknown_24:
identity��StatefulPartitionedCall�
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
unknown_21
unknown_22
unknown_23
unknown_24*&
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*4
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_lenet_model_12_layer_call_and_return_conditional_losses_35492o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*d
_input_shapesS
Q:�����������: : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
1
_output_shapes
:�����������
!
_user_specified_name	input_1
�%
�
Q__inference_batch_normalization_65_layer_call_and_return_conditional_losses_36504

inputs5
'assignmovingavg_readvariableop_resource:
7
)assignmovingavg_1_readvariableop_resource:
3
%batchnorm_mul_readvariableop_resource:
/
!batchnorm_readvariableop_resource:

identity��AssignMovingAvg�AssignMovingAvg/ReadVariableOp�AssignMovingAvg_1� AssignMovingAvg_1/ReadVariableOp�batchnorm/ReadVariableOp�batchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:
*
	keep_dims(d
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes

:
�
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*'
_output_shapes
:���������
l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:
*
	keep_dims(m
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:
*
squeeze_dims
 s
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:
*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
:
*
dtype0�
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
:
x
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:
�
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
:
*
dtype0�
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
:
~
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:
�
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:q
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:
P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:
~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:
*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:
c
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:���������
h
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:
v
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:
*
dtype0p
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:
r
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:���������
b
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:���������
�
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������
: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:���������

 
_user_specified_nameinputs
ƚ
�
I__inference_lenet_model_12_layer_call_and_return_conditional_losses_36008
xW
=feature_extractor_14_conv2d_32_conv2d_readvariableop_resource:L
>feature_extractor_14_conv2d_32_biasadd_readvariableop_resource:Q
Cfeature_extractor_14_batch_normalization_62_readvariableop_resource:S
Efeature_extractor_14_batch_normalization_62_readvariableop_1_resource:b
Tfeature_extractor_14_batch_normalization_62_fusedbatchnormv3_readvariableop_resource:d
Vfeature_extractor_14_batch_normalization_62_fusedbatchnormv3_readvariableop_1_resource:W
=feature_extractor_14_conv2d_33_conv2d_readvariableop_resource:L
>feature_extractor_14_conv2d_33_biasadd_readvariableop_resource:Q
Cfeature_extractor_14_batch_normalization_63_readvariableop_resource:S
Efeature_extractor_14_batch_normalization_63_readvariableop_1_resource:b
Tfeature_extractor_14_batch_normalization_63_fusedbatchnormv3_readvariableop_resource:d
Vfeature_extractor_14_batch_normalization_63_fusedbatchnormv3_readvariableop_1_resource:;
'dense_45_matmul_readvariableop_resource:
��d6
(dense_45_biasadd_readvariableop_resource:dF
8batch_normalization_64_batchnorm_readvariableop_resource:dJ
<batch_normalization_64_batchnorm_mul_readvariableop_resource:dH
:batch_normalization_64_batchnorm_readvariableop_1_resource:dH
:batch_normalization_64_batchnorm_readvariableop_2_resource:d9
'dense_46_matmul_readvariableop_resource:d
6
(dense_46_biasadd_readvariableop_resource:
F
8batch_normalization_65_batchnorm_readvariableop_resource:
J
<batch_normalization_65_batchnorm_mul_readvariableop_resource:
H
:batch_normalization_65_batchnorm_readvariableop_1_resource:
H
:batch_normalization_65_batchnorm_readvariableop_2_resource:
9
'dense_47_matmul_readvariableop_resource:
6
(dense_47_biasadd_readvariableop_resource:
identity��/batch_normalization_64/batchnorm/ReadVariableOp�1batch_normalization_64/batchnorm/ReadVariableOp_1�1batch_normalization_64/batchnorm/ReadVariableOp_2�3batch_normalization_64/batchnorm/mul/ReadVariableOp�/batch_normalization_65/batchnorm/ReadVariableOp�1batch_normalization_65/batchnorm/ReadVariableOp_1�1batch_normalization_65/batchnorm/ReadVariableOp_2�3batch_normalization_65/batchnorm/mul/ReadVariableOp�dense_45/BiasAdd/ReadVariableOp�dense_45/MatMul/ReadVariableOp�dense_46/BiasAdd/ReadVariableOp�dense_46/MatMul/ReadVariableOp�dense_47/BiasAdd/ReadVariableOp�dense_47/MatMul/ReadVariableOp�Kfeature_extractor_14/batch_normalization_62/FusedBatchNormV3/ReadVariableOp�Mfeature_extractor_14/batch_normalization_62/FusedBatchNormV3/ReadVariableOp_1�:feature_extractor_14/batch_normalization_62/ReadVariableOp�<feature_extractor_14/batch_normalization_62/ReadVariableOp_1�Kfeature_extractor_14/batch_normalization_63/FusedBatchNormV3/ReadVariableOp�Mfeature_extractor_14/batch_normalization_63/FusedBatchNormV3/ReadVariableOp_1�:feature_extractor_14/batch_normalization_63/ReadVariableOp�<feature_extractor_14/batch_normalization_63/ReadVariableOp_1�5feature_extractor_14/conv2d_32/BiasAdd/ReadVariableOp�4feature_extractor_14/conv2d_32/Conv2D/ReadVariableOp�5feature_extractor_14/conv2d_33/BiasAdd/ReadVariableOp�4feature_extractor_14/conv2d_33/Conv2D/ReadVariableOp�
4feature_extractor_14/conv2d_32/Conv2D/ReadVariableOpReadVariableOp=feature_extractor_14_conv2d_32_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
%feature_extractor_14/conv2d_32/Conv2DConv2Dx<feature_extractor_14/conv2d_32/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingVALID*
strides
�
5feature_extractor_14/conv2d_32/BiasAdd/ReadVariableOpReadVariableOp>feature_extractor_14_conv2d_32_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
&feature_extractor_14/conv2d_32/BiasAddBiasAdd.feature_extractor_14/conv2d_32/Conv2D:output:0=feature_extractor_14/conv2d_32/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:������������
#feature_extractor_14/conv2d_32/ReluRelu/feature_extractor_14/conv2d_32/BiasAdd:output:0*
T0*1
_output_shapes
:������������
:feature_extractor_14/batch_normalization_62/ReadVariableOpReadVariableOpCfeature_extractor_14_batch_normalization_62_readvariableop_resource*
_output_shapes
:*
dtype0�
<feature_extractor_14/batch_normalization_62/ReadVariableOp_1ReadVariableOpEfeature_extractor_14_batch_normalization_62_readvariableop_1_resource*
_output_shapes
:*
dtype0�
Kfeature_extractor_14/batch_normalization_62/FusedBatchNormV3/ReadVariableOpReadVariableOpTfeature_extractor_14_batch_normalization_62_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
Mfeature_extractor_14/batch_normalization_62/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpVfeature_extractor_14_batch_normalization_62_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
<feature_extractor_14/batch_normalization_62/FusedBatchNormV3FusedBatchNormV31feature_extractor_14/conv2d_32/Relu:activations:0Bfeature_extractor_14/batch_normalization_62/ReadVariableOp:value:0Dfeature_extractor_14/batch_normalization_62/ReadVariableOp_1:value:0Sfeature_extractor_14/batch_normalization_62/FusedBatchNormV3/ReadVariableOp:value:0Ufeature_extractor_14/batch_normalization_62/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*M
_output_shapes;
9:�����������:::::*
epsilon%o�:*
is_training( �
-feature_extractor_14/max_pooling2d_32/MaxPoolMaxPool@feature_extractor_14/batch_normalization_62/FusedBatchNormV3:y:0*/
_output_shapes
:���������oo*
ksize
*
paddingVALID*
strides
�
4feature_extractor_14/conv2d_33/Conv2D/ReadVariableOpReadVariableOp=feature_extractor_14_conv2d_33_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
%feature_extractor_14/conv2d_33/Conv2DConv2D6feature_extractor_14/max_pooling2d_32/MaxPool:output:0<feature_extractor_14/conv2d_33/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������mm*
paddingVALID*
strides
�
5feature_extractor_14/conv2d_33/BiasAdd/ReadVariableOpReadVariableOp>feature_extractor_14_conv2d_33_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
&feature_extractor_14/conv2d_33/BiasAddBiasAdd.feature_extractor_14/conv2d_33/Conv2D:output:0=feature_extractor_14/conv2d_33/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������mm�
#feature_extractor_14/conv2d_33/ReluRelu/feature_extractor_14/conv2d_33/BiasAdd:output:0*
T0*/
_output_shapes
:���������mm�
:feature_extractor_14/batch_normalization_63/ReadVariableOpReadVariableOpCfeature_extractor_14_batch_normalization_63_readvariableop_resource*
_output_shapes
:*
dtype0�
<feature_extractor_14/batch_normalization_63/ReadVariableOp_1ReadVariableOpEfeature_extractor_14_batch_normalization_63_readvariableop_1_resource*
_output_shapes
:*
dtype0�
Kfeature_extractor_14/batch_normalization_63/FusedBatchNormV3/ReadVariableOpReadVariableOpTfeature_extractor_14_batch_normalization_63_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
Mfeature_extractor_14/batch_normalization_63/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpVfeature_extractor_14_batch_normalization_63_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
<feature_extractor_14/batch_normalization_63/FusedBatchNormV3FusedBatchNormV31feature_extractor_14/conv2d_33/Relu:activations:0Bfeature_extractor_14/batch_normalization_63/ReadVariableOp:value:0Dfeature_extractor_14/batch_normalization_63/ReadVariableOp_1:value:0Sfeature_extractor_14/batch_normalization_63/FusedBatchNormV3/ReadVariableOp:value:0Ufeature_extractor_14/batch_normalization_63/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������mm:::::*
epsilon%o�:*
is_training( �
-feature_extractor_14/max_pooling2d_33/MaxPoolMaxPool@feature_extractor_14/batch_normalization_63/FusedBatchNormV3:y:0*/
_output_shapes
:���������66*
ksize
*
paddingVALID*
strides
a
flatten_15/ConstConst*
_output_shapes
:*
dtype0*
valueB"����@�  �
flatten_15/ReshapeReshape6feature_extractor_14/max_pooling2d_33/MaxPool:output:0flatten_15/Const:output:0*
T0*)
_output_shapes
:������������
dense_45/MatMul/ReadVariableOpReadVariableOp'dense_45_matmul_readvariableop_resource* 
_output_shapes
:
��d*
dtype0�
dense_45/MatMulMatMulflatten_15/Reshape:output:0&dense_45/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������d�
dense_45/BiasAdd/ReadVariableOpReadVariableOp(dense_45_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype0�
dense_45/BiasAddBiasAdddense_45/MatMul:product:0'dense_45/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������db
dense_45/ReluReludense_45/BiasAdd:output:0*
T0*'
_output_shapes
:���������d�
/batch_normalization_64/batchnorm/ReadVariableOpReadVariableOp8batch_normalization_64_batchnorm_readvariableop_resource*
_output_shapes
:d*
dtype0k
&batch_normalization_64/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
$batch_normalization_64/batchnorm/addAddV27batch_normalization_64/batchnorm/ReadVariableOp:value:0/batch_normalization_64/batchnorm/add/y:output:0*
T0*
_output_shapes
:d~
&batch_normalization_64/batchnorm/RsqrtRsqrt(batch_normalization_64/batchnorm/add:z:0*
T0*
_output_shapes
:d�
3batch_normalization_64/batchnorm/mul/ReadVariableOpReadVariableOp<batch_normalization_64_batchnorm_mul_readvariableop_resource*
_output_shapes
:d*
dtype0�
$batch_normalization_64/batchnorm/mulMul*batch_normalization_64/batchnorm/Rsqrt:y:0;batch_normalization_64/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:d�
&batch_normalization_64/batchnorm/mul_1Muldense_45/Relu:activations:0(batch_normalization_64/batchnorm/mul:z:0*
T0*'
_output_shapes
:���������d�
1batch_normalization_64/batchnorm/ReadVariableOp_1ReadVariableOp:batch_normalization_64_batchnorm_readvariableop_1_resource*
_output_shapes
:d*
dtype0�
&batch_normalization_64/batchnorm/mul_2Mul9batch_normalization_64/batchnorm/ReadVariableOp_1:value:0(batch_normalization_64/batchnorm/mul:z:0*
T0*
_output_shapes
:d�
1batch_normalization_64/batchnorm/ReadVariableOp_2ReadVariableOp:batch_normalization_64_batchnorm_readvariableop_2_resource*
_output_shapes
:d*
dtype0�
$batch_normalization_64/batchnorm/subSub9batch_normalization_64/batchnorm/ReadVariableOp_2:value:0*batch_normalization_64/batchnorm/mul_2:z:0*
T0*
_output_shapes
:d�
&batch_normalization_64/batchnorm/add_1AddV2*batch_normalization_64/batchnorm/mul_1:z:0(batch_normalization_64/batchnorm/sub:z:0*
T0*'
_output_shapes
:���������d�
dense_46/MatMul/ReadVariableOpReadVariableOp'dense_46_matmul_readvariableop_resource*
_output_shapes

:d
*
dtype0�
dense_46/MatMulMatMul*batch_normalization_64/batchnorm/add_1:z:0&dense_46/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
�
dense_46/BiasAdd/ReadVariableOpReadVariableOp(dense_46_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype0�
dense_46/BiasAddBiasAdddense_46/MatMul:product:0'dense_46/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
b
dense_46/ReluReludense_46/BiasAdd:output:0*
T0*'
_output_shapes
:���������
�
/batch_normalization_65/batchnorm/ReadVariableOpReadVariableOp8batch_normalization_65_batchnorm_readvariableop_resource*
_output_shapes
:
*
dtype0k
&batch_normalization_65/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
$batch_normalization_65/batchnorm/addAddV27batch_normalization_65/batchnorm/ReadVariableOp:value:0/batch_normalization_65/batchnorm/add/y:output:0*
T0*
_output_shapes
:
~
&batch_normalization_65/batchnorm/RsqrtRsqrt(batch_normalization_65/batchnorm/add:z:0*
T0*
_output_shapes
:
�
3batch_normalization_65/batchnorm/mul/ReadVariableOpReadVariableOp<batch_normalization_65_batchnorm_mul_readvariableop_resource*
_output_shapes
:
*
dtype0�
$batch_normalization_65/batchnorm/mulMul*batch_normalization_65/batchnorm/Rsqrt:y:0;batch_normalization_65/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:
�
&batch_normalization_65/batchnorm/mul_1Muldense_46/Relu:activations:0(batch_normalization_65/batchnorm/mul:z:0*
T0*'
_output_shapes
:���������
�
1batch_normalization_65/batchnorm/ReadVariableOp_1ReadVariableOp:batch_normalization_65_batchnorm_readvariableop_1_resource*
_output_shapes
:
*
dtype0�
&batch_normalization_65/batchnorm/mul_2Mul9batch_normalization_65/batchnorm/ReadVariableOp_1:value:0(batch_normalization_65/batchnorm/mul:z:0*
T0*
_output_shapes
:
�
1batch_normalization_65/batchnorm/ReadVariableOp_2ReadVariableOp:batch_normalization_65_batchnorm_readvariableop_2_resource*
_output_shapes
:
*
dtype0�
$batch_normalization_65/batchnorm/subSub9batch_normalization_65/batchnorm/ReadVariableOp_2:value:0*batch_normalization_65/batchnorm/mul_2:z:0*
T0*
_output_shapes
:
�
&batch_normalization_65/batchnorm/add_1AddV2*batch_normalization_65/batchnorm/mul_1:z:0(batch_normalization_65/batchnorm/sub:z:0*
T0*'
_output_shapes
:���������
�
dense_47/MatMul/ReadVariableOpReadVariableOp'dense_47_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0�
dense_47/MatMulMatMul*batch_normalization_65/batchnorm/add_1:z:0&dense_47/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
dense_47/BiasAdd/ReadVariableOpReadVariableOp(dense_47_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
dense_47/BiasAddBiasAdddense_47/MatMul:product:0'dense_47/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������h
dense_47/SigmoidSigmoiddense_47/BiasAdd:output:0*
T0*'
_output_shapes
:���������c
IdentityIdentitydense_47/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp0^batch_normalization_64/batchnorm/ReadVariableOp2^batch_normalization_64/batchnorm/ReadVariableOp_12^batch_normalization_64/batchnorm/ReadVariableOp_24^batch_normalization_64/batchnorm/mul/ReadVariableOp0^batch_normalization_65/batchnorm/ReadVariableOp2^batch_normalization_65/batchnorm/ReadVariableOp_12^batch_normalization_65/batchnorm/ReadVariableOp_24^batch_normalization_65/batchnorm/mul/ReadVariableOp ^dense_45/BiasAdd/ReadVariableOp^dense_45/MatMul/ReadVariableOp ^dense_46/BiasAdd/ReadVariableOp^dense_46/MatMul/ReadVariableOp ^dense_47/BiasAdd/ReadVariableOp^dense_47/MatMul/ReadVariableOpL^feature_extractor_14/batch_normalization_62/FusedBatchNormV3/ReadVariableOpN^feature_extractor_14/batch_normalization_62/FusedBatchNormV3/ReadVariableOp_1;^feature_extractor_14/batch_normalization_62/ReadVariableOp=^feature_extractor_14/batch_normalization_62/ReadVariableOp_1L^feature_extractor_14/batch_normalization_63/FusedBatchNormV3/ReadVariableOpN^feature_extractor_14/batch_normalization_63/FusedBatchNormV3/ReadVariableOp_1;^feature_extractor_14/batch_normalization_63/ReadVariableOp=^feature_extractor_14/batch_normalization_63/ReadVariableOp_16^feature_extractor_14/conv2d_32/BiasAdd/ReadVariableOp5^feature_extractor_14/conv2d_32/Conv2D/ReadVariableOp6^feature_extractor_14/conv2d_33/BiasAdd/ReadVariableOp5^feature_extractor_14/conv2d_33/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*d
_input_shapesS
Q:�����������: : : : : : : : : : : : : : : : : : : : : : : : : : 2b
/batch_normalization_64/batchnorm/ReadVariableOp/batch_normalization_64/batchnorm/ReadVariableOp2f
1batch_normalization_64/batchnorm/ReadVariableOp_11batch_normalization_64/batchnorm/ReadVariableOp_12f
1batch_normalization_64/batchnorm/ReadVariableOp_21batch_normalization_64/batchnorm/ReadVariableOp_22j
3batch_normalization_64/batchnorm/mul/ReadVariableOp3batch_normalization_64/batchnorm/mul/ReadVariableOp2b
/batch_normalization_65/batchnorm/ReadVariableOp/batch_normalization_65/batchnorm/ReadVariableOp2f
1batch_normalization_65/batchnorm/ReadVariableOp_11batch_normalization_65/batchnorm/ReadVariableOp_12f
1batch_normalization_65/batchnorm/ReadVariableOp_21batch_normalization_65/batchnorm/ReadVariableOp_22j
3batch_normalization_65/batchnorm/mul/ReadVariableOp3batch_normalization_65/batchnorm/mul/ReadVariableOp2B
dense_45/BiasAdd/ReadVariableOpdense_45/BiasAdd/ReadVariableOp2@
dense_45/MatMul/ReadVariableOpdense_45/MatMul/ReadVariableOp2B
dense_46/BiasAdd/ReadVariableOpdense_46/BiasAdd/ReadVariableOp2@
dense_46/MatMul/ReadVariableOpdense_46/MatMul/ReadVariableOp2B
dense_47/BiasAdd/ReadVariableOpdense_47/BiasAdd/ReadVariableOp2@
dense_47/MatMul/ReadVariableOpdense_47/MatMul/ReadVariableOp2�
Kfeature_extractor_14/batch_normalization_62/FusedBatchNormV3/ReadVariableOpKfeature_extractor_14/batch_normalization_62/FusedBatchNormV3/ReadVariableOp2�
Mfeature_extractor_14/batch_normalization_62/FusedBatchNormV3/ReadVariableOp_1Mfeature_extractor_14/batch_normalization_62/FusedBatchNormV3/ReadVariableOp_12x
:feature_extractor_14/batch_normalization_62/ReadVariableOp:feature_extractor_14/batch_normalization_62/ReadVariableOp2|
<feature_extractor_14/batch_normalization_62/ReadVariableOp_1<feature_extractor_14/batch_normalization_62/ReadVariableOp_12�
Kfeature_extractor_14/batch_normalization_63/FusedBatchNormV3/ReadVariableOpKfeature_extractor_14/batch_normalization_63/FusedBatchNormV3/ReadVariableOp2�
Mfeature_extractor_14/batch_normalization_63/FusedBatchNormV3/ReadVariableOp_1Mfeature_extractor_14/batch_normalization_63/FusedBatchNormV3/ReadVariableOp_12x
:feature_extractor_14/batch_normalization_63/ReadVariableOp:feature_extractor_14/batch_normalization_63/ReadVariableOp2|
<feature_extractor_14/batch_normalization_63/ReadVariableOp_1<feature_extractor_14/batch_normalization_63/ReadVariableOp_12n
5feature_extractor_14/conv2d_32/BiasAdd/ReadVariableOp5feature_extractor_14/conv2d_32/BiasAdd/ReadVariableOp2l
4feature_extractor_14/conv2d_32/Conv2D/ReadVariableOp4feature_extractor_14/conv2d_32/Conv2D/ReadVariableOp2n
5feature_extractor_14/conv2d_33/BiasAdd/ReadVariableOp5feature_extractor_14/conv2d_33/BiasAdd/ReadVariableOp2l
4feature_extractor_14/conv2d_33/Conv2D/ReadVariableOp4feature_extractor_14/conv2d_33/Conv2D/ReadVariableOp:T P
1
_output_shapes
:�����������

_user_specified_namex
�
�
.__inference_lenet_model_12_layer_call_fn_35227
input_1!
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:#
	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:
	unknown_9:

unknown_10:

unknown_11:
��d

unknown_12:d

unknown_13:d

unknown_14:d

unknown_15:d

unknown_16:d

unknown_17:d


unknown_18:


unknown_19:


unknown_20:


unknown_21:


unknown_22:


unknown_23:


unknown_24:
identity��StatefulPartitionedCall�
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
unknown_21
unknown_22
unknown_23
unknown_24*&
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*<
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_lenet_model_12_layer_call_and_return_conditional_losses_35172o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*d
_input_shapesS
Q:�����������: : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
1
_output_shapes
:�����������
!
_user_specified_name	input_1
�
�
#__inference_signature_wrapper_35791
input_1!
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:#
	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:
	unknown_9:

unknown_10:

unknown_11:
��d

unknown_12:d

unknown_13:d

unknown_14:d

unknown_15:d

unknown_16:d

unknown_17:d


unknown_18:


unknown_19:


unknown_20:


unknown_21:


unknown_22:


unknown_23:


unknown_24:
identity��StatefulPartitionedCall�
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
unknown_21
unknown_22
unknown_23
unknown_24*&
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*<
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *)
f$R"
 __inference__wrapped_model_34697o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*d
_input_shapesS
Q:�����������: : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
1
_output_shapes
:�����������
!
_user_specified_name	input_1
�
�
(__inference_dense_46_layer_call_fn_36413

inputs
unknown:d

	unknown_0:

identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_dense_46_layer_call_and_return_conditional_losses_35139o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������d: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������d
 
_user_specified_nameinputs
�
�!
 __inference__wrapped_model_34697
input_1f
Llenet_model_12_feature_extractor_14_conv2d_32_conv2d_readvariableop_resource:[
Mlenet_model_12_feature_extractor_14_conv2d_32_biasadd_readvariableop_resource:`
Rlenet_model_12_feature_extractor_14_batch_normalization_62_readvariableop_resource:b
Tlenet_model_12_feature_extractor_14_batch_normalization_62_readvariableop_1_resource:q
clenet_model_12_feature_extractor_14_batch_normalization_62_fusedbatchnormv3_readvariableop_resource:s
elenet_model_12_feature_extractor_14_batch_normalization_62_fusedbatchnormv3_readvariableop_1_resource:f
Llenet_model_12_feature_extractor_14_conv2d_33_conv2d_readvariableop_resource:[
Mlenet_model_12_feature_extractor_14_conv2d_33_biasadd_readvariableop_resource:`
Rlenet_model_12_feature_extractor_14_batch_normalization_63_readvariableop_resource:b
Tlenet_model_12_feature_extractor_14_batch_normalization_63_readvariableop_1_resource:q
clenet_model_12_feature_extractor_14_batch_normalization_63_fusedbatchnormv3_readvariableop_resource:s
elenet_model_12_feature_extractor_14_batch_normalization_63_fusedbatchnormv3_readvariableop_1_resource:J
6lenet_model_12_dense_45_matmul_readvariableop_resource:
��dE
7lenet_model_12_dense_45_biasadd_readvariableop_resource:dU
Glenet_model_12_batch_normalization_64_batchnorm_readvariableop_resource:dY
Klenet_model_12_batch_normalization_64_batchnorm_mul_readvariableop_resource:dW
Ilenet_model_12_batch_normalization_64_batchnorm_readvariableop_1_resource:dW
Ilenet_model_12_batch_normalization_64_batchnorm_readvariableop_2_resource:dH
6lenet_model_12_dense_46_matmul_readvariableop_resource:d
E
7lenet_model_12_dense_46_biasadd_readvariableop_resource:
U
Glenet_model_12_batch_normalization_65_batchnorm_readvariableop_resource:
Y
Klenet_model_12_batch_normalization_65_batchnorm_mul_readvariableop_resource:
W
Ilenet_model_12_batch_normalization_65_batchnorm_readvariableop_1_resource:
W
Ilenet_model_12_batch_normalization_65_batchnorm_readvariableop_2_resource:
H
6lenet_model_12_dense_47_matmul_readvariableop_resource:
E
7lenet_model_12_dense_47_biasadd_readvariableop_resource:
identity��>lenet_model_12/batch_normalization_64/batchnorm/ReadVariableOp�@lenet_model_12/batch_normalization_64/batchnorm/ReadVariableOp_1�@lenet_model_12/batch_normalization_64/batchnorm/ReadVariableOp_2�Blenet_model_12/batch_normalization_64/batchnorm/mul/ReadVariableOp�>lenet_model_12/batch_normalization_65/batchnorm/ReadVariableOp�@lenet_model_12/batch_normalization_65/batchnorm/ReadVariableOp_1�@lenet_model_12/batch_normalization_65/batchnorm/ReadVariableOp_2�Blenet_model_12/batch_normalization_65/batchnorm/mul/ReadVariableOp�.lenet_model_12/dense_45/BiasAdd/ReadVariableOp�-lenet_model_12/dense_45/MatMul/ReadVariableOp�.lenet_model_12/dense_46/BiasAdd/ReadVariableOp�-lenet_model_12/dense_46/MatMul/ReadVariableOp�.lenet_model_12/dense_47/BiasAdd/ReadVariableOp�-lenet_model_12/dense_47/MatMul/ReadVariableOp�Zlenet_model_12/feature_extractor_14/batch_normalization_62/FusedBatchNormV3/ReadVariableOp�\lenet_model_12/feature_extractor_14/batch_normalization_62/FusedBatchNormV3/ReadVariableOp_1�Ilenet_model_12/feature_extractor_14/batch_normalization_62/ReadVariableOp�Klenet_model_12/feature_extractor_14/batch_normalization_62/ReadVariableOp_1�Zlenet_model_12/feature_extractor_14/batch_normalization_63/FusedBatchNormV3/ReadVariableOp�\lenet_model_12/feature_extractor_14/batch_normalization_63/FusedBatchNormV3/ReadVariableOp_1�Ilenet_model_12/feature_extractor_14/batch_normalization_63/ReadVariableOp�Klenet_model_12/feature_extractor_14/batch_normalization_63/ReadVariableOp_1�Dlenet_model_12/feature_extractor_14/conv2d_32/BiasAdd/ReadVariableOp�Clenet_model_12/feature_extractor_14/conv2d_32/Conv2D/ReadVariableOp�Dlenet_model_12/feature_extractor_14/conv2d_33/BiasAdd/ReadVariableOp�Clenet_model_12/feature_extractor_14/conv2d_33/Conv2D/ReadVariableOp�
Clenet_model_12/feature_extractor_14/conv2d_32/Conv2D/ReadVariableOpReadVariableOpLlenet_model_12_feature_extractor_14_conv2d_32_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
4lenet_model_12/feature_extractor_14/conv2d_32/Conv2DConv2Dinput_1Klenet_model_12/feature_extractor_14/conv2d_32/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingVALID*
strides
�
Dlenet_model_12/feature_extractor_14/conv2d_32/BiasAdd/ReadVariableOpReadVariableOpMlenet_model_12_feature_extractor_14_conv2d_32_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
5lenet_model_12/feature_extractor_14/conv2d_32/BiasAddBiasAdd=lenet_model_12/feature_extractor_14/conv2d_32/Conv2D:output:0Llenet_model_12/feature_extractor_14/conv2d_32/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:������������
2lenet_model_12/feature_extractor_14/conv2d_32/ReluRelu>lenet_model_12/feature_extractor_14/conv2d_32/BiasAdd:output:0*
T0*1
_output_shapes
:������������
Ilenet_model_12/feature_extractor_14/batch_normalization_62/ReadVariableOpReadVariableOpRlenet_model_12_feature_extractor_14_batch_normalization_62_readvariableop_resource*
_output_shapes
:*
dtype0�
Klenet_model_12/feature_extractor_14/batch_normalization_62/ReadVariableOp_1ReadVariableOpTlenet_model_12_feature_extractor_14_batch_normalization_62_readvariableop_1_resource*
_output_shapes
:*
dtype0�
Zlenet_model_12/feature_extractor_14/batch_normalization_62/FusedBatchNormV3/ReadVariableOpReadVariableOpclenet_model_12_feature_extractor_14_batch_normalization_62_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
\lenet_model_12/feature_extractor_14/batch_normalization_62/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpelenet_model_12_feature_extractor_14_batch_normalization_62_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
Klenet_model_12/feature_extractor_14/batch_normalization_62/FusedBatchNormV3FusedBatchNormV3@lenet_model_12/feature_extractor_14/conv2d_32/Relu:activations:0Qlenet_model_12/feature_extractor_14/batch_normalization_62/ReadVariableOp:value:0Slenet_model_12/feature_extractor_14/batch_normalization_62/ReadVariableOp_1:value:0blenet_model_12/feature_extractor_14/batch_normalization_62/FusedBatchNormV3/ReadVariableOp:value:0dlenet_model_12/feature_extractor_14/batch_normalization_62/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*M
_output_shapes;
9:�����������:::::*
epsilon%o�:*
is_training( �
<lenet_model_12/feature_extractor_14/max_pooling2d_32/MaxPoolMaxPoolOlenet_model_12/feature_extractor_14/batch_normalization_62/FusedBatchNormV3:y:0*/
_output_shapes
:���������oo*
ksize
*
paddingVALID*
strides
�
Clenet_model_12/feature_extractor_14/conv2d_33/Conv2D/ReadVariableOpReadVariableOpLlenet_model_12_feature_extractor_14_conv2d_33_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
4lenet_model_12/feature_extractor_14/conv2d_33/Conv2DConv2DElenet_model_12/feature_extractor_14/max_pooling2d_32/MaxPool:output:0Klenet_model_12/feature_extractor_14/conv2d_33/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������mm*
paddingVALID*
strides
�
Dlenet_model_12/feature_extractor_14/conv2d_33/BiasAdd/ReadVariableOpReadVariableOpMlenet_model_12_feature_extractor_14_conv2d_33_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
5lenet_model_12/feature_extractor_14/conv2d_33/BiasAddBiasAdd=lenet_model_12/feature_extractor_14/conv2d_33/Conv2D:output:0Llenet_model_12/feature_extractor_14/conv2d_33/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������mm�
2lenet_model_12/feature_extractor_14/conv2d_33/ReluRelu>lenet_model_12/feature_extractor_14/conv2d_33/BiasAdd:output:0*
T0*/
_output_shapes
:���������mm�
Ilenet_model_12/feature_extractor_14/batch_normalization_63/ReadVariableOpReadVariableOpRlenet_model_12_feature_extractor_14_batch_normalization_63_readvariableop_resource*
_output_shapes
:*
dtype0�
Klenet_model_12/feature_extractor_14/batch_normalization_63/ReadVariableOp_1ReadVariableOpTlenet_model_12_feature_extractor_14_batch_normalization_63_readvariableop_1_resource*
_output_shapes
:*
dtype0�
Zlenet_model_12/feature_extractor_14/batch_normalization_63/FusedBatchNormV3/ReadVariableOpReadVariableOpclenet_model_12_feature_extractor_14_batch_normalization_63_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
\lenet_model_12/feature_extractor_14/batch_normalization_63/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpelenet_model_12_feature_extractor_14_batch_normalization_63_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
Klenet_model_12/feature_extractor_14/batch_normalization_63/FusedBatchNormV3FusedBatchNormV3@lenet_model_12/feature_extractor_14/conv2d_33/Relu:activations:0Qlenet_model_12/feature_extractor_14/batch_normalization_63/ReadVariableOp:value:0Slenet_model_12/feature_extractor_14/batch_normalization_63/ReadVariableOp_1:value:0blenet_model_12/feature_extractor_14/batch_normalization_63/FusedBatchNormV3/ReadVariableOp:value:0dlenet_model_12/feature_extractor_14/batch_normalization_63/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������mm:::::*
epsilon%o�:*
is_training( �
<lenet_model_12/feature_extractor_14/max_pooling2d_33/MaxPoolMaxPoolOlenet_model_12/feature_extractor_14/batch_normalization_63/FusedBatchNormV3:y:0*/
_output_shapes
:���������66*
ksize
*
paddingVALID*
strides
p
lenet_model_12/flatten_15/ConstConst*
_output_shapes
:*
dtype0*
valueB"����@�  �
!lenet_model_12/flatten_15/ReshapeReshapeElenet_model_12/feature_extractor_14/max_pooling2d_33/MaxPool:output:0(lenet_model_12/flatten_15/Const:output:0*
T0*)
_output_shapes
:������������
-lenet_model_12/dense_45/MatMul/ReadVariableOpReadVariableOp6lenet_model_12_dense_45_matmul_readvariableop_resource* 
_output_shapes
:
��d*
dtype0�
lenet_model_12/dense_45/MatMulMatMul*lenet_model_12/flatten_15/Reshape:output:05lenet_model_12/dense_45/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������d�
.lenet_model_12/dense_45/BiasAdd/ReadVariableOpReadVariableOp7lenet_model_12_dense_45_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype0�
lenet_model_12/dense_45/BiasAddBiasAdd(lenet_model_12/dense_45/MatMul:product:06lenet_model_12/dense_45/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������d�
lenet_model_12/dense_45/ReluRelu(lenet_model_12/dense_45/BiasAdd:output:0*
T0*'
_output_shapes
:���������d�
>lenet_model_12/batch_normalization_64/batchnorm/ReadVariableOpReadVariableOpGlenet_model_12_batch_normalization_64_batchnorm_readvariableop_resource*
_output_shapes
:d*
dtype0z
5lenet_model_12/batch_normalization_64/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
3lenet_model_12/batch_normalization_64/batchnorm/addAddV2Flenet_model_12/batch_normalization_64/batchnorm/ReadVariableOp:value:0>lenet_model_12/batch_normalization_64/batchnorm/add/y:output:0*
T0*
_output_shapes
:d�
5lenet_model_12/batch_normalization_64/batchnorm/RsqrtRsqrt7lenet_model_12/batch_normalization_64/batchnorm/add:z:0*
T0*
_output_shapes
:d�
Blenet_model_12/batch_normalization_64/batchnorm/mul/ReadVariableOpReadVariableOpKlenet_model_12_batch_normalization_64_batchnorm_mul_readvariableop_resource*
_output_shapes
:d*
dtype0�
3lenet_model_12/batch_normalization_64/batchnorm/mulMul9lenet_model_12/batch_normalization_64/batchnorm/Rsqrt:y:0Jlenet_model_12/batch_normalization_64/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:d�
5lenet_model_12/batch_normalization_64/batchnorm/mul_1Mul*lenet_model_12/dense_45/Relu:activations:07lenet_model_12/batch_normalization_64/batchnorm/mul:z:0*
T0*'
_output_shapes
:���������d�
@lenet_model_12/batch_normalization_64/batchnorm/ReadVariableOp_1ReadVariableOpIlenet_model_12_batch_normalization_64_batchnorm_readvariableop_1_resource*
_output_shapes
:d*
dtype0�
5lenet_model_12/batch_normalization_64/batchnorm/mul_2MulHlenet_model_12/batch_normalization_64/batchnorm/ReadVariableOp_1:value:07lenet_model_12/batch_normalization_64/batchnorm/mul:z:0*
T0*
_output_shapes
:d�
@lenet_model_12/batch_normalization_64/batchnorm/ReadVariableOp_2ReadVariableOpIlenet_model_12_batch_normalization_64_batchnorm_readvariableop_2_resource*
_output_shapes
:d*
dtype0�
3lenet_model_12/batch_normalization_64/batchnorm/subSubHlenet_model_12/batch_normalization_64/batchnorm/ReadVariableOp_2:value:09lenet_model_12/batch_normalization_64/batchnorm/mul_2:z:0*
T0*
_output_shapes
:d�
5lenet_model_12/batch_normalization_64/batchnorm/add_1AddV29lenet_model_12/batch_normalization_64/batchnorm/mul_1:z:07lenet_model_12/batch_normalization_64/batchnorm/sub:z:0*
T0*'
_output_shapes
:���������d�
-lenet_model_12/dense_46/MatMul/ReadVariableOpReadVariableOp6lenet_model_12_dense_46_matmul_readvariableop_resource*
_output_shapes

:d
*
dtype0�
lenet_model_12/dense_46/MatMulMatMul9lenet_model_12/batch_normalization_64/batchnorm/add_1:z:05lenet_model_12/dense_46/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
�
.lenet_model_12/dense_46/BiasAdd/ReadVariableOpReadVariableOp7lenet_model_12_dense_46_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype0�
lenet_model_12/dense_46/BiasAddBiasAdd(lenet_model_12/dense_46/MatMul:product:06lenet_model_12/dense_46/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
�
lenet_model_12/dense_46/ReluRelu(lenet_model_12/dense_46/BiasAdd:output:0*
T0*'
_output_shapes
:���������
�
>lenet_model_12/batch_normalization_65/batchnorm/ReadVariableOpReadVariableOpGlenet_model_12_batch_normalization_65_batchnorm_readvariableop_resource*
_output_shapes
:
*
dtype0z
5lenet_model_12/batch_normalization_65/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
3lenet_model_12/batch_normalization_65/batchnorm/addAddV2Flenet_model_12/batch_normalization_65/batchnorm/ReadVariableOp:value:0>lenet_model_12/batch_normalization_65/batchnorm/add/y:output:0*
T0*
_output_shapes
:
�
5lenet_model_12/batch_normalization_65/batchnorm/RsqrtRsqrt7lenet_model_12/batch_normalization_65/batchnorm/add:z:0*
T0*
_output_shapes
:
�
Blenet_model_12/batch_normalization_65/batchnorm/mul/ReadVariableOpReadVariableOpKlenet_model_12_batch_normalization_65_batchnorm_mul_readvariableop_resource*
_output_shapes
:
*
dtype0�
3lenet_model_12/batch_normalization_65/batchnorm/mulMul9lenet_model_12/batch_normalization_65/batchnorm/Rsqrt:y:0Jlenet_model_12/batch_normalization_65/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:
�
5lenet_model_12/batch_normalization_65/batchnorm/mul_1Mul*lenet_model_12/dense_46/Relu:activations:07lenet_model_12/batch_normalization_65/batchnorm/mul:z:0*
T0*'
_output_shapes
:���������
�
@lenet_model_12/batch_normalization_65/batchnorm/ReadVariableOp_1ReadVariableOpIlenet_model_12_batch_normalization_65_batchnorm_readvariableop_1_resource*
_output_shapes
:
*
dtype0�
5lenet_model_12/batch_normalization_65/batchnorm/mul_2MulHlenet_model_12/batch_normalization_65/batchnorm/ReadVariableOp_1:value:07lenet_model_12/batch_normalization_65/batchnorm/mul:z:0*
T0*
_output_shapes
:
�
@lenet_model_12/batch_normalization_65/batchnorm/ReadVariableOp_2ReadVariableOpIlenet_model_12_batch_normalization_65_batchnorm_readvariableop_2_resource*
_output_shapes
:
*
dtype0�
3lenet_model_12/batch_normalization_65/batchnorm/subSubHlenet_model_12/batch_normalization_65/batchnorm/ReadVariableOp_2:value:09lenet_model_12/batch_normalization_65/batchnorm/mul_2:z:0*
T0*
_output_shapes
:
�
5lenet_model_12/batch_normalization_65/batchnorm/add_1AddV29lenet_model_12/batch_normalization_65/batchnorm/mul_1:z:07lenet_model_12/batch_normalization_65/batchnorm/sub:z:0*
T0*'
_output_shapes
:���������
�
-lenet_model_12/dense_47/MatMul/ReadVariableOpReadVariableOp6lenet_model_12_dense_47_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0�
lenet_model_12/dense_47/MatMulMatMul9lenet_model_12/batch_normalization_65/batchnorm/add_1:z:05lenet_model_12/dense_47/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
.lenet_model_12/dense_47/BiasAdd/ReadVariableOpReadVariableOp7lenet_model_12_dense_47_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
lenet_model_12/dense_47/BiasAddBiasAdd(lenet_model_12/dense_47/MatMul:product:06lenet_model_12/dense_47/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
lenet_model_12/dense_47/SigmoidSigmoid(lenet_model_12/dense_47/BiasAdd:output:0*
T0*'
_output_shapes
:���������r
IdentityIdentity#lenet_model_12/dense_47/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp?^lenet_model_12/batch_normalization_64/batchnorm/ReadVariableOpA^lenet_model_12/batch_normalization_64/batchnorm/ReadVariableOp_1A^lenet_model_12/batch_normalization_64/batchnorm/ReadVariableOp_2C^lenet_model_12/batch_normalization_64/batchnorm/mul/ReadVariableOp?^lenet_model_12/batch_normalization_65/batchnorm/ReadVariableOpA^lenet_model_12/batch_normalization_65/batchnorm/ReadVariableOp_1A^lenet_model_12/batch_normalization_65/batchnorm/ReadVariableOp_2C^lenet_model_12/batch_normalization_65/batchnorm/mul/ReadVariableOp/^lenet_model_12/dense_45/BiasAdd/ReadVariableOp.^lenet_model_12/dense_45/MatMul/ReadVariableOp/^lenet_model_12/dense_46/BiasAdd/ReadVariableOp.^lenet_model_12/dense_46/MatMul/ReadVariableOp/^lenet_model_12/dense_47/BiasAdd/ReadVariableOp.^lenet_model_12/dense_47/MatMul/ReadVariableOp[^lenet_model_12/feature_extractor_14/batch_normalization_62/FusedBatchNormV3/ReadVariableOp]^lenet_model_12/feature_extractor_14/batch_normalization_62/FusedBatchNormV3/ReadVariableOp_1J^lenet_model_12/feature_extractor_14/batch_normalization_62/ReadVariableOpL^lenet_model_12/feature_extractor_14/batch_normalization_62/ReadVariableOp_1[^lenet_model_12/feature_extractor_14/batch_normalization_63/FusedBatchNormV3/ReadVariableOp]^lenet_model_12/feature_extractor_14/batch_normalization_63/FusedBatchNormV3/ReadVariableOp_1J^lenet_model_12/feature_extractor_14/batch_normalization_63/ReadVariableOpL^lenet_model_12/feature_extractor_14/batch_normalization_63/ReadVariableOp_1E^lenet_model_12/feature_extractor_14/conv2d_32/BiasAdd/ReadVariableOpD^lenet_model_12/feature_extractor_14/conv2d_32/Conv2D/ReadVariableOpE^lenet_model_12/feature_extractor_14/conv2d_33/BiasAdd/ReadVariableOpD^lenet_model_12/feature_extractor_14/conv2d_33/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*d
_input_shapesS
Q:�����������: : : : : : : : : : : : : : : : : : : : : : : : : : 2�
>lenet_model_12/batch_normalization_64/batchnorm/ReadVariableOp>lenet_model_12/batch_normalization_64/batchnorm/ReadVariableOp2�
@lenet_model_12/batch_normalization_64/batchnorm/ReadVariableOp_1@lenet_model_12/batch_normalization_64/batchnorm/ReadVariableOp_12�
@lenet_model_12/batch_normalization_64/batchnorm/ReadVariableOp_2@lenet_model_12/batch_normalization_64/batchnorm/ReadVariableOp_22�
Blenet_model_12/batch_normalization_64/batchnorm/mul/ReadVariableOpBlenet_model_12/batch_normalization_64/batchnorm/mul/ReadVariableOp2�
>lenet_model_12/batch_normalization_65/batchnorm/ReadVariableOp>lenet_model_12/batch_normalization_65/batchnorm/ReadVariableOp2�
@lenet_model_12/batch_normalization_65/batchnorm/ReadVariableOp_1@lenet_model_12/batch_normalization_65/batchnorm/ReadVariableOp_12�
@lenet_model_12/batch_normalization_65/batchnorm/ReadVariableOp_2@lenet_model_12/batch_normalization_65/batchnorm/ReadVariableOp_22�
Blenet_model_12/batch_normalization_65/batchnorm/mul/ReadVariableOpBlenet_model_12/batch_normalization_65/batchnorm/mul/ReadVariableOp2`
.lenet_model_12/dense_45/BiasAdd/ReadVariableOp.lenet_model_12/dense_45/BiasAdd/ReadVariableOp2^
-lenet_model_12/dense_45/MatMul/ReadVariableOp-lenet_model_12/dense_45/MatMul/ReadVariableOp2`
.lenet_model_12/dense_46/BiasAdd/ReadVariableOp.lenet_model_12/dense_46/BiasAdd/ReadVariableOp2^
-lenet_model_12/dense_46/MatMul/ReadVariableOp-lenet_model_12/dense_46/MatMul/ReadVariableOp2`
.lenet_model_12/dense_47/BiasAdd/ReadVariableOp.lenet_model_12/dense_47/BiasAdd/ReadVariableOp2^
-lenet_model_12/dense_47/MatMul/ReadVariableOp-lenet_model_12/dense_47/MatMul/ReadVariableOp2�
Zlenet_model_12/feature_extractor_14/batch_normalization_62/FusedBatchNormV3/ReadVariableOpZlenet_model_12/feature_extractor_14/batch_normalization_62/FusedBatchNormV3/ReadVariableOp2�
\lenet_model_12/feature_extractor_14/batch_normalization_62/FusedBatchNormV3/ReadVariableOp_1\lenet_model_12/feature_extractor_14/batch_normalization_62/FusedBatchNormV3/ReadVariableOp_12�
Ilenet_model_12/feature_extractor_14/batch_normalization_62/ReadVariableOpIlenet_model_12/feature_extractor_14/batch_normalization_62/ReadVariableOp2�
Klenet_model_12/feature_extractor_14/batch_normalization_62/ReadVariableOp_1Klenet_model_12/feature_extractor_14/batch_normalization_62/ReadVariableOp_12�
Zlenet_model_12/feature_extractor_14/batch_normalization_63/FusedBatchNormV3/ReadVariableOpZlenet_model_12/feature_extractor_14/batch_normalization_63/FusedBatchNormV3/ReadVariableOp2�
\lenet_model_12/feature_extractor_14/batch_normalization_63/FusedBatchNormV3/ReadVariableOp_1\lenet_model_12/feature_extractor_14/batch_normalization_63/FusedBatchNormV3/ReadVariableOp_12�
Ilenet_model_12/feature_extractor_14/batch_normalization_63/ReadVariableOpIlenet_model_12/feature_extractor_14/batch_normalization_63/ReadVariableOp2�
Klenet_model_12/feature_extractor_14/batch_normalization_63/ReadVariableOp_1Klenet_model_12/feature_extractor_14/batch_normalization_63/ReadVariableOp_12�
Dlenet_model_12/feature_extractor_14/conv2d_32/BiasAdd/ReadVariableOpDlenet_model_12/feature_extractor_14/conv2d_32/BiasAdd/ReadVariableOp2�
Clenet_model_12/feature_extractor_14/conv2d_32/Conv2D/ReadVariableOpClenet_model_12/feature_extractor_14/conv2d_32/Conv2D/ReadVariableOp2�
Dlenet_model_12/feature_extractor_14/conv2d_33/BiasAdd/ReadVariableOpDlenet_model_12/feature_extractor_14/conv2d_33/BiasAdd/ReadVariableOp2�
Clenet_model_12/feature_extractor_14/conv2d_33/Conv2D/ReadVariableOpClenet_model_12/feature_extractor_14/conv2d_33/Conv2D/ReadVariableOp:Z V
1
_output_shapes
:�����������
!
_user_specified_name	input_1
�I
�
O__inference_feature_extractor_14_layer_call_and_return_conditional_losses_36293
xB
(conv2d_32_conv2d_readvariableop_resource:7
)conv2d_32_biasadd_readvariableop_resource:<
.batch_normalization_62_readvariableop_resource:>
0batch_normalization_62_readvariableop_1_resource:M
?batch_normalization_62_fusedbatchnormv3_readvariableop_resource:O
Abatch_normalization_62_fusedbatchnormv3_readvariableop_1_resource:B
(conv2d_33_conv2d_readvariableop_resource:7
)conv2d_33_biasadd_readvariableop_resource:<
.batch_normalization_63_readvariableop_resource:>
0batch_normalization_63_readvariableop_1_resource:M
?batch_normalization_63_fusedbatchnormv3_readvariableop_resource:O
Abatch_normalization_63_fusedbatchnormv3_readvariableop_1_resource:
identity��%batch_normalization_62/AssignNewValue�'batch_normalization_62/AssignNewValue_1�6batch_normalization_62/FusedBatchNormV3/ReadVariableOp�8batch_normalization_62/FusedBatchNormV3/ReadVariableOp_1�%batch_normalization_62/ReadVariableOp�'batch_normalization_62/ReadVariableOp_1�%batch_normalization_63/AssignNewValue�'batch_normalization_63/AssignNewValue_1�6batch_normalization_63/FusedBatchNormV3/ReadVariableOp�8batch_normalization_63/FusedBatchNormV3/ReadVariableOp_1�%batch_normalization_63/ReadVariableOp�'batch_normalization_63/ReadVariableOp_1� conv2d_32/BiasAdd/ReadVariableOp�conv2d_32/Conv2D/ReadVariableOp� conv2d_33/BiasAdd/ReadVariableOp�conv2d_33/Conv2D/ReadVariableOp�
conv2d_32/Conv2D/ReadVariableOpReadVariableOp(conv2d_32_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
conv2d_32/Conv2DConv2Dx'conv2d_32/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingVALID*
strides
�
 conv2d_32/BiasAdd/ReadVariableOpReadVariableOp)conv2d_32_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
conv2d_32/BiasAddBiasAddconv2d_32/Conv2D:output:0(conv2d_32/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������n
conv2d_32/ReluReluconv2d_32/BiasAdd:output:0*
T0*1
_output_shapes
:������������
%batch_normalization_62/ReadVariableOpReadVariableOp.batch_normalization_62_readvariableop_resource*
_output_shapes
:*
dtype0�
'batch_normalization_62/ReadVariableOp_1ReadVariableOp0batch_normalization_62_readvariableop_1_resource*
_output_shapes
:*
dtype0�
6batch_normalization_62/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_62_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
8batch_normalization_62/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_62_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
'batch_normalization_62/FusedBatchNormV3FusedBatchNormV3conv2d_32/Relu:activations:0-batch_normalization_62/ReadVariableOp:value:0/batch_normalization_62/ReadVariableOp_1:value:0>batch_normalization_62/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_62/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*M
_output_shapes;
9:�����������:::::*
epsilon%o�:*
exponential_avg_factor%
�#<�
%batch_normalization_62/AssignNewValueAssignVariableOp?batch_normalization_62_fusedbatchnormv3_readvariableop_resource4batch_normalization_62/FusedBatchNormV3:batch_mean:07^batch_normalization_62/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
'batch_normalization_62/AssignNewValue_1AssignVariableOpAbatch_normalization_62_fusedbatchnormv3_readvariableop_1_resource8batch_normalization_62/FusedBatchNormV3:batch_variance:09^batch_normalization_62/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(�
max_pooling2d_32/MaxPoolMaxPool+batch_normalization_62/FusedBatchNormV3:y:0*/
_output_shapes
:���������oo*
ksize
*
paddingVALID*
strides
�
conv2d_33/Conv2D/ReadVariableOpReadVariableOp(conv2d_33_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
conv2d_33/Conv2DConv2D!max_pooling2d_32/MaxPool:output:0'conv2d_33/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������mm*
paddingVALID*
strides
�
 conv2d_33/BiasAdd/ReadVariableOpReadVariableOp)conv2d_33_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
conv2d_33/BiasAddBiasAddconv2d_33/Conv2D:output:0(conv2d_33/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������mml
conv2d_33/ReluReluconv2d_33/BiasAdd:output:0*
T0*/
_output_shapes
:���������mm�
%batch_normalization_63/ReadVariableOpReadVariableOp.batch_normalization_63_readvariableop_resource*
_output_shapes
:*
dtype0�
'batch_normalization_63/ReadVariableOp_1ReadVariableOp0batch_normalization_63_readvariableop_1_resource*
_output_shapes
:*
dtype0�
6batch_normalization_63/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_63_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
8batch_normalization_63/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_63_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
'batch_normalization_63/FusedBatchNormV3FusedBatchNormV3conv2d_33/Relu:activations:0-batch_normalization_63/ReadVariableOp:value:0/batch_normalization_63/ReadVariableOp_1:value:0>batch_normalization_63/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_63/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������mm:::::*
epsilon%o�:*
exponential_avg_factor%
�#<�
%batch_normalization_63/AssignNewValueAssignVariableOp?batch_normalization_63_fusedbatchnormv3_readvariableop_resource4batch_normalization_63/FusedBatchNormV3:batch_mean:07^batch_normalization_63/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
'batch_normalization_63/AssignNewValue_1AssignVariableOpAbatch_normalization_63_fusedbatchnormv3_readvariableop_1_resource8batch_normalization_63/FusedBatchNormV3:batch_variance:09^batch_normalization_63/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(�
max_pooling2d_33/MaxPoolMaxPool+batch_normalization_63/FusedBatchNormV3:y:0*/
_output_shapes
:���������66*
ksize
*
paddingVALID*
strides
x
IdentityIdentity!max_pooling2d_33/MaxPool:output:0^NoOp*
T0*/
_output_shapes
:���������66�
NoOpNoOp&^batch_normalization_62/AssignNewValue(^batch_normalization_62/AssignNewValue_17^batch_normalization_62/FusedBatchNormV3/ReadVariableOp9^batch_normalization_62/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_62/ReadVariableOp(^batch_normalization_62/ReadVariableOp_1&^batch_normalization_63/AssignNewValue(^batch_normalization_63/AssignNewValue_17^batch_normalization_63/FusedBatchNormV3/ReadVariableOp9^batch_normalization_63/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_63/ReadVariableOp(^batch_normalization_63/ReadVariableOp_1!^conv2d_32/BiasAdd/ReadVariableOp ^conv2d_32/Conv2D/ReadVariableOp!^conv2d_33/BiasAdd/ReadVariableOp ^conv2d_33/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:�����������: : : : : : : : : : : : 2N
%batch_normalization_62/AssignNewValue%batch_normalization_62/AssignNewValue2R
'batch_normalization_62/AssignNewValue_1'batch_normalization_62/AssignNewValue_12p
6batch_normalization_62/FusedBatchNormV3/ReadVariableOp6batch_normalization_62/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_62/FusedBatchNormV3/ReadVariableOp_18batch_normalization_62/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_62/ReadVariableOp%batch_normalization_62/ReadVariableOp2R
'batch_normalization_62/ReadVariableOp_1'batch_normalization_62/ReadVariableOp_12N
%batch_normalization_63/AssignNewValue%batch_normalization_63/AssignNewValue2R
'batch_normalization_63/AssignNewValue_1'batch_normalization_63/AssignNewValue_12p
6batch_normalization_63/FusedBatchNormV3/ReadVariableOp6batch_normalization_63/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_63/FusedBatchNormV3/ReadVariableOp_18batch_normalization_63/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_63/ReadVariableOp%batch_normalization_63/ReadVariableOp2R
'batch_normalization_63/ReadVariableOp_1'batch_normalization_63/ReadVariableOp_12D
 conv2d_32/BiasAdd/ReadVariableOp conv2d_32/BiasAdd/ReadVariableOp2B
conv2d_32/Conv2D/ReadVariableOpconv2d_32/Conv2D/ReadVariableOp2D
 conv2d_33/BiasAdd/ReadVariableOp conv2d_33/BiasAdd/ReadVariableOp2B
conv2d_33/Conv2D/ReadVariableOpconv2d_33/Conv2D/ReadVariableOp:T P
1
_output_shapes
:�����������

_user_specified_namex"�
L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
E
input_1:
serving_default_input_1:0�����������<
output_10
StatefulPartitionedCall:0���������tensorflow/serving/predict:��
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
feature_extractor
	flatten

dense_1
batch_1
dense_2
batch_2
dense_3
	optimizer

signatures"
_tf_keras_model
�
0
1
2
3
4
5
6
7
8
9
10
11
12
13
14
 15
!16
"17
#18
$19
%20
&21
'22
(23
)24
*25"
trackable_list_wrapper
�
0
1
2
3
4
5
6
7
8
9
10
 11
#12
$13
%14
&15
)16
*17"
trackable_list_wrapper
 "
trackable_list_wrapper
�
+non_trainable_variables

,layers
-metrics
.layer_regularization_losses
/layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
0trace_0
1trace_1
2trace_2
3trace_32�
.__inference_lenet_model_12_layer_call_fn_35227
.__inference_lenet_model_12_layer_call_fn_35848
.__inference_lenet_model_12_layer_call_fn_35905
.__inference_lenet_model_12_layer_call_fn_35604�
���
FullArgSpec
args�
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargs�

jtraining%
kwonlydefaults�

trainingp 
annotations� *
 z0trace_0z1trace_1z2trace_2z3trace_3
�
4trace_0
5trace_1
6trace_2
7trace_32�
I__inference_lenet_model_12_layer_call_and_return_conditional_losses_36008
I__inference_lenet_model_12_layer_call_and_return_conditional_losses_36139
I__inference_lenet_model_12_layer_call_and_return_conditional_losses_35667
I__inference_lenet_model_12_layer_call_and_return_conditional_losses_35730�
���
FullArgSpec
args�
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargs�

jtraining%
kwonlydefaults�

trainingp 
annotations� *
 z4trace_0z5trace_1z6trace_2z7trace_3
�B�
 __inference__wrapped_model_34697input_1"�
���
FullArgSpec
args� 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�
8	variables
9trainable_variables
:regularization_losses
;	keras_api
<__call__
*=&call_and_return_all_conditional_losses

>conv_1
?batch_1

@pool_1

Aconv_2
Bbatch_2

Cpool_2"
_tf_keras_layer
�
D	variables
Etrainable_variables
Fregularization_losses
G	keras_api
H__call__
*I&call_and_return_all_conditional_losses"
_tf_keras_layer
�
J	variables
Ktrainable_variables
Lregularization_losses
M	keras_api
N__call__
*O&call_and_return_all_conditional_losses

kernel
bias"
_tf_keras_layer
�
P	variables
Qtrainable_variables
Rregularization_losses
S	keras_api
T__call__
*U&call_and_return_all_conditional_losses
Vaxis
	gamma
 beta
!moving_mean
"moving_variance"
_tf_keras_layer
�
W	variables
Xtrainable_variables
Yregularization_losses
Z	keras_api
[__call__
*\&call_and_return_all_conditional_losses

#kernel
$bias"
_tf_keras_layer
�
]	variables
^trainable_variables
_regularization_losses
`	keras_api
a__call__
*b&call_and_return_all_conditional_losses
caxis
	%gamma
&beta
'moving_mean
(moving_variance"
_tf_keras_layer
�
d	variables
etrainable_variables
fregularization_losses
g	keras_api
h__call__
*i&call_and_return_all_conditional_losses

)kernel
*bias"
_tf_keras_layer
�
j
_variables
k_iterations
l_learning_rate
m_index_dict
n
_momentums
o_velocities
p_update_step_xla"
experimentalOptimizer
,
qserving_default"
signature_map
N:L24lenet_model_12/feature_extractor_14/conv2d_32/kernel
@:>22lenet_model_12/feature_extractor_14/conv2d_32/bias
N:L2@lenet_model_12/feature_extractor_14/batch_normalization_62/gamma
M:K2?lenet_model_12/feature_extractor_14/batch_normalization_62/beta
N:L24lenet_model_12/feature_extractor_14/conv2d_33/kernel
@:>22lenet_model_12/feature_extractor_14/conv2d_33/bias
N:L2@lenet_model_12/feature_extractor_14/batch_normalization_63/gamma
M:K2?lenet_model_12/feature_extractor_14/batch_normalization_63/beta
V:T (2Flenet_model_12/feature_extractor_14/batch_normalization_62/moving_mean
Z:X (2Jlenet_model_12/feature_extractor_14/batch_normalization_62/moving_variance
V:T (2Flenet_model_12/feature_extractor_14/batch_normalization_63/moving_mean
Z:X (2Jlenet_model_12/feature_extractor_14/batch_normalization_63/moving_variance
2:0
��d2lenet_model_12/dense_45/kernel
*:(d2lenet_model_12/dense_45/bias
9:7d2+lenet_model_12/batch_normalization_64/gamma
8:6d2*lenet_model_12/batch_normalization_64/beta
A:?d (21lenet_model_12/batch_normalization_64/moving_mean
E:Cd (25lenet_model_12/batch_normalization_64/moving_variance
0:.d
2lenet_model_12/dense_46/kernel
*:(
2lenet_model_12/dense_46/bias
9:7
2+lenet_model_12/batch_normalization_65/gamma
8:6
2*lenet_model_12/batch_normalization_65/beta
A:?
 (21lenet_model_12/batch_normalization_65/moving_mean
E:C
 (25lenet_model_12/batch_normalization_65/moving_variance
0:.
2lenet_model_12/dense_47/kernel
*:(2lenet_model_12/dense_47/bias
X
0
1
2
3
!4
"5
'6
(7"
trackable_list_wrapper
Q
0
	1

2
3
4
5
6"
trackable_list_wrapper
.
r0
s1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
.__inference_lenet_model_12_layer_call_fn_35227input_1"�
���
FullArgSpec
args�
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargs�

jtraining%
kwonlydefaults�

trainingp 
annotations� *
 
�B�
.__inference_lenet_model_12_layer_call_fn_35848x"�
���
FullArgSpec
args�
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargs�

jtraining%
kwonlydefaults�

trainingp 
annotations� *
 
�B�
.__inference_lenet_model_12_layer_call_fn_35905x"�
���
FullArgSpec
args�
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargs�

jtraining%
kwonlydefaults�

trainingp 
annotations� *
 
�B�
.__inference_lenet_model_12_layer_call_fn_35604input_1"�
���
FullArgSpec
args�
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargs�

jtraining%
kwonlydefaults�

trainingp 
annotations� *
 
�B�
I__inference_lenet_model_12_layer_call_and_return_conditional_losses_36008x"�
���
FullArgSpec
args�
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargs�

jtraining%
kwonlydefaults�

trainingp 
annotations� *
 
�B�
I__inference_lenet_model_12_layer_call_and_return_conditional_losses_36139x"�
���
FullArgSpec
args�
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargs�

jtraining%
kwonlydefaults�

trainingp 
annotations� *
 
�B�
I__inference_lenet_model_12_layer_call_and_return_conditional_losses_35667input_1"�
���
FullArgSpec
args�
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargs�

jtraining%
kwonlydefaults�

trainingp 
annotations� *
 
�B�
I__inference_lenet_model_12_layer_call_and_return_conditional_losses_35730input_1"�
���
FullArgSpec
args�
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargs�

jtraining%
kwonlydefaults�

trainingp 
annotations� *
 
v
0
1
2
3
4
5
6
7
8
9
10
11"
trackable_list_wrapper
X
0
1
2
3
4
5
6
7"
trackable_list_wrapper
 "
trackable_list_wrapper
�
tnon_trainable_variables

ulayers
vmetrics
wlayer_regularization_losses
xlayer_metrics
8	variables
9trainable_variables
:regularization_losses
<__call__
*=&call_and_return_all_conditional_losses
&="call_and_return_conditional_losses"
_generic_user_object
�
ytrace_0
ztrace_12�
4__inference_feature_extractor_14_layer_call_fn_36168
4__inference_feature_extractor_14_layer_call_fn_36197�
���
FullArgSpec$
args�
jself
jx

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zytrace_0zztrace_1
�
{trace_0
|trace_12�
O__inference_feature_extractor_14_layer_call_and_return_conditional_losses_36245
O__inference_feature_extractor_14_layer_call_and_return_conditional_losses_36293�
���
FullArgSpec$
args�
jself
jx

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z{trace_0z|trace_1
�
}	variables
~trainable_variables
regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

kernel
bias
!�_jit_compiled_convolution_op"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis
	gamma
beta
moving_mean
moving_variance"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

kernel
bias
!�_jit_compiled_convolution_op"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis
	gamma
beta
moving_mean
moving_variance"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
D	variables
Etrainable_variables
Fregularization_losses
H__call__
*I&call_and_return_all_conditional_losses
&I"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
*__inference_flatten_15_layer_call_fn_36298�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
E__inference_flatten_15_layer_call_and_return_conditional_losses_36304�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
J	variables
Ktrainable_variables
Lregularization_losses
N__call__
*O&call_and_return_all_conditional_losses
&O"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
(__inference_dense_45_layer_call_fn_36313�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
C__inference_dense_45_layer_call_and_return_conditional_losses_36324�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
<
0
 1
!2
"3"
trackable_list_wrapper
.
0
 1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
P	variables
Qtrainable_variables
Rregularization_losses
T__call__
*U&call_and_return_all_conditional_losses
&U"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
6__inference_batch_normalization_64_layer_call_fn_36337
6__inference_batch_normalization_64_layer_call_fn_36350�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
Q__inference_batch_normalization_64_layer_call_and_return_conditional_losses_36370
Q__inference_batch_normalization_64_layer_call_and_return_conditional_losses_36404�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
 "
trackable_list_wrapper
.
#0
$1"
trackable_list_wrapper
.
#0
$1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
W	variables
Xtrainable_variables
Yregularization_losses
[__call__
*\&call_and_return_all_conditional_losses
&\"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
(__inference_dense_46_layer_call_fn_36413�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
C__inference_dense_46_layer_call_and_return_conditional_losses_36424�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
<
%0
&1
'2
(3"
trackable_list_wrapper
.
%0
&1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
]	variables
^trainable_variables
_regularization_losses
a__call__
*b&call_and_return_all_conditional_losses
&b"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
6__inference_batch_normalization_65_layer_call_fn_36437
6__inference_batch_normalization_65_layer_call_fn_36450�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
Q__inference_batch_normalization_65_layer_call_and_return_conditional_losses_36470
Q__inference_batch_normalization_65_layer_call_and_return_conditional_losses_36504�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
 "
trackable_list_wrapper
.
)0
*1"
trackable_list_wrapper
.
)0
*1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
d	variables
etrainable_variables
fregularization_losses
h__call__
*i&call_and_return_all_conditional_losses
&i"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
(__inference_dense_47_layer_call_fn_36513�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
C__inference_dense_47_layer_call_and_return_conditional_losses_36524�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
k0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10
�11
�12
�13
�14
�15
�16
�17
�18
�19
�20
�21
�22
�23
�24
�25
�26
�27
�28
�29
�30
�31
�32
�33
�34
�35
�36"
trackable_list_wrapper
:	 2	iteration
: 2learning_rate
 "
trackable_dict_wrapper
�
�0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10
�11
�12
�13
�14
�15
�16
�17"
trackable_list_wrapper
�
�0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10
�11
�12
�13
�14
�15
�16
�17"
trackable_list_wrapper
�2��
���
FullArgSpec2
args*�'
jself

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
�B�
#__inference_signature_wrapper_35791input_1"�
���
FullArgSpec
args� 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
R
�	variables
�	keras_api

�total

�count"
_tf_keras_metric
c
�	variables
�	keras_api

�total

�count
�
_fn_kwargs"
_tf_keras_metric
<
0
1
2
3"
trackable_list_wrapper
J
>0
?1
@2
A3
B4
C5"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
4__inference_feature_extractor_14_layer_call_fn_36168x"�
���
FullArgSpec$
args�
jself
jx

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
4__inference_feature_extractor_14_layer_call_fn_36197x"�
���
FullArgSpec$
args�
jself
jx

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
O__inference_feature_extractor_14_layer_call_and_return_conditional_losses_36245x"�
���
FullArgSpec$
args�
jself
jx

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
O__inference_feature_extractor_14_layer_call_and_return_conditional_losses_36293x"�
���
FullArgSpec$
args�
jself
jx

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
}	variables
~trainable_variables
regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec'
args�
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
<
0
1
2
3"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
6__inference_batch_normalization_62_layer_call_fn_36537
6__inference_batch_normalization_62_layer_call_fn_36550�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
Q__inference_batch_normalization_62_layer_call_and_return_conditional_losses_36568
Q__inference_batch_normalization_62_layer_call_and_return_conditional_losses_36586�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
0__inference_max_pooling2d_32_layer_call_fn_36591�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
K__inference_max_pooling2d_32_layer_call_and_return_conditional_losses_36596�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec'
args�
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
<
0
1
2
3"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
6__inference_batch_normalization_63_layer_call_fn_36609
6__inference_batch_normalization_63_layer_call_fn_36622�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
Q__inference_batch_normalization_63_layer_call_and_return_conditional_losses_36640
Q__inference_batch_normalization_63_layer_call_and_return_conditional_losses_36658�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
0__inference_max_pooling2d_33_layer_call_fn_36663�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
K__inference_max_pooling2d_33_layer_call_and_return_conditional_losses_36668�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
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
�B�
*__inference_flatten_15_layer_call_fn_36298inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
E__inference_flatten_15_layer_call_and_return_conditional_losses_36304inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
�B�
(__inference_dense_45_layer_call_fn_36313inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
C__inference_dense_45_layer_call_and_return_conditional_losses_36324inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
.
!0
"1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
6__inference_batch_normalization_64_layer_call_fn_36337inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
6__inference_batch_normalization_64_layer_call_fn_36350inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
Q__inference_batch_normalization_64_layer_call_and_return_conditional_losses_36370inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
Q__inference_batch_normalization_64_layer_call_and_return_conditional_losses_36404inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
�B�
(__inference_dense_46_layer_call_fn_36413inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
C__inference_dense_46_layer_call_and_return_conditional_losses_36424inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
.
'0
(1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
6__inference_batch_normalization_65_layer_call_fn_36437inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
6__inference_batch_normalization_65_layer_call_fn_36450inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
Q__inference_batch_normalization_65_layer_call_and_return_conditional_losses_36470inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
Q__inference_batch_normalization_65_layer_call_and_return_conditional_losses_36504inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
�B�
(__inference_dense_47_layer_call_fn_36513inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
C__inference_dense_47_layer_call_and_return_conditional_losses_36524inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
S:Q2;Adam/m/lenet_model_12/feature_extractor_14/conv2d_32/kernel
S:Q2;Adam/v/lenet_model_12/feature_extractor_14/conv2d_32/kernel
E:C29Adam/m/lenet_model_12/feature_extractor_14/conv2d_32/bias
E:C29Adam/v/lenet_model_12/feature_extractor_14/conv2d_32/bias
S:Q2GAdam/m/lenet_model_12/feature_extractor_14/batch_normalization_62/gamma
S:Q2GAdam/v/lenet_model_12/feature_extractor_14/batch_normalization_62/gamma
R:P2FAdam/m/lenet_model_12/feature_extractor_14/batch_normalization_62/beta
R:P2FAdam/v/lenet_model_12/feature_extractor_14/batch_normalization_62/beta
S:Q2;Adam/m/lenet_model_12/feature_extractor_14/conv2d_33/kernel
S:Q2;Adam/v/lenet_model_12/feature_extractor_14/conv2d_33/kernel
E:C29Adam/m/lenet_model_12/feature_extractor_14/conv2d_33/bias
E:C29Adam/v/lenet_model_12/feature_extractor_14/conv2d_33/bias
S:Q2GAdam/m/lenet_model_12/feature_extractor_14/batch_normalization_63/gamma
S:Q2GAdam/v/lenet_model_12/feature_extractor_14/batch_normalization_63/gamma
R:P2FAdam/m/lenet_model_12/feature_extractor_14/batch_normalization_63/beta
R:P2FAdam/v/lenet_model_12/feature_extractor_14/batch_normalization_63/beta
7:5
��d2%Adam/m/lenet_model_12/dense_45/kernel
7:5
��d2%Adam/v/lenet_model_12/dense_45/kernel
/:-d2#Adam/m/lenet_model_12/dense_45/bias
/:-d2#Adam/v/lenet_model_12/dense_45/bias
>:<d22Adam/m/lenet_model_12/batch_normalization_64/gamma
>:<d22Adam/v/lenet_model_12/batch_normalization_64/gamma
=:;d21Adam/m/lenet_model_12/batch_normalization_64/beta
=:;d21Adam/v/lenet_model_12/batch_normalization_64/beta
5:3d
2%Adam/m/lenet_model_12/dense_46/kernel
5:3d
2%Adam/v/lenet_model_12/dense_46/kernel
/:-
2#Adam/m/lenet_model_12/dense_46/bias
/:-
2#Adam/v/lenet_model_12/dense_46/bias
>:<
22Adam/m/lenet_model_12/batch_normalization_65/gamma
>:<
22Adam/v/lenet_model_12/batch_normalization_65/gamma
=:;
21Adam/m/lenet_model_12/batch_normalization_65/beta
=:;
21Adam/v/lenet_model_12/batch_normalization_65/beta
5:3
2%Adam/m/lenet_model_12/dense_47/kernel
5:3
2%Adam/v/lenet_model_12/dense_47/kernel
/:-2#Adam/m/lenet_model_12/dense_47/bias
/:-2#Adam/v/lenet_model_12/dense_47/bias
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
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
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
6__inference_batch_normalization_62_layer_call_fn_36537inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
6__inference_batch_normalization_62_layer_call_fn_36550inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
Q__inference_batch_normalization_62_layer_call_and_return_conditional_losses_36568inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
Q__inference_batch_normalization_62_layer_call_and_return_conditional_losses_36586inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
�B�
0__inference_max_pooling2d_32_layer_call_fn_36591inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
K__inference_max_pooling2d_32_layer_call_and_return_conditional_losses_36596inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
6__inference_batch_normalization_63_layer_call_fn_36609inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
6__inference_batch_normalization_63_layer_call_fn_36622inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
Q__inference_batch_normalization_63_layer_call_and_return_conditional_losses_36640inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
Q__inference_batch_normalization_63_layer_call_and_return_conditional_losses_36658inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
�B�
0__inference_max_pooling2d_33_layer_call_fn_36663inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
K__inference_max_pooling2d_33_layer_call_and_return_conditional_losses_36668inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 �
 __inference__wrapped_model_34697�"! #$(%'&)*:�7
0�-
+�(
input_1�����������
� "3�0
.
output_1"�
output_1����������
Q__inference_batch_normalization_62_layer_call_and_return_conditional_losses_36568�M�J
C�@
:�7
inputs+���������������������������
p 
� "F�C
<�9
tensor_0+���������������������������
� �
Q__inference_batch_normalization_62_layer_call_and_return_conditional_losses_36586�M�J
C�@
:�7
inputs+���������������������������
p
� "F�C
<�9
tensor_0+���������������������������
� �
6__inference_batch_normalization_62_layer_call_fn_36537�M�J
C�@
:�7
inputs+���������������������������
p 
� ";�8
unknown+����������������������������
6__inference_batch_normalization_62_layer_call_fn_36550�M�J
C�@
:�7
inputs+���������������������������
p
� ";�8
unknown+����������������������������
Q__inference_batch_normalization_63_layer_call_and_return_conditional_losses_36640�M�J
C�@
:�7
inputs+���������������������������
p 
� "F�C
<�9
tensor_0+���������������������������
� �
Q__inference_batch_normalization_63_layer_call_and_return_conditional_losses_36658�M�J
C�@
:�7
inputs+���������������������������
p
� "F�C
<�9
tensor_0+���������������������������
� �
6__inference_batch_normalization_63_layer_call_fn_36609�M�J
C�@
:�7
inputs+���������������������������
p 
� ";�8
unknown+����������������������������
6__inference_batch_normalization_63_layer_call_fn_36622�M�J
C�@
:�7
inputs+���������������������������
p
� ";�8
unknown+����������������������������
Q__inference_batch_normalization_64_layer_call_and_return_conditional_losses_36370i"! 3�0
)�&
 �
inputs���������d
p 
� ",�)
"�
tensor_0���������d
� �
Q__inference_batch_normalization_64_layer_call_and_return_conditional_losses_36404i!" 3�0
)�&
 �
inputs���������d
p
� ",�)
"�
tensor_0���������d
� �
6__inference_batch_normalization_64_layer_call_fn_36337^"! 3�0
)�&
 �
inputs���������d
p 
� "!�
unknown���������d�
6__inference_batch_normalization_64_layer_call_fn_36350^!" 3�0
)�&
 �
inputs���������d
p
� "!�
unknown���������d�
Q__inference_batch_normalization_65_layer_call_and_return_conditional_losses_36470i(%'&3�0
)�&
 �
inputs���������

p 
� ",�)
"�
tensor_0���������

� �
Q__inference_batch_normalization_65_layer_call_and_return_conditional_losses_36504i'(%&3�0
)�&
 �
inputs���������

p
� ",�)
"�
tensor_0���������

� �
6__inference_batch_normalization_65_layer_call_fn_36437^(%'&3�0
)�&
 �
inputs���������

p 
� "!�
unknown���������
�
6__inference_batch_normalization_65_layer_call_fn_36450^'(%&3�0
)�&
 �
inputs���������

p
� "!�
unknown���������
�
C__inference_dense_45_layer_call_and_return_conditional_losses_36324e1�.
'�$
"�
inputs�����������
� ",�)
"�
tensor_0���������d
� �
(__inference_dense_45_layer_call_fn_36313Z1�.
'�$
"�
inputs�����������
� "!�
unknown���������d�
C__inference_dense_46_layer_call_and_return_conditional_losses_36424c#$/�,
%�"
 �
inputs���������d
� ",�)
"�
tensor_0���������

� �
(__inference_dense_46_layer_call_fn_36413X#$/�,
%�"
 �
inputs���������d
� "!�
unknown���������
�
C__inference_dense_47_layer_call_and_return_conditional_losses_36524c)*/�,
%�"
 �
inputs���������

� ",�)
"�
tensor_0���������
� �
(__inference_dense_47_layer_call_fn_36513X)*/�,
%�"
 �
inputs���������

� "!�
unknown����������
O__inference_feature_extractor_14_layer_call_and_return_conditional_losses_36245~8�5
.�+
%�"
x�����������
p 
� "4�1
*�'
tensor_0���������66
� �
O__inference_feature_extractor_14_layer_call_and_return_conditional_losses_36293~8�5
.�+
%�"
x�����������
p
� "4�1
*�'
tensor_0���������66
� �
4__inference_feature_extractor_14_layer_call_fn_36168s8�5
.�+
%�"
x�����������
p 
� ")�&
unknown���������66�
4__inference_feature_extractor_14_layer_call_fn_36197s8�5
.�+
%�"
x�����������
p
� ")�&
unknown���������66�
E__inference_flatten_15_layer_call_and_return_conditional_losses_36304i7�4
-�*
(�%
inputs���������66
� ".�+
$�!
tensor_0�����������
� �
*__inference_flatten_15_layer_call_fn_36298^7�4
-�*
(�%
inputs���������66
� "#� 
unknown������������
I__inference_lenet_model_12_layer_call_and_return_conditional_losses_35667�"! #$(%'&)*J�G
0�-
+�(
input_1�����������
�

trainingp ",�)
"�
tensor_0���������
� �
I__inference_lenet_model_12_layer_call_and_return_conditional_losses_35730�!" #$'(%&)*J�G
0�-
+�(
input_1�����������
�

trainingp",�)
"�
tensor_0���������
� �
I__inference_lenet_model_12_layer_call_and_return_conditional_losses_36008�"! #$(%'&)*D�A
*�'
%�"
x�����������
�

trainingp ",�)
"�
tensor_0���������
� �
I__inference_lenet_model_12_layer_call_and_return_conditional_losses_36139�!" #$'(%&)*D�A
*�'
%�"
x�����������
�

trainingp",�)
"�
tensor_0���������
� �
.__inference_lenet_model_12_layer_call_fn_35227�"! #$(%'&)*J�G
0�-
+�(
input_1�����������
�

trainingp "!�
unknown����������
.__inference_lenet_model_12_layer_call_fn_35604�!" #$'(%&)*J�G
0�-
+�(
input_1�����������
�

trainingp"!�
unknown����������
.__inference_lenet_model_12_layer_call_fn_35848�"! #$(%'&)*D�A
*�'
%�"
x�����������
�

trainingp "!�
unknown����������
.__inference_lenet_model_12_layer_call_fn_35905�!" #$'(%&)*D�A
*�'
%�"
x�����������
�

trainingp"!�
unknown����������
K__inference_max_pooling2d_32_layer_call_and_return_conditional_losses_36596�R�O
H�E
C�@
inputs4������������������������������������
� "O�L
E�B
tensor_04������������������������������������
� �
0__inference_max_pooling2d_32_layer_call_fn_36591�R�O
H�E
C�@
inputs4������������������������������������
� "D�A
unknown4�������������������������������������
K__inference_max_pooling2d_33_layer_call_and_return_conditional_losses_36668�R�O
H�E
C�@
inputs4������������������������������������
� "O�L
E�B
tensor_04������������������������������������
� �
0__inference_max_pooling2d_33_layer_call_fn_36663�R�O
H�E
C�@
inputs4������������������������������������
� "D�A
unknown4�������������������������������������
#__inference_signature_wrapper_35791�"! #$(%'&)*E�B
� 
;�8
6
input_1+�(
input_1�����������"3�0
.
output_1"�
output_1���������