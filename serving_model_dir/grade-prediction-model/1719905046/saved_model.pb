¨
Ý°
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
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
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
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
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

MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( 
?
Mul
x"T
y"T
z"T"
Ttype:
2	

NoOp
U
NotEqual
x"T
y"T
z
"	
Ttype"$
incompatible_shape_errorbool(
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 

ParseExampleV2

serialized	
names
sparse_keys

dense_keys
ragged_keys
dense_defaults2Tdense
sparse_indices	*
num_sparse
sparse_values2sparse_types
sparse_shapes	*
num_sparse
dense_values2Tdense#
ragged_values2ragged_value_types'
ragged_row_splits2ragged_split_types"
Tdense
list(type)(:
2	"

num_sparseint("%
sparse_types
list(type)(:
2	"+
ragged_value_types
list(type)(:
2	"*
ragged_split_types
list(type)(:
2	"
dense_shapeslist(shape)(
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
X
PlaceholderWithDefault
input"dtype
output"dtype"
dtypetype"
shapeshape
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
A
SelectV2
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
9
Softmax
logits"T
softmax"T"
Ttype:
2
-
Sqrt
x"T
y"T"
Ttype:

2
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

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 
&
	ZerosLike
x"T
y"T"	
Ttype"serve*2.10.12v2.10.0-76-gfdfc646704c8ĄÎ
J
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ťS?
L
Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *Ýô?
L
Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *îő>
L
Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *mf!>
L
Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *s>
L
Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *ńSB>
L
Const_6Const*
_output_shapes
: *
dtype0*
valueB
 *ď;W>
L
Const_7Const*
_output_shapes
: *
dtype0*
valueB
 *É×>
L
Const_8Const*
_output_shapes
: *
dtype0*
valueB
 *ŽÝs>
L
Const_9Const*
_output_shapes
: *
dtype0*
valueB
 *DČ>
M
Const_10Const*
_output_shapes
: *
dtype0*
valueB
 * ?
M
Const_11Const*
_output_shapes
: *
dtype0*
valueB
 *@
M
Const_12Const*
_output_shapes
: *
dtype0*
valueB
 * sW>
M
Const_13Const*
_output_shapes
: *
dtype0*
valueB
 *á>
M
Const_14Const*
_output_shapes
: *
dtype0*
valueB
 */ŽB
M
Const_15Const*
_output_shapes
: *
dtype0*
valueB
 *o:gA
M
Const_16Const*
_output_shapes
: *
dtype0*
valueB
 *#Y˙A
M
Const_17Const*
_output_shapes
: *
dtype0*
valueB
 *Ž$A
M
Const_18Const*
_output_shapes
: *
dtype0*
valueB
 *%|?
M
Const_19Const*
_output_shapes
: *
dtype0*
valueB
 *_Ü?
M
Const_20Const*
_output_shapes
: *
dtype0*
valueB
 *ľ?
M
Const_21Const*
_output_shapes
: *
dtype0*
valueB
 *-b?
M
Const_22Const*
_output_shapes
: *
dtype0*
valueB
 *WŢ>
M
Const_23Const*
_output_shapes
: *
dtype0*
valueB
 *Ăć?
M
Const_24Const*
_output_shapes
: *
dtype0*
valueB
 *É/¤?
M
Const_25Const*
_output_shapes
: *
dtype0*
valueB
 *ŇA
~
Adam/dense_7/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_7/bias/v
w
'Adam/dense_7/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_7/bias/v*
_output_shapes
:*
dtype0

Adam/dense_7/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*&
shared_nameAdam/dense_7/kernel/v

)Adam/dense_7/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_7/kernel/v*
_output_shapes
:	*
dtype0

!Adam/batch_normalization_5/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!Adam/batch_normalization_5/beta/v

5Adam/batch_normalization_5/beta/v/Read/ReadVariableOpReadVariableOp!Adam/batch_normalization_5/beta/v*
_output_shapes	
:*
dtype0

"Adam/batch_normalization_5/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adam/batch_normalization_5/gamma/v

6Adam/batch_normalization_5/gamma/v/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_5/gamma/v*
_output_shapes	
:*
dtype0

Adam/dense_6/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_6/bias/v
x
'Adam/dense_6/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_6/bias/v*
_output_shapes	
:*
dtype0

Adam/dense_6/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*&
shared_nameAdam/dense_6/kernel/v

)Adam/dense_6/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_6/kernel/v* 
_output_shapes
:
*
dtype0

!Adam/batch_normalization_4/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!Adam/batch_normalization_4/beta/v

5Adam/batch_normalization_4/beta/v/Read/ReadVariableOpReadVariableOp!Adam/batch_normalization_4/beta/v*
_output_shapes	
:*
dtype0

"Adam/batch_normalization_4/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adam/batch_normalization_4/gamma/v

6Adam/batch_normalization_4/gamma/v/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_4/gamma/v*
_output_shapes	
:*
dtype0

Adam/dense_5/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_5/bias/v
x
'Adam/dense_5/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_5/bias/v*
_output_shapes	
:*
dtype0

Adam/dense_5/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*&
shared_nameAdam/dense_5/kernel/v

)Adam/dense_5/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_5/kernel/v* 
_output_shapes
:
*
dtype0

!Adam/batch_normalization_3/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!Adam/batch_normalization_3/beta/v

5Adam/batch_normalization_3/beta/v/Read/ReadVariableOpReadVariableOp!Adam/batch_normalization_3/beta/v*
_output_shapes	
:*
dtype0

"Adam/batch_normalization_3/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adam/batch_normalization_3/gamma/v

6Adam/batch_normalization_3/gamma/v/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_3/gamma/v*
_output_shapes	
:*
dtype0

Adam/dense_4/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_4/bias/v
x
'Adam/dense_4/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_4/bias/v*
_output_shapes	
:*
dtype0

Adam/dense_4/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*&
shared_nameAdam/dense_4/kernel/v

)Adam/dense_4/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_4/kernel/v*
_output_shapes
:	*
dtype0
~
Adam/dense_7/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_7/bias/m
w
'Adam/dense_7/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_7/bias/m*
_output_shapes
:*
dtype0

Adam/dense_7/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*&
shared_nameAdam/dense_7/kernel/m

)Adam/dense_7/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_7/kernel/m*
_output_shapes
:	*
dtype0

!Adam/batch_normalization_5/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!Adam/batch_normalization_5/beta/m

5Adam/batch_normalization_5/beta/m/Read/ReadVariableOpReadVariableOp!Adam/batch_normalization_5/beta/m*
_output_shapes	
:*
dtype0

"Adam/batch_normalization_5/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adam/batch_normalization_5/gamma/m

6Adam/batch_normalization_5/gamma/m/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_5/gamma/m*
_output_shapes	
:*
dtype0

Adam/dense_6/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_6/bias/m
x
'Adam/dense_6/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_6/bias/m*
_output_shapes	
:*
dtype0

Adam/dense_6/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*&
shared_nameAdam/dense_6/kernel/m

)Adam/dense_6/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_6/kernel/m* 
_output_shapes
:
*
dtype0

!Adam/batch_normalization_4/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!Adam/batch_normalization_4/beta/m

5Adam/batch_normalization_4/beta/m/Read/ReadVariableOpReadVariableOp!Adam/batch_normalization_4/beta/m*
_output_shapes	
:*
dtype0

"Adam/batch_normalization_4/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adam/batch_normalization_4/gamma/m

6Adam/batch_normalization_4/gamma/m/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_4/gamma/m*
_output_shapes	
:*
dtype0

Adam/dense_5/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_5/bias/m
x
'Adam/dense_5/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_5/bias/m*
_output_shapes	
:*
dtype0

Adam/dense_5/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*&
shared_nameAdam/dense_5/kernel/m

)Adam/dense_5/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_5/kernel/m* 
_output_shapes
:
*
dtype0

!Adam/batch_normalization_3/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!Adam/batch_normalization_3/beta/m

5Adam/batch_normalization_3/beta/m/Read/ReadVariableOpReadVariableOp!Adam/batch_normalization_3/beta/m*
_output_shapes	
:*
dtype0

"Adam/batch_normalization_3/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adam/batch_normalization_3/gamma/m

6Adam/batch_normalization_3/gamma/m/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_3/gamma/m*
_output_shapes	
:*
dtype0

Adam/dense_4/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_4/bias/m
x
'Adam/dense_4/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_4/bias/m*
_output_shapes	
:*
dtype0

Adam/dense_4/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*&
shared_nameAdam/dense_4/kernel/m

)Adam/dense_4/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_4/kernel/m*
_output_shapes
:	*
dtype0
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
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
p
dense_7/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_7/bias
i
 dense_7/bias/Read/ReadVariableOpReadVariableOpdense_7/bias*
_output_shapes
:*
dtype0
y
dense_7/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*
shared_namedense_7/kernel
r
"dense_7/kernel/Read/ReadVariableOpReadVariableOpdense_7/kernel*
_output_shapes
:	*
dtype0
Ł
%batch_normalization_5/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*6
shared_name'%batch_normalization_5/moving_variance

9batch_normalization_5/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_5/moving_variance*
_output_shapes	
:*
dtype0

!batch_normalization_5/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!batch_normalization_5/moving_mean

5batch_normalization_5/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_5/moving_mean*
_output_shapes	
:*
dtype0

batch_normalization_5/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_namebatch_normalization_5/beta

.batch_normalization_5/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_5/beta*
_output_shapes	
:*
dtype0

batch_normalization_5/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namebatch_normalization_5/gamma

/batch_normalization_5/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_5/gamma*
_output_shapes	
:*
dtype0
q
dense_6/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_6/bias
j
 dense_6/bias/Read/ReadVariableOpReadVariableOpdense_6/bias*
_output_shapes	
:*
dtype0
z
dense_6/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*
shared_namedense_6/kernel
s
"dense_6/kernel/Read/ReadVariableOpReadVariableOpdense_6/kernel* 
_output_shapes
:
*
dtype0
Ł
%batch_normalization_4/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*6
shared_name'%batch_normalization_4/moving_variance

9batch_normalization_4/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_4/moving_variance*
_output_shapes	
:*
dtype0

!batch_normalization_4/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!batch_normalization_4/moving_mean

5batch_normalization_4/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_4/moving_mean*
_output_shapes	
:*
dtype0

batch_normalization_4/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_namebatch_normalization_4/beta

.batch_normalization_4/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_4/beta*
_output_shapes	
:*
dtype0

batch_normalization_4/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namebatch_normalization_4/gamma

/batch_normalization_4/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_4/gamma*
_output_shapes	
:*
dtype0
q
dense_5/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_5/bias
j
 dense_5/bias/Read/ReadVariableOpReadVariableOpdense_5/bias*
_output_shapes	
:*
dtype0
z
dense_5/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*
shared_namedense_5/kernel
s
"dense_5/kernel/Read/ReadVariableOpReadVariableOpdense_5/kernel* 
_output_shapes
:
*
dtype0
Ł
%batch_normalization_3/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*6
shared_name'%batch_normalization_3/moving_variance

9batch_normalization_3/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_3/moving_variance*
_output_shapes	
:*
dtype0

!batch_normalization_3/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!batch_normalization_3/moving_mean

5batch_normalization_3/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_3/moving_mean*
_output_shapes	
:*
dtype0

batch_normalization_3/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_namebatch_normalization_3/beta

.batch_normalization_3/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_3/beta*
_output_shapes	
:*
dtype0

batch_normalization_3/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namebatch_normalization_3/gamma

/batch_normalization_3/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_3/gamma*
_output_shapes	
:*
dtype0
q
dense_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_4/bias
j
 dense_4/bias/Read/ReadVariableOpReadVariableOpdense_4/bias*
_output_shapes	
:*
dtype0
y
dense_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*
shared_namedense_4/kernel
r
"dense_4/kernel/Read/ReadVariableOpReadVariableOpdense_4/kernel*
_output_shapes
:	*
dtype0
s
serving_default_examplesPlaceholder*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
dtype0*
shape:˙˙˙˙˙˙˙˙˙
î
StatefulPartitionedCallStatefulPartitionedCallserving_default_examplesConst_25Const_24Const_23Const_22Const_21Const_20Const_19Const_18Const_17Const_16Const_15Const_14Const_13Const_12Const_11Const_10Const_9Const_8Const_7Const_6Const_5Const_4Const_3Const_2Const_1Constdense_4/kerneldense_4/bias%batch_normalization_3/moving_variancebatch_normalization_3/gamma!batch_normalization_3/moving_meanbatch_normalization_3/betadense_5/kerneldense_5/bias%batch_normalization_4/moving_variancebatch_normalization_4/gamma!batch_normalization_4/moving_meanbatch_normalization_4/betadense_6/kerneldense_6/bias%batch_normalization_5/moving_variancebatch_normalization_5/gamma!batch_normalization_5/moving_meanbatch_normalization_5/betadense_7/kerneldense_7/bias*:
Tin3
12/*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙*6
_read_only_resource_inputs
 !"#$%&'()*+,-.*-
config_proto

CPU

GPU 2J 8 *-
f(R&
$__inference_signature_wrapper_144783

NoOpNoOp
Ĺ
Const_26Const"/device:CPU:0*
_output_shapes
: *
dtype0*ü
valueńBí Bĺ
ĺ
layer-0
layer-1
layer-2
layer-3
layer-4
layer-5
layer-6
layer-7
	layer-8

layer-9
layer-10
layer-11
layer-12
layer-13
layer_with_weights-0
layer-14
layer_with_weights-1
layer-15
layer-16
layer_with_weights-2
layer-17
layer_with_weights-3
layer-18
layer-19
layer_with_weights-4
layer-20
layer_with_weights-5
layer-21
layer-22
layer_with_weights-6
layer-23
layer-24
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
 _default_save_signature
!	optimizer
	tft_layer
"
signatures*
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

#	variables
$trainable_variables
%regularization_losses
&	keras_api
'__call__
*(&call_and_return_all_conditional_losses* 
Ś
)	variables
*trainable_variables
+regularization_losses
,	keras_api
-__call__
*.&call_and_return_all_conditional_losses

/kernel
0bias*
Ő
1	variables
2trainable_variables
3regularization_losses
4	keras_api
5__call__
*6&call_and_return_all_conditional_losses
7axis
	8gamma
9beta
:moving_mean
;moving_variance*
Ľ
<	variables
=trainable_variables
>regularization_losses
?	keras_api
@__call__
*A&call_and_return_all_conditional_losses
B_random_generator* 
Ś
C	variables
Dtrainable_variables
Eregularization_losses
F	keras_api
G__call__
*H&call_and_return_all_conditional_losses

Ikernel
Jbias*
Ő
K	variables
Ltrainable_variables
Mregularization_losses
N	keras_api
O__call__
*P&call_and_return_all_conditional_losses
Qaxis
	Rgamma
Sbeta
Tmoving_mean
Umoving_variance*
Ľ
V	variables
Wtrainable_variables
Xregularization_losses
Y	keras_api
Z__call__
*[&call_and_return_all_conditional_losses
\_random_generator* 
Ś
]	variables
^trainable_variables
_regularization_losses
`	keras_api
a__call__
*b&call_and_return_all_conditional_losses

ckernel
dbias*
Ő
e	variables
ftrainable_variables
gregularization_losses
h	keras_api
i__call__
*j&call_and_return_all_conditional_losses
kaxis
	lgamma
mbeta
nmoving_mean
omoving_variance*
Ľ
p	variables
qtrainable_variables
rregularization_losses
s	keras_api
t__call__
*u&call_and_return_all_conditional_losses
v_random_generator* 
Ś
w	variables
xtrainable_variables
yregularization_losses
z	keras_api
{__call__
*|&call_and_return_all_conditional_losses

}kernel
~bias*
ş
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses
% _saved_model_loader_tracked_dict* 

/0
01
82
93
:4
;5
I6
J7
R8
S9
T10
U11
c12
d13
l14
m15
n16
o17
}18
~19*
j
/0
01
82
93
I4
J5
R6
S7
c8
d9
l10
m11
}12
~13*
* 
ľ
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
 _default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
:
trace_0
trace_1
trace_2
trace_3* 
:
trace_0
trace_1
trace_2
trace_3* 
* 
á
	iter
beta_1
beta_2

decay
learning_rate/m­0mŽ8mŻ9m°ImąJm˛RmłSm´cmľdmślmˇmm¸}mš~mş/vť0vź8v˝9vžIvżJvŔRvÁSvÂcvĂdvÄlvĹmvĆ}vÇ~vČ*

serving_default* 
* 
* 
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
#	variables
$trainable_variables
%regularization_losses
'__call__
*(&call_and_return_all_conditional_losses
&("call_and_return_conditional_losses* 

trace_0* 

trace_0* 

/0
01*

/0
01*
* 

 non_trainable_variables
Ąlayers
˘metrics
 Łlayer_regularization_losses
¤layer_metrics
)	variables
*trainable_variables
+regularization_losses
-__call__
*.&call_and_return_all_conditional_losses
&."call_and_return_conditional_losses*

Ľtrace_0* 

Śtrace_0* 
^X
VARIABLE_VALUEdense_4/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_4/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*
 
80
91
:2
;3*

80
91*
* 

§non_trainable_variables
¨layers
Šmetrics
 Şlayer_regularization_losses
Ťlayer_metrics
1	variables
2trainable_variables
3regularization_losses
5__call__
*6&call_and_return_all_conditional_losses
&6"call_and_return_conditional_losses*

Źtrace_0
­trace_1* 

Žtrace_0
Żtrace_1* 
* 
jd
VARIABLE_VALUEbatch_normalization_3/gamma5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUE*
hb
VARIABLE_VALUEbatch_normalization_3/beta4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUE!batch_normalization_3/moving_mean;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUE%batch_normalization_3/moving_variance?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 

°non_trainable_variables
ąlayers
˛metrics
 łlayer_regularization_losses
´layer_metrics
<	variables
=trainable_variables
>regularization_losses
@__call__
*A&call_and_return_all_conditional_losses
&A"call_and_return_conditional_losses* 

ľtrace_0
śtrace_1* 

ˇtrace_0
¸trace_1* 
* 

I0
J1*

I0
J1*
* 

šnon_trainable_variables
şlayers
ťmetrics
 źlayer_regularization_losses
˝layer_metrics
C	variables
Dtrainable_variables
Eregularization_losses
G__call__
*H&call_and_return_all_conditional_losses
&H"call_and_return_conditional_losses*

žtrace_0* 

żtrace_0* 
^X
VARIABLE_VALUEdense_5/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_5/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
 
R0
S1
T2
U3*

R0
S1*
* 

Ŕnon_trainable_variables
Álayers
Âmetrics
 Ălayer_regularization_losses
Älayer_metrics
K	variables
Ltrainable_variables
Mregularization_losses
O__call__
*P&call_and_return_all_conditional_losses
&P"call_and_return_conditional_losses*

Ĺtrace_0
Ćtrace_1* 

Çtrace_0
Čtrace_1* 
* 
jd
VARIABLE_VALUEbatch_normalization_4/gamma5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUE*
hb
VARIABLE_VALUEbatch_normalization_4/beta4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUE!batch_normalization_4/moving_mean;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUE%batch_normalization_4/moving_variance?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 

Énon_trainable_variables
Ęlayers
Ëmetrics
 Ělayer_regularization_losses
Ílayer_metrics
V	variables
Wtrainable_variables
Xregularization_losses
Z__call__
*[&call_and_return_all_conditional_losses
&["call_and_return_conditional_losses* 

Îtrace_0
Ďtrace_1* 

Đtrace_0
Ńtrace_1* 
* 

c0
d1*

c0
d1*
* 

Ňnon_trainable_variables
Ólayers
Ômetrics
 Őlayer_regularization_losses
Ölayer_metrics
]	variables
^trainable_variables
_regularization_losses
a__call__
*b&call_and_return_all_conditional_losses
&b"call_and_return_conditional_losses*

×trace_0* 

Řtrace_0* 
^X
VARIABLE_VALUEdense_6/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_6/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*
 
l0
m1
n2
o3*

l0
m1*
* 

Ůnon_trainable_variables
Úlayers
Űmetrics
 Ülayer_regularization_losses
Ýlayer_metrics
e	variables
ftrainable_variables
gregularization_losses
i__call__
*j&call_and_return_all_conditional_losses
&j"call_and_return_conditional_losses*

Ţtrace_0
ßtrace_1* 

ŕtrace_0
átrace_1* 
* 
jd
VARIABLE_VALUEbatch_normalization_5/gamma5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUE*
hb
VARIABLE_VALUEbatch_normalization_5/beta4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUE!batch_normalization_5/moving_mean;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUE%batch_normalization_5/moving_variance?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 

ânon_trainable_variables
ălayers
ämetrics
 ĺlayer_regularization_losses
ćlayer_metrics
p	variables
qtrainable_variables
rregularization_losses
t__call__
*u&call_and_return_all_conditional_losses
&u"call_and_return_conditional_losses* 

çtrace_0
čtrace_1* 

étrace_0
ętrace_1* 
* 

}0
~1*

}0
~1*
* 

ënon_trainable_variables
ělayers
ímetrics
 îlayer_regularization_losses
ďlayer_metrics
w	variables
xtrainable_variables
yregularization_losses
{__call__
*|&call_and_return_all_conditional_losses
&|"call_and_return_conditional_losses*

đtrace_0* 

ńtrace_0* 
^X
VARIABLE_VALUEdense_7/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_7/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 

ňnon_trainable_variables
ólayers
ômetrics
 őlayer_regularization_losses
ölayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses* 

÷trace_0
řtrace_1* 

ůtrace_0
útrace_1* 
y
ű	_imported
ü_wrapped_function
ý_structured_inputs
ţ_structured_outputs
˙_output_to_inputs_map* 
.
:0
;1
T2
U3
n4
o5*
Â
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15
16
17
18
19
20
21
22
23
24*

0
1*
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
LF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
˛
	capture_0
	capture_1
	capture_2
	capture_3
	capture_4
	capture_5
	capture_6
	capture_7
	capture_8
	capture_9

capture_10

capture_11

capture_12

capture_13

capture_14

capture_15

capture_16

capture_17

capture_18

capture_19

capture_20

capture_21

capture_22

capture_23

capture_24

capture_25* 
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
:0
;1*
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

T0
U1*
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

n0
o1*
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
˛
	capture_0
	capture_1
	capture_2
	capture_3
	capture_4
	capture_5
	capture_6
	capture_7
	capture_8
	capture_9

capture_10

capture_11

capture_12

capture_13

capture_14

capture_15

capture_16

capture_17

capture_18

capture_19

capture_20

capture_21

capture_22

capture_23

capture_24

capture_25* 
˛
	capture_0
	capture_1
	capture_2
	capture_3
	capture_4
	capture_5
	capture_6
	capture_7
	capture_8
	capture_9

capture_10

capture_11

capture_12

capture_13

capture_14

capture_15

capture_16

capture_17

capture_18

capture_19

capture_20

capture_21

capture_22

capture_23

capture_24

capture_25* 
˛
	capture_0
	capture_1
	capture_2
	capture_3
	capture_4
	capture_5
	capture_6
	capture_7
	capture_8
	capture_9

capture_10

capture_11

capture_12

capture_13

capture_14

capture_15

capture_16

capture_17

capture_18

capture_19

capture_20

capture_21

capture_22

capture_23

capture_24

capture_25* 
˛
	capture_0
	capture_1
	capture_2
	capture_3
	capture_4
	capture_5
	capture_6
	capture_7
	capture_8
	capture_9

capture_10

capture_11

capture_12

capture_13

capture_14

capture_15

capture_16

capture_17

capture_18

capture_19

capture_20

capture_21

capture_22

capture_23

capture_24

capture_25* 
Ź
created_variables
	resources
trackable_objects
initializers
 assets
Ą
signatures
$˘_self_saveable_object_factories
ütransform_fn* 
˛
	capture_0
	capture_1
	capture_2
	capture_3
	capture_4
	capture_5
	capture_6
	capture_7
	capture_8
	capture_9

capture_10

capture_11

capture_12

capture_13

capture_14

capture_15

capture_16

capture_17

capture_18

capture_19

capture_20

capture_21

capture_22

capture_23

capture_24

capture_25* 
* 
* 
* 
<
Ł	variables
¤	keras_api

Ľtotal

Ścount*
M
§	variables
¨	keras_api

Štotal

Şcount
Ť
_fn_kwargs*
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

Źserving_default* 
* 

Ľ0
Ś1*

Ł	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

Š0
Ş1*

§	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
˛
	capture_0
	capture_1
	capture_2
	capture_3
	capture_4
	capture_5
	capture_6
	capture_7
	capture_8
	capture_9

capture_10

capture_11

capture_12

capture_13

capture_14

capture_15

capture_16

capture_17

capture_18

capture_19

capture_20

capture_21

capture_22

capture_23

capture_24

capture_25* 
{
VARIABLE_VALUEAdam/dense_4/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_4/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE"Adam/batch_normalization_3/gamma/mQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE!Adam/batch_normalization_3/beta/mPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/dense_5/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_5/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE"Adam/batch_normalization_4/gamma/mQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE!Adam/batch_normalization_4/beta/mPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/dense_6/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_6/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE"Adam/batch_normalization_5/gamma/mQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE!Adam/batch_normalization_5/beta/mPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/dense_7/kernel/mRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_7/bias/mPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/dense_4/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_4/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE"Adam/batch_normalization_3/gamma/vQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE!Adam/batch_normalization_3/beta/vPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/dense_5/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_5/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE"Adam/batch_normalization_4/gamma/vQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE!Adam/batch_normalization_4/beta/vPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/dense_6/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_6/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE"Adam/batch_normalization_5/gamma/vQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE!Adam/batch_normalization_5/beta/vPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/dense_7/kernel/vRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_7/bias/vPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
ť
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename"dense_4/kernel/Read/ReadVariableOp dense_4/bias/Read/ReadVariableOp/batch_normalization_3/gamma/Read/ReadVariableOp.batch_normalization_3/beta/Read/ReadVariableOp5batch_normalization_3/moving_mean/Read/ReadVariableOp9batch_normalization_3/moving_variance/Read/ReadVariableOp"dense_5/kernel/Read/ReadVariableOp dense_5/bias/Read/ReadVariableOp/batch_normalization_4/gamma/Read/ReadVariableOp.batch_normalization_4/beta/Read/ReadVariableOp5batch_normalization_4/moving_mean/Read/ReadVariableOp9batch_normalization_4/moving_variance/Read/ReadVariableOp"dense_6/kernel/Read/ReadVariableOp dense_6/bias/Read/ReadVariableOp/batch_normalization_5/gamma/Read/ReadVariableOp.batch_normalization_5/beta/Read/ReadVariableOp5batch_normalization_5/moving_mean/Read/ReadVariableOp9batch_normalization_5/moving_variance/Read/ReadVariableOp"dense_7/kernel/Read/ReadVariableOp dense_7/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp)Adam/dense_4/kernel/m/Read/ReadVariableOp'Adam/dense_4/bias/m/Read/ReadVariableOp6Adam/batch_normalization_3/gamma/m/Read/ReadVariableOp5Adam/batch_normalization_3/beta/m/Read/ReadVariableOp)Adam/dense_5/kernel/m/Read/ReadVariableOp'Adam/dense_5/bias/m/Read/ReadVariableOp6Adam/batch_normalization_4/gamma/m/Read/ReadVariableOp5Adam/batch_normalization_4/beta/m/Read/ReadVariableOp)Adam/dense_6/kernel/m/Read/ReadVariableOp'Adam/dense_6/bias/m/Read/ReadVariableOp6Adam/batch_normalization_5/gamma/m/Read/ReadVariableOp5Adam/batch_normalization_5/beta/m/Read/ReadVariableOp)Adam/dense_7/kernel/m/Read/ReadVariableOp'Adam/dense_7/bias/m/Read/ReadVariableOp)Adam/dense_4/kernel/v/Read/ReadVariableOp'Adam/dense_4/bias/v/Read/ReadVariableOp6Adam/batch_normalization_3/gamma/v/Read/ReadVariableOp5Adam/batch_normalization_3/beta/v/Read/ReadVariableOp)Adam/dense_5/kernel/v/Read/ReadVariableOp'Adam/dense_5/bias/v/Read/ReadVariableOp6Adam/batch_normalization_4/gamma/v/Read/ReadVariableOp5Adam/batch_normalization_4/beta/v/Read/ReadVariableOp)Adam/dense_6/kernel/v/Read/ReadVariableOp'Adam/dense_6/bias/v/Read/ReadVariableOp6Adam/batch_normalization_5/gamma/v/Read/ReadVariableOp5Adam/batch_normalization_5/beta/v/Read/ReadVariableOp)Adam/dense_7/kernel/v/Read/ReadVariableOp'Adam/dense_7/bias/v/Read/ReadVariableOpConst_26*F
Tin?
=2;	*
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
GPU 2J 8 *(
f#R!
__inference__traced_save_147478
ż
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_4/kerneldense_4/biasbatch_normalization_3/gammabatch_normalization_3/beta!batch_normalization_3/moving_mean%batch_normalization_3/moving_variancedense_5/kerneldense_5/biasbatch_normalization_4/gammabatch_normalization_4/beta!batch_normalization_4/moving_mean%batch_normalization_4/moving_variancedense_6/kerneldense_6/biasbatch_normalization_5/gammabatch_normalization_5/beta!batch_normalization_5/moving_mean%batch_normalization_5/moving_variancedense_7/kerneldense_7/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotal_1count_1totalcountAdam/dense_4/kernel/mAdam/dense_4/bias/m"Adam/batch_normalization_3/gamma/m!Adam/batch_normalization_3/beta/mAdam/dense_5/kernel/mAdam/dense_5/bias/m"Adam/batch_normalization_4/gamma/m!Adam/batch_normalization_4/beta/mAdam/dense_6/kernel/mAdam/dense_6/bias/m"Adam/batch_normalization_5/gamma/m!Adam/batch_normalization_5/beta/mAdam/dense_7/kernel/mAdam/dense_7/bias/mAdam/dense_4/kernel/vAdam/dense_4/bias/v"Adam/batch_normalization_3/gamma/v!Adam/batch_normalization_3/beta/vAdam/dense_5/kernel/vAdam/dense_5/bias/v"Adam/batch_normalization_4/gamma/v!Adam/batch_normalization_4/beta/vAdam/dense_6/kernel/vAdam/dense_6/bias/v"Adam/batch_normalization_5/gamma/v!Adam/batch_normalization_5/beta/vAdam/dense_7/kernel/vAdam/dense_7/bias/v*E
Tin>
<2:*
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
GPU 2J 8 *+
f&R$
"__inference__traced_restore_147659Óţ
ő
c
*__inference_dropout_5_layer_call_fn_147019

inputs
identity˘StatefulPartitionedCallÁ
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:˙˙˙˙˙˙˙˙˙* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dropout_5_layer_call_and_return_conditional_losses_145774p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:˙˙˙˙˙˙˙˙˙22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
Ç

(__inference_dense_5_layer_call_fn_146791

inputs
unknown:

	unknown_0:	
identity˘StatefulPartitionedCallŮ
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
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_5_layer_call_and_return_conditional_losses_145628p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:˙˙˙˙˙˙˙˙˙: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
ű	
d
E__inference_dropout_5_layer_call_and_return_conditional_losses_147036

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍĚL>§
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙p
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:˙˙˙˙˙˙˙˙˙j
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Z
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:˙˙˙˙˙˙˙˙˙:P L
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
Ż%
î
Q__inference_batch_normalization_4_layer_call_and_return_conditional_losses_146882

inputs6
'assignmovingavg_readvariableop_resource:	8
)assignmovingavg_1_readvariableop_resource:	4
%batchnorm_mul_readvariableop_resource:	0
!batchnorm_readvariableop_resource:	
identity˘AssignMovingAvg˘AssignMovingAvg/ReadVariableOp˘AssignMovingAvg_1˘ AssignMovingAvg_1/ReadVariableOp˘batchnorm/ReadVariableOp˘batchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	*
	keep_dims(e
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes
:	
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	*
	keep_dims(n
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 t
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes	
:*
dtype0
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes	
:y
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:Ź
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
×#<
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes	
:*
dtype0
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes	
:
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:´
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:r
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:Q
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype0u
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:d
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙i
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:w
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype0q
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:s
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙c
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ę
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:˙˙˙˙˙˙˙˙˙: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
˘

ö
C__inference_dense_4_layer_call_and_return_conditional_losses_145595

inputs1
matmul_readvariableop_resource:	.
biasadd_readvariableop_resource:	
identity˘BiasAdd/ReadVariableOp˘MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:˙˙˙˙˙˙˙˙˙: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
Ő

!__inference__wrapped_model_144881

age_xf
	gender_xf
ethnicity_xf
parentaleducation_xf
studytimeweekly_xf
absences_xf
tutoring_xf
parentalsupport_xf
extracurricular_xf
	sports_xf
music_xf
volunteering_xf

gpa_xfA
.model_1_dense_4_matmul_readvariableop_resource:	>
/model_1_dense_4_biasadd_readvariableop_resource:	N
?model_1_batch_normalization_3_batchnorm_readvariableop_resource:	R
Cmodel_1_batch_normalization_3_batchnorm_mul_readvariableop_resource:	P
Amodel_1_batch_normalization_3_batchnorm_readvariableop_1_resource:	P
Amodel_1_batch_normalization_3_batchnorm_readvariableop_2_resource:	B
.model_1_dense_5_matmul_readvariableop_resource:
>
/model_1_dense_5_biasadd_readvariableop_resource:	N
?model_1_batch_normalization_4_batchnorm_readvariableop_resource:	R
Cmodel_1_batch_normalization_4_batchnorm_mul_readvariableop_resource:	P
Amodel_1_batch_normalization_4_batchnorm_readvariableop_1_resource:	P
Amodel_1_batch_normalization_4_batchnorm_readvariableop_2_resource:	B
.model_1_dense_6_matmul_readvariableop_resource:
>
/model_1_dense_6_biasadd_readvariableop_resource:	N
?model_1_batch_normalization_5_batchnorm_readvariableop_resource:	R
Cmodel_1_batch_normalization_5_batchnorm_mul_readvariableop_resource:	P
Amodel_1_batch_normalization_5_batchnorm_readvariableop_1_resource:	P
Amodel_1_batch_normalization_5_batchnorm_readvariableop_2_resource:	A
.model_1_dense_7_matmul_readvariableop_resource:	=
/model_1_dense_7_biasadd_readvariableop_resource:
identity˘6model_1/batch_normalization_3/batchnorm/ReadVariableOp˘8model_1/batch_normalization_3/batchnorm/ReadVariableOp_1˘8model_1/batch_normalization_3/batchnorm/ReadVariableOp_2˘:model_1/batch_normalization_3/batchnorm/mul/ReadVariableOp˘6model_1/batch_normalization_4/batchnorm/ReadVariableOp˘8model_1/batch_normalization_4/batchnorm/ReadVariableOp_1˘8model_1/batch_normalization_4/batchnorm/ReadVariableOp_2˘:model_1/batch_normalization_4/batchnorm/mul/ReadVariableOp˘6model_1/batch_normalization_5/batchnorm/ReadVariableOp˘8model_1/batch_normalization_5/batchnorm/ReadVariableOp_1˘8model_1/batch_normalization_5/batchnorm/ReadVariableOp_2˘:model_1/batch_normalization_5/batchnorm/mul/ReadVariableOp˘&model_1/dense_4/BiasAdd/ReadVariableOp˘%model_1/dense_4/MatMul/ReadVariableOp˘&model_1/dense_5/BiasAdd/ReadVariableOp˘%model_1/dense_5/MatMul/ReadVariableOp˘&model_1/dense_6/BiasAdd/ReadVariableOp˘%model_1/dense_6/MatMul/ReadVariableOp˘&model_1/dense_7/BiasAdd/ReadVariableOp˘%model_1/dense_7/MatMul/ReadVariableOpc
!model_1/concatenate_1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :Ę
model_1/concatenate_1/concatConcatV2age_xf	gender_xfethnicity_xfparentaleducation_xfstudytimeweekly_xfabsences_xftutoring_xfparentalsupport_xfextracurricular_xf	sports_xfmusic_xfvolunteering_xfgpa_xf*model_1/concatenate_1/concat/axis:output:0*
N*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
%model_1/dense_4/MatMul/ReadVariableOpReadVariableOp.model_1_dense_4_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0Š
model_1/dense_4/MatMulMatMul%model_1/concatenate_1/concat:output:0-model_1/dense_4/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
&model_1/dense_4/BiasAdd/ReadVariableOpReadVariableOp/model_1_dense_4_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0§
model_1/dense_4/BiasAddBiasAdd model_1/dense_4/MatMul:product:0.model_1/dense_4/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙q
model_1/dense_4/ReluRelu model_1/dense_4/BiasAdd:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ł
6model_1/batch_normalization_3/batchnorm/ReadVariableOpReadVariableOp?model_1_batch_normalization_3_batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype0r
-model_1/batch_normalization_3/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:Ň
+model_1/batch_normalization_3/batchnorm/addAddV2>model_1/batch_normalization_3/batchnorm/ReadVariableOp:value:06model_1/batch_normalization_3/batchnorm/add/y:output:0*
T0*
_output_shapes	
:
-model_1/batch_normalization_3/batchnorm/RsqrtRsqrt/model_1/batch_normalization_3/batchnorm/add:z:0*
T0*
_output_shapes	
:ť
:model_1/batch_normalization_3/batchnorm/mul/ReadVariableOpReadVariableOpCmodel_1_batch_normalization_3_batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype0Ď
+model_1/batch_normalization_3/batchnorm/mulMul1model_1/batch_normalization_3/batchnorm/Rsqrt:y:0Bmodel_1/batch_normalization_3/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:ź
-model_1/batch_normalization_3/batchnorm/mul_1Mul"model_1/dense_4/Relu:activations:0/model_1/batch_normalization_3/batchnorm/mul:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ˇ
8model_1/batch_normalization_3/batchnorm/ReadVariableOp_1ReadVariableOpAmodel_1_batch_normalization_3_batchnorm_readvariableop_1_resource*
_output_shapes	
:*
dtype0Í
-model_1/batch_normalization_3/batchnorm/mul_2Mul@model_1/batch_normalization_3/batchnorm/ReadVariableOp_1:value:0/model_1/batch_normalization_3/batchnorm/mul:z:0*
T0*
_output_shapes	
:ˇ
8model_1/batch_normalization_3/batchnorm/ReadVariableOp_2ReadVariableOpAmodel_1_batch_normalization_3_batchnorm_readvariableop_2_resource*
_output_shapes	
:*
dtype0Í
+model_1/batch_normalization_3/batchnorm/subSub@model_1/batch_normalization_3/batchnorm/ReadVariableOp_2:value:01model_1/batch_normalization_3/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:Í
-model_1/batch_normalization_3/batchnorm/add_1AddV21model_1/batch_normalization_3/batchnorm/mul_1:z:0/model_1/batch_normalization_3/batchnorm/sub:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
model_1/dropout_3/IdentityIdentity1model_1/batch_normalization_3/batchnorm/add_1:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
%model_1/dense_5/MatMul/ReadVariableOpReadVariableOp.model_1_dense_5_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype0§
model_1/dense_5/MatMulMatMul#model_1/dropout_3/Identity:output:0-model_1/dense_5/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
&model_1/dense_5/BiasAdd/ReadVariableOpReadVariableOp/model_1_dense_5_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0§
model_1/dense_5/BiasAddBiasAdd model_1/dense_5/MatMul:product:0.model_1/dense_5/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙q
model_1/dense_5/ReluRelu model_1/dense_5/BiasAdd:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ł
6model_1/batch_normalization_4/batchnorm/ReadVariableOpReadVariableOp?model_1_batch_normalization_4_batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype0r
-model_1/batch_normalization_4/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:Ň
+model_1/batch_normalization_4/batchnorm/addAddV2>model_1/batch_normalization_4/batchnorm/ReadVariableOp:value:06model_1/batch_normalization_4/batchnorm/add/y:output:0*
T0*
_output_shapes	
:
-model_1/batch_normalization_4/batchnorm/RsqrtRsqrt/model_1/batch_normalization_4/batchnorm/add:z:0*
T0*
_output_shapes	
:ť
:model_1/batch_normalization_4/batchnorm/mul/ReadVariableOpReadVariableOpCmodel_1_batch_normalization_4_batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype0Ď
+model_1/batch_normalization_4/batchnorm/mulMul1model_1/batch_normalization_4/batchnorm/Rsqrt:y:0Bmodel_1/batch_normalization_4/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:ź
-model_1/batch_normalization_4/batchnorm/mul_1Mul"model_1/dense_5/Relu:activations:0/model_1/batch_normalization_4/batchnorm/mul:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ˇ
8model_1/batch_normalization_4/batchnorm/ReadVariableOp_1ReadVariableOpAmodel_1_batch_normalization_4_batchnorm_readvariableop_1_resource*
_output_shapes	
:*
dtype0Í
-model_1/batch_normalization_4/batchnorm/mul_2Mul@model_1/batch_normalization_4/batchnorm/ReadVariableOp_1:value:0/model_1/batch_normalization_4/batchnorm/mul:z:0*
T0*
_output_shapes	
:ˇ
8model_1/batch_normalization_4/batchnorm/ReadVariableOp_2ReadVariableOpAmodel_1_batch_normalization_4_batchnorm_readvariableop_2_resource*
_output_shapes	
:*
dtype0Í
+model_1/batch_normalization_4/batchnorm/subSub@model_1/batch_normalization_4/batchnorm/ReadVariableOp_2:value:01model_1/batch_normalization_4/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:Í
-model_1/batch_normalization_4/batchnorm/add_1AddV21model_1/batch_normalization_4/batchnorm/mul_1:z:0/model_1/batch_normalization_4/batchnorm/sub:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
model_1/dropout_4/IdentityIdentity1model_1/batch_normalization_4/batchnorm/add_1:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
%model_1/dense_6/MatMul/ReadVariableOpReadVariableOp.model_1_dense_6_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype0§
model_1/dense_6/MatMulMatMul#model_1/dropout_4/Identity:output:0-model_1/dense_6/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
&model_1/dense_6/BiasAdd/ReadVariableOpReadVariableOp/model_1_dense_6_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0§
model_1/dense_6/BiasAddBiasAdd model_1/dense_6/MatMul:product:0.model_1/dense_6/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙q
model_1/dense_6/ReluRelu model_1/dense_6/BiasAdd:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ł
6model_1/batch_normalization_5/batchnorm/ReadVariableOpReadVariableOp?model_1_batch_normalization_5_batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype0r
-model_1/batch_normalization_5/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:Ň
+model_1/batch_normalization_5/batchnorm/addAddV2>model_1/batch_normalization_5/batchnorm/ReadVariableOp:value:06model_1/batch_normalization_5/batchnorm/add/y:output:0*
T0*
_output_shapes	
:
-model_1/batch_normalization_5/batchnorm/RsqrtRsqrt/model_1/batch_normalization_5/batchnorm/add:z:0*
T0*
_output_shapes	
:ť
:model_1/batch_normalization_5/batchnorm/mul/ReadVariableOpReadVariableOpCmodel_1_batch_normalization_5_batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype0Ď
+model_1/batch_normalization_5/batchnorm/mulMul1model_1/batch_normalization_5/batchnorm/Rsqrt:y:0Bmodel_1/batch_normalization_5/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:ź
-model_1/batch_normalization_5/batchnorm/mul_1Mul"model_1/dense_6/Relu:activations:0/model_1/batch_normalization_5/batchnorm/mul:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ˇ
8model_1/batch_normalization_5/batchnorm/ReadVariableOp_1ReadVariableOpAmodel_1_batch_normalization_5_batchnorm_readvariableop_1_resource*
_output_shapes	
:*
dtype0Í
-model_1/batch_normalization_5/batchnorm/mul_2Mul@model_1/batch_normalization_5/batchnorm/ReadVariableOp_1:value:0/model_1/batch_normalization_5/batchnorm/mul:z:0*
T0*
_output_shapes	
:ˇ
8model_1/batch_normalization_5/batchnorm/ReadVariableOp_2ReadVariableOpAmodel_1_batch_normalization_5_batchnorm_readvariableop_2_resource*
_output_shapes	
:*
dtype0Í
+model_1/batch_normalization_5/batchnorm/subSub@model_1/batch_normalization_5/batchnorm/ReadVariableOp_2:value:01model_1/batch_normalization_5/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:Í
-model_1/batch_normalization_5/batchnorm/add_1AddV21model_1/batch_normalization_5/batchnorm/mul_1:z:0/model_1/batch_normalization_5/batchnorm/sub:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
model_1/dropout_5/IdentityIdentity1model_1/batch_normalization_5/batchnorm/add_1:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
%model_1/dense_7/MatMul/ReadVariableOpReadVariableOp.model_1_dense_7_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0Ś
model_1/dense_7/MatMulMatMul#model_1/dropout_5/Identity:output:0-model_1/dense_7/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
&model_1/dense_7/BiasAdd/ReadVariableOpReadVariableOp/model_1_dense_7_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Ś
model_1/dense_7/BiasAddBiasAdd model_1/dense_7/MatMul:product:0.model_1/dense_7/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙v
model_1/dense_7/SoftmaxSoftmax model_1/dense_7/BiasAdd:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙p
IdentityIdentity!model_1/dense_7/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙Î
NoOpNoOp7^model_1/batch_normalization_3/batchnorm/ReadVariableOp9^model_1/batch_normalization_3/batchnorm/ReadVariableOp_19^model_1/batch_normalization_3/batchnorm/ReadVariableOp_2;^model_1/batch_normalization_3/batchnorm/mul/ReadVariableOp7^model_1/batch_normalization_4/batchnorm/ReadVariableOp9^model_1/batch_normalization_4/batchnorm/ReadVariableOp_19^model_1/batch_normalization_4/batchnorm/ReadVariableOp_2;^model_1/batch_normalization_4/batchnorm/mul/ReadVariableOp7^model_1/batch_normalization_5/batchnorm/ReadVariableOp9^model_1/batch_normalization_5/batchnorm/ReadVariableOp_19^model_1/batch_normalization_5/batchnorm/ReadVariableOp_2;^model_1/batch_normalization_5/batchnorm/mul/ReadVariableOp'^model_1/dense_4/BiasAdd/ReadVariableOp&^model_1/dense_4/MatMul/ReadVariableOp'^model_1/dense_5/BiasAdd/ReadVariableOp&^model_1/dense_5/MatMul/ReadVariableOp'^model_1/dense_6/BiasAdd/ReadVariableOp&^model_1/dense_6/MatMul/ReadVariableOp'^model_1/dense_7/BiasAdd/ReadVariableOp&^model_1/dense_7/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*´
_input_shapes˘
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: : : : : : : : : : : : : : : : : : : : 2p
6model_1/batch_normalization_3/batchnorm/ReadVariableOp6model_1/batch_normalization_3/batchnorm/ReadVariableOp2t
8model_1/batch_normalization_3/batchnorm/ReadVariableOp_18model_1/batch_normalization_3/batchnorm/ReadVariableOp_12t
8model_1/batch_normalization_3/batchnorm/ReadVariableOp_28model_1/batch_normalization_3/batchnorm/ReadVariableOp_22x
:model_1/batch_normalization_3/batchnorm/mul/ReadVariableOp:model_1/batch_normalization_3/batchnorm/mul/ReadVariableOp2p
6model_1/batch_normalization_4/batchnorm/ReadVariableOp6model_1/batch_normalization_4/batchnorm/ReadVariableOp2t
8model_1/batch_normalization_4/batchnorm/ReadVariableOp_18model_1/batch_normalization_4/batchnorm/ReadVariableOp_12t
8model_1/batch_normalization_4/batchnorm/ReadVariableOp_28model_1/batch_normalization_4/batchnorm/ReadVariableOp_22x
:model_1/batch_normalization_4/batchnorm/mul/ReadVariableOp:model_1/batch_normalization_4/batchnorm/mul/ReadVariableOp2p
6model_1/batch_normalization_5/batchnorm/ReadVariableOp6model_1/batch_normalization_5/batchnorm/ReadVariableOp2t
8model_1/batch_normalization_5/batchnorm/ReadVariableOp_18model_1/batch_normalization_5/batchnorm/ReadVariableOp_12t
8model_1/batch_normalization_5/batchnorm/ReadVariableOp_28model_1/batch_normalization_5/batchnorm/ReadVariableOp_22x
:model_1/batch_normalization_5/batchnorm/mul/ReadVariableOp:model_1/batch_normalization_5/batchnorm/mul/ReadVariableOp2P
&model_1/dense_4/BiasAdd/ReadVariableOp&model_1/dense_4/BiasAdd/ReadVariableOp2N
%model_1/dense_4/MatMul/ReadVariableOp%model_1/dense_4/MatMul/ReadVariableOp2P
&model_1/dense_5/BiasAdd/ReadVariableOp&model_1/dense_5/BiasAdd/ReadVariableOp2N
%model_1/dense_5/MatMul/ReadVariableOp%model_1/dense_5/MatMul/ReadVariableOp2P
&model_1/dense_6/BiasAdd/ReadVariableOp&model_1/dense_6/BiasAdd/ReadVariableOp2N
%model_1/dense_6/MatMul/ReadVariableOp%model_1/dense_6/MatMul/ReadVariableOp2P
&model_1/dense_7/BiasAdd/ReadVariableOp&model_1/dense_7/BiasAdd/ReadVariableOp2N
%model_1/dense_7/MatMul/ReadVariableOp%model_1/dense_7/MatMul/ReadVariableOp:O K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameAge_xf:RN
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
#
_user_specified_name	Gender_xf:UQ
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
&
_user_specified_nameEthnicity_xf:]Y
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
.
_user_specified_nameParentalEducation_xf:[W
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
,
_user_specified_nameStudyTimeWeekly_xf:TP
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
%
_user_specified_nameAbsences_xf:TP
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
%
_user_specified_nameTutoring_xf:[W
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
,
_user_specified_nameParentalSupport_xf:[W
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
,
_user_specified_nameExtracurricular_xf:R	N
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
#
_user_specified_name	Sports_xf:Q
M
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
"
_user_specified_name
Music_xf:XT
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
)
_user_specified_nameVolunteering_xf:OK
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameGPA_xf
Đ=
Ý
T__inference_transform_features_layer_layer_call_and_return_conditional_losses_147258
inputs_absences	

inputs_age	
inputs_ethnicity	
inputs_extracurricular	

inputs_gpa
inputs_gender	
inputs_music	
inputs_parentaleducation	
inputs_parentalsupport	
inputs_sports	
inputs_studytimeweekly
inputs_tutoring	
inputs_volunteering	
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20

unknown_21

unknown_22

unknown_23

unknown_24
identity

identity_1

identity_2

identity_3

identity_4

identity_5

identity_6

identity_7

identity_8

identity_9
identity_10
identity_11
identity_12D
ShapeShapeinputs_absences*
T0	*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ń
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskF
Shape_1Shapeinputs_absences*
T0	*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ű
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :u
zeros/packedPackstrided_slice_1:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
PlaceholderWithDefaultPlaceholderWithDefaultzeros:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
dtype0*
shape:˙˙˙˙˙˙˙˙˙Ć
PartitionedCallPartitionedCallinputs_absences
inputs_ageinputs_ethnicityinputs_extracurricular
inputs_gpainputs_genderPlaceholderWithDefault:output:0inputs_musicinputs_parentaleducationinputs_parentalsupportinputs_sportsinputs_studytimeweeklyinputs_tutoringinputs_volunteeringunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
unknown_24*3
Tin,
*2(											*
Tout
2	* 
_output_shapes
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *"
fR
__inference_pruned_144311`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙b

Identity_1IdentityPartitionedCall:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙b

Identity_2IdentityPartitionedCall:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙b

Identity_3IdentityPartitionedCall:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙b

Identity_4IdentityPartitionedCall:output:4*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙b

Identity_5IdentityPartitionedCall:output:5*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙b

Identity_6IdentityPartitionedCall:output:7*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙b

Identity_7IdentityPartitionedCall:output:8*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙b

Identity_8IdentityPartitionedCall:output:9*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙c

Identity_9IdentityPartitionedCall:output:10*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
Identity_10IdentityPartitionedCall:output:11*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
Identity_11IdentityPartitionedCall:output:12*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
Identity_12IdentityPartitionedCall:output:13*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙"
identityIdentity:output:0"!

identity_1Identity_1:output:0"#
identity_10Identity_10:output:0"#
identity_11Identity_11:output:0"#
identity_12Identity_12:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0"!

identity_6Identity_6:output:0"!

identity_7Identity_7:output:0"!

identity_8Identity_8:output:0"!

identity_9Identity_9:output:0*(
_construction_contextkEagerRuntime*Ŕ
_input_shapesŽ
Ť:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: : : : : : : : : : : : : : : : : : : : : : : : : : :X T
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
)
_user_specified_nameinputs/Absences:SO
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
$
_user_specified_name
inputs/Age:YU
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
_user_specified_nameinputs/Ethnicity:_[
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
0
_user_specified_nameinputs/Extracurricular:SO
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
$
_user_specified_name
inputs/GPA:VR
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
'
_user_specified_nameinputs/Gender:UQ
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
&
_user_specified_nameinputs/Music:a]
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
2
_user_specified_nameinputs/ParentalEducation:_[
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
0
_user_specified_nameinputs/ParentalSupport:V	R
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
'
_user_specified_nameinputs/Sports:_
[
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
0
_user_specified_nameinputs/StudyTimeWeekly:XT
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
)
_user_specified_nameinputs/Tutoring:\X
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
-
_user_specified_nameinputs/Volunteering:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: : 

_output_shapes
: :!

_output_shapes
: :"

_output_shapes
: :#

_output_shapes
: :$

_output_shapes
: :%

_output_shapes
: :&

_output_shapes
: 
ß:
ń
T__inference_transform_features_layer_layer_call_and_return_conditional_losses_145252

inputs	
inputs_1	
inputs_2	
inputs_3	
inputs_4
inputs_5	
inputs_6	
inputs_7	
inputs_8	
inputs_9	
	inputs_10
	inputs_11	
	inputs_12	
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20

unknown_21

unknown_22

unknown_23

unknown_24
identity

identity_1

identity_2

identity_3

identity_4

identity_5

identity_6

identity_7

identity_8

identity_9
identity_10
identity_11
identity_12;
ShapeShapeinputs*
T0	*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ń
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask=
Shape_1Shapeinputs*
T0	*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ű
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :u
zeros/packedPackstrided_slice_1:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
PlaceholderWithDefaultPlaceholderWithDefaultzeros:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
dtype0*
shape:˙˙˙˙˙˙˙˙˙Ú
PartitionedCallPartitionedCallinputsinputs_1inputs_2inputs_3inputs_4inputs_5PlaceholderWithDefault:output:0inputs_6inputs_7inputs_8inputs_9	inputs_10	inputs_11	inputs_12unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
unknown_24*3
Tin,
*2(											*
Tout
2	* 
_output_shapes
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *"
fR
__inference_pruned_144311`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙b

Identity_1IdentityPartitionedCall:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙b

Identity_2IdentityPartitionedCall:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙b

Identity_3IdentityPartitionedCall:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙b

Identity_4IdentityPartitionedCall:output:4*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙b

Identity_5IdentityPartitionedCall:output:5*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙b

Identity_6IdentityPartitionedCall:output:7*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙b

Identity_7IdentityPartitionedCall:output:8*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙b

Identity_8IdentityPartitionedCall:output:9*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙c

Identity_9IdentityPartitionedCall:output:10*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
Identity_10IdentityPartitionedCall:output:11*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
Identity_11IdentityPartitionedCall:output:12*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
Identity_12IdentityPartitionedCall:output:13*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙"
identityIdentity:output:0"!

identity_1Identity_1:output:0"#
identity_10Identity_10:output:0"#
identity_11Identity_11:output:0"#
identity_12Identity_12:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0"!

identity_6Identity_6:output:0"!

identity_7Identity_7:output:0"!

identity_8Identity_8:output:0"!

identity_9Identity_9:output:0*(
_construction_contextkEagerRuntime*Ŕ
_input_shapesŽ
Ť:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: : : : : : : : : : : : : : : : : : : : : : : : : : :O K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs:OK
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs:OK
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs:OK
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs:OK
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs:OK
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs:OK
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs:OK
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs:OK
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs:O	K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs:O
K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs:OK
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs:OK
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: : 

_output_shapes
: :!

_output_shapes
: :"

_output_shapes
: :#

_output_shapes
: :$

_output_shapes
: :%

_output_shapes
: :&

_output_shapes
: 
G
ś
C__inference_model_1_layer_call_and_return_conditional_losses_146009

inputs
inputs_1
inputs_2
inputs_3
inputs_4
inputs_5
inputs_6
inputs_7
inputs_8
inputs_9
	inputs_10
	inputs_11
	inputs_12!
dense_4_145958:	
dense_4_145960:	+
batch_normalization_3_145963:	+
batch_normalization_3_145965:	+
batch_normalization_3_145967:	+
batch_normalization_3_145969:	"
dense_5_145973:

dense_5_145975:	+
batch_normalization_4_145978:	+
batch_normalization_4_145980:	+
batch_normalization_4_145982:	+
batch_normalization_4_145984:	"
dense_6_145988:

dense_6_145990:	+
batch_normalization_5_145993:	+
batch_normalization_5_145995:	+
batch_normalization_5_145997:	+
batch_normalization_5_145999:	!
dense_7_146003:	
dense_7_146005:
identity˘-batch_normalization_3/StatefulPartitionedCall˘-batch_normalization_4/StatefulPartitionedCall˘-batch_normalization_5/StatefulPartitionedCall˘dense_4/StatefulPartitionedCall˘dense_5/StatefulPartitionedCall˘dense_6/StatefulPartitionedCall˘dense_7/StatefulPartitionedCall˘!dropout_3/StatefulPartitionedCall˘!dropout_4/StatefulPartitionedCall˘!dropout_5/StatefulPartitionedCallÉ
concatenate_1/PartitionedCallPartitionedCallinputsinputs_1inputs_2inputs_3inputs_4inputs_5inputs_6inputs_7inputs_8inputs_9	inputs_10	inputs_11	inputs_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_concatenate_1_layer_call_and_return_conditional_losses_145582
dense_4/StatefulPartitionedCallStatefulPartitionedCall&concatenate_1/PartitionedCall:output:0dense_4_145958dense_4_145960*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_4_layer_call_and_return_conditional_losses_145595
-batch_normalization_3/StatefulPartitionedCallStatefulPartitionedCall(dense_4/StatefulPartitionedCall:output:0batch_normalization_3_145963batch_normalization_3_145965batch_normalization_3_145967batch_normalization_3_145969*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Z
fURS
Q__inference_batch_normalization_3_layer_call_and_return_conditional_losses_144952ű
!dropout_3/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:˙˙˙˙˙˙˙˙˙* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dropout_3_layer_call_and_return_conditional_losses_145840
dense_5/StatefulPartitionedCallStatefulPartitionedCall*dropout_3/StatefulPartitionedCall:output:0dense_5_145973dense_5_145975*
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
GPU 2J 8 *L
fGRE
C__inference_dense_5_layer_call_and_return_conditional_losses_145628
-batch_normalization_4/StatefulPartitionedCallStatefulPartitionedCall(dense_5/StatefulPartitionedCall:output:0batch_normalization_4_145978batch_normalization_4_145980batch_normalization_4_145982batch_normalization_4_145984*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Z
fURS
Q__inference_batch_normalization_4_layer_call_and_return_conditional_losses_145034
!dropout_4/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_4/StatefulPartitionedCall:output:0"^dropout_3/StatefulPartitionedCall*
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
GPU 2J 8 *N
fIRG
E__inference_dropout_4_layer_call_and_return_conditional_losses_145807
dense_6/StatefulPartitionedCallStatefulPartitionedCall*dropout_4/StatefulPartitionedCall:output:0dense_6_145988dense_6_145990*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_6_layer_call_and_return_conditional_losses_145661
-batch_normalization_5/StatefulPartitionedCallStatefulPartitionedCall(dense_6/StatefulPartitionedCall:output:0batch_normalization_5_145993batch_normalization_5_145995batch_normalization_5_145997batch_normalization_5_145999*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Z
fURS
Q__inference_batch_normalization_5_layer_call_and_return_conditional_losses_145116
!dropout_5/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_5/StatefulPartitionedCall:output:0"^dropout_4/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:˙˙˙˙˙˙˙˙˙* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dropout_5_layer_call_and_return_conditional_losses_145774
dense_7/StatefulPartitionedCallStatefulPartitionedCall*dropout_5/StatefulPartitionedCall:output:0dense_7_146003dense_7_146005*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_7_layer_call_and_return_conditional_losses_145694w
IdentityIdentity(dense_7/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙Ę
NoOpNoOp.^batch_normalization_3/StatefulPartitionedCall.^batch_normalization_4/StatefulPartitionedCall.^batch_normalization_5/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall ^dense_5/StatefulPartitionedCall ^dense_6/StatefulPartitionedCall ^dense_7/StatefulPartitionedCall"^dropout_3/StatefulPartitionedCall"^dropout_4/StatefulPartitionedCall"^dropout_5/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*´
_input_shapes˘
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: : : : : : : : : : : : : : : : : : : : 2^
-batch_normalization_3/StatefulPartitionedCall-batch_normalization_3/StatefulPartitionedCall2^
-batch_normalization_4/StatefulPartitionedCall-batch_normalization_4/StatefulPartitionedCall2^
-batch_normalization_5/StatefulPartitionedCall-batch_normalization_5/StatefulPartitionedCall2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall2B
dense_7/StatefulPartitionedCalldense_7/StatefulPartitionedCall2F
!dropout_3/StatefulPartitionedCall!dropout_3/StatefulPartitionedCall2F
!dropout_4/StatefulPartitionedCall!dropout_4/StatefulPartitionedCall2F
!dropout_5/StatefulPartitionedCall!dropout_5/StatefulPartitionedCall:O K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs:OK
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs:OK
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs:OK
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs:OK
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs:OK
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs:OK
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs:OK
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs:OK
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs:O	K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs:O
K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs:OK
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs:OK
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
ş

I__inference_concatenate_1_layer_call_and_return_conditional_losses_146655
inputs_0
inputs_1
inputs_2
inputs_3
inputs_4
inputs_5
inputs_6
inputs_7
inputs_8
inputs_9
	inputs_10
	inputs_11
	inputs_12
identityM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :č
concatConcatV2inputs_0inputs_1inputs_2inputs_3inputs_4inputs_5inputs_6inputs_7inputs_8inputs_9	inputs_10	inputs_11	inputs_12concat/axis:output:0*
N*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙W
IdentityIdentityconcat:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapesú
÷:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:Q M
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
"
_user_specified_name
inputs/1:QM
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
"
_user_specified_name
inputs/2:QM
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
"
_user_specified_name
inputs/3:QM
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
"
_user_specified_name
inputs/4:QM
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
"
_user_specified_name
inputs/5:QM
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
"
_user_specified_name
inputs/6:QM
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
"
_user_specified_name
inputs/7:QM
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
"
_user_specified_name
inputs/8:Q	M
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
"
_user_specified_name
inputs/9:R
N
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
#
_user_specified_name	inputs/10:RN
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
#
_user_specified_name	inputs/11:RN
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
#
_user_specified_name	inputs/12
Ü
c
E__inference_dropout_4_layer_call_and_return_conditional_losses_146897

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
Ś

÷
C__inference_dense_5_layer_call_and_return_conditional_losses_146802

inputs2
matmul_readvariableop_resource:
.
biasadd_readvariableop_resource:	
identity˘BiasAdd/ReadVariableOp˘MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
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
:˙˙˙˙˙˙˙˙˙Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:˙˙˙˙˙˙˙˙˙: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
Ł

ő
C__inference_dense_7_layer_call_and_return_conditional_losses_147056

inputs1
matmul_readvariableop_resource:	-
biasadd_readvariableop_resource:
identity˘BiasAdd/ReadVariableOp˘MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:˙˙˙˙˙˙˙˙˙: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
ŕ
´
Q__inference_batch_normalization_5_layer_call_and_return_conditional_losses_145069

inputs0
!batchnorm_readvariableop_resource:	4
%batchnorm_mul_readvariableop_resource:	2
#batchnorm_readvariableop_1_resource:	2
#batchnorm_readvariableop_2_resource:	
identity˘batchnorm/ReadVariableOp˘batchnorm/ReadVariableOp_1˘batchnorm/ReadVariableOp_2˘batchnorm/mul/ReadVariableOpw
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:x
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:Q
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype0u
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:d
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙{
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:*
dtype0s
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:{
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:*
dtype0s
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:s
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙c
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ş
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:˙˙˙˙˙˙˙˙˙: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
ć
Ř$
"__inference__traced_restore_147659
file_prefix2
assignvariableop_dense_4_kernel:	.
assignvariableop_1_dense_4_bias:	=
.assignvariableop_2_batch_normalization_3_gamma:	<
-assignvariableop_3_batch_normalization_3_beta:	C
4assignvariableop_4_batch_normalization_3_moving_mean:	G
8assignvariableop_5_batch_normalization_3_moving_variance:	5
!assignvariableop_6_dense_5_kernel:
.
assignvariableop_7_dense_5_bias:	=
.assignvariableop_8_batch_normalization_4_gamma:	<
-assignvariableop_9_batch_normalization_4_beta:	D
5assignvariableop_10_batch_normalization_4_moving_mean:	H
9assignvariableop_11_batch_normalization_4_moving_variance:	6
"assignvariableop_12_dense_6_kernel:
/
 assignvariableop_13_dense_6_bias:	>
/assignvariableop_14_batch_normalization_5_gamma:	=
.assignvariableop_15_batch_normalization_5_beta:	D
5assignvariableop_16_batch_normalization_5_moving_mean:	H
9assignvariableop_17_batch_normalization_5_moving_variance:	5
"assignvariableop_18_dense_7_kernel:	.
 assignvariableop_19_dense_7_bias:'
assignvariableop_20_adam_iter:	 )
assignvariableop_21_adam_beta_1: )
assignvariableop_22_adam_beta_2: (
assignvariableop_23_adam_decay: 0
&assignvariableop_24_adam_learning_rate: %
assignvariableop_25_total_1: %
assignvariableop_26_count_1: #
assignvariableop_27_total: #
assignvariableop_28_count: <
)assignvariableop_29_adam_dense_4_kernel_m:	6
'assignvariableop_30_adam_dense_4_bias_m:	E
6assignvariableop_31_adam_batch_normalization_3_gamma_m:	D
5assignvariableop_32_adam_batch_normalization_3_beta_m:	=
)assignvariableop_33_adam_dense_5_kernel_m:
6
'assignvariableop_34_adam_dense_5_bias_m:	E
6assignvariableop_35_adam_batch_normalization_4_gamma_m:	D
5assignvariableop_36_adam_batch_normalization_4_beta_m:	=
)assignvariableop_37_adam_dense_6_kernel_m:
6
'assignvariableop_38_adam_dense_6_bias_m:	E
6assignvariableop_39_adam_batch_normalization_5_gamma_m:	D
5assignvariableop_40_adam_batch_normalization_5_beta_m:	<
)assignvariableop_41_adam_dense_7_kernel_m:	5
'assignvariableop_42_adam_dense_7_bias_m:<
)assignvariableop_43_adam_dense_4_kernel_v:	6
'assignvariableop_44_adam_dense_4_bias_v:	E
6assignvariableop_45_adam_batch_normalization_3_gamma_v:	D
5assignvariableop_46_adam_batch_normalization_3_beta_v:	=
)assignvariableop_47_adam_dense_5_kernel_v:
6
'assignvariableop_48_adam_dense_5_bias_v:	E
6assignvariableop_49_adam_batch_normalization_4_gamma_v:	D
5assignvariableop_50_adam_batch_normalization_4_beta_v:	=
)assignvariableop_51_adam_dense_6_kernel_v:
6
'assignvariableop_52_adam_dense_6_bias_v:	E
6assignvariableop_53_adam_batch_normalization_5_gamma_v:	D
5assignvariableop_54_adam_batch_normalization_5_beta_v:	<
)assignvariableop_55_adam_dense_7_kernel_v:	5
'assignvariableop_56_adam_dense_7_bias_v:
identity_58˘AssignVariableOp˘AssignVariableOp_1˘AssignVariableOp_10˘AssignVariableOp_11˘AssignVariableOp_12˘AssignVariableOp_13˘AssignVariableOp_14˘AssignVariableOp_15˘AssignVariableOp_16˘AssignVariableOp_17˘AssignVariableOp_18˘AssignVariableOp_19˘AssignVariableOp_2˘AssignVariableOp_20˘AssignVariableOp_21˘AssignVariableOp_22˘AssignVariableOp_23˘AssignVariableOp_24˘AssignVariableOp_25˘AssignVariableOp_26˘AssignVariableOp_27˘AssignVariableOp_28˘AssignVariableOp_29˘AssignVariableOp_3˘AssignVariableOp_30˘AssignVariableOp_31˘AssignVariableOp_32˘AssignVariableOp_33˘AssignVariableOp_34˘AssignVariableOp_35˘AssignVariableOp_36˘AssignVariableOp_37˘AssignVariableOp_38˘AssignVariableOp_39˘AssignVariableOp_4˘AssignVariableOp_40˘AssignVariableOp_41˘AssignVariableOp_42˘AssignVariableOp_43˘AssignVariableOp_44˘AssignVariableOp_45˘AssignVariableOp_46˘AssignVariableOp_47˘AssignVariableOp_48˘AssignVariableOp_49˘AssignVariableOp_5˘AssignVariableOp_50˘AssignVariableOp_51˘AssignVariableOp_52˘AssignVariableOp_53˘AssignVariableOp_54˘AssignVariableOp_55˘AssignVariableOp_56˘AssignVariableOp_6˘AssignVariableOp_7˘AssignVariableOp_8˘AssignVariableOp_9Ń
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
::*
dtype0*÷
valueíBę:B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHĺ
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
::*
dtype0*
value~B|:B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B Ă
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*ţ
_output_shapesë
č::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*H
dtypes>
<2:	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOpAssignVariableOpassignvariableop_dense_4_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_1AssignVariableOpassignvariableop_1_dense_4_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_2AssignVariableOp.assignvariableop_2_batch_normalization_3_gammaIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_3AssignVariableOp-assignvariableop_3_batch_normalization_3_betaIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:Ł
AssignVariableOp_4AssignVariableOp4assignvariableop_4_batch_normalization_3_moving_meanIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_5AssignVariableOp8assignvariableop_5_batch_normalization_3_moving_varianceIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_6AssignVariableOp!assignvariableop_6_dense_5_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_7AssignVariableOpassignvariableop_7_dense_5_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_8AssignVariableOp.assignvariableop_8_batch_normalization_4_gammaIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_9AssignVariableOp-assignvariableop_9_batch_normalization_4_betaIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:Ś
AssignVariableOp_10AssignVariableOp5assignvariableop_10_batch_normalization_4_moving_meanIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:Ş
AssignVariableOp_11AssignVariableOp9assignvariableop_11_batch_normalization_4_moving_varianceIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_12AssignVariableOp"assignvariableop_12_dense_6_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_13AssignVariableOp assignvariableop_13_dense_6_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_14AssignVariableOp/assignvariableop_14_batch_normalization_5_gammaIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_15AssignVariableOp.assignvariableop_15_batch_normalization_5_betaIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:Ś
AssignVariableOp_16AssignVariableOp5assignvariableop_16_batch_normalization_5_moving_meanIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:Ş
AssignVariableOp_17AssignVariableOp9assignvariableop_17_batch_normalization_5_moving_varianceIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_18AssignVariableOp"assignvariableop_18_dense_7_kernelIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_19AssignVariableOp assignvariableop_19_dense_7_biasIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0	*
_output_shapes
:
AssignVariableOp_20AssignVariableOpassignvariableop_20_adam_iterIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_21AssignVariableOpassignvariableop_21_adam_beta_1Identity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_22AssignVariableOpassignvariableop_22_adam_beta_2Identity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_23AssignVariableOpassignvariableop_23_adam_decayIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_24AssignVariableOp&assignvariableop_24_adam_learning_rateIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_25AssignVariableOpassignvariableop_25_total_1Identity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_26AssignVariableOpassignvariableop_26_count_1Identity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_27AssignVariableOpassignvariableop_27_totalIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_28AssignVariableOpassignvariableop_28_countIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_29AssignVariableOp)assignvariableop_29_adam_dense_4_kernel_mIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_30AssignVariableOp'assignvariableop_30_adam_dense_4_bias_mIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_31AssignVariableOp6assignvariableop_31_adam_batch_normalization_3_gamma_mIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:Ś
AssignVariableOp_32AssignVariableOp5assignvariableop_32_adam_batch_normalization_3_beta_mIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_33AssignVariableOp)assignvariableop_33_adam_dense_5_kernel_mIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_34AssignVariableOp'assignvariableop_34_adam_dense_5_bias_mIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_35AssignVariableOp6assignvariableop_35_adam_batch_normalization_4_gamma_mIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:Ś
AssignVariableOp_36AssignVariableOp5assignvariableop_36_adam_batch_normalization_4_beta_mIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_37AssignVariableOp)assignvariableop_37_adam_dense_6_kernel_mIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_38AssignVariableOp'assignvariableop_38_adam_dense_6_bias_mIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_39AssignVariableOp6assignvariableop_39_adam_batch_normalization_5_gamma_mIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:Ś
AssignVariableOp_40AssignVariableOp5assignvariableop_40_adam_batch_normalization_5_beta_mIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_41AssignVariableOp)assignvariableop_41_adam_dense_7_kernel_mIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_42AssignVariableOp'assignvariableop_42_adam_dense_7_bias_mIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_43AssignVariableOp)assignvariableop_43_adam_dense_4_kernel_vIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_44AssignVariableOp'assignvariableop_44_adam_dense_4_bias_vIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_45AssignVariableOp6assignvariableop_45_adam_batch_normalization_3_gamma_vIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:Ś
AssignVariableOp_46AssignVariableOp5assignvariableop_46_adam_batch_normalization_3_beta_vIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_47AssignVariableOp)assignvariableop_47_adam_dense_5_kernel_vIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_48AssignVariableOp'assignvariableop_48_adam_dense_5_bias_vIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_49AssignVariableOp6assignvariableop_49_adam_batch_normalization_4_gamma_vIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:Ś
AssignVariableOp_50AssignVariableOp5assignvariableop_50_adam_batch_normalization_4_beta_vIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_51AssignVariableOp)assignvariableop_51_adam_dense_6_kernel_vIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_52AssignVariableOp'assignvariableop_52_adam_dense_6_bias_vIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_53AssignVariableOp6assignvariableop_53_adam_batch_normalization_5_gamma_vIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:Ś
AssignVariableOp_54AssignVariableOp5assignvariableop_54_adam_batch_normalization_5_beta_vIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_55AssignVariableOp)assignvariableop_55_adam_dense_7_kernel_vIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_56AssignVariableOp'assignvariableop_56_adam_dense_7_bias_vIdentity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ľ

Identity_57Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_58IdentityIdentity_57:output:0^NoOp_1*
T0*
_output_shapes
: ˘

NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_58Identity_58:output:0*
_input_shapesv
t: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_56AssignVariableOp_562(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
ű	
d
E__inference_dropout_4_layer_call_and_return_conditional_losses_146909

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍĚL>§
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙p
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:˙˙˙˙˙˙˙˙˙j
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Z
IdentityIdentitydropout/Mul_1:z:0*
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
´â
î
C__inference_model_1_layer_call_and_return_conditional_losses_146620
inputs_0
inputs_1
inputs_2
inputs_3
inputs_4
inputs_5
inputs_6
inputs_7
inputs_8
inputs_9
	inputs_10
	inputs_11
	inputs_129
&dense_4_matmul_readvariableop_resource:	6
'dense_4_biasadd_readvariableop_resource:	L
=batch_normalization_3_assignmovingavg_readvariableop_resource:	N
?batch_normalization_3_assignmovingavg_1_readvariableop_resource:	J
;batch_normalization_3_batchnorm_mul_readvariableop_resource:	F
7batch_normalization_3_batchnorm_readvariableop_resource:	:
&dense_5_matmul_readvariableop_resource:
6
'dense_5_biasadd_readvariableop_resource:	L
=batch_normalization_4_assignmovingavg_readvariableop_resource:	N
?batch_normalization_4_assignmovingavg_1_readvariableop_resource:	J
;batch_normalization_4_batchnorm_mul_readvariableop_resource:	F
7batch_normalization_4_batchnorm_readvariableop_resource:	:
&dense_6_matmul_readvariableop_resource:
6
'dense_6_biasadd_readvariableop_resource:	L
=batch_normalization_5_assignmovingavg_readvariableop_resource:	N
?batch_normalization_5_assignmovingavg_1_readvariableop_resource:	J
;batch_normalization_5_batchnorm_mul_readvariableop_resource:	F
7batch_normalization_5_batchnorm_readvariableop_resource:	9
&dense_7_matmul_readvariableop_resource:	5
'dense_7_biasadd_readvariableop_resource:
identity˘%batch_normalization_3/AssignMovingAvg˘4batch_normalization_3/AssignMovingAvg/ReadVariableOp˘'batch_normalization_3/AssignMovingAvg_1˘6batch_normalization_3/AssignMovingAvg_1/ReadVariableOp˘.batch_normalization_3/batchnorm/ReadVariableOp˘2batch_normalization_3/batchnorm/mul/ReadVariableOp˘%batch_normalization_4/AssignMovingAvg˘4batch_normalization_4/AssignMovingAvg/ReadVariableOp˘'batch_normalization_4/AssignMovingAvg_1˘6batch_normalization_4/AssignMovingAvg_1/ReadVariableOp˘.batch_normalization_4/batchnorm/ReadVariableOp˘2batch_normalization_4/batchnorm/mul/ReadVariableOp˘%batch_normalization_5/AssignMovingAvg˘4batch_normalization_5/AssignMovingAvg/ReadVariableOp˘'batch_normalization_5/AssignMovingAvg_1˘6batch_normalization_5/AssignMovingAvg_1/ReadVariableOp˘.batch_normalization_5/batchnorm/ReadVariableOp˘2batch_normalization_5/batchnorm/mul/ReadVariableOp˘dense_4/BiasAdd/ReadVariableOp˘dense_4/MatMul/ReadVariableOp˘dense_5/BiasAdd/ReadVariableOp˘dense_5/MatMul/ReadVariableOp˘dense_6/BiasAdd/ReadVariableOp˘dense_6/MatMul/ReadVariableOp˘dense_7/BiasAdd/ReadVariableOp˘dense_7/MatMul/ReadVariableOp[
concatenate_1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :
concatenate_1/concatConcatV2inputs_0inputs_1inputs_2inputs_3inputs_4inputs_5inputs_6inputs_7inputs_8inputs_9	inputs_10	inputs_11	inputs_12"concatenate_1/concat/axis:output:0*
N*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
dense_4/MatMul/ReadVariableOpReadVariableOp&dense_4_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
dense_4/MatMulMatMulconcatenate_1/concat:output:0%dense_4/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
dense_4/BiasAdd/ReadVariableOpReadVariableOp'dense_4_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
dense_4/BiasAddBiasAdddense_4/MatMul:product:0&dense_4/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙a
dense_4/ReluReludense_4/BiasAdd:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙~
4batch_normalization_3/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: Ŕ
"batch_normalization_3/moments/meanMeandense_4/Relu:activations:0=batch_normalization_3/moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	*
	keep_dims(
*batch_normalization_3/moments/StopGradientStopGradient+batch_normalization_3/moments/mean:output:0*
T0*
_output_shapes
:	Č
/batch_normalization_3/moments/SquaredDifferenceSquaredDifferencedense_4/Relu:activations:03batch_normalization_3/moments/StopGradient:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
8batch_normalization_3/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: á
&batch_normalization_3/moments/varianceMean3batch_normalization_3/moments/SquaredDifference:z:0Abatch_normalization_3/moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	*
	keep_dims(
%batch_normalization_3/moments/SqueezeSqueeze+batch_normalization_3/moments/mean:output:0*
T0*
_output_shapes	
:*
squeeze_dims
  
'batch_normalization_3/moments/Squeeze_1Squeeze/batch_normalization_3/moments/variance:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 p
+batch_normalization_3/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<Ż
4batch_normalization_3/AssignMovingAvg/ReadVariableOpReadVariableOp=batch_normalization_3_assignmovingavg_readvariableop_resource*
_output_shapes	
:*
dtype0Ä
)batch_normalization_3/AssignMovingAvg/subSub<batch_normalization_3/AssignMovingAvg/ReadVariableOp:value:0.batch_normalization_3/moments/Squeeze:output:0*
T0*
_output_shapes	
:ť
)batch_normalization_3/AssignMovingAvg/mulMul-batch_normalization_3/AssignMovingAvg/sub:z:04batch_normalization_3/AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:
%batch_normalization_3/AssignMovingAvgAssignSubVariableOp=batch_normalization_3_assignmovingavg_readvariableop_resource-batch_normalization_3/AssignMovingAvg/mul:z:05^batch_normalization_3/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0r
-batch_normalization_3/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<ł
6batch_normalization_3/AssignMovingAvg_1/ReadVariableOpReadVariableOp?batch_normalization_3_assignmovingavg_1_readvariableop_resource*
_output_shapes	
:*
dtype0Ę
+batch_normalization_3/AssignMovingAvg_1/subSub>batch_normalization_3/AssignMovingAvg_1/ReadVariableOp:value:00batch_normalization_3/moments/Squeeze_1:output:0*
T0*
_output_shapes	
:Á
+batch_normalization_3/AssignMovingAvg_1/mulMul/batch_normalization_3/AssignMovingAvg_1/sub:z:06batch_normalization_3/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:
'batch_normalization_3/AssignMovingAvg_1AssignSubVariableOp?batch_normalization_3_assignmovingavg_1_readvariableop_resource/batch_normalization_3/AssignMovingAvg_1/mul:z:07^batch_normalization_3/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0j
%batch_normalization_3/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:´
#batch_normalization_3/batchnorm/addAddV20batch_normalization_3/moments/Squeeze_1:output:0.batch_normalization_3/batchnorm/add/y:output:0*
T0*
_output_shapes	
:}
%batch_normalization_3/batchnorm/RsqrtRsqrt'batch_normalization_3/batchnorm/add:z:0*
T0*
_output_shapes	
:Ť
2batch_normalization_3/batchnorm/mul/ReadVariableOpReadVariableOp;batch_normalization_3_batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype0ˇ
#batch_normalization_3/batchnorm/mulMul)batch_normalization_3/batchnorm/Rsqrt:y:0:batch_normalization_3/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:¤
%batch_normalization_3/batchnorm/mul_1Muldense_4/Relu:activations:0'batch_normalization_3/batchnorm/mul:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ť
%batch_normalization_3/batchnorm/mul_2Mul.batch_normalization_3/moments/Squeeze:output:0'batch_normalization_3/batchnorm/mul:z:0*
T0*
_output_shapes	
:Ł
.batch_normalization_3/batchnorm/ReadVariableOpReadVariableOp7batch_normalization_3_batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype0ł
#batch_normalization_3/batchnorm/subSub6batch_normalization_3/batchnorm/ReadVariableOp:value:0)batch_normalization_3/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:ľ
%batch_normalization_3/batchnorm/add_1AddV2)batch_normalization_3/batchnorm/mul_1:z:0'batch_normalization_3/batchnorm/sub:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙\
dropout_3/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
dropout_3/dropout/MulMul)batch_normalization_3/batchnorm/add_1:z:0 dropout_3/dropout/Const:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙p
dropout_3/dropout/ShapeShape)batch_normalization_3/batchnorm/add_1:z:0*
T0*
_output_shapes
:Ą
.dropout_3/dropout/random_uniform/RandomUniformRandomUniform dropout_3/dropout/Shape:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
dtype0e
 dropout_3/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍĚL>Ĺ
dropout_3/dropout/GreaterEqualGreaterEqual7dropout_3/dropout/random_uniform/RandomUniform:output:0)dropout_3/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
dropout_3/dropout/CastCast"dropout_3/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
dropout_3/dropout/Mul_1Muldropout_3/dropout/Mul:z:0dropout_3/dropout/Cast:y:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
dense_5/MatMul/ReadVariableOpReadVariableOp&dense_5_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype0
dense_5/MatMulMatMuldropout_3/dropout/Mul_1:z:0%dense_5/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
dense_5/BiasAdd/ReadVariableOpReadVariableOp'dense_5_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
dense_5/BiasAddBiasAdddense_5/MatMul:product:0&dense_5/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙a
dense_5/ReluReludense_5/BiasAdd:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙~
4batch_normalization_4/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: Ŕ
"batch_normalization_4/moments/meanMeandense_5/Relu:activations:0=batch_normalization_4/moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	*
	keep_dims(
*batch_normalization_4/moments/StopGradientStopGradient+batch_normalization_4/moments/mean:output:0*
T0*
_output_shapes
:	Č
/batch_normalization_4/moments/SquaredDifferenceSquaredDifferencedense_5/Relu:activations:03batch_normalization_4/moments/StopGradient:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
8batch_normalization_4/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: á
&batch_normalization_4/moments/varianceMean3batch_normalization_4/moments/SquaredDifference:z:0Abatch_normalization_4/moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	*
	keep_dims(
%batch_normalization_4/moments/SqueezeSqueeze+batch_normalization_4/moments/mean:output:0*
T0*
_output_shapes	
:*
squeeze_dims
  
'batch_normalization_4/moments/Squeeze_1Squeeze/batch_normalization_4/moments/variance:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 p
+batch_normalization_4/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<Ż
4batch_normalization_4/AssignMovingAvg/ReadVariableOpReadVariableOp=batch_normalization_4_assignmovingavg_readvariableop_resource*
_output_shapes	
:*
dtype0Ä
)batch_normalization_4/AssignMovingAvg/subSub<batch_normalization_4/AssignMovingAvg/ReadVariableOp:value:0.batch_normalization_4/moments/Squeeze:output:0*
T0*
_output_shapes	
:ť
)batch_normalization_4/AssignMovingAvg/mulMul-batch_normalization_4/AssignMovingAvg/sub:z:04batch_normalization_4/AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:
%batch_normalization_4/AssignMovingAvgAssignSubVariableOp=batch_normalization_4_assignmovingavg_readvariableop_resource-batch_normalization_4/AssignMovingAvg/mul:z:05^batch_normalization_4/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0r
-batch_normalization_4/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<ł
6batch_normalization_4/AssignMovingAvg_1/ReadVariableOpReadVariableOp?batch_normalization_4_assignmovingavg_1_readvariableop_resource*
_output_shapes	
:*
dtype0Ę
+batch_normalization_4/AssignMovingAvg_1/subSub>batch_normalization_4/AssignMovingAvg_1/ReadVariableOp:value:00batch_normalization_4/moments/Squeeze_1:output:0*
T0*
_output_shapes	
:Á
+batch_normalization_4/AssignMovingAvg_1/mulMul/batch_normalization_4/AssignMovingAvg_1/sub:z:06batch_normalization_4/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:
'batch_normalization_4/AssignMovingAvg_1AssignSubVariableOp?batch_normalization_4_assignmovingavg_1_readvariableop_resource/batch_normalization_4/AssignMovingAvg_1/mul:z:07^batch_normalization_4/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0j
%batch_normalization_4/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:´
#batch_normalization_4/batchnorm/addAddV20batch_normalization_4/moments/Squeeze_1:output:0.batch_normalization_4/batchnorm/add/y:output:0*
T0*
_output_shapes	
:}
%batch_normalization_4/batchnorm/RsqrtRsqrt'batch_normalization_4/batchnorm/add:z:0*
T0*
_output_shapes	
:Ť
2batch_normalization_4/batchnorm/mul/ReadVariableOpReadVariableOp;batch_normalization_4_batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype0ˇ
#batch_normalization_4/batchnorm/mulMul)batch_normalization_4/batchnorm/Rsqrt:y:0:batch_normalization_4/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:¤
%batch_normalization_4/batchnorm/mul_1Muldense_5/Relu:activations:0'batch_normalization_4/batchnorm/mul:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ť
%batch_normalization_4/batchnorm/mul_2Mul.batch_normalization_4/moments/Squeeze:output:0'batch_normalization_4/batchnorm/mul:z:0*
T0*
_output_shapes	
:Ł
.batch_normalization_4/batchnorm/ReadVariableOpReadVariableOp7batch_normalization_4_batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype0ł
#batch_normalization_4/batchnorm/subSub6batch_normalization_4/batchnorm/ReadVariableOp:value:0)batch_normalization_4/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:ľ
%batch_normalization_4/batchnorm/add_1AddV2)batch_normalization_4/batchnorm/mul_1:z:0'batch_normalization_4/batchnorm/sub:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙\
dropout_4/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
dropout_4/dropout/MulMul)batch_normalization_4/batchnorm/add_1:z:0 dropout_4/dropout/Const:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙p
dropout_4/dropout/ShapeShape)batch_normalization_4/batchnorm/add_1:z:0*
T0*
_output_shapes
:Ą
.dropout_4/dropout/random_uniform/RandomUniformRandomUniform dropout_4/dropout/Shape:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
dtype0e
 dropout_4/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍĚL>Ĺ
dropout_4/dropout/GreaterEqualGreaterEqual7dropout_4/dropout/random_uniform/RandomUniform:output:0)dropout_4/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
dropout_4/dropout/CastCast"dropout_4/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
dropout_4/dropout/Mul_1Muldropout_4/dropout/Mul:z:0dropout_4/dropout/Cast:y:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
dense_6/MatMul/ReadVariableOpReadVariableOp&dense_6_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype0
dense_6/MatMulMatMuldropout_4/dropout/Mul_1:z:0%dense_6/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
dense_6/BiasAdd/ReadVariableOpReadVariableOp'dense_6_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
dense_6/BiasAddBiasAdddense_6/MatMul:product:0&dense_6/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙a
dense_6/ReluReludense_6/BiasAdd:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙~
4batch_normalization_5/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: Ŕ
"batch_normalization_5/moments/meanMeandense_6/Relu:activations:0=batch_normalization_5/moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	*
	keep_dims(
*batch_normalization_5/moments/StopGradientStopGradient+batch_normalization_5/moments/mean:output:0*
T0*
_output_shapes
:	Č
/batch_normalization_5/moments/SquaredDifferenceSquaredDifferencedense_6/Relu:activations:03batch_normalization_5/moments/StopGradient:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
8batch_normalization_5/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: á
&batch_normalization_5/moments/varianceMean3batch_normalization_5/moments/SquaredDifference:z:0Abatch_normalization_5/moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	*
	keep_dims(
%batch_normalization_5/moments/SqueezeSqueeze+batch_normalization_5/moments/mean:output:0*
T0*
_output_shapes	
:*
squeeze_dims
  
'batch_normalization_5/moments/Squeeze_1Squeeze/batch_normalization_5/moments/variance:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 p
+batch_normalization_5/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<Ż
4batch_normalization_5/AssignMovingAvg/ReadVariableOpReadVariableOp=batch_normalization_5_assignmovingavg_readvariableop_resource*
_output_shapes	
:*
dtype0Ä
)batch_normalization_5/AssignMovingAvg/subSub<batch_normalization_5/AssignMovingAvg/ReadVariableOp:value:0.batch_normalization_5/moments/Squeeze:output:0*
T0*
_output_shapes	
:ť
)batch_normalization_5/AssignMovingAvg/mulMul-batch_normalization_5/AssignMovingAvg/sub:z:04batch_normalization_5/AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:
%batch_normalization_5/AssignMovingAvgAssignSubVariableOp=batch_normalization_5_assignmovingavg_readvariableop_resource-batch_normalization_5/AssignMovingAvg/mul:z:05^batch_normalization_5/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0r
-batch_normalization_5/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<ł
6batch_normalization_5/AssignMovingAvg_1/ReadVariableOpReadVariableOp?batch_normalization_5_assignmovingavg_1_readvariableop_resource*
_output_shapes	
:*
dtype0Ę
+batch_normalization_5/AssignMovingAvg_1/subSub>batch_normalization_5/AssignMovingAvg_1/ReadVariableOp:value:00batch_normalization_5/moments/Squeeze_1:output:0*
T0*
_output_shapes	
:Á
+batch_normalization_5/AssignMovingAvg_1/mulMul/batch_normalization_5/AssignMovingAvg_1/sub:z:06batch_normalization_5/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:
'batch_normalization_5/AssignMovingAvg_1AssignSubVariableOp?batch_normalization_5_assignmovingavg_1_readvariableop_resource/batch_normalization_5/AssignMovingAvg_1/mul:z:07^batch_normalization_5/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0j
%batch_normalization_5/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:´
#batch_normalization_5/batchnorm/addAddV20batch_normalization_5/moments/Squeeze_1:output:0.batch_normalization_5/batchnorm/add/y:output:0*
T0*
_output_shapes	
:}
%batch_normalization_5/batchnorm/RsqrtRsqrt'batch_normalization_5/batchnorm/add:z:0*
T0*
_output_shapes	
:Ť
2batch_normalization_5/batchnorm/mul/ReadVariableOpReadVariableOp;batch_normalization_5_batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype0ˇ
#batch_normalization_5/batchnorm/mulMul)batch_normalization_5/batchnorm/Rsqrt:y:0:batch_normalization_5/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:¤
%batch_normalization_5/batchnorm/mul_1Muldense_6/Relu:activations:0'batch_normalization_5/batchnorm/mul:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ť
%batch_normalization_5/batchnorm/mul_2Mul.batch_normalization_5/moments/Squeeze:output:0'batch_normalization_5/batchnorm/mul:z:0*
T0*
_output_shapes	
:Ł
.batch_normalization_5/batchnorm/ReadVariableOpReadVariableOp7batch_normalization_5_batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype0ł
#batch_normalization_5/batchnorm/subSub6batch_normalization_5/batchnorm/ReadVariableOp:value:0)batch_normalization_5/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:ľ
%batch_normalization_5/batchnorm/add_1AddV2)batch_normalization_5/batchnorm/mul_1:z:0'batch_normalization_5/batchnorm/sub:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙\
dropout_5/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
dropout_5/dropout/MulMul)batch_normalization_5/batchnorm/add_1:z:0 dropout_5/dropout/Const:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙p
dropout_5/dropout/ShapeShape)batch_normalization_5/batchnorm/add_1:z:0*
T0*
_output_shapes
:Ą
.dropout_5/dropout/random_uniform/RandomUniformRandomUniform dropout_5/dropout/Shape:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
dtype0e
 dropout_5/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍĚL>Ĺ
dropout_5/dropout/GreaterEqualGreaterEqual7dropout_5/dropout/random_uniform/RandomUniform:output:0)dropout_5/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
dropout_5/dropout/CastCast"dropout_5/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
dropout_5/dropout/Mul_1Muldropout_5/dropout/Mul:z:0dropout_5/dropout/Cast:y:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
dense_7/MatMul/ReadVariableOpReadVariableOp&dense_7_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
dense_7/MatMulMatMuldropout_5/dropout/Mul_1:z:0%dense_7/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
dense_7/BiasAdd/ReadVariableOpReadVariableOp'dense_7_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_7/BiasAddBiasAdddense_7/MatMul:product:0&dense_7/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙f
dense_7/SoftmaxSoftmaxdense_7/BiasAdd:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙h
IdentityIdentitydense_7/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙Â	
NoOpNoOp&^batch_normalization_3/AssignMovingAvg5^batch_normalization_3/AssignMovingAvg/ReadVariableOp(^batch_normalization_3/AssignMovingAvg_17^batch_normalization_3/AssignMovingAvg_1/ReadVariableOp/^batch_normalization_3/batchnorm/ReadVariableOp3^batch_normalization_3/batchnorm/mul/ReadVariableOp&^batch_normalization_4/AssignMovingAvg5^batch_normalization_4/AssignMovingAvg/ReadVariableOp(^batch_normalization_4/AssignMovingAvg_17^batch_normalization_4/AssignMovingAvg_1/ReadVariableOp/^batch_normalization_4/batchnorm/ReadVariableOp3^batch_normalization_4/batchnorm/mul/ReadVariableOp&^batch_normalization_5/AssignMovingAvg5^batch_normalization_5/AssignMovingAvg/ReadVariableOp(^batch_normalization_5/AssignMovingAvg_17^batch_normalization_5/AssignMovingAvg_1/ReadVariableOp/^batch_normalization_5/batchnorm/ReadVariableOp3^batch_normalization_5/batchnorm/mul/ReadVariableOp^dense_4/BiasAdd/ReadVariableOp^dense_4/MatMul/ReadVariableOp^dense_5/BiasAdd/ReadVariableOp^dense_5/MatMul/ReadVariableOp^dense_6/BiasAdd/ReadVariableOp^dense_6/MatMul/ReadVariableOp^dense_7/BiasAdd/ReadVariableOp^dense_7/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*´
_input_shapes˘
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: : : : : : : : : : : : : : : : : : : : 2N
%batch_normalization_3/AssignMovingAvg%batch_normalization_3/AssignMovingAvg2l
4batch_normalization_3/AssignMovingAvg/ReadVariableOp4batch_normalization_3/AssignMovingAvg/ReadVariableOp2R
'batch_normalization_3/AssignMovingAvg_1'batch_normalization_3/AssignMovingAvg_12p
6batch_normalization_3/AssignMovingAvg_1/ReadVariableOp6batch_normalization_3/AssignMovingAvg_1/ReadVariableOp2`
.batch_normalization_3/batchnorm/ReadVariableOp.batch_normalization_3/batchnorm/ReadVariableOp2h
2batch_normalization_3/batchnorm/mul/ReadVariableOp2batch_normalization_3/batchnorm/mul/ReadVariableOp2N
%batch_normalization_4/AssignMovingAvg%batch_normalization_4/AssignMovingAvg2l
4batch_normalization_4/AssignMovingAvg/ReadVariableOp4batch_normalization_4/AssignMovingAvg/ReadVariableOp2R
'batch_normalization_4/AssignMovingAvg_1'batch_normalization_4/AssignMovingAvg_12p
6batch_normalization_4/AssignMovingAvg_1/ReadVariableOp6batch_normalization_4/AssignMovingAvg_1/ReadVariableOp2`
.batch_normalization_4/batchnorm/ReadVariableOp.batch_normalization_4/batchnorm/ReadVariableOp2h
2batch_normalization_4/batchnorm/mul/ReadVariableOp2batch_normalization_4/batchnorm/mul/ReadVariableOp2N
%batch_normalization_5/AssignMovingAvg%batch_normalization_5/AssignMovingAvg2l
4batch_normalization_5/AssignMovingAvg/ReadVariableOp4batch_normalization_5/AssignMovingAvg/ReadVariableOp2R
'batch_normalization_5/AssignMovingAvg_1'batch_normalization_5/AssignMovingAvg_12p
6batch_normalization_5/AssignMovingAvg_1/ReadVariableOp6batch_normalization_5/AssignMovingAvg_1/ReadVariableOp2`
.batch_normalization_5/batchnorm/ReadVariableOp.batch_normalization_5/batchnorm/ReadVariableOp2h
2batch_normalization_5/batchnorm/mul/ReadVariableOp2batch_normalization_5/batchnorm/mul/ReadVariableOp2@
dense_4/BiasAdd/ReadVariableOpdense_4/BiasAdd/ReadVariableOp2>
dense_4/MatMul/ReadVariableOpdense_4/MatMul/ReadVariableOp2@
dense_5/BiasAdd/ReadVariableOpdense_5/BiasAdd/ReadVariableOp2>
dense_5/MatMul/ReadVariableOpdense_5/MatMul/ReadVariableOp2@
dense_6/BiasAdd/ReadVariableOpdense_6/BiasAdd/ReadVariableOp2>
dense_6/MatMul/ReadVariableOpdense_6/MatMul/ReadVariableOp2@
dense_7/BiasAdd/ReadVariableOpdense_7/BiasAdd/ReadVariableOp2>
dense_7/MatMul/ReadVariableOpdense_7/MatMul/ReadVariableOp:Q M
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
"
_user_specified_name
inputs/1:QM
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
"
_user_specified_name
inputs/2:QM
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
"
_user_specified_name
inputs/3:QM
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
"
_user_specified_name
inputs/4:QM
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
"
_user_specified_name
inputs/5:QM
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
"
_user_specified_name
inputs/6:QM
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
"
_user_specified_name
inputs/7:QM
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
"
_user_specified_name
inputs/8:Q	M
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
"
_user_specified_name
inputs/9:R
N
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
#
_user_specified_name	inputs/10:RN
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
#
_user_specified_name	inputs/11:RN
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
#
_user_specified_name	inputs/12
°
Ő
6__inference_batch_normalization_3_layer_call_fn_146688

inputs
unknown:	
	unknown_0:	
	unknown_1:	
	unknown_2:	
identity˘StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:˙˙˙˙˙˙˙˙˙*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Z
fURS
Q__inference_batch_normalization_3_layer_call_and_return_conditional_losses_144905p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:˙˙˙˙˙˙˙˙˙: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
§~
ź
C__inference_model_1_layer_call_and_return_conditional_losses_146460
inputs_0
inputs_1
inputs_2
inputs_3
inputs_4
inputs_5
inputs_6
inputs_7
inputs_8
inputs_9
	inputs_10
	inputs_11
	inputs_129
&dense_4_matmul_readvariableop_resource:	6
'dense_4_biasadd_readvariableop_resource:	F
7batch_normalization_3_batchnorm_readvariableop_resource:	J
;batch_normalization_3_batchnorm_mul_readvariableop_resource:	H
9batch_normalization_3_batchnorm_readvariableop_1_resource:	H
9batch_normalization_3_batchnorm_readvariableop_2_resource:	:
&dense_5_matmul_readvariableop_resource:
6
'dense_5_biasadd_readvariableop_resource:	F
7batch_normalization_4_batchnorm_readvariableop_resource:	J
;batch_normalization_4_batchnorm_mul_readvariableop_resource:	H
9batch_normalization_4_batchnorm_readvariableop_1_resource:	H
9batch_normalization_4_batchnorm_readvariableop_2_resource:	:
&dense_6_matmul_readvariableop_resource:
6
'dense_6_biasadd_readvariableop_resource:	F
7batch_normalization_5_batchnorm_readvariableop_resource:	J
;batch_normalization_5_batchnorm_mul_readvariableop_resource:	H
9batch_normalization_5_batchnorm_readvariableop_1_resource:	H
9batch_normalization_5_batchnorm_readvariableop_2_resource:	9
&dense_7_matmul_readvariableop_resource:	5
'dense_7_biasadd_readvariableop_resource:
identity˘.batch_normalization_3/batchnorm/ReadVariableOp˘0batch_normalization_3/batchnorm/ReadVariableOp_1˘0batch_normalization_3/batchnorm/ReadVariableOp_2˘2batch_normalization_3/batchnorm/mul/ReadVariableOp˘.batch_normalization_4/batchnorm/ReadVariableOp˘0batch_normalization_4/batchnorm/ReadVariableOp_1˘0batch_normalization_4/batchnorm/ReadVariableOp_2˘2batch_normalization_4/batchnorm/mul/ReadVariableOp˘.batch_normalization_5/batchnorm/ReadVariableOp˘0batch_normalization_5/batchnorm/ReadVariableOp_1˘0batch_normalization_5/batchnorm/ReadVariableOp_2˘2batch_normalization_5/batchnorm/mul/ReadVariableOp˘dense_4/BiasAdd/ReadVariableOp˘dense_4/MatMul/ReadVariableOp˘dense_5/BiasAdd/ReadVariableOp˘dense_5/MatMul/ReadVariableOp˘dense_6/BiasAdd/ReadVariableOp˘dense_6/MatMul/ReadVariableOp˘dense_7/BiasAdd/ReadVariableOp˘dense_7/MatMul/ReadVariableOp[
concatenate_1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :
concatenate_1/concatConcatV2inputs_0inputs_1inputs_2inputs_3inputs_4inputs_5inputs_6inputs_7inputs_8inputs_9	inputs_10	inputs_11	inputs_12"concatenate_1/concat/axis:output:0*
N*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
dense_4/MatMul/ReadVariableOpReadVariableOp&dense_4_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
dense_4/MatMulMatMulconcatenate_1/concat:output:0%dense_4/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
dense_4/BiasAdd/ReadVariableOpReadVariableOp'dense_4_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
dense_4/BiasAddBiasAdddense_4/MatMul:product:0&dense_4/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙a
dense_4/ReluReludense_4/BiasAdd:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ł
.batch_normalization_3/batchnorm/ReadVariableOpReadVariableOp7batch_normalization_3_batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype0j
%batch_normalization_3/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:ş
#batch_normalization_3/batchnorm/addAddV26batch_normalization_3/batchnorm/ReadVariableOp:value:0.batch_normalization_3/batchnorm/add/y:output:0*
T0*
_output_shapes	
:}
%batch_normalization_3/batchnorm/RsqrtRsqrt'batch_normalization_3/batchnorm/add:z:0*
T0*
_output_shapes	
:Ť
2batch_normalization_3/batchnorm/mul/ReadVariableOpReadVariableOp;batch_normalization_3_batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype0ˇ
#batch_normalization_3/batchnorm/mulMul)batch_normalization_3/batchnorm/Rsqrt:y:0:batch_normalization_3/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:¤
%batch_normalization_3/batchnorm/mul_1Muldense_4/Relu:activations:0'batch_normalization_3/batchnorm/mul:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙§
0batch_normalization_3/batchnorm/ReadVariableOp_1ReadVariableOp9batch_normalization_3_batchnorm_readvariableop_1_resource*
_output_shapes	
:*
dtype0ľ
%batch_normalization_3/batchnorm/mul_2Mul8batch_normalization_3/batchnorm/ReadVariableOp_1:value:0'batch_normalization_3/batchnorm/mul:z:0*
T0*
_output_shapes	
:§
0batch_normalization_3/batchnorm/ReadVariableOp_2ReadVariableOp9batch_normalization_3_batchnorm_readvariableop_2_resource*
_output_shapes	
:*
dtype0ľ
#batch_normalization_3/batchnorm/subSub8batch_normalization_3/batchnorm/ReadVariableOp_2:value:0)batch_normalization_3/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:ľ
%batch_normalization_3/batchnorm/add_1AddV2)batch_normalization_3/batchnorm/mul_1:z:0'batch_normalization_3/batchnorm/sub:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙|
dropout_3/IdentityIdentity)batch_normalization_3/batchnorm/add_1:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
dense_5/MatMul/ReadVariableOpReadVariableOp&dense_5_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype0
dense_5/MatMulMatMuldropout_3/Identity:output:0%dense_5/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
dense_5/BiasAdd/ReadVariableOpReadVariableOp'dense_5_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
dense_5/BiasAddBiasAdddense_5/MatMul:product:0&dense_5/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙a
dense_5/ReluReludense_5/BiasAdd:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ł
.batch_normalization_4/batchnorm/ReadVariableOpReadVariableOp7batch_normalization_4_batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype0j
%batch_normalization_4/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:ş
#batch_normalization_4/batchnorm/addAddV26batch_normalization_4/batchnorm/ReadVariableOp:value:0.batch_normalization_4/batchnorm/add/y:output:0*
T0*
_output_shapes	
:}
%batch_normalization_4/batchnorm/RsqrtRsqrt'batch_normalization_4/batchnorm/add:z:0*
T0*
_output_shapes	
:Ť
2batch_normalization_4/batchnorm/mul/ReadVariableOpReadVariableOp;batch_normalization_4_batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype0ˇ
#batch_normalization_4/batchnorm/mulMul)batch_normalization_4/batchnorm/Rsqrt:y:0:batch_normalization_4/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:¤
%batch_normalization_4/batchnorm/mul_1Muldense_5/Relu:activations:0'batch_normalization_4/batchnorm/mul:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙§
0batch_normalization_4/batchnorm/ReadVariableOp_1ReadVariableOp9batch_normalization_4_batchnorm_readvariableop_1_resource*
_output_shapes	
:*
dtype0ľ
%batch_normalization_4/batchnorm/mul_2Mul8batch_normalization_4/batchnorm/ReadVariableOp_1:value:0'batch_normalization_4/batchnorm/mul:z:0*
T0*
_output_shapes	
:§
0batch_normalization_4/batchnorm/ReadVariableOp_2ReadVariableOp9batch_normalization_4_batchnorm_readvariableop_2_resource*
_output_shapes	
:*
dtype0ľ
#batch_normalization_4/batchnorm/subSub8batch_normalization_4/batchnorm/ReadVariableOp_2:value:0)batch_normalization_4/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:ľ
%batch_normalization_4/batchnorm/add_1AddV2)batch_normalization_4/batchnorm/mul_1:z:0'batch_normalization_4/batchnorm/sub:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙|
dropout_4/IdentityIdentity)batch_normalization_4/batchnorm/add_1:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
dense_6/MatMul/ReadVariableOpReadVariableOp&dense_6_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype0
dense_6/MatMulMatMuldropout_4/Identity:output:0%dense_6/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
dense_6/BiasAdd/ReadVariableOpReadVariableOp'dense_6_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
dense_6/BiasAddBiasAdddense_6/MatMul:product:0&dense_6/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙a
dense_6/ReluReludense_6/BiasAdd:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ł
.batch_normalization_5/batchnorm/ReadVariableOpReadVariableOp7batch_normalization_5_batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype0j
%batch_normalization_5/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:ş
#batch_normalization_5/batchnorm/addAddV26batch_normalization_5/batchnorm/ReadVariableOp:value:0.batch_normalization_5/batchnorm/add/y:output:0*
T0*
_output_shapes	
:}
%batch_normalization_5/batchnorm/RsqrtRsqrt'batch_normalization_5/batchnorm/add:z:0*
T0*
_output_shapes	
:Ť
2batch_normalization_5/batchnorm/mul/ReadVariableOpReadVariableOp;batch_normalization_5_batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype0ˇ
#batch_normalization_5/batchnorm/mulMul)batch_normalization_5/batchnorm/Rsqrt:y:0:batch_normalization_5/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:¤
%batch_normalization_5/batchnorm/mul_1Muldense_6/Relu:activations:0'batch_normalization_5/batchnorm/mul:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙§
0batch_normalization_5/batchnorm/ReadVariableOp_1ReadVariableOp9batch_normalization_5_batchnorm_readvariableop_1_resource*
_output_shapes	
:*
dtype0ľ
%batch_normalization_5/batchnorm/mul_2Mul8batch_normalization_5/batchnorm/ReadVariableOp_1:value:0'batch_normalization_5/batchnorm/mul:z:0*
T0*
_output_shapes	
:§
0batch_normalization_5/batchnorm/ReadVariableOp_2ReadVariableOp9batch_normalization_5_batchnorm_readvariableop_2_resource*
_output_shapes	
:*
dtype0ľ
#batch_normalization_5/batchnorm/subSub8batch_normalization_5/batchnorm/ReadVariableOp_2:value:0)batch_normalization_5/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:ľ
%batch_normalization_5/batchnorm/add_1AddV2)batch_normalization_5/batchnorm/mul_1:z:0'batch_normalization_5/batchnorm/sub:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙|
dropout_5/IdentityIdentity)batch_normalization_5/batchnorm/add_1:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
dense_7/MatMul/ReadVariableOpReadVariableOp&dense_7_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
dense_7/MatMulMatMuldropout_5/Identity:output:0%dense_7/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
dense_7/BiasAdd/ReadVariableOpReadVariableOp'dense_7_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_7/BiasAddBiasAdddense_7/MatMul:product:0&dense_7/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙f
dense_7/SoftmaxSoftmaxdense_7/BiasAdd:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙h
IdentityIdentitydense_7/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙Ž
NoOpNoOp/^batch_normalization_3/batchnorm/ReadVariableOp1^batch_normalization_3/batchnorm/ReadVariableOp_11^batch_normalization_3/batchnorm/ReadVariableOp_23^batch_normalization_3/batchnorm/mul/ReadVariableOp/^batch_normalization_4/batchnorm/ReadVariableOp1^batch_normalization_4/batchnorm/ReadVariableOp_11^batch_normalization_4/batchnorm/ReadVariableOp_23^batch_normalization_4/batchnorm/mul/ReadVariableOp/^batch_normalization_5/batchnorm/ReadVariableOp1^batch_normalization_5/batchnorm/ReadVariableOp_11^batch_normalization_5/batchnorm/ReadVariableOp_23^batch_normalization_5/batchnorm/mul/ReadVariableOp^dense_4/BiasAdd/ReadVariableOp^dense_4/MatMul/ReadVariableOp^dense_5/BiasAdd/ReadVariableOp^dense_5/MatMul/ReadVariableOp^dense_6/BiasAdd/ReadVariableOp^dense_6/MatMul/ReadVariableOp^dense_7/BiasAdd/ReadVariableOp^dense_7/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*´
_input_shapes˘
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: : : : : : : : : : : : : : : : : : : : 2`
.batch_normalization_3/batchnorm/ReadVariableOp.batch_normalization_3/batchnorm/ReadVariableOp2d
0batch_normalization_3/batchnorm/ReadVariableOp_10batch_normalization_3/batchnorm/ReadVariableOp_12d
0batch_normalization_3/batchnorm/ReadVariableOp_20batch_normalization_3/batchnorm/ReadVariableOp_22h
2batch_normalization_3/batchnorm/mul/ReadVariableOp2batch_normalization_3/batchnorm/mul/ReadVariableOp2`
.batch_normalization_4/batchnorm/ReadVariableOp.batch_normalization_4/batchnorm/ReadVariableOp2d
0batch_normalization_4/batchnorm/ReadVariableOp_10batch_normalization_4/batchnorm/ReadVariableOp_12d
0batch_normalization_4/batchnorm/ReadVariableOp_20batch_normalization_4/batchnorm/ReadVariableOp_22h
2batch_normalization_4/batchnorm/mul/ReadVariableOp2batch_normalization_4/batchnorm/mul/ReadVariableOp2`
.batch_normalization_5/batchnorm/ReadVariableOp.batch_normalization_5/batchnorm/ReadVariableOp2d
0batch_normalization_5/batchnorm/ReadVariableOp_10batch_normalization_5/batchnorm/ReadVariableOp_12d
0batch_normalization_5/batchnorm/ReadVariableOp_20batch_normalization_5/batchnorm/ReadVariableOp_22h
2batch_normalization_5/batchnorm/mul/ReadVariableOp2batch_normalization_5/batchnorm/mul/ReadVariableOp2@
dense_4/BiasAdd/ReadVariableOpdense_4/BiasAdd/ReadVariableOp2>
dense_4/MatMul/ReadVariableOpdense_4/MatMul/ReadVariableOp2@
dense_5/BiasAdd/ReadVariableOpdense_5/BiasAdd/ReadVariableOp2>
dense_5/MatMul/ReadVariableOpdense_5/MatMul/ReadVariableOp2@
dense_6/BiasAdd/ReadVariableOpdense_6/BiasAdd/ReadVariableOp2>
dense_6/MatMul/ReadVariableOpdense_6/MatMul/ReadVariableOp2@
dense_7/BiasAdd/ReadVariableOpdense_7/BiasAdd/ReadVariableOp2>
dense_7/MatMul/ReadVariableOpdense_7/MatMul/ReadVariableOp:Q M
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
"
_user_specified_name
inputs/1:QM
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
"
_user_specified_name
inputs/2:QM
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
"
_user_specified_name
inputs/3:QM
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
"
_user_specified_name
inputs/4:QM
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
"
_user_specified_name
inputs/5:QM
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
"
_user_specified_name
inputs/6:QM
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
"
_user_specified_name
inputs/7:QM
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
"
_user_specified_name
inputs/8:Q	M
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
"
_user_specified_name
inputs/9:R
N
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
#
_user_specified_name	inputs/10:RN
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
#
_user_specified_name	inputs/11:RN
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
#
_user_specified_name	inputs/12
Ü
c
E__inference_dropout_5_layer_call_and_return_conditional_losses_145681

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:˙˙˙˙˙˙˙˙˙:P L
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
Ž
÷
.__inference_concatenate_1_layer_call_fn_146637
inputs_0
inputs_1
inputs_2
inputs_3
inputs_4
inputs_5
inputs_6
inputs_7
inputs_8
inputs_9
	inputs_10
	inputs_11
	inputs_12
identity˝
PartitionedCallPartitionedCallinputs_0inputs_1inputs_2inputs_3inputs_4inputs_5inputs_6inputs_7inputs_8inputs_9	inputs_10	inputs_11	inputs_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_concatenate_1_layer_call_and_return_conditional_losses_145582`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapesú
÷:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:Q M
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
"
_user_specified_name
inputs/1:QM
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
"
_user_specified_name
inputs/2:QM
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
"
_user_specified_name
inputs/3:QM
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
"
_user_specified_name
inputs/4:QM
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
"
_user_specified_name
inputs/5:QM
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
"
_user_specified_name
inputs/6:QM
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
"
_user_specified_name
inputs/7:QM
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
"
_user_specified_name
inputs/8:Q	M
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
"
_user_specified_name
inputs/9:R
N
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
#
_user_specified_name	inputs/10:RN
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
#
_user_specified_name	inputs/11:RN
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
#
_user_specified_name	inputs/12
ŰB
Ę

C__inference_model_1_layer_call_and_return_conditional_losses_145701

inputs
inputs_1
inputs_2
inputs_3
inputs_4
inputs_5
inputs_6
inputs_7
inputs_8
inputs_9
	inputs_10
	inputs_11
	inputs_12!
dense_4_145596:	
dense_4_145598:	+
batch_normalization_3_145601:	+
batch_normalization_3_145603:	+
batch_normalization_3_145605:	+
batch_normalization_3_145607:	"
dense_5_145629:

dense_5_145631:	+
batch_normalization_4_145634:	+
batch_normalization_4_145636:	+
batch_normalization_4_145638:	+
batch_normalization_4_145640:	"
dense_6_145662:

dense_6_145664:	+
batch_normalization_5_145667:	+
batch_normalization_5_145669:	+
batch_normalization_5_145671:	+
batch_normalization_5_145673:	!
dense_7_145695:	
dense_7_145697:
identity˘-batch_normalization_3/StatefulPartitionedCall˘-batch_normalization_4/StatefulPartitionedCall˘-batch_normalization_5/StatefulPartitionedCall˘dense_4/StatefulPartitionedCall˘dense_5/StatefulPartitionedCall˘dense_6/StatefulPartitionedCall˘dense_7/StatefulPartitionedCallÉ
concatenate_1/PartitionedCallPartitionedCallinputsinputs_1inputs_2inputs_3inputs_4inputs_5inputs_6inputs_7inputs_8inputs_9	inputs_10	inputs_11	inputs_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_concatenate_1_layer_call_and_return_conditional_losses_145582
dense_4/StatefulPartitionedCallStatefulPartitionedCall&concatenate_1/PartitionedCall:output:0dense_4_145596dense_4_145598*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_4_layer_call_and_return_conditional_losses_145595
-batch_normalization_3/StatefulPartitionedCallStatefulPartitionedCall(dense_4/StatefulPartitionedCall:output:0batch_normalization_3_145601batch_normalization_3_145603batch_normalization_3_145605batch_normalization_3_145607*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:˙˙˙˙˙˙˙˙˙*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Z
fURS
Q__inference_batch_normalization_3_layer_call_and_return_conditional_losses_144905ë
dropout_3/PartitionedCallPartitionedCall6batch_normalization_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:˙˙˙˙˙˙˙˙˙* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dropout_3_layer_call_and_return_conditional_losses_145615
dense_5/StatefulPartitionedCallStatefulPartitionedCall"dropout_3/PartitionedCall:output:0dense_5_145629dense_5_145631*
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
GPU 2J 8 *L
fGRE
C__inference_dense_5_layer_call_and_return_conditional_losses_145628
-batch_normalization_4/StatefulPartitionedCallStatefulPartitionedCall(dense_5/StatefulPartitionedCall:output:0batch_normalization_4_145634batch_normalization_4_145636batch_normalization_4_145638batch_normalization_4_145640*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:˙˙˙˙˙˙˙˙˙*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Z
fURS
Q__inference_batch_normalization_4_layer_call_and_return_conditional_losses_144987ë
dropout_4/PartitionedCallPartitionedCall6batch_normalization_4/StatefulPartitionedCall:output:0*
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
GPU 2J 8 *N
fIRG
E__inference_dropout_4_layer_call_and_return_conditional_losses_145648
dense_6/StatefulPartitionedCallStatefulPartitionedCall"dropout_4/PartitionedCall:output:0dense_6_145662dense_6_145664*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_6_layer_call_and_return_conditional_losses_145661
-batch_normalization_5/StatefulPartitionedCallStatefulPartitionedCall(dense_6/StatefulPartitionedCall:output:0batch_normalization_5_145667batch_normalization_5_145669batch_normalization_5_145671batch_normalization_5_145673*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:˙˙˙˙˙˙˙˙˙*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Z
fURS
Q__inference_batch_normalization_5_layer_call_and_return_conditional_losses_145069ë
dropout_5/PartitionedCallPartitionedCall6batch_normalization_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:˙˙˙˙˙˙˙˙˙* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dropout_5_layer_call_and_return_conditional_losses_145681
dense_7/StatefulPartitionedCallStatefulPartitionedCall"dropout_5/PartitionedCall:output:0dense_7_145695dense_7_145697*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_7_layer_call_and_return_conditional_losses_145694w
IdentityIdentity(dense_7/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙Ţ
NoOpNoOp.^batch_normalization_3/StatefulPartitionedCall.^batch_normalization_4/StatefulPartitionedCall.^batch_normalization_5/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall ^dense_5/StatefulPartitionedCall ^dense_6/StatefulPartitionedCall ^dense_7/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*´
_input_shapes˘
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: : : : : : : : : : : : : : : : : : : : 2^
-batch_normalization_3/StatefulPartitionedCall-batch_normalization_3/StatefulPartitionedCall2^
-batch_normalization_4/StatefulPartitionedCall-batch_normalization_4/StatefulPartitionedCall2^
-batch_normalization_5/StatefulPartitionedCall-batch_normalization_5/StatefulPartitionedCall2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall2B
dense_7/StatefulPartitionedCalldense_7/StatefulPartitionedCall:O K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs:OK
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs:OK
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs:OK
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs:OK
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs:OK
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs:OK
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs:OK
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs:OK
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs:O	K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs:O
K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs:OK
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs:OK
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
˘

ö
C__inference_dense_4_layer_call_and_return_conditional_losses_146675

inputs1
matmul_readvariableop_resource:	.
biasadd_readvariableop_resource:	
identity˘BiasAdd/ReadVariableOp˘MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:˙˙˙˙˙˙˙˙˙: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
Ł

ő
C__inference_dense_7_layer_call_and_return_conditional_losses_145694

inputs1
matmul_readvariableop_resource:	-
biasadd_readvariableop_resource:
identity˘BiasAdd/ReadVariableOp˘MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:˙˙˙˙˙˙˙˙˙: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
Ż%
î
Q__inference_batch_normalization_4_layer_call_and_return_conditional_losses_145034

inputs6
'assignmovingavg_readvariableop_resource:	8
)assignmovingavg_1_readvariableop_resource:	4
%batchnorm_mul_readvariableop_resource:	0
!batchnorm_readvariableop_resource:	
identity˘AssignMovingAvg˘AssignMovingAvg/ReadVariableOp˘AssignMovingAvg_1˘ AssignMovingAvg_1/ReadVariableOp˘batchnorm/ReadVariableOp˘batchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	*
	keep_dims(e
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes
:	
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	*
	keep_dims(n
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 t
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes	
:*
dtype0
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes	
:y
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:Ź
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
×#<
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes	
:*
dtype0
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes	
:
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:´
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:r
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:Q
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype0u
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:d
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙i
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:w
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype0q
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:s
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙c
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ę
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:˙˙˙˙˙˙˙˙˙: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
ő
c
*__inference_dropout_4_layer_call_fn_146892

inputs
identity˘StatefulPartitionedCallÁ
StatefulPartitionedCallStatefulPartitionedCallinputs*
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
GPU 2J 8 *N
fIRG
E__inference_dropout_4_layer_call_and_return_conditional_losses_145807p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:˙˙˙˙˙˙˙˙˙22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
É
Ž
(__inference_model_1_layer_call_fn_146306
inputs_0
inputs_1
inputs_2
inputs_3
inputs_4
inputs_5
inputs_6
inputs_7
inputs_8
inputs_9
	inputs_10
	inputs_11
	inputs_12
unknown:	
	unknown_0:	
	unknown_1:	
	unknown_2:	
	unknown_3:	
	unknown_4:	
	unknown_5:

	unknown_6:	
	unknown_7:	
	unknown_8:	
	unknown_9:	

unknown_10:	

unknown_11:


unknown_12:	

unknown_13:	

unknown_14:	

unknown_15:	

unknown_16:	

unknown_17:	

unknown_18:
identity˘StatefulPartitionedCallÔ
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1inputs_2inputs_3inputs_4inputs_5inputs_6inputs_7inputs_8inputs_9	inputs_10	inputs_11	inputs_12unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18*,
Tin%
#2!*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙*6
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_model_1_layer_call_and_return_conditional_losses_145701o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*´
_input_shapes˘
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
"
_user_specified_name
inputs/1:QM
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
"
_user_specified_name
inputs/2:QM
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
"
_user_specified_name
inputs/3:QM
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
"
_user_specified_name
inputs/4:QM
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
"
_user_specified_name
inputs/5:QM
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
"
_user_specified_name
inputs/6:QM
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
"
_user_specified_name
inputs/7:QM
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
"
_user_specified_name
inputs/8:Q	M
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
"
_user_specified_name
inputs/9:R
N
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
#
_user_specified_name	inputs/10:RN
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
#
_user_specified_name	inputs/11:RN
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
#
_user_specified_name	inputs/12
Ż%
î
Q__inference_batch_normalization_3_layer_call_and_return_conditional_losses_146755

inputs6
'assignmovingavg_readvariableop_resource:	8
)assignmovingavg_1_readvariableop_resource:	4
%batchnorm_mul_readvariableop_resource:	0
!batchnorm_readvariableop_resource:	
identity˘AssignMovingAvg˘AssignMovingAvg/ReadVariableOp˘AssignMovingAvg_1˘ AssignMovingAvg_1/ReadVariableOp˘batchnorm/ReadVariableOp˘batchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	*
	keep_dims(e
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes
:	
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	*
	keep_dims(n
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 t
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes	
:*
dtype0
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes	
:y
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:Ź
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
×#<
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes	
:*
dtype0
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes	
:
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:´
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:r
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:Q
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype0u
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:d
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙i
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:w
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype0q
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:s
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙c
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ę
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:˙˙˙˙˙˙˙˙˙: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
Ü
c
E__inference_dropout_5_layer_call_and_return_conditional_losses_147024

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:˙˙˙˙˙˙˙˙˙:P L
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
°
Ő
6__inference_batch_normalization_5_layer_call_fn_146942

inputs
unknown:	
	unknown_0:	
	unknown_1:	
	unknown_2:	
identity˘StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:˙˙˙˙˙˙˙˙˙*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Z
fURS
Q__inference_batch_normalization_5_layer_call_and_return_conditional_losses_145069p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:˙˙˙˙˙˙˙˙˙: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
Ü
c
E__inference_dropout_3_layer_call_and_return_conditional_losses_145615

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:˙˙˙˙˙˙˙˙˙:P L
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
°0
Â
9__inference_transform_features_layer_layer_call_fn_147149
inputs_absences	

inputs_age	
inputs_ethnicity	
inputs_extracurricular	

inputs_gpa
inputs_gender	
inputs_music	
inputs_parentaleducation	
inputs_parentalsupport	
inputs_sports	
inputs_studytimeweekly
inputs_tutoring	
inputs_volunteering	
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20

unknown_21

unknown_22

unknown_23

unknown_24
identity

identity_1

identity_2

identity_3

identity_4

identity_5

identity_6

identity_7

identity_8

identity_9
identity_10
identity_11
identity_12ę
PartitionedCallPartitionedCallinputs_absences
inputs_ageinputs_ethnicityinputs_extracurricular
inputs_gpainputs_genderinputs_musicinputs_parentaleducationinputs_parentalsupportinputs_sportsinputs_studytimeweeklyinputs_tutoringinputs_volunteeringunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
unknown_24*2
Tin+
)2'											*
Tout
2*
_collective_manager_ids
 *
_output_shapesú
÷:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *]
fXRV
T__inference_transform_features_layer_layer_call_and_return_conditional_losses_145252`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙b

Identity_1IdentityPartitionedCall:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙b

Identity_2IdentityPartitionedCall:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙b

Identity_3IdentityPartitionedCall:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙b

Identity_4IdentityPartitionedCall:output:4*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙b

Identity_5IdentityPartitionedCall:output:5*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙b

Identity_6IdentityPartitionedCall:output:6*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙b

Identity_7IdentityPartitionedCall:output:7*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙b

Identity_8IdentityPartitionedCall:output:8*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙b

Identity_9IdentityPartitionedCall:output:9*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
Identity_10IdentityPartitionedCall:output:10*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
Identity_11IdentityPartitionedCall:output:11*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
Identity_12IdentityPartitionedCall:output:12*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙"
identityIdentity:output:0"!

identity_1Identity_1:output:0"#
identity_10Identity_10:output:0"#
identity_11Identity_11:output:0"#
identity_12Identity_12:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0"!

identity_6Identity_6:output:0"!

identity_7Identity_7:output:0"!

identity_8Identity_8:output:0"!

identity_9Identity_9:output:0*(
_construction_contextkEagerRuntime*Ŕ
_input_shapesŽ
Ť:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: : : : : : : : : : : : : : : : : : : : : : : : : : :X T
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
)
_user_specified_nameinputs/Absences:SO
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
$
_user_specified_name
inputs/Age:YU
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
_user_specified_nameinputs/Ethnicity:_[
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
0
_user_specified_nameinputs/Extracurricular:SO
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
$
_user_specified_name
inputs/GPA:VR
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
'
_user_specified_nameinputs/Gender:UQ
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
&
_user_specified_nameinputs/Music:a]
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
2
_user_specified_nameinputs/ParentalEducation:_[
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
0
_user_specified_nameinputs/ParentalSupport:V	R
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
'
_user_specified_nameinputs/Sports:_
[
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
0
_user_specified_nameinputs/StudyTimeWeekly:XT
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
)
_user_specified_nameinputs/Tutoring:\X
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
-
_user_specified_nameinputs/Volunteering:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: : 

_output_shapes
: :!

_output_shapes
: :"

_output_shapes
: :#

_output_shapes
: :$

_output_shapes
: :%

_output_shapes
: :&

_output_shapes
: 
Ó

$__inference_signature_wrapper_144783
examples
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20

unknown_21

unknown_22

unknown_23

unknown_24

unknown_25:	

unknown_26:	

unknown_27:	

unknown_28:	

unknown_29:	

unknown_30:	

unknown_31:


unknown_32:	

unknown_33:	

unknown_34:	

unknown_35:	

unknown_36:	

unknown_37:


unknown_38:	

unknown_39:	

unknown_40:	

unknown_41:	

unknown_42:	

unknown_43:	

unknown_44:
identity˘StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallexamplesunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42
unknown_43
unknown_44*:
Tin3
12/*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙*6
_read_only_resource_inputs
 !"#$%&'()*+,-.*-
config_proto

CPU

GPU 2J 8 *0
f+R)
'__inference_serve_tf_examples_fn_144684o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*~
_input_shapesm
k:˙˙˙˙˙˙˙˙˙: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:M I
#
_output_shapes
:˙˙˙˙˙˙˙˙˙
"
_user_specified_name
examples:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :	

_output_shapes
: :


_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
Ś

÷
C__inference_dense_6_layer_call_and_return_conditional_losses_146929

inputs2
matmul_readvariableop_resource:
.
biasadd_readvariableop_resource:	
identity˘BiasAdd/ReadVariableOp˘MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
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
źs
Ć
__inference__traced_save_147478
file_prefix-
)savev2_dense_4_kernel_read_readvariableop+
'savev2_dense_4_bias_read_readvariableop:
6savev2_batch_normalization_3_gamma_read_readvariableop9
5savev2_batch_normalization_3_beta_read_readvariableop@
<savev2_batch_normalization_3_moving_mean_read_readvariableopD
@savev2_batch_normalization_3_moving_variance_read_readvariableop-
)savev2_dense_5_kernel_read_readvariableop+
'savev2_dense_5_bias_read_readvariableop:
6savev2_batch_normalization_4_gamma_read_readvariableop9
5savev2_batch_normalization_4_beta_read_readvariableop@
<savev2_batch_normalization_4_moving_mean_read_readvariableopD
@savev2_batch_normalization_4_moving_variance_read_readvariableop-
)savev2_dense_6_kernel_read_readvariableop+
'savev2_dense_6_bias_read_readvariableop:
6savev2_batch_normalization_5_gamma_read_readvariableop9
5savev2_batch_normalization_5_beta_read_readvariableop@
<savev2_batch_normalization_5_moving_mean_read_readvariableopD
@savev2_batch_normalization_5_moving_variance_read_readvariableop-
)savev2_dense_7_kernel_read_readvariableop+
'savev2_dense_7_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop4
0savev2_adam_dense_4_kernel_m_read_readvariableop2
.savev2_adam_dense_4_bias_m_read_readvariableopA
=savev2_adam_batch_normalization_3_gamma_m_read_readvariableop@
<savev2_adam_batch_normalization_3_beta_m_read_readvariableop4
0savev2_adam_dense_5_kernel_m_read_readvariableop2
.savev2_adam_dense_5_bias_m_read_readvariableopA
=savev2_adam_batch_normalization_4_gamma_m_read_readvariableop@
<savev2_adam_batch_normalization_4_beta_m_read_readvariableop4
0savev2_adam_dense_6_kernel_m_read_readvariableop2
.savev2_adam_dense_6_bias_m_read_readvariableopA
=savev2_adam_batch_normalization_5_gamma_m_read_readvariableop@
<savev2_adam_batch_normalization_5_beta_m_read_readvariableop4
0savev2_adam_dense_7_kernel_m_read_readvariableop2
.savev2_adam_dense_7_bias_m_read_readvariableop4
0savev2_adam_dense_4_kernel_v_read_readvariableop2
.savev2_adam_dense_4_bias_v_read_readvariableopA
=savev2_adam_batch_normalization_3_gamma_v_read_readvariableop@
<savev2_adam_batch_normalization_3_beta_v_read_readvariableop4
0savev2_adam_dense_5_kernel_v_read_readvariableop2
.savev2_adam_dense_5_bias_v_read_readvariableopA
=savev2_adam_batch_normalization_4_gamma_v_read_readvariableop@
<savev2_adam_batch_normalization_4_beta_v_read_readvariableop4
0savev2_adam_dense_6_kernel_v_read_readvariableop2
.savev2_adam_dense_6_bias_v_read_readvariableopA
=savev2_adam_batch_normalization_5_gamma_v_read_readvariableop@
<savev2_adam_batch_normalization_5_beta_v_read_readvariableop4
0savev2_adam_dense_7_kernel_v_read_readvariableop2
.savev2_adam_dense_7_bias_v_read_readvariableop
savev2_const_26

identity_1˘MergeV2Checkpointsw
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
: Î
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
::*
dtype0*÷
valueíBę:B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHâ
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
::*
dtype0*
value~B|:B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ß
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0)savev2_dense_4_kernel_read_readvariableop'savev2_dense_4_bias_read_readvariableop6savev2_batch_normalization_3_gamma_read_readvariableop5savev2_batch_normalization_3_beta_read_readvariableop<savev2_batch_normalization_3_moving_mean_read_readvariableop@savev2_batch_normalization_3_moving_variance_read_readvariableop)savev2_dense_5_kernel_read_readvariableop'savev2_dense_5_bias_read_readvariableop6savev2_batch_normalization_4_gamma_read_readvariableop5savev2_batch_normalization_4_beta_read_readvariableop<savev2_batch_normalization_4_moving_mean_read_readvariableop@savev2_batch_normalization_4_moving_variance_read_readvariableop)savev2_dense_6_kernel_read_readvariableop'savev2_dense_6_bias_read_readvariableop6savev2_batch_normalization_5_gamma_read_readvariableop5savev2_batch_normalization_5_beta_read_readvariableop<savev2_batch_normalization_5_moving_mean_read_readvariableop@savev2_batch_normalization_5_moving_variance_read_readvariableop)savev2_dense_7_kernel_read_readvariableop'savev2_dense_7_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop0savev2_adam_dense_4_kernel_m_read_readvariableop.savev2_adam_dense_4_bias_m_read_readvariableop=savev2_adam_batch_normalization_3_gamma_m_read_readvariableop<savev2_adam_batch_normalization_3_beta_m_read_readvariableop0savev2_adam_dense_5_kernel_m_read_readvariableop.savev2_adam_dense_5_bias_m_read_readvariableop=savev2_adam_batch_normalization_4_gamma_m_read_readvariableop<savev2_adam_batch_normalization_4_beta_m_read_readvariableop0savev2_adam_dense_6_kernel_m_read_readvariableop.savev2_adam_dense_6_bias_m_read_readvariableop=savev2_adam_batch_normalization_5_gamma_m_read_readvariableop<savev2_adam_batch_normalization_5_beta_m_read_readvariableop0savev2_adam_dense_7_kernel_m_read_readvariableop.savev2_adam_dense_7_bias_m_read_readvariableop0savev2_adam_dense_4_kernel_v_read_readvariableop.savev2_adam_dense_4_bias_v_read_readvariableop=savev2_adam_batch_normalization_3_gamma_v_read_readvariableop<savev2_adam_batch_normalization_3_beta_v_read_readvariableop0savev2_adam_dense_5_kernel_v_read_readvariableop.savev2_adam_dense_5_bias_v_read_readvariableop=savev2_adam_batch_normalization_4_gamma_v_read_readvariableop<savev2_adam_batch_normalization_4_beta_v_read_readvariableop0savev2_adam_dense_6_kernel_v_read_readvariableop.savev2_adam_dense_6_bias_v_read_readvariableop=savev2_adam_batch_normalization_5_gamma_v_read_readvariableop<savev2_adam_batch_normalization_5_beta_v_read_readvariableop0savev2_adam_dense_7_kernel_v_read_readvariableop.savev2_adam_dense_7_bias_v_read_readvariableopsavev2_const_26"/device:CPU:0*
_output_shapes
 *H
dtypes>
<2:	
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
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

identity_1Identity_1:output:0*Ž
_input_shapes
: :	::::::
::::::
::::::	:: : : : : : : : : :	::::
::::
::::	::	::::
::::
::::	:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:%!

_output_shapes
:	:!

_output_shapes	
::!

_output_shapes	
::!

_output_shapes	
::!

_output_shapes	
::!

_output_shapes	
::&"
 
_output_shapes
:
:!

_output_shapes	
::!	

_output_shapes	
::!


_output_shapes	
::!

_output_shapes	
::!

_output_shapes	
::&"
 
_output_shapes
:
:!

_output_shapes	
::!

_output_shapes	
::!

_output_shapes	
::!

_output_shapes	
::!

_output_shapes	
::%!

_output_shapes
:	: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	:!

_output_shapes	
::! 

_output_shapes	
::!!

_output_shapes	
::&""
 
_output_shapes
:
:!#

_output_shapes	
::!$

_output_shapes	
::!%

_output_shapes	
::&&"
 
_output_shapes
:
:!'

_output_shapes	
::!(

_output_shapes	
::!)

_output_shapes	
::%*!

_output_shapes
:	: +

_output_shapes
::%,!

_output_shapes
:	:!-

_output_shapes	
::!.

_output_shapes	
::!/

_output_shapes	
::&0"
 
_output_shapes
:
:!1

_output_shapes	
::!2

_output_shapes	
::!3

_output_shapes	
::&4"
 
_output_shapes
:
:!5

_output_shapes	
::!6

_output_shapes	
::!7

_output_shapes	
::%8!

_output_shapes
:	: 9

_output_shapes
:::

_output_shapes
: 
ŕ
´
Q__inference_batch_normalization_4_layer_call_and_return_conditional_losses_144987

inputs0
!batchnorm_readvariableop_resource:	4
%batchnorm_mul_readvariableop_resource:	2
#batchnorm_readvariableop_1_resource:	2
#batchnorm_readvariableop_2_resource:	
identity˘batchnorm/ReadVariableOp˘batchnorm/ReadVariableOp_1˘batchnorm/ReadVariableOp_2˘batchnorm/mul/ReadVariableOpw
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:x
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:Q
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype0u
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:d
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙{
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:*
dtype0s
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:{
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:*
dtype0s
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:s
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙c
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ş
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:˙˙˙˙˙˙˙˙˙: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
Ü
c
E__inference_dropout_3_layer_call_and_return_conditional_losses_146770

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:˙˙˙˙˙˙˙˙˙:P L
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
ŠÎ
÷
'__inference_serve_tf_examples_fn_144684
examples#
transform_features_layer_144536#
transform_features_layer_144538#
transform_features_layer_144540#
transform_features_layer_144542#
transform_features_layer_144544#
transform_features_layer_144546#
transform_features_layer_144548#
transform_features_layer_144550#
transform_features_layer_144552#
transform_features_layer_144554#
transform_features_layer_144556#
transform_features_layer_144558#
transform_features_layer_144560#
transform_features_layer_144562#
transform_features_layer_144564#
transform_features_layer_144566#
transform_features_layer_144568#
transform_features_layer_144570#
transform_features_layer_144572#
transform_features_layer_144574#
transform_features_layer_144576#
transform_features_layer_144578#
transform_features_layer_144580#
transform_features_layer_144582#
transform_features_layer_144584#
transform_features_layer_144586A
.model_1_dense_4_matmul_readvariableop_resource:	>
/model_1_dense_4_biasadd_readvariableop_resource:	N
?model_1_batch_normalization_3_batchnorm_readvariableop_resource:	R
Cmodel_1_batch_normalization_3_batchnorm_mul_readvariableop_resource:	P
Amodel_1_batch_normalization_3_batchnorm_readvariableop_1_resource:	P
Amodel_1_batch_normalization_3_batchnorm_readvariableop_2_resource:	B
.model_1_dense_5_matmul_readvariableop_resource:
>
/model_1_dense_5_biasadd_readvariableop_resource:	N
?model_1_batch_normalization_4_batchnorm_readvariableop_resource:	R
Cmodel_1_batch_normalization_4_batchnorm_mul_readvariableop_resource:	P
Amodel_1_batch_normalization_4_batchnorm_readvariableop_1_resource:	P
Amodel_1_batch_normalization_4_batchnorm_readvariableop_2_resource:	B
.model_1_dense_6_matmul_readvariableop_resource:
>
/model_1_dense_6_biasadd_readvariableop_resource:	N
?model_1_batch_normalization_5_batchnorm_readvariableop_resource:	R
Cmodel_1_batch_normalization_5_batchnorm_mul_readvariableop_resource:	P
Amodel_1_batch_normalization_5_batchnorm_readvariableop_1_resource:	P
Amodel_1_batch_normalization_5_batchnorm_readvariableop_2_resource:	A
.model_1_dense_7_matmul_readvariableop_resource:	=
/model_1_dense_7_biasadd_readvariableop_resource:
identity˘6model_1/batch_normalization_3/batchnorm/ReadVariableOp˘8model_1/batch_normalization_3/batchnorm/ReadVariableOp_1˘8model_1/batch_normalization_3/batchnorm/ReadVariableOp_2˘:model_1/batch_normalization_3/batchnorm/mul/ReadVariableOp˘6model_1/batch_normalization_4/batchnorm/ReadVariableOp˘8model_1/batch_normalization_4/batchnorm/ReadVariableOp_1˘8model_1/batch_normalization_4/batchnorm/ReadVariableOp_2˘:model_1/batch_normalization_4/batchnorm/mul/ReadVariableOp˘6model_1/batch_normalization_5/batchnorm/ReadVariableOp˘8model_1/batch_normalization_5/batchnorm/ReadVariableOp_1˘8model_1/batch_normalization_5/batchnorm/ReadVariableOp_2˘:model_1/batch_normalization_5/batchnorm/mul/ReadVariableOp˘&model_1/dense_4/BiasAdd/ReadVariableOp˘%model_1/dense_4/MatMul/ReadVariableOp˘&model_1/dense_5/BiasAdd/ReadVariableOp˘%model_1/dense_5/MatMul/ReadVariableOp˘&model_1/dense_6/BiasAdd/ReadVariableOp˘%model_1/dense_6/MatMul/ReadVariableOp˘&model_1/dense_7/BiasAdd/ReadVariableOp˘%model_1/dense_7/MatMul/ReadVariableOpU
ParseExample/ConstConst*
_output_shapes
: *
dtype0	*
valueB	 W
ParseExample/Const_1Const*
_output_shapes
: *
dtype0	*
valueB	 W
ParseExample/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 W
ParseExample/Const_3Const*
_output_shapes
: *
dtype0	*
valueB	 W
ParseExample/Const_4Const*
_output_shapes
: *
dtype0*
valueB W
ParseExample/Const_5Const*
_output_shapes
: *
dtype0	*
valueB	 W
ParseExample/Const_6Const*
_output_shapes
: *
dtype0	*
valueB	 W
ParseExample/Const_7Const*
_output_shapes
: *
dtype0	*
valueB	 W
ParseExample/Const_8Const*
_output_shapes
: *
dtype0	*
valueB	 W
ParseExample/Const_9Const*
_output_shapes
: *
dtype0	*
valueB	 X
ParseExample/Const_10Const*
_output_shapes
: *
dtype0*
valueB X
ParseExample/Const_11Const*
_output_shapes
: *
dtype0	*
valueB	 X
ParseExample/Const_12Const*
_output_shapes
: *
dtype0	*
valueB	 d
!ParseExample/ParseExampleV2/namesConst*
_output_shapes
: *
dtype0*
valueB j
'ParseExample/ParseExampleV2/sparse_keysConst*
_output_shapes
: *
dtype0*
valueB 
&ParseExample/ParseExampleV2/dense_keysConst*
_output_shapes
:*
dtype0*Š
valueBBAbsencesBAgeB	EthnicityBExtracurricularBGPABGenderBMusicBParentalEducationBParentalSupportBSportsBStudyTimeWeeklyBTutoringBVolunteeringj
'ParseExample/ParseExampleV2/ragged_keysConst*
_output_shapes
: *
dtype0*
valueB ő
ParseExample/ParseExampleV2ParseExampleV2examples*ParseExample/ParseExampleV2/names:output:00ParseExample/ParseExampleV2/sparse_keys:output:0/ParseExample/ParseExampleV2/dense_keys:output:00ParseExample/ParseExampleV2/ragged_keys:output:0ParseExample/Const:output:0ParseExample/Const_1:output:0ParseExample/Const_2:output:0ParseExample/Const_3:output:0ParseExample/Const_4:output:0ParseExample/Const_5:output:0ParseExample/Const_6:output:0ParseExample/Const_7:output:0ParseExample/Const_8:output:0ParseExample/Const_9:output:0ParseExample/Const_10:output:0ParseExample/Const_11:output:0ParseExample/Const_12:output:0*
Tdense
2											*
_output_shapesú
÷:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*`
dense_shapesP
N:::::::::::::*

num_sparse *
ragged_split_types
 *
ragged_value_types
 *
sparse_types
 x
transform_features_layer/ShapeShape*ParseExample/ParseExampleV2:dense_values:0*
T0	*
_output_shapes
:v
,transform_features_layer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.transform_features_layer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.transform_features_layer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Î
&transform_features_layer/strided_sliceStridedSlice'transform_features_layer/Shape:output:05transform_features_layer/strided_slice/stack:output:07transform_features_layer/strided_slice/stack_1:output:07transform_features_layer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskz
 transform_features_layer/Shape_1Shape*ParseExample/ParseExampleV2:dense_values:0*
T0	*
_output_shapes
:x
.transform_features_layer/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: z
0transform_features_layer/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:z
0transform_features_layer/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ř
(transform_features_layer/strided_slice_1StridedSlice)transform_features_layer/Shape_1:output:07transform_features_layer/strided_slice_1/stack:output:09transform_features_layer/strided_slice_1/stack_1:output:09transform_features_layer/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maski
'transform_features_layer/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Ŕ
%transform_features_layer/zeros/packedPack1transform_features_layer/strided_slice_1:output:00transform_features_layer/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:i
$transform_features_layer/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ˇ
transform_features_layer/zerosFill.transform_features_layer/zeros/packed:output:0-transform_features_layer/zeros/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙Ć
/transform_features_layer/PlaceholderWithDefaultPlaceholderWithDefault'transform_features_layer/zeros:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
dtype0*
shape:˙˙˙˙˙˙˙˙˙÷
(transform_features_layer/PartitionedCallPartitionedCall*ParseExample/ParseExampleV2:dense_values:0*ParseExample/ParseExampleV2:dense_values:1*ParseExample/ParseExampleV2:dense_values:2*ParseExample/ParseExampleV2:dense_values:3*ParseExample/ParseExampleV2:dense_values:4*ParseExample/ParseExampleV2:dense_values:58transform_features_layer/PlaceholderWithDefault:output:0*ParseExample/ParseExampleV2:dense_values:6*ParseExample/ParseExampleV2:dense_values:7*ParseExample/ParseExampleV2:dense_values:8*ParseExample/ParseExampleV2:dense_values:9+ParseExample/ParseExampleV2:dense_values:10+ParseExample/ParseExampleV2:dense_values:11+ParseExample/ParseExampleV2:dense_values:12transform_features_layer_144536transform_features_layer_144538transform_features_layer_144540transform_features_layer_144542transform_features_layer_144544transform_features_layer_144546transform_features_layer_144548transform_features_layer_144550transform_features_layer_144552transform_features_layer_144554transform_features_layer_144556transform_features_layer_144558transform_features_layer_144560transform_features_layer_144562transform_features_layer_144564transform_features_layer_144566transform_features_layer_144568transform_features_layer_144570transform_features_layer_144572transform_features_layer_144574transform_features_layer_144576transform_features_layer_144578transform_features_layer_144580transform_features_layer_144582transform_features_layer_144584transform_features_layer_144586*3
Tin,
*2(											*
Tout
2	* 
_output_shapes
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *"
fR
__inference_pruned_144311c
!model_1/concatenate_1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :Ş
model_1/concatenate_1/concatConcatV21transform_features_layer/PartitionedCall:output:11transform_features_layer/PartitionedCall:output:51transform_features_layer/PartitionedCall:output:21transform_features_layer/PartitionedCall:output:82transform_features_layer/PartitionedCall:output:111transform_features_layer/PartitionedCall:output:02transform_features_layer/PartitionedCall:output:121transform_features_layer/PartitionedCall:output:91transform_features_layer/PartitionedCall:output:32transform_features_layer/PartitionedCall:output:101transform_features_layer/PartitionedCall:output:72transform_features_layer/PartitionedCall:output:131transform_features_layer/PartitionedCall:output:4*model_1/concatenate_1/concat/axis:output:0*
N*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
%model_1/dense_4/MatMul/ReadVariableOpReadVariableOp.model_1_dense_4_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0Š
model_1/dense_4/MatMulMatMul%model_1/concatenate_1/concat:output:0-model_1/dense_4/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
&model_1/dense_4/BiasAdd/ReadVariableOpReadVariableOp/model_1_dense_4_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0§
model_1/dense_4/BiasAddBiasAdd model_1/dense_4/MatMul:product:0.model_1/dense_4/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙q
model_1/dense_4/ReluRelu model_1/dense_4/BiasAdd:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ł
6model_1/batch_normalization_3/batchnorm/ReadVariableOpReadVariableOp?model_1_batch_normalization_3_batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype0r
-model_1/batch_normalization_3/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:Ň
+model_1/batch_normalization_3/batchnorm/addAddV2>model_1/batch_normalization_3/batchnorm/ReadVariableOp:value:06model_1/batch_normalization_3/batchnorm/add/y:output:0*
T0*
_output_shapes	
:
-model_1/batch_normalization_3/batchnorm/RsqrtRsqrt/model_1/batch_normalization_3/batchnorm/add:z:0*
T0*
_output_shapes	
:ť
:model_1/batch_normalization_3/batchnorm/mul/ReadVariableOpReadVariableOpCmodel_1_batch_normalization_3_batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype0Ď
+model_1/batch_normalization_3/batchnorm/mulMul1model_1/batch_normalization_3/batchnorm/Rsqrt:y:0Bmodel_1/batch_normalization_3/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:ź
-model_1/batch_normalization_3/batchnorm/mul_1Mul"model_1/dense_4/Relu:activations:0/model_1/batch_normalization_3/batchnorm/mul:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ˇ
8model_1/batch_normalization_3/batchnorm/ReadVariableOp_1ReadVariableOpAmodel_1_batch_normalization_3_batchnorm_readvariableop_1_resource*
_output_shapes	
:*
dtype0Í
-model_1/batch_normalization_3/batchnorm/mul_2Mul@model_1/batch_normalization_3/batchnorm/ReadVariableOp_1:value:0/model_1/batch_normalization_3/batchnorm/mul:z:0*
T0*
_output_shapes	
:ˇ
8model_1/batch_normalization_3/batchnorm/ReadVariableOp_2ReadVariableOpAmodel_1_batch_normalization_3_batchnorm_readvariableop_2_resource*
_output_shapes	
:*
dtype0Í
+model_1/batch_normalization_3/batchnorm/subSub@model_1/batch_normalization_3/batchnorm/ReadVariableOp_2:value:01model_1/batch_normalization_3/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:Í
-model_1/batch_normalization_3/batchnorm/add_1AddV21model_1/batch_normalization_3/batchnorm/mul_1:z:0/model_1/batch_normalization_3/batchnorm/sub:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
model_1/dropout_3/IdentityIdentity1model_1/batch_normalization_3/batchnorm/add_1:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
%model_1/dense_5/MatMul/ReadVariableOpReadVariableOp.model_1_dense_5_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype0§
model_1/dense_5/MatMulMatMul#model_1/dropout_3/Identity:output:0-model_1/dense_5/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
&model_1/dense_5/BiasAdd/ReadVariableOpReadVariableOp/model_1_dense_5_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0§
model_1/dense_5/BiasAddBiasAdd model_1/dense_5/MatMul:product:0.model_1/dense_5/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙q
model_1/dense_5/ReluRelu model_1/dense_5/BiasAdd:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ł
6model_1/batch_normalization_4/batchnorm/ReadVariableOpReadVariableOp?model_1_batch_normalization_4_batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype0r
-model_1/batch_normalization_4/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:Ň
+model_1/batch_normalization_4/batchnorm/addAddV2>model_1/batch_normalization_4/batchnorm/ReadVariableOp:value:06model_1/batch_normalization_4/batchnorm/add/y:output:0*
T0*
_output_shapes	
:
-model_1/batch_normalization_4/batchnorm/RsqrtRsqrt/model_1/batch_normalization_4/batchnorm/add:z:0*
T0*
_output_shapes	
:ť
:model_1/batch_normalization_4/batchnorm/mul/ReadVariableOpReadVariableOpCmodel_1_batch_normalization_4_batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype0Ď
+model_1/batch_normalization_4/batchnorm/mulMul1model_1/batch_normalization_4/batchnorm/Rsqrt:y:0Bmodel_1/batch_normalization_4/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:ź
-model_1/batch_normalization_4/batchnorm/mul_1Mul"model_1/dense_5/Relu:activations:0/model_1/batch_normalization_4/batchnorm/mul:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ˇ
8model_1/batch_normalization_4/batchnorm/ReadVariableOp_1ReadVariableOpAmodel_1_batch_normalization_4_batchnorm_readvariableop_1_resource*
_output_shapes	
:*
dtype0Í
-model_1/batch_normalization_4/batchnorm/mul_2Mul@model_1/batch_normalization_4/batchnorm/ReadVariableOp_1:value:0/model_1/batch_normalization_4/batchnorm/mul:z:0*
T0*
_output_shapes	
:ˇ
8model_1/batch_normalization_4/batchnorm/ReadVariableOp_2ReadVariableOpAmodel_1_batch_normalization_4_batchnorm_readvariableop_2_resource*
_output_shapes	
:*
dtype0Í
+model_1/batch_normalization_4/batchnorm/subSub@model_1/batch_normalization_4/batchnorm/ReadVariableOp_2:value:01model_1/batch_normalization_4/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:Í
-model_1/batch_normalization_4/batchnorm/add_1AddV21model_1/batch_normalization_4/batchnorm/mul_1:z:0/model_1/batch_normalization_4/batchnorm/sub:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
model_1/dropout_4/IdentityIdentity1model_1/batch_normalization_4/batchnorm/add_1:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
%model_1/dense_6/MatMul/ReadVariableOpReadVariableOp.model_1_dense_6_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype0§
model_1/dense_6/MatMulMatMul#model_1/dropout_4/Identity:output:0-model_1/dense_6/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
&model_1/dense_6/BiasAdd/ReadVariableOpReadVariableOp/model_1_dense_6_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0§
model_1/dense_6/BiasAddBiasAdd model_1/dense_6/MatMul:product:0.model_1/dense_6/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙q
model_1/dense_6/ReluRelu model_1/dense_6/BiasAdd:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ł
6model_1/batch_normalization_5/batchnorm/ReadVariableOpReadVariableOp?model_1_batch_normalization_5_batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype0r
-model_1/batch_normalization_5/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:Ň
+model_1/batch_normalization_5/batchnorm/addAddV2>model_1/batch_normalization_5/batchnorm/ReadVariableOp:value:06model_1/batch_normalization_5/batchnorm/add/y:output:0*
T0*
_output_shapes	
:
-model_1/batch_normalization_5/batchnorm/RsqrtRsqrt/model_1/batch_normalization_5/batchnorm/add:z:0*
T0*
_output_shapes	
:ť
:model_1/batch_normalization_5/batchnorm/mul/ReadVariableOpReadVariableOpCmodel_1_batch_normalization_5_batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype0Ď
+model_1/batch_normalization_5/batchnorm/mulMul1model_1/batch_normalization_5/batchnorm/Rsqrt:y:0Bmodel_1/batch_normalization_5/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:ź
-model_1/batch_normalization_5/batchnorm/mul_1Mul"model_1/dense_6/Relu:activations:0/model_1/batch_normalization_5/batchnorm/mul:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ˇ
8model_1/batch_normalization_5/batchnorm/ReadVariableOp_1ReadVariableOpAmodel_1_batch_normalization_5_batchnorm_readvariableop_1_resource*
_output_shapes	
:*
dtype0Í
-model_1/batch_normalization_5/batchnorm/mul_2Mul@model_1/batch_normalization_5/batchnorm/ReadVariableOp_1:value:0/model_1/batch_normalization_5/batchnorm/mul:z:0*
T0*
_output_shapes	
:ˇ
8model_1/batch_normalization_5/batchnorm/ReadVariableOp_2ReadVariableOpAmodel_1_batch_normalization_5_batchnorm_readvariableop_2_resource*
_output_shapes	
:*
dtype0Í
+model_1/batch_normalization_5/batchnorm/subSub@model_1/batch_normalization_5/batchnorm/ReadVariableOp_2:value:01model_1/batch_normalization_5/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:Í
-model_1/batch_normalization_5/batchnorm/add_1AddV21model_1/batch_normalization_5/batchnorm/mul_1:z:0/model_1/batch_normalization_5/batchnorm/sub:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
model_1/dropout_5/IdentityIdentity1model_1/batch_normalization_5/batchnorm/add_1:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
%model_1/dense_7/MatMul/ReadVariableOpReadVariableOp.model_1_dense_7_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0Ś
model_1/dense_7/MatMulMatMul#model_1/dropout_5/Identity:output:0-model_1/dense_7/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
&model_1/dense_7/BiasAdd/ReadVariableOpReadVariableOp/model_1_dense_7_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Ś
model_1/dense_7/BiasAddBiasAdd model_1/dense_7/MatMul:product:0.model_1/dense_7/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙v
model_1/dense_7/SoftmaxSoftmax model_1/dense_7/BiasAdd:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙p
IdentityIdentity!model_1/dense_7/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙Î
NoOpNoOp7^model_1/batch_normalization_3/batchnorm/ReadVariableOp9^model_1/batch_normalization_3/batchnorm/ReadVariableOp_19^model_1/batch_normalization_3/batchnorm/ReadVariableOp_2;^model_1/batch_normalization_3/batchnorm/mul/ReadVariableOp7^model_1/batch_normalization_4/batchnorm/ReadVariableOp9^model_1/batch_normalization_4/batchnorm/ReadVariableOp_19^model_1/batch_normalization_4/batchnorm/ReadVariableOp_2;^model_1/batch_normalization_4/batchnorm/mul/ReadVariableOp7^model_1/batch_normalization_5/batchnorm/ReadVariableOp9^model_1/batch_normalization_5/batchnorm/ReadVariableOp_19^model_1/batch_normalization_5/batchnorm/ReadVariableOp_2;^model_1/batch_normalization_5/batchnorm/mul/ReadVariableOp'^model_1/dense_4/BiasAdd/ReadVariableOp&^model_1/dense_4/MatMul/ReadVariableOp'^model_1/dense_5/BiasAdd/ReadVariableOp&^model_1/dense_5/MatMul/ReadVariableOp'^model_1/dense_6/BiasAdd/ReadVariableOp&^model_1/dense_6/MatMul/ReadVariableOp'^model_1/dense_7/BiasAdd/ReadVariableOp&^model_1/dense_7/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*~
_input_shapesm
k:˙˙˙˙˙˙˙˙˙: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2p
6model_1/batch_normalization_3/batchnorm/ReadVariableOp6model_1/batch_normalization_3/batchnorm/ReadVariableOp2t
8model_1/batch_normalization_3/batchnorm/ReadVariableOp_18model_1/batch_normalization_3/batchnorm/ReadVariableOp_12t
8model_1/batch_normalization_3/batchnorm/ReadVariableOp_28model_1/batch_normalization_3/batchnorm/ReadVariableOp_22x
:model_1/batch_normalization_3/batchnorm/mul/ReadVariableOp:model_1/batch_normalization_3/batchnorm/mul/ReadVariableOp2p
6model_1/batch_normalization_4/batchnorm/ReadVariableOp6model_1/batch_normalization_4/batchnorm/ReadVariableOp2t
8model_1/batch_normalization_4/batchnorm/ReadVariableOp_18model_1/batch_normalization_4/batchnorm/ReadVariableOp_12t
8model_1/batch_normalization_4/batchnorm/ReadVariableOp_28model_1/batch_normalization_4/batchnorm/ReadVariableOp_22x
:model_1/batch_normalization_4/batchnorm/mul/ReadVariableOp:model_1/batch_normalization_4/batchnorm/mul/ReadVariableOp2p
6model_1/batch_normalization_5/batchnorm/ReadVariableOp6model_1/batch_normalization_5/batchnorm/ReadVariableOp2t
8model_1/batch_normalization_5/batchnorm/ReadVariableOp_18model_1/batch_normalization_5/batchnorm/ReadVariableOp_12t
8model_1/batch_normalization_5/batchnorm/ReadVariableOp_28model_1/batch_normalization_5/batchnorm/ReadVariableOp_22x
:model_1/batch_normalization_5/batchnorm/mul/ReadVariableOp:model_1/batch_normalization_5/batchnorm/mul/ReadVariableOp2P
&model_1/dense_4/BiasAdd/ReadVariableOp&model_1/dense_4/BiasAdd/ReadVariableOp2N
%model_1/dense_4/MatMul/ReadVariableOp%model_1/dense_4/MatMul/ReadVariableOp2P
&model_1/dense_5/BiasAdd/ReadVariableOp&model_1/dense_5/BiasAdd/ReadVariableOp2N
%model_1/dense_5/MatMul/ReadVariableOp%model_1/dense_5/MatMul/ReadVariableOp2P
&model_1/dense_6/BiasAdd/ReadVariableOp&model_1/dense_6/BiasAdd/ReadVariableOp2N
%model_1/dense_6/MatMul/ReadVariableOp%model_1/dense_6/MatMul/ReadVariableOp2P
&model_1/dense_7/BiasAdd/ReadVariableOp&model_1/dense_7/BiasAdd/ReadVariableOp2N
%model_1/dense_7/MatMul/ReadVariableOp%model_1/dense_7/MatMul/ReadVariableOp:M I
#
_output_shapes
:˙˙˙˙˙˙˙˙˙
"
_user_specified_name
examples:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :	

_output_shapes
: :


_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
Ż/
á
$__inference_signature_wrapper_144381

inputs	
inputs_1	
	inputs_10	
	inputs_11
	inputs_12	
	inputs_13	
inputs_2	
inputs_3	
inputs_4
inputs_5	
inputs_6
inputs_7	
inputs_8	
inputs_9	
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20

unknown_21

unknown_22

unknown_23

unknown_24
identity

identity_1

identity_2

identity_3

identity_4

identity_5

identity_6	

identity_7

identity_8

identity_9
identity_10
identity_11
identity_12
identity_13Ä
PartitionedCallPartitionedCallinputsinputs_1inputs_2inputs_3inputs_4inputs_5inputs_6inputs_7inputs_8inputs_9	inputs_10	inputs_11	inputs_12	inputs_13unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
unknown_24*3
Tin,
*2(											*
Tout
2	* 
_output_shapes
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *"
fR
__inference_pruned_144311`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙b

Identity_1IdentityPartitionedCall:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙b

Identity_2IdentityPartitionedCall:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙b

Identity_3IdentityPartitionedCall:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙b

Identity_4IdentityPartitionedCall:output:4*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙b

Identity_5IdentityPartitionedCall:output:5*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙b

Identity_6IdentityPartitionedCall:output:6*
T0	*'
_output_shapes
:˙˙˙˙˙˙˙˙˙b

Identity_7IdentityPartitionedCall:output:7*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙b

Identity_8IdentityPartitionedCall:output:8*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙b

Identity_9IdentityPartitionedCall:output:9*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
Identity_10IdentityPartitionedCall:output:10*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
Identity_11IdentityPartitionedCall:output:11*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
Identity_12IdentityPartitionedCall:output:12*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
Identity_13IdentityPartitionedCall:output:13*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙"
identityIdentity:output:0"!

identity_1Identity_1:output:0"#
identity_10Identity_10:output:0"#
identity_11Identity_11:output:0"#
identity_12Identity_12:output:0"#
identity_13Identity_13:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0"!

identity_6Identity_6:output:0"!

identity_7Identity_7:output:0"!

identity_8Identity_8:output:0"!

identity_9Identity_9:output:0*(
_construction_contextkEagerRuntime*Ó
_input_shapesÁ
ž:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: : : : : : : : : : : : : : : : : : : : : : : : : : :O K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs:QM
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
"
_user_specified_name
inputs_1:RN
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
#
_user_specified_name	inputs_10:RN
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
#
_user_specified_name	inputs_11:RN
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
#
_user_specified_name	inputs_12:RN
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
#
_user_specified_name	inputs_13:QM
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
"
_user_specified_name
inputs_2:QM
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
"
_user_specified_name
inputs_3:QM
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
"
_user_specified_name
inputs_4:Q	M
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
"
_user_specified_name
inputs_5:Q
M
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
"
_user_specified_name
inputs_6:QM
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
"
_user_specified_name
inputs_7:QM
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
"
_user_specified_name
inputs_8:QM
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
"
_user_specified_name
inputs_9:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: : 

_output_shapes
: :!

_output_shapes
: :"

_output_shapes
: :#

_output_shapes
: :$

_output_shapes
: :%

_output_shapes
: :&

_output_shapes
: :'

_output_shapes
: 
Ž
Ő
6__inference_batch_normalization_5_layer_call_fn_146955

inputs
unknown:	
	unknown_0:	
	unknown_1:	
	unknown_2:	
identity˘StatefulPartitionedCall˙
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Z
fURS
Q__inference_batch_normalization_5_layer_call_and_return_conditional_losses_145116p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:˙˙˙˙˙˙˙˙˙: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
Ś

÷
C__inference_dense_6_layer_call_and_return_conditional_losses_145661

inputs2
matmul_readvariableop_resource:
.
biasadd_readvariableop_resource:	
identity˘BiasAdd/ReadVariableOp˘MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
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
ű	
d
E__inference_dropout_3_layer_call_and_return_conditional_losses_145840

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍĚL>§
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙p
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:˙˙˙˙˙˙˙˙˙j
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Z
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:˙˙˙˙˙˙˙˙˙:P L
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
ą;

T__inference_transform_features_layer_layer_call_and_return_conditional_losses_145533
absences	
age	
	ethnicity	
extracurricular	
gpa

gender		
music	
parentaleducation	
parentalsupport	

sports	
studytimeweekly
tutoring	
volunteering	
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20

unknown_21

unknown_22

unknown_23

unknown_24
identity

identity_1

identity_2

identity_3

identity_4

identity_5

identity_6

identity_7

identity_8

identity_9
identity_10
identity_11
identity_12=
ShapeShapeabsences*
T0	*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ń
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
Shape_1Shapeabsences*
T0	*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ű
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :u
zeros/packedPackstrided_slice_1:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
PlaceholderWithDefaultPlaceholderWithDefaultzeros:output:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
dtype0*
shape:˙˙˙˙˙˙˙˙˙ë
PartitionedCallPartitionedCallabsencesage	ethnicityextracurriculargpagenderPlaceholderWithDefault:output:0musicparentaleducationparentalsupportsportsstudytimeweeklytutoringvolunteeringunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
unknown_24*3
Tin,
*2(											*
Tout
2	* 
_output_shapes
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *"
fR
__inference_pruned_144311`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙b

Identity_1IdentityPartitionedCall:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙b

Identity_2IdentityPartitionedCall:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙b

Identity_3IdentityPartitionedCall:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙b

Identity_4IdentityPartitionedCall:output:4*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙b

Identity_5IdentityPartitionedCall:output:5*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙b

Identity_6IdentityPartitionedCall:output:7*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙b

Identity_7IdentityPartitionedCall:output:8*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙b

Identity_8IdentityPartitionedCall:output:9*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙c

Identity_9IdentityPartitionedCall:output:10*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
Identity_10IdentityPartitionedCall:output:11*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
Identity_11IdentityPartitionedCall:output:12*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
Identity_12IdentityPartitionedCall:output:13*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙"
identityIdentity:output:0"!

identity_1Identity_1:output:0"#
identity_10Identity_10:output:0"#
identity_11Identity_11:output:0"#
identity_12Identity_12:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0"!

identity_6Identity_6:output:0"!

identity_7Identity_7:output:0"!

identity_8Identity_8:output:0"!

identity_9Identity_9:output:0*(
_construction_contextkEagerRuntime*Ŕ
_input_shapesŽ
Ť:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: : : : : : : : : : : : : : : : : : : : : : : : : : :Q M
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
"
_user_specified_name
Absences:LH
'
_output_shapes
:˙˙˙˙˙˙˙˙˙

_user_specified_nameAge:RN
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
#
_user_specified_name	Ethnicity:XT
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
)
_user_specified_nameExtracurricular:LH
'
_output_shapes
:˙˙˙˙˙˙˙˙˙

_user_specified_nameGPA:OK
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameGender:NJ
'
_output_shapes
:˙˙˙˙˙˙˙˙˙

_user_specified_nameMusic:ZV
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
+
_user_specified_nameParentalEducation:XT
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
)
_user_specified_nameParentalSupport:O	K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameSports:X
T
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
)
_user_specified_nameStudyTimeWeekly:QM
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
"
_user_specified_name
Tutoring:UQ
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
&
_user_specified_nameVolunteering:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: : 

_output_shapes
: :!

_output_shapes
: :"

_output_shapes
: :#

_output_shapes
: :$

_output_shapes
: :%

_output_shapes
: :&

_output_shapes
: 
°
Ő
6__inference_batch_normalization_4_layer_call_fn_146815

inputs
unknown:	
	unknown_0:	
	unknown_1:	
	unknown_2:	
identity˘StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:˙˙˙˙˙˙˙˙˙*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Z
fURS
Q__inference_batch_normalization_4_layer_call_and_return_conditional_losses_144987p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:˙˙˙˙˙˙˙˙˙: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
Ś

÷
C__inference_dense_5_layer_call_and_return_conditional_losses_145628

inputs2
matmul_readvariableop_resource:
.
biasadd_readvariableop_resource:	
identity˘BiasAdd/ReadVariableOp˘MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
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
:˙˙˙˙˙˙˙˙˙Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:˙˙˙˙˙˙˙˙˙: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
Ç

(__inference_dense_6_layer_call_fn_146918

inputs
unknown:

	unknown_0:	
identity˘StatefulPartitionedCallŮ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_6_layer_call_and_return_conditional_losses_145661p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
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
 
_user_specified_nameinputs
ű	
d
E__inference_dropout_4_layer_call_and_return_conditional_losses_145807

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍĚL>§
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙p
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:˙˙˙˙˙˙˙˙˙j
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Z
IdentityIdentitydropout/Mul_1:z:0*
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
Ż%
î
Q__inference_batch_normalization_5_layer_call_and_return_conditional_losses_145116

inputs6
'assignmovingavg_readvariableop_resource:	8
)assignmovingavg_1_readvariableop_resource:	4
%batchnorm_mul_readvariableop_resource:	0
!batchnorm_readvariableop_resource:	
identity˘AssignMovingAvg˘AssignMovingAvg/ReadVariableOp˘AssignMovingAvg_1˘ AssignMovingAvg_1/ReadVariableOp˘batchnorm/ReadVariableOp˘batchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	*
	keep_dims(e
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes
:	
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	*
	keep_dims(n
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 t
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes	
:*
dtype0
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes	
:y
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:Ź
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
×#<
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes	
:*
dtype0
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes	
:
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:´
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:r
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:Q
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype0u
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:d
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙i
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:w
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype0q
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:s
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙c
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ę
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:˙˙˙˙˙˙˙˙˙: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
ë
ä
(__inference_model_1_layer_call_fn_145744

age_xf
	gender_xf
ethnicity_xf
parentaleducation_xf
studytimeweekly_xf
absences_xf
tutoring_xf
parentalsupport_xf
extracurricular_xf
	sports_xf
music_xf
volunteering_xf

gpa_xf
unknown:	
	unknown_0:	
	unknown_1:	
	unknown_2:	
	unknown_3:	
	unknown_4:	
	unknown_5:

	unknown_6:	
	unknown_7:	
	unknown_8:	
	unknown_9:	

unknown_10:	

unknown_11:


unknown_12:	

unknown_13:	

unknown_14:	

unknown_15:	

unknown_16:	

unknown_17:	

unknown_18:
identity˘StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallage_xf	gender_xfethnicity_xfparentaleducation_xfstudytimeweekly_xfabsences_xftutoring_xfparentalsupport_xfextracurricular_xf	sports_xfmusic_xfvolunteering_xfgpa_xfunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18*,
Tin%
#2!*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙*6
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_model_1_layer_call_and_return_conditional_losses_145701o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*´
_input_shapes˘
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameAge_xf:RN
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
#
_user_specified_name	Gender_xf:UQ
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
&
_user_specified_nameEthnicity_xf:]Y
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
.
_user_specified_nameParentalEducation_xf:[W
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
,
_user_specified_nameStudyTimeWeekly_xf:TP
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
%
_user_specified_nameAbsences_xf:TP
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
%
_user_specified_nameTutoring_xf:[W
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
,
_user_specified_nameParentalSupport_xf:[W
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
,
_user_specified_nameExtracurricular_xf:R	N
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
#
_user_specified_name	Sports_xf:Q
M
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
"
_user_specified_name
Music_xf:XT
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
)
_user_specified_nameVolunteering_xf:OK
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameGPA_xf
Ż%
î
Q__inference_batch_normalization_3_layer_call_and_return_conditional_losses_144952

inputs6
'assignmovingavg_readvariableop_resource:	8
)assignmovingavg_1_readvariableop_resource:	4
%batchnorm_mul_readvariableop_resource:	0
!batchnorm_readvariableop_resource:	
identity˘AssignMovingAvg˘AssignMovingAvg/ReadVariableOp˘AssignMovingAvg_1˘ AssignMovingAvg_1/ReadVariableOp˘batchnorm/ReadVariableOp˘batchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	*
	keep_dims(e
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes
:	
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	*
	keep_dims(n
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 t
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes	
:*
dtype0
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes	
:y
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:Ź
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
×#<
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes	
:*
dtype0
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes	
:
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:´
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:r
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:Q
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype0u
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:d
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙i
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:w
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype0q
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:s
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙c
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ę
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:˙˙˙˙˙˙˙˙˙: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
Ż%
î
Q__inference_batch_normalization_5_layer_call_and_return_conditional_losses_147009

inputs6
'assignmovingavg_readvariableop_resource:	8
)assignmovingavg_1_readvariableop_resource:	4
%batchnorm_mul_readvariableop_resource:	0
!batchnorm_readvariableop_resource:	
identity˘AssignMovingAvg˘AssignMovingAvg/ReadVariableOp˘AssignMovingAvg_1˘ AssignMovingAvg_1/ReadVariableOp˘batchnorm/ReadVariableOp˘batchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	*
	keep_dims(e
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes
:	
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	*
	keep_dims(n
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 t
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes	
:*
dtype0
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes	
:y
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:Ź
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
×#<
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes	
:*
dtype0
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes	
:
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:´
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:r
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:Q
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype0u
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:d
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙i
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:w
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype0q
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:s
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙c
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ę
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:˙˙˙˙˙˙˙˙˙: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
ŘH
î
C__inference_model_1_layer_call_and_return_conditional_losses_146243

age_xf
	gender_xf
ethnicity_xf
parentaleducation_xf
studytimeweekly_xf
absences_xf
tutoring_xf
parentalsupport_xf
extracurricular_xf
	sports_xf
music_xf
volunteering_xf

gpa_xf!
dense_4_146192:	
dense_4_146194:	+
batch_normalization_3_146197:	+
batch_normalization_3_146199:	+
batch_normalization_3_146201:	+
batch_normalization_3_146203:	"
dense_5_146207:

dense_5_146209:	+
batch_normalization_4_146212:	+
batch_normalization_4_146214:	+
batch_normalization_4_146216:	+
batch_normalization_4_146218:	"
dense_6_146222:

dense_6_146224:	+
batch_normalization_5_146227:	+
batch_normalization_5_146229:	+
batch_normalization_5_146231:	+
batch_normalization_5_146233:	!
dense_7_146237:	
dense_7_146239:
identity˘-batch_normalization_3/StatefulPartitionedCall˘-batch_normalization_4/StatefulPartitionedCall˘-batch_normalization_5/StatefulPartitionedCall˘dense_4/StatefulPartitionedCall˘dense_5/StatefulPartitionedCall˘dense_6/StatefulPartitionedCall˘dense_7/StatefulPartitionedCall˘!dropout_3/StatefulPartitionedCall˘!dropout_4/StatefulPartitionedCall˘!dropout_5/StatefulPartitionedCall
concatenate_1/PartitionedCallPartitionedCallage_xf	gender_xfethnicity_xfparentaleducation_xfstudytimeweekly_xfabsences_xftutoring_xfparentalsupport_xfextracurricular_xf	sports_xfmusic_xfvolunteering_xfgpa_xf*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_concatenate_1_layer_call_and_return_conditional_losses_145582
dense_4/StatefulPartitionedCallStatefulPartitionedCall&concatenate_1/PartitionedCall:output:0dense_4_146192dense_4_146194*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_4_layer_call_and_return_conditional_losses_145595
-batch_normalization_3/StatefulPartitionedCallStatefulPartitionedCall(dense_4/StatefulPartitionedCall:output:0batch_normalization_3_146197batch_normalization_3_146199batch_normalization_3_146201batch_normalization_3_146203*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Z
fURS
Q__inference_batch_normalization_3_layer_call_and_return_conditional_losses_144952ű
!dropout_3/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:˙˙˙˙˙˙˙˙˙* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dropout_3_layer_call_and_return_conditional_losses_145840
dense_5/StatefulPartitionedCallStatefulPartitionedCall*dropout_3/StatefulPartitionedCall:output:0dense_5_146207dense_5_146209*
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
GPU 2J 8 *L
fGRE
C__inference_dense_5_layer_call_and_return_conditional_losses_145628
-batch_normalization_4/StatefulPartitionedCallStatefulPartitionedCall(dense_5/StatefulPartitionedCall:output:0batch_normalization_4_146212batch_normalization_4_146214batch_normalization_4_146216batch_normalization_4_146218*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Z
fURS
Q__inference_batch_normalization_4_layer_call_and_return_conditional_losses_145034
!dropout_4/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_4/StatefulPartitionedCall:output:0"^dropout_3/StatefulPartitionedCall*
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
GPU 2J 8 *N
fIRG
E__inference_dropout_4_layer_call_and_return_conditional_losses_145807
dense_6/StatefulPartitionedCallStatefulPartitionedCall*dropout_4/StatefulPartitionedCall:output:0dense_6_146222dense_6_146224*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_6_layer_call_and_return_conditional_losses_145661
-batch_normalization_5/StatefulPartitionedCallStatefulPartitionedCall(dense_6/StatefulPartitionedCall:output:0batch_normalization_5_146227batch_normalization_5_146229batch_normalization_5_146231batch_normalization_5_146233*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Z
fURS
Q__inference_batch_normalization_5_layer_call_and_return_conditional_losses_145116
!dropout_5/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_5/StatefulPartitionedCall:output:0"^dropout_4/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:˙˙˙˙˙˙˙˙˙* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dropout_5_layer_call_and_return_conditional_losses_145774
dense_7/StatefulPartitionedCallStatefulPartitionedCall*dropout_5/StatefulPartitionedCall:output:0dense_7_146237dense_7_146239*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_7_layer_call_and_return_conditional_losses_145694w
IdentityIdentity(dense_7/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙Ę
NoOpNoOp.^batch_normalization_3/StatefulPartitionedCall.^batch_normalization_4/StatefulPartitionedCall.^batch_normalization_5/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall ^dense_5/StatefulPartitionedCall ^dense_6/StatefulPartitionedCall ^dense_7/StatefulPartitionedCall"^dropout_3/StatefulPartitionedCall"^dropout_4/StatefulPartitionedCall"^dropout_5/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*´
_input_shapes˘
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: : : : : : : : : : : : : : : : : : : : 2^
-batch_normalization_3/StatefulPartitionedCall-batch_normalization_3/StatefulPartitionedCall2^
-batch_normalization_4/StatefulPartitionedCall-batch_normalization_4/StatefulPartitionedCall2^
-batch_normalization_5/StatefulPartitionedCall-batch_normalization_5/StatefulPartitionedCall2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall2B
dense_7/StatefulPartitionedCalldense_7/StatefulPartitionedCall2F
!dropout_3/StatefulPartitionedCall!dropout_3/StatefulPartitionedCall2F
!dropout_4/StatefulPartitionedCall!dropout_4/StatefulPartitionedCall2F
!dropout_5/StatefulPartitionedCall!dropout_5/StatefulPartitionedCall:O K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameAge_xf:RN
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
#
_user_specified_name	Gender_xf:UQ
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
&
_user_specified_nameEthnicity_xf:]Y
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
.
_user_specified_nameParentalEducation_xf:[W
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
,
_user_specified_nameStudyTimeWeekly_xf:TP
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
%
_user_specified_nameAbsences_xf:TP
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
%
_user_specified_nameTutoring_xf:[W
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
,
_user_specified_nameParentalSupport_xf:[W
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
,
_user_specified_nameExtracurricular_xf:R	N
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
#
_user_specified_name	Sports_xf:Q
M
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
"
_user_specified_name
Music_xf:XT
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
)
_user_specified_nameVolunteering_xf:OK
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameGPA_xf
Ü
c
E__inference_dropout_4_layer_call_and_return_conditional_losses_145648

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
ű	
d
E__inference_dropout_3_layer_call_and_return_conditional_losses_146782

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍĚL>§
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙p
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:˙˙˙˙˙˙˙˙˙j
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Z
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:˙˙˙˙˙˙˙˙˙:P L
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
Úč
§
__inference_pruned_144311

inputs	
inputs_1	
inputs_2	
inputs_3	
inputs_4
inputs_5	
inputs_6
inputs_7	
inputs_8	
inputs_9	
	inputs_10	
	inputs_11
	inputs_12	
	inputs_13	0
,scale_to_z_score_mean_and_var_identity_input2
.scale_to_z_score_mean_and_var_identity_1_input2
.scale_to_z_score_1_mean_and_var_identity_input4
0scale_to_z_score_1_mean_and_var_identity_1_input2
.scale_to_z_score_2_mean_and_var_identity_input4
0scale_to_z_score_2_mean_and_var_identity_1_input2
.scale_to_z_score_3_mean_and_var_identity_input4
0scale_to_z_score_3_mean_and_var_identity_1_input2
.scale_to_z_score_4_mean_and_var_identity_input4
0scale_to_z_score_4_mean_and_var_identity_1_input2
.scale_to_z_score_5_mean_and_var_identity_input4
0scale_to_z_score_5_mean_and_var_identity_1_input2
.scale_to_z_score_6_mean_and_var_identity_input4
0scale_to_z_score_6_mean_and_var_identity_1_input2
.scale_to_z_score_7_mean_and_var_identity_input4
0scale_to_z_score_7_mean_and_var_identity_1_input2
.scale_to_z_score_8_mean_and_var_identity_input4
0scale_to_z_score_8_mean_and_var_identity_1_input2
.scale_to_z_score_9_mean_and_var_identity_input4
0scale_to_z_score_9_mean_and_var_identity_1_input3
/scale_to_z_score_10_mean_and_var_identity_input5
1scale_to_z_score_10_mean_and_var_identity_1_input3
/scale_to_z_score_11_mean_and_var_identity_input5
1scale_to_z_score_11_mean_and_var_identity_1_input3
/scale_to_z_score_12_mean_and_var_identity_input5
1scale_to_z_score_12_mean_and_var_identity_1_input
identity

identity_1

identity_2

identity_3

identity_4

identity_5

identity_6	

identity_7

identity_8

identity_9
identity_10
identity_11
identity_12
identity_13b
scale_to_z_score_5/NotEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *    `
scale_to_z_score/NotEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *    b
scale_to_z_score_2/NotEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *    b
scale_to_z_score_8/NotEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *    c
scale_to_z_score_12/NotEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *    b
scale_to_z_score_1/NotEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *    c
scale_to_z_score_10/NotEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *    b
scale_to_z_score_3/NotEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *    b
scale_to_z_score_7/NotEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *    b
scale_to_z_score_9/NotEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *    b
scale_to_z_score_4/NotEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *    b
scale_to_z_score_6/NotEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *    c
scale_to_z_score_11/NotEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *    Q
inputs_copyIdentityinputs*
T0	*'
_output_shapes
:˙˙˙˙˙˙˙˙˙v
scale_to_z_score_5/CastCastinputs_copy:output:0*

DstT0*

SrcT0	*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
(scale_to_z_score_5/mean_and_var/IdentityIdentity.scale_to_z_score_5_mean_and_var_identity_input*
T0*
_output_shapes
: 
scale_to_z_score_5/subSubscale_to_z_score_5/Cast:y:01scale_to_z_score_5/mean_and_var/Identity:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙x
scale_to_z_score_5/zeros_like	ZerosLikescale_to_z_score_5/sub:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*scale_to_z_score_5/mean_and_var/Identity_1Identity0scale_to_z_score_5_mean_and_var_identity_1_input*
T0*
_output_shapes
: u
scale_to_z_score_5/SqrtSqrt3scale_to_z_score_5/mean_and_var/Identity_1:output:0*
T0*
_output_shapes
: 
scale_to_z_score_5/NotEqualNotEqualscale_to_z_score_5/Sqrt:y:0&scale_to_z_score_5/NotEqual/y:output:0*
T0*
_output_shapes
: r
scale_to_z_score_5/Cast_1Castscale_to_z_score_5/NotEqual:z:0*

DstT0*

SrcT0
*
_output_shapes
: 
scale_to_z_score_5/addAddV2!scale_to_z_score_5/zeros_like:y:0scale_to_z_score_5/Cast_1:y:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙~
scale_to_z_score_5/Cast_2Castscale_to_z_score_5/add:z:0*

DstT0
*

SrcT0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
scale_to_z_score_5/truedivRealDivscale_to_z_score_5/sub:z:0scale_to_z_score_5/Sqrt:y:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙´
scale_to_z_score_5/SelectV2SelectV2scale_to_z_score_5/Cast_2:y:0scale_to_z_score_5/truediv:z:0scale_to_z_score_5/sub:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙l
IdentityIdentity$scale_to_z_score_5/SelectV2:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙U
inputs_1_copyIdentityinputs_1*
T0	*'
_output_shapes
:˙˙˙˙˙˙˙˙˙v
scale_to_z_score/CastCastinputs_1_copy:output:0*

DstT0*

SrcT0	*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
&scale_to_z_score/mean_and_var/IdentityIdentity,scale_to_z_score_mean_and_var_identity_input*
T0*
_output_shapes
: 
scale_to_z_score/subSubscale_to_z_score/Cast:y:0/scale_to_z_score/mean_and_var/Identity:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙t
scale_to_z_score/zeros_like	ZerosLikescale_to_z_score/sub:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
(scale_to_z_score/mean_and_var/Identity_1Identity.scale_to_z_score_mean_and_var_identity_1_input*
T0*
_output_shapes
: q
scale_to_z_score/SqrtSqrt1scale_to_z_score/mean_and_var/Identity_1:output:0*
T0*
_output_shapes
: 
scale_to_z_score/NotEqualNotEqualscale_to_z_score/Sqrt:y:0$scale_to_z_score/NotEqual/y:output:0*
T0*
_output_shapes
: n
scale_to_z_score/Cast_1Castscale_to_z_score/NotEqual:z:0*

DstT0*

SrcT0
*
_output_shapes
: 
scale_to_z_score/addAddV2scale_to_z_score/zeros_like:y:0scale_to_z_score/Cast_1:y:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙z
scale_to_z_score/Cast_2Castscale_to_z_score/add:z:0*

DstT0
*

SrcT0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
scale_to_z_score/truedivRealDivscale_to_z_score/sub:z:0scale_to_z_score/Sqrt:y:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙Ź
scale_to_z_score/SelectV2SelectV2scale_to_z_score/Cast_2:y:0scale_to_z_score/truediv:z:0scale_to_z_score/sub:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙l

Identity_1Identity"scale_to_z_score/SelectV2:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙U
inputs_2_copyIdentityinputs_2*
T0	*'
_output_shapes
:˙˙˙˙˙˙˙˙˙x
scale_to_z_score_2/CastCastinputs_2_copy:output:0*

DstT0*

SrcT0	*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
(scale_to_z_score_2/mean_and_var/IdentityIdentity.scale_to_z_score_2_mean_and_var_identity_input*
T0*
_output_shapes
: 
scale_to_z_score_2/subSubscale_to_z_score_2/Cast:y:01scale_to_z_score_2/mean_and_var/Identity:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙x
scale_to_z_score_2/zeros_like	ZerosLikescale_to_z_score_2/sub:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*scale_to_z_score_2/mean_and_var/Identity_1Identity0scale_to_z_score_2_mean_and_var_identity_1_input*
T0*
_output_shapes
: u
scale_to_z_score_2/SqrtSqrt3scale_to_z_score_2/mean_and_var/Identity_1:output:0*
T0*
_output_shapes
: 
scale_to_z_score_2/NotEqualNotEqualscale_to_z_score_2/Sqrt:y:0&scale_to_z_score_2/NotEqual/y:output:0*
T0*
_output_shapes
: r
scale_to_z_score_2/Cast_1Castscale_to_z_score_2/NotEqual:z:0*

DstT0*

SrcT0
*
_output_shapes
: 
scale_to_z_score_2/addAddV2!scale_to_z_score_2/zeros_like:y:0scale_to_z_score_2/Cast_1:y:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙~
scale_to_z_score_2/Cast_2Castscale_to_z_score_2/add:z:0*

DstT0
*

SrcT0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
scale_to_z_score_2/truedivRealDivscale_to_z_score_2/sub:z:0scale_to_z_score_2/Sqrt:y:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙´
scale_to_z_score_2/SelectV2SelectV2scale_to_z_score_2/Cast_2:y:0scale_to_z_score_2/truediv:z:0scale_to_z_score_2/sub:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙n

Identity_2Identity$scale_to_z_score_2/SelectV2:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙U
inputs_3_copyIdentityinputs_3*
T0	*'
_output_shapes
:˙˙˙˙˙˙˙˙˙x
scale_to_z_score_8/CastCastinputs_3_copy:output:0*

DstT0*

SrcT0	*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
(scale_to_z_score_8/mean_and_var/IdentityIdentity.scale_to_z_score_8_mean_and_var_identity_input*
T0*
_output_shapes
: 
scale_to_z_score_8/subSubscale_to_z_score_8/Cast:y:01scale_to_z_score_8/mean_and_var/Identity:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙x
scale_to_z_score_8/zeros_like	ZerosLikescale_to_z_score_8/sub:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*scale_to_z_score_8/mean_and_var/Identity_1Identity0scale_to_z_score_8_mean_and_var_identity_1_input*
T0*
_output_shapes
: u
scale_to_z_score_8/SqrtSqrt3scale_to_z_score_8/mean_and_var/Identity_1:output:0*
T0*
_output_shapes
: 
scale_to_z_score_8/NotEqualNotEqualscale_to_z_score_8/Sqrt:y:0&scale_to_z_score_8/NotEqual/y:output:0*
T0*
_output_shapes
: r
scale_to_z_score_8/Cast_1Castscale_to_z_score_8/NotEqual:z:0*

DstT0*

SrcT0
*
_output_shapes
: 
scale_to_z_score_8/addAddV2!scale_to_z_score_8/zeros_like:y:0scale_to_z_score_8/Cast_1:y:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙~
scale_to_z_score_8/Cast_2Castscale_to_z_score_8/add:z:0*

DstT0
*

SrcT0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
scale_to_z_score_8/truedivRealDivscale_to_z_score_8/sub:z:0scale_to_z_score_8/Sqrt:y:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙´
scale_to_z_score_8/SelectV2SelectV2scale_to_z_score_8/Cast_2:y:0scale_to_z_score_8/truediv:z:0scale_to_z_score_8/sub:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙n

Identity_3Identity$scale_to_z_score_8/SelectV2:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙U
inputs_4_copyIdentityinputs_4*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
)scale_to_z_score_12/mean_and_var/IdentityIdentity/scale_to_z_score_12_mean_and_var_identity_input*
T0*
_output_shapes
: 
scale_to_z_score_12/subSubinputs_4_copy:output:02scale_to_z_score_12/mean_and_var/Identity:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙z
scale_to_z_score_12/zeros_like	ZerosLikescale_to_z_score_12/sub:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
+scale_to_z_score_12/mean_and_var/Identity_1Identity1scale_to_z_score_12_mean_and_var_identity_1_input*
T0*
_output_shapes
: w
scale_to_z_score_12/SqrtSqrt4scale_to_z_score_12/mean_and_var/Identity_1:output:0*
T0*
_output_shapes
: 
scale_to_z_score_12/NotEqualNotEqualscale_to_z_score_12/Sqrt:y:0'scale_to_z_score_12/NotEqual/y:output:0*
T0*
_output_shapes
: r
scale_to_z_score_12/CastCast scale_to_z_score_12/NotEqual:z:0*

DstT0*

SrcT0
*
_output_shapes
: 
scale_to_z_score_12/addAddV2"scale_to_z_score_12/zeros_like:y:0scale_to_z_score_12/Cast:y:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
scale_to_z_score_12/Cast_1Castscale_to_z_score_12/add:z:0*

DstT0
*

SrcT0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
scale_to_z_score_12/truedivRealDivscale_to_z_score_12/sub:z:0scale_to_z_score_12/Sqrt:y:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙¸
scale_to_z_score_12/SelectV2SelectV2scale_to_z_score_12/Cast_1:y:0scale_to_z_score_12/truediv:z:0scale_to_z_score_12/sub:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙o

Identity_4Identity%scale_to_z_score_12/SelectV2:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙U
inputs_5_copyIdentityinputs_5*
T0	*'
_output_shapes
:˙˙˙˙˙˙˙˙˙x
scale_to_z_score_1/CastCastinputs_5_copy:output:0*

DstT0*

SrcT0	*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
(scale_to_z_score_1/mean_and_var/IdentityIdentity.scale_to_z_score_1_mean_and_var_identity_input*
T0*
_output_shapes
: 
scale_to_z_score_1/subSubscale_to_z_score_1/Cast:y:01scale_to_z_score_1/mean_and_var/Identity:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙x
scale_to_z_score_1/zeros_like	ZerosLikescale_to_z_score_1/sub:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*scale_to_z_score_1/mean_and_var/Identity_1Identity0scale_to_z_score_1_mean_and_var_identity_1_input*
T0*
_output_shapes
: u
scale_to_z_score_1/SqrtSqrt3scale_to_z_score_1/mean_and_var/Identity_1:output:0*
T0*
_output_shapes
: 
scale_to_z_score_1/NotEqualNotEqualscale_to_z_score_1/Sqrt:y:0&scale_to_z_score_1/NotEqual/y:output:0*
T0*
_output_shapes
: r
scale_to_z_score_1/Cast_1Castscale_to_z_score_1/NotEqual:z:0*

DstT0*

SrcT0
*
_output_shapes
: 
scale_to_z_score_1/addAddV2!scale_to_z_score_1/zeros_like:y:0scale_to_z_score_1/Cast_1:y:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙~
scale_to_z_score_1/Cast_2Castscale_to_z_score_1/add:z:0*

DstT0
*

SrcT0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
scale_to_z_score_1/truedivRealDivscale_to_z_score_1/sub:z:0scale_to_z_score_1/Sqrt:y:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙´
scale_to_z_score_1/SelectV2SelectV2scale_to_z_score_1/Cast_2:y:0scale_to_z_score_1/truediv:z:0scale_to_z_score_1/sub:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙n

Identity_5Identity$scale_to_z_score_1/SelectV2:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙U
inputs_6_copyIdentityinputs_6*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙e
CastCastinputs_6_copy:output:0*

DstT0	*

SrcT0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙R

Identity_6IdentityCast:y:0*
T0	*'
_output_shapes
:˙˙˙˙˙˙˙˙˙U
inputs_7_copyIdentityinputs_7*
T0	*'
_output_shapes
:˙˙˙˙˙˙˙˙˙y
scale_to_z_score_10/CastCastinputs_7_copy:output:0*

DstT0*

SrcT0	*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
)scale_to_z_score_10/mean_and_var/IdentityIdentity/scale_to_z_score_10_mean_and_var_identity_input*
T0*
_output_shapes
: ˘
scale_to_z_score_10/subSubscale_to_z_score_10/Cast:y:02scale_to_z_score_10/mean_and_var/Identity:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙z
scale_to_z_score_10/zeros_like	ZerosLikescale_to_z_score_10/sub:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
+scale_to_z_score_10/mean_and_var/Identity_1Identity1scale_to_z_score_10_mean_and_var_identity_1_input*
T0*
_output_shapes
: w
scale_to_z_score_10/SqrtSqrt4scale_to_z_score_10/mean_and_var/Identity_1:output:0*
T0*
_output_shapes
: 
scale_to_z_score_10/NotEqualNotEqualscale_to_z_score_10/Sqrt:y:0'scale_to_z_score_10/NotEqual/y:output:0*
T0*
_output_shapes
: t
scale_to_z_score_10/Cast_1Cast scale_to_z_score_10/NotEqual:z:0*

DstT0*

SrcT0
*
_output_shapes
: 
scale_to_z_score_10/addAddV2"scale_to_z_score_10/zeros_like:y:0scale_to_z_score_10/Cast_1:y:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
scale_to_z_score_10/Cast_2Castscale_to_z_score_10/add:z:0*

DstT0
*

SrcT0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
scale_to_z_score_10/truedivRealDivscale_to_z_score_10/sub:z:0scale_to_z_score_10/Sqrt:y:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙¸
scale_to_z_score_10/SelectV2SelectV2scale_to_z_score_10/Cast_2:y:0scale_to_z_score_10/truediv:z:0scale_to_z_score_10/sub:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙o

Identity_7Identity%scale_to_z_score_10/SelectV2:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙U
inputs_8_copyIdentityinputs_8*
T0	*'
_output_shapes
:˙˙˙˙˙˙˙˙˙x
scale_to_z_score_3/CastCastinputs_8_copy:output:0*

DstT0*

SrcT0	*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
(scale_to_z_score_3/mean_and_var/IdentityIdentity.scale_to_z_score_3_mean_and_var_identity_input*
T0*
_output_shapes
: 
scale_to_z_score_3/subSubscale_to_z_score_3/Cast:y:01scale_to_z_score_3/mean_and_var/Identity:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙x
scale_to_z_score_3/zeros_like	ZerosLikescale_to_z_score_3/sub:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*scale_to_z_score_3/mean_and_var/Identity_1Identity0scale_to_z_score_3_mean_and_var_identity_1_input*
T0*
_output_shapes
: u
scale_to_z_score_3/SqrtSqrt3scale_to_z_score_3/mean_and_var/Identity_1:output:0*
T0*
_output_shapes
: 
scale_to_z_score_3/NotEqualNotEqualscale_to_z_score_3/Sqrt:y:0&scale_to_z_score_3/NotEqual/y:output:0*
T0*
_output_shapes
: r
scale_to_z_score_3/Cast_1Castscale_to_z_score_3/NotEqual:z:0*

DstT0*

SrcT0
*
_output_shapes
: 
scale_to_z_score_3/addAddV2!scale_to_z_score_3/zeros_like:y:0scale_to_z_score_3/Cast_1:y:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙~
scale_to_z_score_3/Cast_2Castscale_to_z_score_3/add:z:0*

DstT0
*

SrcT0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
scale_to_z_score_3/truedivRealDivscale_to_z_score_3/sub:z:0scale_to_z_score_3/Sqrt:y:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙´
scale_to_z_score_3/SelectV2SelectV2scale_to_z_score_3/Cast_2:y:0scale_to_z_score_3/truediv:z:0scale_to_z_score_3/sub:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙n

Identity_8Identity$scale_to_z_score_3/SelectV2:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙U
inputs_9_copyIdentityinputs_9*
T0	*'
_output_shapes
:˙˙˙˙˙˙˙˙˙x
scale_to_z_score_7/CastCastinputs_9_copy:output:0*

DstT0*

SrcT0	*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
(scale_to_z_score_7/mean_and_var/IdentityIdentity.scale_to_z_score_7_mean_and_var_identity_input*
T0*
_output_shapes
: 
scale_to_z_score_7/subSubscale_to_z_score_7/Cast:y:01scale_to_z_score_7/mean_and_var/Identity:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙x
scale_to_z_score_7/zeros_like	ZerosLikescale_to_z_score_7/sub:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*scale_to_z_score_7/mean_and_var/Identity_1Identity0scale_to_z_score_7_mean_and_var_identity_1_input*
T0*
_output_shapes
: u
scale_to_z_score_7/SqrtSqrt3scale_to_z_score_7/mean_and_var/Identity_1:output:0*
T0*
_output_shapes
: 
scale_to_z_score_7/NotEqualNotEqualscale_to_z_score_7/Sqrt:y:0&scale_to_z_score_7/NotEqual/y:output:0*
T0*
_output_shapes
: r
scale_to_z_score_7/Cast_1Castscale_to_z_score_7/NotEqual:z:0*

DstT0*

SrcT0
*
_output_shapes
: 
scale_to_z_score_7/addAddV2!scale_to_z_score_7/zeros_like:y:0scale_to_z_score_7/Cast_1:y:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙~
scale_to_z_score_7/Cast_2Castscale_to_z_score_7/add:z:0*

DstT0
*

SrcT0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
scale_to_z_score_7/truedivRealDivscale_to_z_score_7/sub:z:0scale_to_z_score_7/Sqrt:y:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙´
scale_to_z_score_7/SelectV2SelectV2scale_to_z_score_7/Cast_2:y:0scale_to_z_score_7/truediv:z:0scale_to_z_score_7/sub:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙n

Identity_9Identity$scale_to_z_score_7/SelectV2:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙W
inputs_10_copyIdentity	inputs_10*
T0	*'
_output_shapes
:˙˙˙˙˙˙˙˙˙y
scale_to_z_score_9/CastCastinputs_10_copy:output:0*

DstT0*

SrcT0	*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
(scale_to_z_score_9/mean_and_var/IdentityIdentity.scale_to_z_score_9_mean_and_var_identity_input*
T0*
_output_shapes
: 
scale_to_z_score_9/subSubscale_to_z_score_9/Cast:y:01scale_to_z_score_9/mean_and_var/Identity:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙x
scale_to_z_score_9/zeros_like	ZerosLikescale_to_z_score_9/sub:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*scale_to_z_score_9/mean_and_var/Identity_1Identity0scale_to_z_score_9_mean_and_var_identity_1_input*
T0*
_output_shapes
: u
scale_to_z_score_9/SqrtSqrt3scale_to_z_score_9/mean_and_var/Identity_1:output:0*
T0*
_output_shapes
: 
scale_to_z_score_9/NotEqualNotEqualscale_to_z_score_9/Sqrt:y:0&scale_to_z_score_9/NotEqual/y:output:0*
T0*
_output_shapes
: r
scale_to_z_score_9/Cast_1Castscale_to_z_score_9/NotEqual:z:0*

DstT0*

SrcT0
*
_output_shapes
: 
scale_to_z_score_9/addAddV2!scale_to_z_score_9/zeros_like:y:0scale_to_z_score_9/Cast_1:y:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙~
scale_to_z_score_9/Cast_2Castscale_to_z_score_9/add:z:0*

DstT0
*

SrcT0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
scale_to_z_score_9/truedivRealDivscale_to_z_score_9/sub:z:0scale_to_z_score_9/Sqrt:y:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙´
scale_to_z_score_9/SelectV2SelectV2scale_to_z_score_9/Cast_2:y:0scale_to_z_score_9/truediv:z:0scale_to_z_score_9/sub:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙o
Identity_10Identity$scale_to_z_score_9/SelectV2:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙W
inputs_11_copyIdentity	inputs_11*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
(scale_to_z_score_4/mean_and_var/IdentityIdentity.scale_to_z_score_4_mean_and_var_identity_input*
T0*
_output_shapes
: 
scale_to_z_score_4/subSubinputs_11_copy:output:01scale_to_z_score_4/mean_and_var/Identity:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙x
scale_to_z_score_4/zeros_like	ZerosLikescale_to_z_score_4/sub:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*scale_to_z_score_4/mean_and_var/Identity_1Identity0scale_to_z_score_4_mean_and_var_identity_1_input*
T0*
_output_shapes
: u
scale_to_z_score_4/SqrtSqrt3scale_to_z_score_4/mean_and_var/Identity_1:output:0*
T0*
_output_shapes
: 
scale_to_z_score_4/NotEqualNotEqualscale_to_z_score_4/Sqrt:y:0&scale_to_z_score_4/NotEqual/y:output:0*
T0*
_output_shapes
: p
scale_to_z_score_4/CastCastscale_to_z_score_4/NotEqual:z:0*

DstT0*

SrcT0
*
_output_shapes
: 
scale_to_z_score_4/addAddV2!scale_to_z_score_4/zeros_like:y:0scale_to_z_score_4/Cast:y:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙~
scale_to_z_score_4/Cast_1Castscale_to_z_score_4/add:z:0*

DstT0
*

SrcT0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
scale_to_z_score_4/truedivRealDivscale_to_z_score_4/sub:z:0scale_to_z_score_4/Sqrt:y:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙´
scale_to_z_score_4/SelectV2SelectV2scale_to_z_score_4/Cast_1:y:0scale_to_z_score_4/truediv:z:0scale_to_z_score_4/sub:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙o
Identity_11Identity$scale_to_z_score_4/SelectV2:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙W
inputs_12_copyIdentity	inputs_12*
T0	*'
_output_shapes
:˙˙˙˙˙˙˙˙˙y
scale_to_z_score_6/CastCastinputs_12_copy:output:0*

DstT0*

SrcT0	*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
(scale_to_z_score_6/mean_and_var/IdentityIdentity.scale_to_z_score_6_mean_and_var_identity_input*
T0*
_output_shapes
: 
scale_to_z_score_6/subSubscale_to_z_score_6/Cast:y:01scale_to_z_score_6/mean_and_var/Identity:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙x
scale_to_z_score_6/zeros_like	ZerosLikescale_to_z_score_6/sub:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*scale_to_z_score_6/mean_and_var/Identity_1Identity0scale_to_z_score_6_mean_and_var_identity_1_input*
T0*
_output_shapes
: u
scale_to_z_score_6/SqrtSqrt3scale_to_z_score_6/mean_and_var/Identity_1:output:0*
T0*
_output_shapes
: 
scale_to_z_score_6/NotEqualNotEqualscale_to_z_score_6/Sqrt:y:0&scale_to_z_score_6/NotEqual/y:output:0*
T0*
_output_shapes
: r
scale_to_z_score_6/Cast_1Castscale_to_z_score_6/NotEqual:z:0*

DstT0*

SrcT0
*
_output_shapes
: 
scale_to_z_score_6/addAddV2!scale_to_z_score_6/zeros_like:y:0scale_to_z_score_6/Cast_1:y:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙~
scale_to_z_score_6/Cast_2Castscale_to_z_score_6/add:z:0*

DstT0
*

SrcT0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
scale_to_z_score_6/truedivRealDivscale_to_z_score_6/sub:z:0scale_to_z_score_6/Sqrt:y:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙´
scale_to_z_score_6/SelectV2SelectV2scale_to_z_score_6/Cast_2:y:0scale_to_z_score_6/truediv:z:0scale_to_z_score_6/sub:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙o
Identity_12Identity$scale_to_z_score_6/SelectV2:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙W
inputs_13_copyIdentity	inputs_13*
T0	*'
_output_shapes
:˙˙˙˙˙˙˙˙˙z
scale_to_z_score_11/CastCastinputs_13_copy:output:0*

DstT0*

SrcT0	*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
)scale_to_z_score_11/mean_and_var/IdentityIdentity/scale_to_z_score_11_mean_and_var_identity_input*
T0*
_output_shapes
: ˘
scale_to_z_score_11/subSubscale_to_z_score_11/Cast:y:02scale_to_z_score_11/mean_and_var/Identity:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙z
scale_to_z_score_11/zeros_like	ZerosLikescale_to_z_score_11/sub:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
+scale_to_z_score_11/mean_and_var/Identity_1Identity1scale_to_z_score_11_mean_and_var_identity_1_input*
T0*
_output_shapes
: w
scale_to_z_score_11/SqrtSqrt4scale_to_z_score_11/mean_and_var/Identity_1:output:0*
T0*
_output_shapes
: 
scale_to_z_score_11/NotEqualNotEqualscale_to_z_score_11/Sqrt:y:0'scale_to_z_score_11/NotEqual/y:output:0*
T0*
_output_shapes
: t
scale_to_z_score_11/Cast_1Cast scale_to_z_score_11/NotEqual:z:0*

DstT0*

SrcT0
*
_output_shapes
: 
scale_to_z_score_11/addAddV2"scale_to_z_score_11/zeros_like:y:0scale_to_z_score_11/Cast_1:y:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
scale_to_z_score_11/Cast_2Castscale_to_z_score_11/add:z:0*

DstT0
*

SrcT0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
scale_to_z_score_11/truedivRealDivscale_to_z_score_11/sub:z:0scale_to_z_score_11/Sqrt:y:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙¸
scale_to_z_score_11/SelectV2SelectV2scale_to_z_score_11/Cast_2:y:0scale_to_z_score_11/truediv:z:0scale_to_z_score_11/sub:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙p
Identity_13Identity%scale_to_z_score_11/SelectV2:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙"
identityIdentity:output:0"!

identity_1Identity_1:output:0"#
identity_10Identity_10:output:0"#
identity_11Identity_11:output:0"#
identity_12Identity_12:output:0"#
identity_13Identity_13:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0"!

identity_6Identity_6:output:0"!

identity_7Identity_7:output:0"!

identity_8Identity_8:output:0"!

identity_9Identity_9:output:0*(
_construction_contextkEagerRuntime*Ó
_input_shapesÁ
ž:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: : : : : : : : : : : : : : : : : : : : : : : : : : :- )
'
_output_shapes
:˙˙˙˙˙˙˙˙˙:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙:-	)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙:-
)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙:-)
'
_output_shapes
:˙˙˙˙˙˙˙˙˙:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: : 

_output_shapes
: :!

_output_shapes
: :"

_output_shapes
: :#

_output_shapes
: :$

_output_shapes
: :%

_output_shapes
: :&

_output_shapes
: :'

_output_shapes
: 
ő
c
*__inference_dropout_3_layer_call_fn_146765

inputs
identity˘StatefulPartitionedCallÁ
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:˙˙˙˙˙˙˙˙˙* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dropout_3_layer_call_and_return_conditional_losses_145840p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:˙˙˙˙˙˙˙˙˙22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
Ž
Ő
6__inference_batch_normalization_3_layer_call_fn_146701

inputs
unknown:	
	unknown_0:	
	unknown_1:	
	unknown_2:	
identity˘StatefulPartitionedCall˙
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Z
fURS
Q__inference_batch_normalization_3_layer_call_and_return_conditional_losses_144952p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:˙˙˙˙˙˙˙˙˙: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
ĺ
ä
(__inference_model_1_layer_call_fn_146109

age_xf
	gender_xf
ethnicity_xf
parentaleducation_xf
studytimeweekly_xf
absences_xf
tutoring_xf
parentalsupport_xf
extracurricular_xf
	sports_xf
music_xf
volunteering_xf

gpa_xf
unknown:	
	unknown_0:	
	unknown_1:	
	unknown_2:	
	unknown_3:	
	unknown_4:	
	unknown_5:

	unknown_6:	
	unknown_7:	
	unknown_8:	
	unknown_9:	

unknown_10:	

unknown_11:


unknown_12:	

unknown_13:	

unknown_14:	

unknown_15:	

unknown_16:	

unknown_17:	

unknown_18:
identity˘StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallage_xf	gender_xfethnicity_xfparentaleducation_xfstudytimeweekly_xfabsences_xftutoring_xfparentalsupport_xfextracurricular_xf	sports_xfmusic_xfvolunteering_xfgpa_xfunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18*,
Tin%
#2!*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙*0
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_model_1_layer_call_and_return_conditional_losses_146009o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*´
_input_shapes˘
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameAge_xf:RN
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
#
_user_specified_name	Gender_xf:UQ
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
&
_user_specified_nameEthnicity_xf:]Y
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
.
_user_specified_nameParentalEducation_xf:[W
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
,
_user_specified_nameStudyTimeWeekly_xf:TP
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
%
_user_specified_nameAbsences_xf:TP
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
%
_user_specified_nameTutoring_xf:[W
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
,
_user_specified_nameParentalSupport_xf:[W
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
,
_user_specified_nameExtracurricular_xf:R	N
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
#
_user_specified_name	Sports_xf:Q
M
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
"
_user_specified_name
Music_xf:XT
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
)
_user_specified_nameVolunteering_xf:OK
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameGPA_xf
.
ç
9__inference_transform_features_layer_layer_call_fn_145331
absences	
age	
	ethnicity	
extracurricular	
gpa

gender		
music	
parentaleducation	
parentalsupport	

sports	
studytimeweekly
tutoring	
volunteering	
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20

unknown_21

unknown_22

unknown_23

unknown_24
identity

identity_1

identity_2

identity_3

identity_4

identity_5

identity_6

identity_7

identity_8

identity_9
identity_10
identity_11
identity_12
PartitionedCallPartitionedCallabsencesage	ethnicityextracurriculargpagendermusicparentaleducationparentalsupportsportsstudytimeweeklytutoringvolunteeringunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
unknown_24*2
Tin+
)2'											*
Tout
2*
_collective_manager_ids
 *
_output_shapesú
÷:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *]
fXRV
T__inference_transform_features_layer_layer_call_and_return_conditional_losses_145252`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙b

Identity_1IdentityPartitionedCall:output:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙b

Identity_2IdentityPartitionedCall:output:2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙b

Identity_3IdentityPartitionedCall:output:3*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙b

Identity_4IdentityPartitionedCall:output:4*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙b

Identity_5IdentityPartitionedCall:output:5*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙b

Identity_6IdentityPartitionedCall:output:6*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙b

Identity_7IdentityPartitionedCall:output:7*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙b

Identity_8IdentityPartitionedCall:output:8*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙b

Identity_9IdentityPartitionedCall:output:9*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
Identity_10IdentityPartitionedCall:output:10*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
Identity_11IdentityPartitionedCall:output:11*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙d
Identity_12IdentityPartitionedCall:output:12*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙"
identityIdentity:output:0"!

identity_1Identity_1:output:0"#
identity_10Identity_10:output:0"#
identity_11Identity_11:output:0"#
identity_12Identity_12:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0"!

identity_6Identity_6:output:0"!

identity_7Identity_7:output:0"!

identity_8Identity_8:output:0"!

identity_9Identity_9:output:0*(
_construction_contextkEagerRuntime*Ŕ
_input_shapesŽ
Ť:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: : : : : : : : : : : : : : : : : : : : : : : : : : :Q M
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
"
_user_specified_name
Absences:LH
'
_output_shapes
:˙˙˙˙˙˙˙˙˙

_user_specified_nameAge:RN
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
#
_user_specified_name	Ethnicity:XT
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
)
_user_specified_nameExtracurricular:LH
'
_output_shapes
:˙˙˙˙˙˙˙˙˙

_user_specified_nameGPA:OK
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameGender:NJ
'
_output_shapes
:˙˙˙˙˙˙˙˙˙

_user_specified_nameMusic:ZV
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
+
_user_specified_nameParentalEducation:XT
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
)
_user_specified_nameParentalSupport:O	K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameSports:X
T
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
)
_user_specified_nameStudyTimeWeekly:QM
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
"
_user_specified_name
Tutoring:UQ
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
&
_user_specified_nameVolunteering:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: : 

_output_shapes
: :!

_output_shapes
: :"

_output_shapes
: :#

_output_shapes
: :$

_output_shapes
: :%

_output_shapes
: :&

_output_shapes
: 
ŕ
´
Q__inference_batch_normalization_4_layer_call_and_return_conditional_losses_146848

inputs0
!batchnorm_readvariableop_resource:	4
%batchnorm_mul_readvariableop_resource:	2
#batchnorm_readvariableop_1_resource:	2
#batchnorm_readvariableop_2_resource:	
identity˘batchnorm/ReadVariableOp˘batchnorm/ReadVariableOp_1˘batchnorm/ReadVariableOp_2˘batchnorm/mul/ReadVariableOpw
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:x
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:Q
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype0u
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:d
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙{
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:*
dtype0s
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:{
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:*
dtype0s
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:s
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙c
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ş
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:˙˙˙˙˙˙˙˙˙: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs


I__inference_concatenate_1_layer_call_and_return_conditional_losses_145582

inputs
inputs_1
inputs_2
inputs_3
inputs_4
inputs_5
inputs_6
inputs_7
inputs_8
inputs_9
	inputs_10
	inputs_11
	inputs_12
identityM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :ć
concatConcatV2inputsinputs_1inputs_2inputs_3inputs_4inputs_5inputs_6inputs_7inputs_8inputs_9	inputs_10	inputs_11	inputs_12concat/axis:output:0*
N*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙W
IdentityIdentityconcat:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapesú
÷:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:O K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs:OK
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs:OK
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs:OK
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs:OK
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs:OK
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs:OK
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs:OK
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs:OK
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs:O	K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs:O
K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs:OK
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs:OK
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
D

C__inference_model_1_layer_call_and_return_conditional_losses_146176

age_xf
	gender_xf
ethnicity_xf
parentaleducation_xf
studytimeweekly_xf
absences_xf
tutoring_xf
parentalsupport_xf
extracurricular_xf
	sports_xf
music_xf
volunteering_xf

gpa_xf!
dense_4_146125:	
dense_4_146127:	+
batch_normalization_3_146130:	+
batch_normalization_3_146132:	+
batch_normalization_3_146134:	+
batch_normalization_3_146136:	"
dense_5_146140:

dense_5_146142:	+
batch_normalization_4_146145:	+
batch_normalization_4_146147:	+
batch_normalization_4_146149:	+
batch_normalization_4_146151:	"
dense_6_146155:

dense_6_146157:	+
batch_normalization_5_146160:	+
batch_normalization_5_146162:	+
batch_normalization_5_146164:	+
batch_normalization_5_146166:	!
dense_7_146170:	
dense_7_146172:
identity˘-batch_normalization_3/StatefulPartitionedCall˘-batch_normalization_4/StatefulPartitionedCall˘-batch_normalization_5/StatefulPartitionedCall˘dense_4/StatefulPartitionedCall˘dense_5/StatefulPartitionedCall˘dense_6/StatefulPartitionedCall˘dense_7/StatefulPartitionedCall
concatenate_1/PartitionedCallPartitionedCallage_xf	gender_xfethnicity_xfparentaleducation_xfstudytimeweekly_xfabsences_xftutoring_xfparentalsupport_xfextracurricular_xf	sports_xfmusic_xfvolunteering_xfgpa_xf*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_concatenate_1_layer_call_and_return_conditional_losses_145582
dense_4/StatefulPartitionedCallStatefulPartitionedCall&concatenate_1/PartitionedCall:output:0dense_4_146125dense_4_146127*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_4_layer_call_and_return_conditional_losses_145595
-batch_normalization_3/StatefulPartitionedCallStatefulPartitionedCall(dense_4/StatefulPartitionedCall:output:0batch_normalization_3_146130batch_normalization_3_146132batch_normalization_3_146134batch_normalization_3_146136*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:˙˙˙˙˙˙˙˙˙*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Z
fURS
Q__inference_batch_normalization_3_layer_call_and_return_conditional_losses_144905ë
dropout_3/PartitionedCallPartitionedCall6batch_normalization_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:˙˙˙˙˙˙˙˙˙* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dropout_3_layer_call_and_return_conditional_losses_145615
dense_5/StatefulPartitionedCallStatefulPartitionedCall"dropout_3/PartitionedCall:output:0dense_5_146140dense_5_146142*
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
GPU 2J 8 *L
fGRE
C__inference_dense_5_layer_call_and_return_conditional_losses_145628
-batch_normalization_4/StatefulPartitionedCallStatefulPartitionedCall(dense_5/StatefulPartitionedCall:output:0batch_normalization_4_146145batch_normalization_4_146147batch_normalization_4_146149batch_normalization_4_146151*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:˙˙˙˙˙˙˙˙˙*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Z
fURS
Q__inference_batch_normalization_4_layer_call_and_return_conditional_losses_144987ë
dropout_4/PartitionedCallPartitionedCall6batch_normalization_4/StatefulPartitionedCall:output:0*
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
GPU 2J 8 *N
fIRG
E__inference_dropout_4_layer_call_and_return_conditional_losses_145648
dense_6/StatefulPartitionedCallStatefulPartitionedCall"dropout_4/PartitionedCall:output:0dense_6_146155dense_6_146157*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_6_layer_call_and_return_conditional_losses_145661
-batch_normalization_5/StatefulPartitionedCallStatefulPartitionedCall(dense_6/StatefulPartitionedCall:output:0batch_normalization_5_146160batch_normalization_5_146162batch_normalization_5_146164batch_normalization_5_146166*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:˙˙˙˙˙˙˙˙˙*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Z
fURS
Q__inference_batch_normalization_5_layer_call_and_return_conditional_losses_145069ë
dropout_5/PartitionedCallPartitionedCall6batch_normalization_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:˙˙˙˙˙˙˙˙˙* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dropout_5_layer_call_and_return_conditional_losses_145681
dense_7/StatefulPartitionedCallStatefulPartitionedCall"dropout_5/PartitionedCall:output:0dense_7_146170dense_7_146172*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_7_layer_call_and_return_conditional_losses_145694w
IdentityIdentity(dense_7/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙Ţ
NoOpNoOp.^batch_normalization_3/StatefulPartitionedCall.^batch_normalization_4/StatefulPartitionedCall.^batch_normalization_5/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall ^dense_5/StatefulPartitionedCall ^dense_6/StatefulPartitionedCall ^dense_7/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*´
_input_shapes˘
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: : : : : : : : : : : : : : : : : : : : 2^
-batch_normalization_3/StatefulPartitionedCall-batch_normalization_3/StatefulPartitionedCall2^
-batch_normalization_4/StatefulPartitionedCall-batch_normalization_4/StatefulPartitionedCall2^
-batch_normalization_5/StatefulPartitionedCall-batch_normalization_5/StatefulPartitionedCall2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall2B
dense_7/StatefulPartitionedCalldense_7/StatefulPartitionedCall:O K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameAge_xf:RN
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
#
_user_specified_name	Gender_xf:UQ
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
&
_user_specified_nameEthnicity_xf:]Y
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
.
_user_specified_nameParentalEducation_xf:[W
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
,
_user_specified_nameStudyTimeWeekly_xf:TP
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
%
_user_specified_nameAbsences_xf:TP
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
%
_user_specified_nameTutoring_xf:[W
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
,
_user_specified_nameParentalSupport_xf:[W
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
,
_user_specified_nameExtracurricular_xf:R	N
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
#
_user_specified_name	Sports_xf:Q
M
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
"
_user_specified_name
Music_xf:XT
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
)
_user_specified_nameVolunteering_xf:OK
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameGPA_xf
Ă
Ž
(__inference_model_1_layer_call_fn_146363
inputs_0
inputs_1
inputs_2
inputs_3
inputs_4
inputs_5
inputs_6
inputs_7
inputs_8
inputs_9
	inputs_10
	inputs_11
	inputs_12
unknown:	
	unknown_0:	
	unknown_1:	
	unknown_2:	
	unknown_3:	
	unknown_4:	
	unknown_5:

	unknown_6:	
	unknown_7:	
	unknown_8:	
	unknown_9:	

unknown_10:	

unknown_11:


unknown_12:	

unknown_13:	

unknown_14:	

unknown_15:	

unknown_16:	

unknown_17:	

unknown_18:
identity˘StatefulPartitionedCallÎ
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1inputs_2inputs_3inputs_4inputs_5inputs_6inputs_7inputs_8inputs_9	inputs_10	inputs_11	inputs_12unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18*,
Tin%
#2!*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙*0
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_model_1_layer_call_and_return_conditional_losses_146009o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*´
_input_shapes˘
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙: : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
"
_user_specified_name
inputs/1:QM
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
"
_user_specified_name
inputs/2:QM
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
"
_user_specified_name
inputs/3:QM
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
"
_user_specified_name
inputs/4:QM
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
"
_user_specified_name
inputs/5:QM
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
"
_user_specified_name
inputs/6:QM
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
"
_user_specified_name
inputs/7:QM
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
"
_user_specified_name
inputs/8:Q	M
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
"
_user_specified_name
inputs/9:R
N
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
#
_user_specified_name	inputs/10:RN
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
#
_user_specified_name	inputs/11:RN
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
#
_user_specified_name	inputs/12
Ł
F
*__inference_dropout_5_layer_call_fn_147014

inputs
identityą
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:˙˙˙˙˙˙˙˙˙* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dropout_5_layer_call_and_return_conditional_losses_145681a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:˙˙˙˙˙˙˙˙˙:P L
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
ŕ
´
Q__inference_batch_normalization_5_layer_call_and_return_conditional_losses_146975

inputs0
!batchnorm_readvariableop_resource:	4
%batchnorm_mul_readvariableop_resource:	2
#batchnorm_readvariableop_1_resource:	2
#batchnorm_readvariableop_2_resource:	
identity˘batchnorm/ReadVariableOp˘batchnorm/ReadVariableOp_1˘batchnorm/ReadVariableOp_2˘batchnorm/mul/ReadVariableOpw
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:x
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:Q
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype0u
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:d
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙{
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:*
dtype0s
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:{
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:*
dtype0s
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:s
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙c
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ş
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:˙˙˙˙˙˙˙˙˙: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
ŕ
´
Q__inference_batch_normalization_3_layer_call_and_return_conditional_losses_144905

inputs0
!batchnorm_readvariableop_resource:	4
%batchnorm_mul_readvariableop_resource:	2
#batchnorm_readvariableop_1_resource:	2
#batchnorm_readvariableop_2_resource:	
identity˘batchnorm/ReadVariableOp˘batchnorm/ReadVariableOp_1˘batchnorm/ReadVariableOp_2˘batchnorm/mul/ReadVariableOpw
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:x
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:Q
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype0u
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:d
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙{
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:*
dtype0s
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:{
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:*
dtype0s
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:s
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙c
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ş
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:˙˙˙˙˙˙˙˙˙: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
ű	
d
E__inference_dropout_5_layer_call_and_return_conditional_losses_145774

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍĚL>§
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙p
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:˙˙˙˙˙˙˙˙˙j
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Z
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:˙˙˙˙˙˙˙˙˙:P L
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
ŕ
´
Q__inference_batch_normalization_3_layer_call_and_return_conditional_losses_146721

inputs0
!batchnorm_readvariableop_resource:	4
%batchnorm_mul_readvariableop_resource:	2
#batchnorm_readvariableop_1_resource:	2
#batchnorm_readvariableop_2_resource:	
identity˘batchnorm/ReadVariableOp˘batchnorm/ReadVariableOp_1˘batchnorm/ReadVariableOp_2˘batchnorm/mul/ReadVariableOpw
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:x
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:Q
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype0u
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:d
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙{
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:*
dtype0s
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:{
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:*
dtype0s
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:s
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙c
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙ş
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:˙˙˙˙˙˙˙˙˙: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
Ł
F
*__inference_dropout_4_layer_call_fn_146887

inputs
identityą
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
GPU 2J 8 *N
fIRG
E__inference_dropout_4_layer_call_and_return_conditional_losses_145648a
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
Ł
F
*__inference_dropout_3_layer_call_fn_146760

inputs
identityą
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:˙˙˙˙˙˙˙˙˙* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dropout_3_layer_call_and_return_conditional_losses_145615a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:˙˙˙˙˙˙˙˙˙:P L
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
Ä

(__inference_dense_4_layer_call_fn_146664

inputs
unknown:	
	unknown_0:	
identity˘StatefulPartitionedCallŮ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_4_layer_call_and_return_conditional_losses_145595p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:˙˙˙˙˙˙˙˙˙: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
Ă

(__inference_dense_7_layer_call_fn_147045

inputs
unknown:	
	unknown_0:
identity˘StatefulPartitionedCallŘ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_7_layer_call_and_return_conditional_losses_145694o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:˙˙˙˙˙˙˙˙˙: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
Ž
Ő
6__inference_batch_normalization_4_layer_call_fn_146828

inputs
unknown:	
	unknown_0:	
	unknown_1:	
	unknown_2:	
identity˘StatefulPartitionedCall˙
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Z
fURS
Q__inference_batch_normalization_4_layer_call_and_return_conditional_losses_145034p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:˙˙˙˙˙˙˙˙˙: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs"ľ	L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*¨
serving_default
9
examples-
serving_default_examples:0˙˙˙˙˙˙˙˙˙;
outputs0
StatefulPartitionedCall:0˙˙˙˙˙˙˙˙˙tensorflow/serving/predict:Ĺ
ü
layer-0
layer-1
layer-2
layer-3
layer-4
layer-5
layer-6
layer-7
	layer-8

layer-9
layer-10
layer-11
layer-12
layer-13
layer_with_weights-0
layer-14
layer_with_weights-1
layer-15
layer-16
layer_with_weights-2
layer-17
layer_with_weights-3
layer-18
layer-19
layer_with_weights-4
layer-20
layer_with_weights-5
layer-21
layer-22
layer_with_weights-6
layer-23
layer-24
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
 _default_save_signature
!	optimizer
	tft_layer
"
signatures"
_tf_keras_network
"
_tf_keras_input_layer
"
_tf_keras_input_layer
"
_tf_keras_input_layer
"
_tf_keras_input_layer
"
_tf_keras_input_layer
"
_tf_keras_input_layer
"
_tf_keras_input_layer
"
_tf_keras_input_layer
"
_tf_keras_input_layer
"
_tf_keras_input_layer
"
_tf_keras_input_layer
"
_tf_keras_input_layer
"
_tf_keras_input_layer
Ľ
#	variables
$trainable_variables
%regularization_losses
&	keras_api
'__call__
*(&call_and_return_all_conditional_losses"
_tf_keras_layer
ť
)	variables
*trainable_variables
+regularization_losses
,	keras_api
-__call__
*.&call_and_return_all_conditional_losses

/kernel
0bias"
_tf_keras_layer
ę
1	variables
2trainable_variables
3regularization_losses
4	keras_api
5__call__
*6&call_and_return_all_conditional_losses
7axis
	8gamma
9beta
:moving_mean
;moving_variance"
_tf_keras_layer
ź
<	variables
=trainable_variables
>regularization_losses
?	keras_api
@__call__
*A&call_and_return_all_conditional_losses
B_random_generator"
_tf_keras_layer
ť
C	variables
Dtrainable_variables
Eregularization_losses
F	keras_api
G__call__
*H&call_and_return_all_conditional_losses

Ikernel
Jbias"
_tf_keras_layer
ę
K	variables
Ltrainable_variables
Mregularization_losses
N	keras_api
O__call__
*P&call_and_return_all_conditional_losses
Qaxis
	Rgamma
Sbeta
Tmoving_mean
Umoving_variance"
_tf_keras_layer
ź
V	variables
Wtrainable_variables
Xregularization_losses
Y	keras_api
Z__call__
*[&call_and_return_all_conditional_losses
\_random_generator"
_tf_keras_layer
ť
]	variables
^trainable_variables
_regularization_losses
`	keras_api
a__call__
*b&call_and_return_all_conditional_losses

ckernel
dbias"
_tf_keras_layer
ę
e	variables
ftrainable_variables
gregularization_losses
h	keras_api
i__call__
*j&call_and_return_all_conditional_losses
kaxis
	lgamma
mbeta
nmoving_mean
omoving_variance"
_tf_keras_layer
ź
p	variables
qtrainable_variables
rregularization_losses
s	keras_api
t__call__
*u&call_and_return_all_conditional_losses
v_random_generator"
_tf_keras_layer
ť
w	variables
xtrainable_variables
yregularization_losses
z	keras_api
{__call__
*|&call_and_return_all_conditional_losses

}kernel
~bias"
_tf_keras_layer
Ń
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses
% _saved_model_loader_tracked_dict"
_tf_keras_model
ś
/0
01
82
93
:4
;5
I6
J7
R8
S9
T10
U11
c12
d13
l14
m15
n16
o17
}18
~19"
trackable_list_wrapper

/0
01
82
93
I4
J5
R6
S7
c8
d9
l10
m11
}12
~13"
trackable_list_wrapper
 "
trackable_list_wrapper
Ď
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
 _default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
Ý
trace_0
trace_1
trace_2
trace_32ę
(__inference_model_1_layer_call_fn_145744
(__inference_model_1_layer_call_fn_146306
(__inference_model_1_layer_call_fn_146363
(__inference_model_1_layer_call_fn_146109ż
ś˛˛
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 ztrace_0ztrace_1ztrace_2ztrace_3
É
trace_0
trace_1
trace_2
trace_32Ö
C__inference_model_1_layer_call_and_return_conditional_losses_146460
C__inference_model_1_layer_call_and_return_conditional_losses_146620
C__inference_model_1_layer_call_and_return_conditional_losses_146176
C__inference_model_1_layer_call_and_return_conditional_losses_146243ż
ś˛˛
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 ztrace_0ztrace_1ztrace_2ztrace_3
ţBű
!__inference__wrapped_model_144881Age_xf	Gender_xfEthnicity_xfParentalEducation_xfStudyTimeWeekly_xfAbsences_xfTutoring_xfParentalSupport_xfExtracurricular_xf	Sports_xfMusic_xfVolunteering_xfGPA_xf"
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
đ
	iter
beta_1
beta_2

decay
learning_rate/m­0mŽ8mŻ9m°ImąJm˛RmłSm´cmľdmślmˇmm¸}mš~mş/vť0vź8v˝9vžIvżJvŔRvÁSvÂcvĂdvÄlvĹmvĆ}vÇ~vČ"
	optimizer
-
serving_default"
signature_map
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
˛
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
#	variables
$trainable_variables
%regularization_losses
'__call__
*(&call_and_return_all_conditional_losses
&("call_and_return_conditional_losses"
_generic_user_object
ô
trace_02Ő
.__inference_concatenate_1_layer_call_fn_146637˘
˛
FullArgSpec
args
jself
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
annotationsŞ *
 ztrace_0

trace_02đ
I__inference_concatenate_1_layer_call_and_return_conditional_losses_146655˘
˛
FullArgSpec
args
jself
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
annotationsŞ *
 ztrace_0
.
/0
01"
trackable_list_wrapper
.
/0
01"
trackable_list_wrapper
 "
trackable_list_wrapper
˛
 non_trainable_variables
Ąlayers
˘metrics
 Łlayer_regularization_losses
¤layer_metrics
)	variables
*trainable_variables
+regularization_losses
-__call__
*.&call_and_return_all_conditional_losses
&."call_and_return_conditional_losses"
_generic_user_object
î
Ľtrace_02Ď
(__inference_dense_4_layer_call_fn_146664˘
˛
FullArgSpec
args
jself
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
annotationsŞ *
 zĽtrace_0

Śtrace_02ę
C__inference_dense_4_layer_call_and_return_conditional_losses_146675˘
˛
FullArgSpec
args
jself
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
annotationsŞ *
 zŚtrace_0
!:	2dense_4/kernel
:2dense_4/bias
<
80
91
:2
;3"
trackable_list_wrapper
.
80
91"
trackable_list_wrapper
 "
trackable_list_wrapper
˛
§non_trainable_variables
¨layers
Šmetrics
 Şlayer_regularization_losses
Ťlayer_metrics
1	variables
2trainable_variables
3regularization_losses
5__call__
*6&call_and_return_all_conditional_losses
&6"call_and_return_conditional_losses"
_generic_user_object
á
Źtrace_0
­trace_12Ś
6__inference_batch_normalization_3_layer_call_fn_146688
6__inference_batch_normalization_3_layer_call_fn_146701ł
Ş˛Ś
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 zŹtrace_0z­trace_1

Žtrace_0
Żtrace_12Ü
Q__inference_batch_normalization_3_layer_call_and_return_conditional_losses_146721
Q__inference_batch_normalization_3_layer_call_and_return_conditional_losses_146755ł
Ş˛Ś
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 zŽtrace_0zŻtrace_1
 "
trackable_list_wrapper
*:(2batch_normalization_3/gamma
):'2batch_normalization_3/beta
2:0 (2!batch_normalization_3/moving_mean
6:4 (2%batch_normalization_3/moving_variance
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
˛
°non_trainable_variables
ąlayers
˛metrics
 łlayer_regularization_losses
´layer_metrics
<	variables
=trainable_variables
>regularization_losses
@__call__
*A&call_and_return_all_conditional_losses
&A"call_and_return_conditional_losses"
_generic_user_object
É
ľtrace_0
śtrace_12
*__inference_dropout_3_layer_call_fn_146760
*__inference_dropout_3_layer_call_fn_146765ł
Ş˛Ś
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 zľtrace_0zśtrace_1
˙
ˇtrace_0
¸trace_12Ä
E__inference_dropout_3_layer_call_and_return_conditional_losses_146770
E__inference_dropout_3_layer_call_and_return_conditional_losses_146782ł
Ş˛Ś
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 zˇtrace_0z¸trace_1
"
_generic_user_object
.
I0
J1"
trackable_list_wrapper
.
I0
J1"
trackable_list_wrapper
 "
trackable_list_wrapper
˛
šnon_trainable_variables
şlayers
ťmetrics
 źlayer_regularization_losses
˝layer_metrics
C	variables
Dtrainable_variables
Eregularization_losses
G__call__
*H&call_and_return_all_conditional_losses
&H"call_and_return_conditional_losses"
_generic_user_object
î
žtrace_02Ď
(__inference_dense_5_layer_call_fn_146791˘
˛
FullArgSpec
args
jself
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
annotationsŞ *
 zžtrace_0

żtrace_02ę
C__inference_dense_5_layer_call_and_return_conditional_losses_146802˘
˛
FullArgSpec
args
jself
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
annotationsŞ *
 zżtrace_0
": 
2dense_5/kernel
:2dense_5/bias
<
R0
S1
T2
U3"
trackable_list_wrapper
.
R0
S1"
trackable_list_wrapper
 "
trackable_list_wrapper
˛
Ŕnon_trainable_variables
Álayers
Âmetrics
 Ălayer_regularization_losses
Älayer_metrics
K	variables
Ltrainable_variables
Mregularization_losses
O__call__
*P&call_and_return_all_conditional_losses
&P"call_and_return_conditional_losses"
_generic_user_object
á
Ĺtrace_0
Ćtrace_12Ś
6__inference_batch_normalization_4_layer_call_fn_146815
6__inference_batch_normalization_4_layer_call_fn_146828ł
Ş˛Ś
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 zĹtrace_0zĆtrace_1

Çtrace_0
Čtrace_12Ü
Q__inference_batch_normalization_4_layer_call_and_return_conditional_losses_146848
Q__inference_batch_normalization_4_layer_call_and_return_conditional_losses_146882ł
Ş˛Ś
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 zÇtrace_0zČtrace_1
 "
trackable_list_wrapper
*:(2batch_normalization_4/gamma
):'2batch_normalization_4/beta
2:0 (2!batch_normalization_4/moving_mean
6:4 (2%batch_normalization_4/moving_variance
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
˛
Énon_trainable_variables
Ęlayers
Ëmetrics
 Ělayer_regularization_losses
Ílayer_metrics
V	variables
Wtrainable_variables
Xregularization_losses
Z__call__
*[&call_and_return_all_conditional_losses
&["call_and_return_conditional_losses"
_generic_user_object
É
Îtrace_0
Ďtrace_12
*__inference_dropout_4_layer_call_fn_146887
*__inference_dropout_4_layer_call_fn_146892ł
Ş˛Ś
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 zÎtrace_0zĎtrace_1
˙
Đtrace_0
Ńtrace_12Ä
E__inference_dropout_4_layer_call_and_return_conditional_losses_146897
E__inference_dropout_4_layer_call_and_return_conditional_losses_146909ł
Ş˛Ś
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 zĐtrace_0zŃtrace_1
"
_generic_user_object
.
c0
d1"
trackable_list_wrapper
.
c0
d1"
trackable_list_wrapper
 "
trackable_list_wrapper
˛
Ňnon_trainable_variables
Ólayers
Ômetrics
 Őlayer_regularization_losses
Ölayer_metrics
]	variables
^trainable_variables
_regularization_losses
a__call__
*b&call_and_return_all_conditional_losses
&b"call_and_return_conditional_losses"
_generic_user_object
î
×trace_02Ď
(__inference_dense_6_layer_call_fn_146918˘
˛
FullArgSpec
args
jself
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
annotationsŞ *
 z×trace_0

Řtrace_02ę
C__inference_dense_6_layer_call_and_return_conditional_losses_146929˘
˛
FullArgSpec
args
jself
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
annotationsŞ *
 zŘtrace_0
": 
2dense_6/kernel
:2dense_6/bias
<
l0
m1
n2
o3"
trackable_list_wrapper
.
l0
m1"
trackable_list_wrapper
 "
trackable_list_wrapper
˛
Ůnon_trainable_variables
Úlayers
Űmetrics
 Ülayer_regularization_losses
Ýlayer_metrics
e	variables
ftrainable_variables
gregularization_losses
i__call__
*j&call_and_return_all_conditional_losses
&j"call_and_return_conditional_losses"
_generic_user_object
á
Ţtrace_0
ßtrace_12Ś
6__inference_batch_normalization_5_layer_call_fn_146942
6__inference_batch_normalization_5_layer_call_fn_146955ł
Ş˛Ś
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 zŢtrace_0zßtrace_1

ŕtrace_0
átrace_12Ü
Q__inference_batch_normalization_5_layer_call_and_return_conditional_losses_146975
Q__inference_batch_normalization_5_layer_call_and_return_conditional_losses_147009ł
Ş˛Ś
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 zŕtrace_0zátrace_1
 "
trackable_list_wrapper
*:(2batch_normalization_5/gamma
):'2batch_normalization_5/beta
2:0 (2!batch_normalization_5/moving_mean
6:4 (2%batch_normalization_5/moving_variance
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
˛
ânon_trainable_variables
ălayers
ämetrics
 ĺlayer_regularization_losses
ćlayer_metrics
p	variables
qtrainable_variables
rregularization_losses
t__call__
*u&call_and_return_all_conditional_losses
&u"call_and_return_conditional_losses"
_generic_user_object
É
çtrace_0
čtrace_12
*__inference_dropout_5_layer_call_fn_147014
*__inference_dropout_5_layer_call_fn_147019ł
Ş˛Ś
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 zçtrace_0zčtrace_1
˙
étrace_0
ętrace_12Ä
E__inference_dropout_5_layer_call_and_return_conditional_losses_147024
E__inference_dropout_5_layer_call_and_return_conditional_losses_147036ł
Ş˛Ś
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 zétrace_0zętrace_1
"
_generic_user_object
.
}0
~1"
trackable_list_wrapper
.
}0
~1"
trackable_list_wrapper
 "
trackable_list_wrapper
˛
ënon_trainable_variables
ělayers
ímetrics
 îlayer_regularization_losses
ďlayer_metrics
w	variables
xtrainable_variables
yregularization_losses
{__call__
*|&call_and_return_all_conditional_losses
&|"call_and_return_conditional_losses"
_generic_user_object
î
đtrace_02Ď
(__inference_dense_7_layer_call_fn_147045˘
˛
FullArgSpec
args
jself
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
annotationsŞ *
 zđtrace_0

ńtrace_02ę
C__inference_dense_7_layer_call_and_return_conditional_losses_147056˘
˛
FullArgSpec
args
jself
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
annotationsŞ *
 zńtrace_0
!:	2dense_7/kernel
:2dense_7/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
ˇ
ňnon_trainable_variables
ólayers
ômetrics
 őlayer_regularization_losses
ölayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
Ö
÷trace_0
řtrace_12
9__inference_transform_features_layer_layer_call_fn_145331
9__inference_transform_features_layer_layer_call_fn_147149˘
˛
FullArgSpec
args
jself
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
annotationsŞ *
 z÷trace_0zřtrace_1

ůtrace_0
útrace_12Ń
T__inference_transform_features_layer_layer_call_and_return_conditional_losses_147258
T__inference_transform_features_layer_layer_call_and_return_conditional_losses_145533˘
˛
FullArgSpec
args
jself
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
annotationsŞ *
 zůtrace_0zútrace_1

ű	_imported
ü_wrapped_function
ý_structured_inputs
ţ_structured_outputs
˙_output_to_inputs_map"
trackable_dict_wrapper
J
:0
;1
T2
U3
n4
o5"
trackable_list_wrapper
Ţ
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15
16
17
18
19
20
21
22
23
24"
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ŹBŠ
(__inference_model_1_layer_call_fn_145744Age_xf	Gender_xfEthnicity_xfParentalEducation_xfStudyTimeWeekly_xfAbsences_xfTutoring_xfParentalSupport_xfExtracurricular_xf	Sports_xfMusic_xfVolunteering_xfGPA_xf"ż
ś˛˛
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
öBó
(__inference_model_1_layer_call_fn_146306inputs/0inputs/1inputs/2inputs/3inputs/4inputs/5inputs/6inputs/7inputs/8inputs/9	inputs/10	inputs/11	inputs/12"ż
ś˛˛
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
öBó
(__inference_model_1_layer_call_fn_146363inputs/0inputs/1inputs/2inputs/3inputs/4inputs/5inputs/6inputs/7inputs/8inputs/9	inputs/10	inputs/11	inputs/12"ż
ś˛˛
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
ŹBŠ
(__inference_model_1_layer_call_fn_146109Age_xf	Gender_xfEthnicity_xfParentalEducation_xfStudyTimeWeekly_xfAbsences_xfTutoring_xfParentalSupport_xfExtracurricular_xf	Sports_xfMusic_xfVolunteering_xfGPA_xf"ż
ś˛˛
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
B
C__inference_model_1_layer_call_and_return_conditional_losses_146460inputs/0inputs/1inputs/2inputs/3inputs/4inputs/5inputs/6inputs/7inputs/8inputs/9	inputs/10	inputs/11	inputs/12"ż
ś˛˛
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
B
C__inference_model_1_layer_call_and_return_conditional_losses_146620inputs/0inputs/1inputs/2inputs/3inputs/4inputs/5inputs/6inputs/7inputs/8inputs/9	inputs/10	inputs/11	inputs/12"ż
ś˛˛
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
ÇBÄ
C__inference_model_1_layer_call_and_return_conditional_losses_146176Age_xf	Gender_xfEthnicity_xfParentalEducation_xfStudyTimeWeekly_xfAbsences_xfTutoring_xfParentalSupport_xfExtracurricular_xf	Sports_xfMusic_xfVolunteering_xfGPA_xf"ż
ś˛˛
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
ÇBÄ
C__inference_model_1_layer_call_and_return_conditional_losses_146243Age_xf	Gender_xfEthnicity_xfParentalEducation_xfStudyTimeWeekly_xfAbsences_xfTutoring_xfParentalSupport_xfExtracurricular_xf	Sports_xfMusic_xfVolunteering_xfGPA_xf"ż
ś˛˛
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
Ź
	capture_0
	capture_1
	capture_2
	capture_3
	capture_4
	capture_5
	capture_6
	capture_7
	capture_8
	capture_9

capture_10

capture_11

capture_12

capture_13

capture_14

capture_15

capture_16

capture_17

capture_18

capture_19

capture_20

capture_21

capture_22

capture_23

capture_24

capture_25BÉ
$__inference_signature_wrapper_144783examples"
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
 z	capture_0z	capture_1z	capture_2z	capture_3z	capture_4z	capture_5z	capture_6z	capture_7z	capture_8z	capture_9z
capture_10z
capture_11z
capture_12z
capture_13z
capture_14z
capture_15z
capture_16z
capture_17z
capture_18z
capture_19z
capture_20z
capture_21z
capture_22z
capture_23z
capture_24z
capture_25
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
ßBÜ
.__inference_concatenate_1_layer_call_fn_146637inputs/0inputs/1inputs/2inputs/3inputs/4inputs/5inputs/6inputs/7inputs/8inputs/9	inputs/10	inputs/11	inputs/12"˘
˛
FullArgSpec
args
jself
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
annotationsŞ *
 
úB÷
I__inference_concatenate_1_layer_call_and_return_conditional_losses_146655inputs/0inputs/1inputs/2inputs/3inputs/4inputs/5inputs/6inputs/7inputs/8inputs/9	inputs/10	inputs/11	inputs/12"˘
˛
FullArgSpec
args
jself
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
annotationsŞ *
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
ÜBŮ
(__inference_dense_4_layer_call_fn_146664inputs"˘
˛
FullArgSpec
args
jself
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
annotationsŞ *
 
÷Bô
C__inference_dense_4_layer_call_and_return_conditional_losses_146675inputs"˘
˛
FullArgSpec
args
jself
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
annotationsŞ *
 
.
:0
;1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
űBř
6__inference_batch_normalization_3_layer_call_fn_146688inputs"ł
Ş˛Ś
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
űBř
6__inference_batch_normalization_3_layer_call_fn_146701inputs"ł
Ş˛Ś
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
B
Q__inference_batch_normalization_3_layer_call_and_return_conditional_losses_146721inputs"ł
Ş˛Ś
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
B
Q__inference_batch_normalization_3_layer_call_and_return_conditional_losses_146755inputs"ł
Ş˛Ś
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
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
*__inference_dropout_3_layer_call_fn_146760inputs"ł
Ş˛Ś
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
ďBě
*__inference_dropout_3_layer_call_fn_146765inputs"ł
Ş˛Ś
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
B
E__inference_dropout_3_layer_call_and_return_conditional_losses_146770inputs"ł
Ş˛Ś
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
B
E__inference_dropout_3_layer_call_and_return_conditional_losses_146782inputs"ł
Ş˛Ś
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
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
ÜBŮ
(__inference_dense_5_layer_call_fn_146791inputs"˘
˛
FullArgSpec
args
jself
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
annotationsŞ *
 
÷Bô
C__inference_dense_5_layer_call_and_return_conditional_losses_146802inputs"˘
˛
FullArgSpec
args
jself
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
annotationsŞ *
 
.
T0
U1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
űBř
6__inference_batch_normalization_4_layer_call_fn_146815inputs"ł
Ş˛Ś
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
űBř
6__inference_batch_normalization_4_layer_call_fn_146828inputs"ł
Ş˛Ś
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
B
Q__inference_batch_normalization_4_layer_call_and_return_conditional_losses_146848inputs"ł
Ş˛Ś
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
B
Q__inference_batch_normalization_4_layer_call_and_return_conditional_losses_146882inputs"ł
Ş˛Ś
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
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
*__inference_dropout_4_layer_call_fn_146887inputs"ł
Ş˛Ś
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
ďBě
*__inference_dropout_4_layer_call_fn_146892inputs"ł
Ş˛Ś
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
B
E__inference_dropout_4_layer_call_and_return_conditional_losses_146897inputs"ł
Ş˛Ś
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
B
E__inference_dropout_4_layer_call_and_return_conditional_losses_146909inputs"ł
Ş˛Ś
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
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
ÜBŮ
(__inference_dense_6_layer_call_fn_146918inputs"˘
˛
FullArgSpec
args
jself
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
annotationsŞ *
 
÷Bô
C__inference_dense_6_layer_call_and_return_conditional_losses_146929inputs"˘
˛
FullArgSpec
args
jself
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
annotationsŞ *
 
.
n0
o1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
űBř
6__inference_batch_normalization_5_layer_call_fn_146942inputs"ł
Ş˛Ś
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
űBř
6__inference_batch_normalization_5_layer_call_fn_146955inputs"ł
Ş˛Ś
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
B
Q__inference_batch_normalization_5_layer_call_and_return_conditional_losses_146975inputs"ł
Ş˛Ś
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
B
Q__inference_batch_normalization_5_layer_call_and_return_conditional_losses_147009inputs"ł
Ş˛Ś
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
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
*__inference_dropout_5_layer_call_fn_147014inputs"ł
Ş˛Ś
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
ďBě
*__inference_dropout_5_layer_call_fn_147019inputs"ł
Ş˛Ś
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
B
E__inference_dropout_5_layer_call_and_return_conditional_losses_147024inputs"ł
Ş˛Ś
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
B
E__inference_dropout_5_layer_call_and_return_conditional_losses_147036inputs"ł
Ş˛Ś
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
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
ÜBŮ
(__inference_dense_7_layer_call_fn_147045inputs"˘
˛
FullArgSpec
args
jself
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
annotationsŞ *
 
÷Bô
C__inference_dense_7_layer_call_and_return_conditional_losses_147056inputs"˘
˛
FullArgSpec
args
jself
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
annotationsŞ *
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
Ů	
	capture_0
	capture_1
	capture_2
	capture_3
	capture_4
	capture_5
	capture_6
	capture_7
	capture_8
	capture_9

capture_10

capture_11

capture_12

capture_13

capture_14

capture_15

capture_16

capture_17

capture_18

capture_19

capture_20

capture_21

capture_22

capture_23

capture_24

capture_25Bö
9__inference_transform_features_layer_layer_call_fn_145331AbsencesAge	EthnicityExtracurricularGPAGenderMusicParentalEducationParentalSupportSportsStudyTimeWeeklyTutoringVolunteering"˘
˛
FullArgSpec
args
jself
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
annotationsŞ *
 z	capture_0z	capture_1z	capture_2z	capture_3z	capture_4z	capture_5z	capture_6z	capture_7z	capture_8z	capture_9z
capture_10z
capture_11z
capture_12z
capture_13z
capture_14z
capture_15z
capture_16z
capture_17z
capture_18z
capture_19z
capture_20z
capture_21z
capture_22z
capture_23z
capture_24z
capture_25
´

	capture_0
	capture_1
	capture_2
	capture_3
	capture_4
	capture_5
	capture_6
	capture_7
	capture_8
	capture_9

capture_10

capture_11

capture_12

capture_13

capture_14

capture_15

capture_16

capture_17

capture_18

capture_19

capture_20

capture_21

capture_22

capture_23

capture_24

capture_25BŃ
9__inference_transform_features_layer_layer_call_fn_147149inputs/Absences
inputs/Ageinputs/Ethnicityinputs/Extracurricular
inputs/GPAinputs/Genderinputs/Musicinputs/ParentalEducationinputs/ParentalSupportinputs/Sportsinputs/StudyTimeWeeklyinputs/Tutoringinputs/Volunteering"˘
˛
FullArgSpec
args
jself
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
annotationsŞ *
 z	capture_0z	capture_1z	capture_2z	capture_3z	capture_4z	capture_5z	capture_6z	capture_7z	capture_8z	capture_9z
capture_10z
capture_11z
capture_12z
capture_13z
capture_14z
capture_15z
capture_16z
capture_17z
capture_18z
capture_19z
capture_20z
capture_21z
capture_22z
capture_23z
capture_24z
capture_25
Ď

	capture_0
	capture_1
	capture_2
	capture_3
	capture_4
	capture_5
	capture_6
	capture_7
	capture_8
	capture_9

capture_10

capture_11

capture_12

capture_13

capture_14

capture_15

capture_16

capture_17

capture_18

capture_19

capture_20

capture_21

capture_22

capture_23

capture_24

capture_25Bě
T__inference_transform_features_layer_layer_call_and_return_conditional_losses_147258inputs/Absences
inputs/Ageinputs/Ethnicityinputs/Extracurricular
inputs/GPAinputs/Genderinputs/Musicinputs/ParentalEducationinputs/ParentalSupportinputs/Sportsinputs/StudyTimeWeeklyinputs/Tutoringinputs/Volunteering"˘
˛
FullArgSpec
args
jself
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
annotationsŞ *
 z	capture_0z	capture_1z	capture_2z	capture_3z	capture_4z	capture_5z	capture_6z	capture_7z	capture_8z	capture_9z
capture_10z
capture_11z
capture_12z
capture_13z
capture_14z
capture_15z
capture_16z
capture_17z
capture_18z
capture_19z
capture_20z
capture_21z
capture_22z
capture_23z
capture_24z
capture_25
ô	
	capture_0
	capture_1
	capture_2
	capture_3
	capture_4
	capture_5
	capture_6
	capture_7
	capture_8
	capture_9

capture_10

capture_11

capture_12

capture_13

capture_14

capture_15

capture_16

capture_17

capture_18

capture_19

capture_20

capture_21

capture_22

capture_23

capture_24

capture_25B
T__inference_transform_features_layer_layer_call_and_return_conditional_losses_145533AbsencesAge	EthnicityExtracurricularGPAGenderMusicParentalEducationParentalSupportSportsStudyTimeWeeklyTutoringVolunteering"˘
˛
FullArgSpec
args
jself
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
annotationsŞ *
 z	capture_0z	capture_1z	capture_2z	capture_3z	capture_4z	capture_5z	capture_6z	capture_7z	capture_8z	capture_9z
capture_10z
capture_11z
capture_12z
capture_13z
capture_14z
capture_15z
capture_16z
capture_17z
capture_18z
capture_19z
capture_20z
capture_21z
capture_22z
capture_23z
capture_24z
capture_25
Č
created_variables
	resources
trackable_objects
initializers
 assets
Ą
signatures
$˘_self_saveable_object_factories
ütransform_fn"
_generic_user_object

	capture_0
	capture_1
	capture_2
	capture_3
	capture_4
	capture_5
	capture_6
	capture_7
	capture_8
	capture_9

capture_10

capture_11

capture_12

capture_13

capture_14

capture_15

capture_16

capture_17

capture_18

capture_19

capture_20

capture_21

capture_22

capture_23

capture_24

capture_25BŤ
__inference_pruned_144311inputsinputs_1inputs_2inputs_3inputs_4inputs_5inputs_6inputs_7inputs_8inputs_9	inputs_10	inputs_11	inputs_12	inputs_13z	capture_0z	capture_1z	capture_2z	capture_3z	capture_4z	capture_5z	capture_6z	capture_7z	capture_8z	capture_9z
capture_10z
capture_11z
capture_12z
capture_13z
capture_14z
capture_15z
capture_16z
capture_17z
capture_18z
capture_19z
capture_20z
capture_21z
capture_22z
capture_23z
capture_24z
capture_25
 "
trackable_dict_wrapper
 "
trackable_dict_wrapper
 "
trackable_dict_wrapper
R
Ł	variables
¤	keras_api

Ľtotal

Ścount"
_tf_keras_metric
c
§	variables
¨	keras_api

Štotal

Şcount
Ť
_fn_kwargs"
_tf_keras_metric
"J

Const_25jtf.TrackableConstant
"J

Const_24jtf.TrackableConstant
"J

Const_23jtf.TrackableConstant
"J

Const_22jtf.TrackableConstant
"J

Const_21jtf.TrackableConstant
"J

Const_20jtf.TrackableConstant
"J

Const_19jtf.TrackableConstant
"J

Const_18jtf.TrackableConstant
"J

Const_17jtf.TrackableConstant
"J

Const_16jtf.TrackableConstant
"J

Const_15jtf.TrackableConstant
"J

Const_14jtf.TrackableConstant
"J

Const_13jtf.TrackableConstant
"J

Const_12jtf.TrackableConstant
"J

Const_11jtf.TrackableConstant
"J

Const_10jtf.TrackableConstant
!J	
Const_9jtf.TrackableConstant
!J	
Const_8jtf.TrackableConstant
!J	
Const_7jtf.TrackableConstant
!J	
Const_6jtf.TrackableConstant
!J	
Const_5jtf.TrackableConstant
!J	
Const_4jtf.TrackableConstant
!J	
Const_3jtf.TrackableConstant
!J	
Const_2jtf.TrackableConstant
!J	
Const_1jtf.TrackableConstant
J
Constjtf.TrackableConstant
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
-
Źserving_default"
signature_map
 "
trackable_dict_wrapper
0
Ľ0
Ś1"
trackable_list_wrapper
.
Ł	variables"
_generic_user_object
:  (2total
:  (2count
0
Š0
Ş1"
trackable_list_wrapper
.
§	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
Ž	
	capture_0
	capture_1
	capture_2
	capture_3
	capture_4
	capture_5
	capture_6
	capture_7
	capture_8
	capture_9

capture_10

capture_11

capture_12

capture_13

capture_14

capture_15

capture_16

capture_17

capture_18

capture_19

capture_20

capture_21

capture_22

capture_23

capture_24

capture_25BË
$__inference_signature_wrapper_144381inputsinputs_1	inputs_10	inputs_11	inputs_12	inputs_13inputs_2inputs_3inputs_4inputs_5inputs_6inputs_7inputs_8inputs_9"
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
 z	capture_0z	capture_1z	capture_2z	capture_3z	capture_4z	capture_5z	capture_6z	capture_7z	capture_8z	capture_9z
capture_10z
capture_11z
capture_12z
capture_13z
capture_14z
capture_15z
capture_16z
capture_17z
capture_18z
capture_19z
capture_20z
capture_21z
capture_22z
capture_23z
capture_24z
capture_25
&:$	2Adam/dense_4/kernel/m
 :2Adam/dense_4/bias/m
/:-2"Adam/batch_normalization_3/gamma/m
.:,2!Adam/batch_normalization_3/beta/m
':%
2Adam/dense_5/kernel/m
 :2Adam/dense_5/bias/m
/:-2"Adam/batch_normalization_4/gamma/m
.:,2!Adam/batch_normalization_4/beta/m
':%
2Adam/dense_6/kernel/m
 :2Adam/dense_6/bias/m
/:-2"Adam/batch_normalization_5/gamma/m
.:,2!Adam/batch_normalization_5/beta/m
&:$	2Adam/dense_7/kernel/m
:2Adam/dense_7/bias/m
&:$	2Adam/dense_4/kernel/v
 :2Adam/dense_4/bias/v
/:-2"Adam/batch_normalization_3/gamma/v
.:,2!Adam/batch_normalization_3/beta/v
':%
2Adam/dense_5/kernel/v
 :2Adam/dense_5/bias/v
/:-2"Adam/batch_normalization_4/gamma/v
.:,2!Adam/batch_normalization_4/beta/v
':%
2Adam/dense_6/kernel/v
 :2Adam/dense_6/bias/v
/:-2"Adam/batch_normalization_5/gamma/v
.:,2!Adam/batch_normalization_5/beta/v
&:$	2Adam/dense_7/kernel/v
:2Adam/dense_7/bias/v
!__inference__wrapped_model_144881đ/0;8:9IJURTScdolnm}~¤˘ 
˘

 
Age_xf˙˙˙˙˙˙˙˙˙
# 
	Gender_xf˙˙˙˙˙˙˙˙˙
&#
Ethnicity_xf˙˙˙˙˙˙˙˙˙
.+
ParentalEducation_xf˙˙˙˙˙˙˙˙˙
,)
StudyTimeWeekly_xf˙˙˙˙˙˙˙˙˙
%"
Absences_xf˙˙˙˙˙˙˙˙˙
%"
Tutoring_xf˙˙˙˙˙˙˙˙˙
,)
ParentalSupport_xf˙˙˙˙˙˙˙˙˙
,)
Extracurricular_xf˙˙˙˙˙˙˙˙˙
# 
	Sports_xf˙˙˙˙˙˙˙˙˙
"
Music_xf˙˙˙˙˙˙˙˙˙
)&
Volunteering_xf˙˙˙˙˙˙˙˙˙
 
GPA_xf˙˙˙˙˙˙˙˙˙
Ş "1Ş.
,
dense_7!
dense_7˙˙˙˙˙˙˙˙˙š
Q__inference_batch_normalization_3_layer_call_and_return_conditional_losses_146721d;8:94˘1
*˘'
!
inputs˙˙˙˙˙˙˙˙˙
p 
Ş "&˘#

0˙˙˙˙˙˙˙˙˙
 š
Q__inference_batch_normalization_3_layer_call_and_return_conditional_losses_146755d:;894˘1
*˘'
!
inputs˙˙˙˙˙˙˙˙˙
p
Ş "&˘#

0˙˙˙˙˙˙˙˙˙
 
6__inference_batch_normalization_3_layer_call_fn_146688W;8:94˘1
*˘'
!
inputs˙˙˙˙˙˙˙˙˙
p 
Ş "˙˙˙˙˙˙˙˙˙
6__inference_batch_normalization_3_layer_call_fn_146701W:;894˘1
*˘'
!
inputs˙˙˙˙˙˙˙˙˙
p
Ş "˙˙˙˙˙˙˙˙˙š
Q__inference_batch_normalization_4_layer_call_and_return_conditional_losses_146848dURTS4˘1
*˘'
!
inputs˙˙˙˙˙˙˙˙˙
p 
Ş "&˘#

0˙˙˙˙˙˙˙˙˙
 š
Q__inference_batch_normalization_4_layer_call_and_return_conditional_losses_146882dTURS4˘1
*˘'
!
inputs˙˙˙˙˙˙˙˙˙
p
Ş "&˘#

0˙˙˙˙˙˙˙˙˙
 
6__inference_batch_normalization_4_layer_call_fn_146815WURTS4˘1
*˘'
!
inputs˙˙˙˙˙˙˙˙˙
p 
Ş "˙˙˙˙˙˙˙˙˙
6__inference_batch_normalization_4_layer_call_fn_146828WTURS4˘1
*˘'
!
inputs˙˙˙˙˙˙˙˙˙
p
Ş "˙˙˙˙˙˙˙˙˙š
Q__inference_batch_normalization_5_layer_call_and_return_conditional_losses_146975dolnm4˘1
*˘'
!
inputs˙˙˙˙˙˙˙˙˙
p 
Ş "&˘#

0˙˙˙˙˙˙˙˙˙
 š
Q__inference_batch_normalization_5_layer_call_and_return_conditional_losses_147009dnolm4˘1
*˘'
!
inputs˙˙˙˙˙˙˙˙˙
p
Ş "&˘#

0˙˙˙˙˙˙˙˙˙
 
6__inference_batch_normalization_5_layer_call_fn_146942Wolnm4˘1
*˘'
!
inputs˙˙˙˙˙˙˙˙˙
p 
Ş "˙˙˙˙˙˙˙˙˙
6__inference_batch_normalization_5_layer_call_fn_146955Wnolm4˘1
*˘'
!
inputs˙˙˙˙˙˙˙˙˙
p
Ş "˙˙˙˙˙˙˙˙˙ć
I__inference_concatenate_1_layer_call_and_return_conditional_losses_146655î˘ę
â˘Ţ
Ű×
"
inputs/0˙˙˙˙˙˙˙˙˙
"
inputs/1˙˙˙˙˙˙˙˙˙
"
inputs/2˙˙˙˙˙˙˙˙˙
"
inputs/3˙˙˙˙˙˙˙˙˙
"
inputs/4˙˙˙˙˙˙˙˙˙
"
inputs/5˙˙˙˙˙˙˙˙˙
"
inputs/6˙˙˙˙˙˙˙˙˙
"
inputs/7˙˙˙˙˙˙˙˙˙
"
inputs/8˙˙˙˙˙˙˙˙˙
"
inputs/9˙˙˙˙˙˙˙˙˙
# 
	inputs/10˙˙˙˙˙˙˙˙˙
# 
	inputs/11˙˙˙˙˙˙˙˙˙
# 
	inputs/12˙˙˙˙˙˙˙˙˙
Ş "%˘"

0˙˙˙˙˙˙˙˙˙
 ž
.__inference_concatenate_1_layer_call_fn_146637î˘ę
â˘Ţ
Ű×
"
inputs/0˙˙˙˙˙˙˙˙˙
"
inputs/1˙˙˙˙˙˙˙˙˙
"
inputs/2˙˙˙˙˙˙˙˙˙
"
inputs/3˙˙˙˙˙˙˙˙˙
"
inputs/4˙˙˙˙˙˙˙˙˙
"
inputs/5˙˙˙˙˙˙˙˙˙
"
inputs/6˙˙˙˙˙˙˙˙˙
"
inputs/7˙˙˙˙˙˙˙˙˙
"
inputs/8˙˙˙˙˙˙˙˙˙
"
inputs/9˙˙˙˙˙˙˙˙˙
# 
	inputs/10˙˙˙˙˙˙˙˙˙
# 
	inputs/11˙˙˙˙˙˙˙˙˙
# 
	inputs/12˙˙˙˙˙˙˙˙˙
Ş "˙˙˙˙˙˙˙˙˙¤
C__inference_dense_4_layer_call_and_return_conditional_losses_146675]/0/˘,
%˘"
 
inputs˙˙˙˙˙˙˙˙˙
Ş "&˘#

0˙˙˙˙˙˙˙˙˙
 |
(__inference_dense_4_layer_call_fn_146664P/0/˘,
%˘"
 
inputs˙˙˙˙˙˙˙˙˙
Ş "˙˙˙˙˙˙˙˙˙Ľ
C__inference_dense_5_layer_call_and_return_conditional_losses_146802^IJ0˘-
&˘#
!
inputs˙˙˙˙˙˙˙˙˙
Ş "&˘#

0˙˙˙˙˙˙˙˙˙
 }
(__inference_dense_5_layer_call_fn_146791QIJ0˘-
&˘#
!
inputs˙˙˙˙˙˙˙˙˙
Ş "˙˙˙˙˙˙˙˙˙Ľ
C__inference_dense_6_layer_call_and_return_conditional_losses_146929^cd0˘-
&˘#
!
inputs˙˙˙˙˙˙˙˙˙
Ş "&˘#

0˙˙˙˙˙˙˙˙˙
 }
(__inference_dense_6_layer_call_fn_146918Qcd0˘-
&˘#
!
inputs˙˙˙˙˙˙˙˙˙
Ş "˙˙˙˙˙˙˙˙˙¤
C__inference_dense_7_layer_call_and_return_conditional_losses_147056]}~0˘-
&˘#
!
inputs˙˙˙˙˙˙˙˙˙
Ş "%˘"

0˙˙˙˙˙˙˙˙˙
 |
(__inference_dense_7_layer_call_fn_147045P}~0˘-
&˘#
!
inputs˙˙˙˙˙˙˙˙˙
Ş "˙˙˙˙˙˙˙˙˙§
E__inference_dropout_3_layer_call_and_return_conditional_losses_146770^4˘1
*˘'
!
inputs˙˙˙˙˙˙˙˙˙
p 
Ş "&˘#

0˙˙˙˙˙˙˙˙˙
 §
E__inference_dropout_3_layer_call_and_return_conditional_losses_146782^4˘1
*˘'
!
inputs˙˙˙˙˙˙˙˙˙
p
Ş "&˘#

0˙˙˙˙˙˙˙˙˙
 
*__inference_dropout_3_layer_call_fn_146760Q4˘1
*˘'
!
inputs˙˙˙˙˙˙˙˙˙
p 
Ş "˙˙˙˙˙˙˙˙˙
*__inference_dropout_3_layer_call_fn_146765Q4˘1
*˘'
!
inputs˙˙˙˙˙˙˙˙˙
p
Ş "˙˙˙˙˙˙˙˙˙§
E__inference_dropout_4_layer_call_and_return_conditional_losses_146897^4˘1
*˘'
!
inputs˙˙˙˙˙˙˙˙˙
p 
Ş "&˘#

0˙˙˙˙˙˙˙˙˙
 §
E__inference_dropout_4_layer_call_and_return_conditional_losses_146909^4˘1
*˘'
!
inputs˙˙˙˙˙˙˙˙˙
p
Ş "&˘#

0˙˙˙˙˙˙˙˙˙
 
*__inference_dropout_4_layer_call_fn_146887Q4˘1
*˘'
!
inputs˙˙˙˙˙˙˙˙˙
p 
Ş "˙˙˙˙˙˙˙˙˙
*__inference_dropout_4_layer_call_fn_146892Q4˘1
*˘'
!
inputs˙˙˙˙˙˙˙˙˙
p
Ş "˙˙˙˙˙˙˙˙˙§
E__inference_dropout_5_layer_call_and_return_conditional_losses_147024^4˘1
*˘'
!
inputs˙˙˙˙˙˙˙˙˙
p 
Ş "&˘#

0˙˙˙˙˙˙˙˙˙
 §
E__inference_dropout_5_layer_call_and_return_conditional_losses_147036^4˘1
*˘'
!
inputs˙˙˙˙˙˙˙˙˙
p
Ş "&˘#

0˙˙˙˙˙˙˙˙˙
 
*__inference_dropout_5_layer_call_fn_147014Q4˘1
*˘'
!
inputs˙˙˙˙˙˙˙˙˙
p 
Ş "˙˙˙˙˙˙˙˙˙
*__inference_dropout_5_layer_call_fn_147019Q4˘1
*˘'
!
inputs˙˙˙˙˙˙˙˙˙
p
Ş "˙˙˙˙˙˙˙˙˙´
C__inference_model_1_layer_call_and_return_conditional_losses_146176ě/0;8:9IJURTScdolnm}~Ź˘¨
 ˘

 
Age_xf˙˙˙˙˙˙˙˙˙
# 
	Gender_xf˙˙˙˙˙˙˙˙˙
&#
Ethnicity_xf˙˙˙˙˙˙˙˙˙
.+
ParentalEducation_xf˙˙˙˙˙˙˙˙˙
,)
StudyTimeWeekly_xf˙˙˙˙˙˙˙˙˙
%"
Absences_xf˙˙˙˙˙˙˙˙˙
%"
Tutoring_xf˙˙˙˙˙˙˙˙˙
,)
ParentalSupport_xf˙˙˙˙˙˙˙˙˙
,)
Extracurricular_xf˙˙˙˙˙˙˙˙˙
# 
	Sports_xf˙˙˙˙˙˙˙˙˙
"
Music_xf˙˙˙˙˙˙˙˙˙
)&
Volunteering_xf˙˙˙˙˙˙˙˙˙
 
GPA_xf˙˙˙˙˙˙˙˙˙
p 

 
Ş "%˘"

0˙˙˙˙˙˙˙˙˙
 ´
C__inference_model_1_layer_call_and_return_conditional_losses_146243ě/0:;89IJTURScdnolm}~Ź˘¨
 ˘

 
Age_xf˙˙˙˙˙˙˙˙˙
# 
	Gender_xf˙˙˙˙˙˙˙˙˙
&#
Ethnicity_xf˙˙˙˙˙˙˙˙˙
.+
ParentalEducation_xf˙˙˙˙˙˙˙˙˙
,)
StudyTimeWeekly_xf˙˙˙˙˙˙˙˙˙
%"
Absences_xf˙˙˙˙˙˙˙˙˙
%"
Tutoring_xf˙˙˙˙˙˙˙˙˙
,)
ParentalSupport_xf˙˙˙˙˙˙˙˙˙
,)
Extracurricular_xf˙˙˙˙˙˙˙˙˙
# 
	Sports_xf˙˙˙˙˙˙˙˙˙
"
Music_xf˙˙˙˙˙˙˙˙˙
)&
Volunteering_xf˙˙˙˙˙˙˙˙˙
 
GPA_xf˙˙˙˙˙˙˙˙˙
p

 
Ş "%˘"

0˙˙˙˙˙˙˙˙˙
 ţ
C__inference_model_1_layer_call_and_return_conditional_losses_146460ś/0;8:9IJURTScdolnm}~ö˘ň
ę˘ć
Ű×
"
inputs/0˙˙˙˙˙˙˙˙˙
"
inputs/1˙˙˙˙˙˙˙˙˙
"
inputs/2˙˙˙˙˙˙˙˙˙
"
inputs/3˙˙˙˙˙˙˙˙˙
"
inputs/4˙˙˙˙˙˙˙˙˙
"
inputs/5˙˙˙˙˙˙˙˙˙
"
inputs/6˙˙˙˙˙˙˙˙˙
"
inputs/7˙˙˙˙˙˙˙˙˙
"
inputs/8˙˙˙˙˙˙˙˙˙
"
inputs/9˙˙˙˙˙˙˙˙˙
# 
	inputs/10˙˙˙˙˙˙˙˙˙
# 
	inputs/11˙˙˙˙˙˙˙˙˙
# 
	inputs/12˙˙˙˙˙˙˙˙˙
p 

 
Ş "%˘"

0˙˙˙˙˙˙˙˙˙
 ţ
C__inference_model_1_layer_call_and_return_conditional_losses_146620ś/0:;89IJTURScdnolm}~ö˘ň
ę˘ć
Ű×
"
inputs/0˙˙˙˙˙˙˙˙˙
"
inputs/1˙˙˙˙˙˙˙˙˙
"
inputs/2˙˙˙˙˙˙˙˙˙
"
inputs/3˙˙˙˙˙˙˙˙˙
"
inputs/4˙˙˙˙˙˙˙˙˙
"
inputs/5˙˙˙˙˙˙˙˙˙
"
inputs/6˙˙˙˙˙˙˙˙˙
"
inputs/7˙˙˙˙˙˙˙˙˙
"
inputs/8˙˙˙˙˙˙˙˙˙
"
inputs/9˙˙˙˙˙˙˙˙˙
# 
	inputs/10˙˙˙˙˙˙˙˙˙
# 
	inputs/11˙˙˙˙˙˙˙˙˙
# 
	inputs/12˙˙˙˙˙˙˙˙˙
p

 
Ş "%˘"

0˙˙˙˙˙˙˙˙˙
 
(__inference_model_1_layer_call_fn_145744ß/0;8:9IJURTScdolnm}~Ź˘¨
 ˘

 
Age_xf˙˙˙˙˙˙˙˙˙
# 
	Gender_xf˙˙˙˙˙˙˙˙˙
&#
Ethnicity_xf˙˙˙˙˙˙˙˙˙
.+
ParentalEducation_xf˙˙˙˙˙˙˙˙˙
,)
StudyTimeWeekly_xf˙˙˙˙˙˙˙˙˙
%"
Absences_xf˙˙˙˙˙˙˙˙˙
%"
Tutoring_xf˙˙˙˙˙˙˙˙˙
,)
ParentalSupport_xf˙˙˙˙˙˙˙˙˙
,)
Extracurricular_xf˙˙˙˙˙˙˙˙˙
# 
	Sports_xf˙˙˙˙˙˙˙˙˙
"
Music_xf˙˙˙˙˙˙˙˙˙
)&
Volunteering_xf˙˙˙˙˙˙˙˙˙
 
GPA_xf˙˙˙˙˙˙˙˙˙
p 

 
Ş "˙˙˙˙˙˙˙˙˙
(__inference_model_1_layer_call_fn_146109ß/0:;89IJTURScdnolm}~Ź˘¨
 ˘

 
Age_xf˙˙˙˙˙˙˙˙˙
# 
	Gender_xf˙˙˙˙˙˙˙˙˙
&#
Ethnicity_xf˙˙˙˙˙˙˙˙˙
.+
ParentalEducation_xf˙˙˙˙˙˙˙˙˙
,)
StudyTimeWeekly_xf˙˙˙˙˙˙˙˙˙
%"
Absences_xf˙˙˙˙˙˙˙˙˙
%"
Tutoring_xf˙˙˙˙˙˙˙˙˙
,)
ParentalSupport_xf˙˙˙˙˙˙˙˙˙
,)
Extracurricular_xf˙˙˙˙˙˙˙˙˙
# 
	Sports_xf˙˙˙˙˙˙˙˙˙
"
Music_xf˙˙˙˙˙˙˙˙˙
)&
Volunteering_xf˙˙˙˙˙˙˙˙˙
 
GPA_xf˙˙˙˙˙˙˙˙˙
p

 
Ş "˙˙˙˙˙˙˙˙˙Ö
(__inference_model_1_layer_call_fn_146306Š/0;8:9IJURTScdolnm}~ö˘ň
ę˘ć
Ű×
"
inputs/0˙˙˙˙˙˙˙˙˙
"
inputs/1˙˙˙˙˙˙˙˙˙
"
inputs/2˙˙˙˙˙˙˙˙˙
"
inputs/3˙˙˙˙˙˙˙˙˙
"
inputs/4˙˙˙˙˙˙˙˙˙
"
inputs/5˙˙˙˙˙˙˙˙˙
"
inputs/6˙˙˙˙˙˙˙˙˙
"
inputs/7˙˙˙˙˙˙˙˙˙
"
inputs/8˙˙˙˙˙˙˙˙˙
"
inputs/9˙˙˙˙˙˙˙˙˙
# 
	inputs/10˙˙˙˙˙˙˙˙˙
# 
	inputs/11˙˙˙˙˙˙˙˙˙
# 
	inputs/12˙˙˙˙˙˙˙˙˙
p 

 
Ş "˙˙˙˙˙˙˙˙˙Ö
(__inference_model_1_layer_call_fn_146363Š/0:;89IJTURScdnolm}~ö˘ň
ę˘ć
Ű×
"
inputs/0˙˙˙˙˙˙˙˙˙
"
inputs/1˙˙˙˙˙˙˙˙˙
"
inputs/2˙˙˙˙˙˙˙˙˙
"
inputs/3˙˙˙˙˙˙˙˙˙
"
inputs/4˙˙˙˙˙˙˙˙˙
"
inputs/5˙˙˙˙˙˙˙˙˙
"
inputs/6˙˙˙˙˙˙˙˙˙
"
inputs/7˙˙˙˙˙˙˙˙˙
"
inputs/8˙˙˙˙˙˙˙˙˙
"
inputs/9˙˙˙˙˙˙˙˙˙
# 
	inputs/10˙˙˙˙˙˙˙˙˙
# 
	inputs/11˙˙˙˙˙˙˙˙˙
# 
	inputs/12˙˙˙˙˙˙˙˙˙
p

 
Ş "˙˙˙˙˙˙˙˙˙ť
__inference_pruned_1443114Á˘˝
ľ˘ą
ŽŞŞ
5
Absences)&
inputs/Absences˙˙˙˙˙˙˙˙˙	
+
Age$!

inputs/Age˙˙˙˙˙˙˙˙˙	
7
	Ethnicity*'
inputs/Ethnicity˙˙˙˙˙˙˙˙˙	
C
Extracurricular0-
inputs/Extracurricular˙˙˙˙˙˙˙˙˙	
+
GPA$!

inputs/GPA˙˙˙˙˙˙˙˙˙
1
Gender'$
inputs/Gender˙˙˙˙˙˙˙˙˙	
9

GradeClass+(
inputs/GradeClass˙˙˙˙˙˙˙˙˙
/
Music&#
inputs/Music˙˙˙˙˙˙˙˙˙	
G
ParentalEducation2/
inputs/ParentalEducation˙˙˙˙˙˙˙˙˙	
C
ParentalSupport0-
inputs/ParentalSupport˙˙˙˙˙˙˙˙˙	
1
Sports'$
inputs/Sports˙˙˙˙˙˙˙˙˙	
C
StudyTimeWeekly0-
inputs/StudyTimeWeekly˙˙˙˙˙˙˙˙˙
5
Tutoring)&
inputs/Tutoring˙˙˙˙˙˙˙˙˙	
=
Volunteering-*
inputs/Volunteering˙˙˙˙˙˙˙˙˙	
Ş " Ş
4
Absences_xf%"
Absences_xf˙˙˙˙˙˙˙˙˙
*
Age_xf 
Age_xf˙˙˙˙˙˙˙˙˙
6
Ethnicity_xf&#
Ethnicity_xf˙˙˙˙˙˙˙˙˙
B
Extracurricular_xf,)
Extracurricular_xf˙˙˙˙˙˙˙˙˙
*
GPA_xf 
GPA_xf˙˙˙˙˙˙˙˙˙
0
	Gender_xf# 
	Gender_xf˙˙˙˙˙˙˙˙˙
8
GradeClass_xf'$
GradeClass_xf˙˙˙˙˙˙˙˙˙	
.
Music_xf"
Music_xf˙˙˙˙˙˙˙˙˙
F
ParentalEducation_xf.+
ParentalEducation_xf˙˙˙˙˙˙˙˙˙
B
ParentalSupport_xf,)
ParentalSupport_xf˙˙˙˙˙˙˙˙˙
0
	Sports_xf# 
	Sports_xf˙˙˙˙˙˙˙˙˙
B
StudyTimeWeekly_xf,)
StudyTimeWeekly_xf˙˙˙˙˙˙˙˙˙
4
Tutoring_xf%"
Tutoring_xf˙˙˙˙˙˙˙˙˙
<
Volunteering_xf)&
Volunteering_xf˙˙˙˙˙˙˙˙˙š
$__inference_signature_wrapper_1443814´˘°
˘ 
¨Ş¤
*
inputs 
inputs˙˙˙˙˙˙˙˙˙	
.
inputs_1"
inputs_1˙˙˙˙˙˙˙˙˙	
0
	inputs_10# 
	inputs_10˙˙˙˙˙˙˙˙˙	
0
	inputs_11# 
	inputs_11˙˙˙˙˙˙˙˙˙
0
	inputs_12# 
	inputs_12˙˙˙˙˙˙˙˙˙	
0
	inputs_13# 
	inputs_13˙˙˙˙˙˙˙˙˙	
.
inputs_2"
inputs_2˙˙˙˙˙˙˙˙˙	
.
inputs_3"
inputs_3˙˙˙˙˙˙˙˙˙	
.
inputs_4"
inputs_4˙˙˙˙˙˙˙˙˙
.
inputs_5"
inputs_5˙˙˙˙˙˙˙˙˙	
.
inputs_6"
inputs_6˙˙˙˙˙˙˙˙˙
.
inputs_7"
inputs_7˙˙˙˙˙˙˙˙˙	
.
inputs_8"
inputs_8˙˙˙˙˙˙˙˙˙	
.
inputs_9"
inputs_9˙˙˙˙˙˙˙˙˙	" Ş
4
Absences_xf%"
Absences_xf˙˙˙˙˙˙˙˙˙
*
Age_xf 
Age_xf˙˙˙˙˙˙˙˙˙
6
Ethnicity_xf&#
Ethnicity_xf˙˙˙˙˙˙˙˙˙
B
Extracurricular_xf,)
Extracurricular_xf˙˙˙˙˙˙˙˙˙
*
GPA_xf 
GPA_xf˙˙˙˙˙˙˙˙˙
0
	Gender_xf# 
	Gender_xf˙˙˙˙˙˙˙˙˙
8
GradeClass_xf'$
GradeClass_xf˙˙˙˙˙˙˙˙˙	
.
Music_xf"
Music_xf˙˙˙˙˙˙˙˙˙
F
ParentalEducation_xf.+
ParentalEducation_xf˙˙˙˙˙˙˙˙˙
B
ParentalSupport_xf,)
ParentalSupport_xf˙˙˙˙˙˙˙˙˙
0
	Sports_xf# 
	Sports_xf˙˙˙˙˙˙˙˙˙
B
StudyTimeWeekly_xf,)
StudyTimeWeekly_xf˙˙˙˙˙˙˙˙˙
4
Tutoring_xf%"
Tutoring_xf˙˙˙˙˙˙˙˙˙
<
Volunteering_xf)&
Volunteering_xf˙˙˙˙˙˙˙˙˙á
$__inference_signature_wrapper_144783¸H/0;8:9IJURTScdolnm}~9˘6
˘ 
/Ş,
*
examples
examples˙˙˙˙˙˙˙˙˙"1Ş.
,
outputs!
outputs˙˙˙˙˙˙˙˙˙Ě
T__inference_transform_features_layer_layer_call_and_return_conditional_losses_145533ó4Ť˘§
˘
Ş
.
Absences"
Absences˙˙˙˙˙˙˙˙˙	
$
Age
Age˙˙˙˙˙˙˙˙˙	
0
	Ethnicity# 
	Ethnicity˙˙˙˙˙˙˙˙˙	
<
Extracurricular)&
Extracurricular˙˙˙˙˙˙˙˙˙	
$
GPA
GPA˙˙˙˙˙˙˙˙˙
*
Gender 
Gender˙˙˙˙˙˙˙˙˙	
(
Music
Music˙˙˙˙˙˙˙˙˙	
@
ParentalEducation+(
ParentalEducation˙˙˙˙˙˙˙˙˙	
<
ParentalSupport)&
ParentalSupport˙˙˙˙˙˙˙˙˙	
*
Sports 
Sports˙˙˙˙˙˙˙˙˙	
<
StudyTimeWeekly)&
StudyTimeWeekly˙˙˙˙˙˙˙˙˙
.
Tutoring"
Tutoring˙˙˙˙˙˙˙˙˙	
6
Volunteering&#
Volunteering˙˙˙˙˙˙˙˙˙	
Ş "˘
Şü
6
Absences_xf'$
0/Absences_xf˙˙˙˙˙˙˙˙˙
,
Age_xf"
0/Age_xf˙˙˙˙˙˙˙˙˙
8
Ethnicity_xf(%
0/Ethnicity_xf˙˙˙˙˙˙˙˙˙
D
Extracurricular_xf.+
0/Extracurricular_xf˙˙˙˙˙˙˙˙˙
,
GPA_xf"
0/GPA_xf˙˙˙˙˙˙˙˙˙
2
	Gender_xf%"
0/Gender_xf˙˙˙˙˙˙˙˙˙
0
Music_xf$!

0/Music_xf˙˙˙˙˙˙˙˙˙
H
ParentalEducation_xf0-
0/ParentalEducation_xf˙˙˙˙˙˙˙˙˙
D
ParentalSupport_xf.+
0/ParentalSupport_xf˙˙˙˙˙˙˙˙˙
2
	Sports_xf%"
0/Sports_xf˙˙˙˙˙˙˙˙˙
D
StudyTimeWeekly_xf.+
0/StudyTimeWeekly_xf˙˙˙˙˙˙˙˙˙
6
Tutoring_xf'$
0/Tutoring_xf˙˙˙˙˙˙˙˙˙
>
Volunteering_xf+(
0/Volunteering_xf˙˙˙˙˙˙˙˙˙
 §
T__inference_transform_features_layer_layer_call_and_return_conditional_losses_147258Î4˘
ú˘ö
óŞď
5
Absences)&
inputs/Absences˙˙˙˙˙˙˙˙˙	
+
Age$!

inputs/Age˙˙˙˙˙˙˙˙˙	
7
	Ethnicity*'
inputs/Ethnicity˙˙˙˙˙˙˙˙˙	
C
Extracurricular0-
inputs/Extracurricular˙˙˙˙˙˙˙˙˙	
+
GPA$!

inputs/GPA˙˙˙˙˙˙˙˙˙
1
Gender'$
inputs/Gender˙˙˙˙˙˙˙˙˙	
/
Music&#
inputs/Music˙˙˙˙˙˙˙˙˙	
G
ParentalEducation2/
inputs/ParentalEducation˙˙˙˙˙˙˙˙˙	
C
ParentalSupport0-
inputs/ParentalSupport˙˙˙˙˙˙˙˙˙	
1
Sports'$
inputs/Sports˙˙˙˙˙˙˙˙˙	
C
StudyTimeWeekly0-
inputs/StudyTimeWeekly˙˙˙˙˙˙˙˙˙
5
Tutoring)&
inputs/Tutoring˙˙˙˙˙˙˙˙˙	
=
Volunteering-*
inputs/Volunteering˙˙˙˙˙˙˙˙˙	
Ş "˘
Şü
6
Absences_xf'$
0/Absences_xf˙˙˙˙˙˙˙˙˙
,
Age_xf"
0/Age_xf˙˙˙˙˙˙˙˙˙
8
Ethnicity_xf(%
0/Ethnicity_xf˙˙˙˙˙˙˙˙˙
D
Extracurricular_xf.+
0/Extracurricular_xf˙˙˙˙˙˙˙˙˙
,
GPA_xf"
0/GPA_xf˙˙˙˙˙˙˙˙˙
2
	Gender_xf%"
0/Gender_xf˙˙˙˙˙˙˙˙˙
0
Music_xf$!

0/Music_xf˙˙˙˙˙˙˙˙˙
H
ParentalEducation_xf0-
0/ParentalEducation_xf˙˙˙˙˙˙˙˙˙
D
ParentalSupport_xf.+
0/ParentalSupport_xf˙˙˙˙˙˙˙˙˙
2
	Sports_xf%"
0/Sports_xf˙˙˙˙˙˙˙˙˙
D
StudyTimeWeekly_xf.+
0/StudyTimeWeekly_xf˙˙˙˙˙˙˙˙˙
6
Tutoring_xf'$
0/Tutoring_xf˙˙˙˙˙˙˙˙˙
>
Volunteering_xf+(
0/Volunteering_xf˙˙˙˙˙˙˙˙˙
 
9__inference_transform_features_layer_layer_call_fn_145331Í4Ť˘§
˘
Ş
.
Absences"
Absences˙˙˙˙˙˙˙˙˙	
$
Age
Age˙˙˙˙˙˙˙˙˙	
0
	Ethnicity# 
	Ethnicity˙˙˙˙˙˙˙˙˙	
<
Extracurricular)&
Extracurricular˙˙˙˙˙˙˙˙˙	
$
GPA
GPA˙˙˙˙˙˙˙˙˙
*
Gender 
Gender˙˙˙˙˙˙˙˙˙	
(
Music
Music˙˙˙˙˙˙˙˙˙	
@
ParentalEducation+(
ParentalEducation˙˙˙˙˙˙˙˙˙	
<
ParentalSupport)&
ParentalSupport˙˙˙˙˙˙˙˙˙	
*
Sports 
Sports˙˙˙˙˙˙˙˙˙	
<
StudyTimeWeekly)&
StudyTimeWeekly˙˙˙˙˙˙˙˙˙
.
Tutoring"
Tutoring˙˙˙˙˙˙˙˙˙	
6
Volunteering&#
Volunteering˙˙˙˙˙˙˙˙˙	
Ş "ćŞâ
4
Absences_xf%"
Absences_xf˙˙˙˙˙˙˙˙˙
*
Age_xf 
Age_xf˙˙˙˙˙˙˙˙˙
6
Ethnicity_xf&#
Ethnicity_xf˙˙˙˙˙˙˙˙˙
B
Extracurricular_xf,)
Extracurricular_xf˙˙˙˙˙˙˙˙˙
*
GPA_xf 
GPA_xf˙˙˙˙˙˙˙˙˙
0
	Gender_xf# 
	Gender_xf˙˙˙˙˙˙˙˙˙
.
Music_xf"
Music_xf˙˙˙˙˙˙˙˙˙
F
ParentalEducation_xf.+
ParentalEducation_xf˙˙˙˙˙˙˙˙˙
B
ParentalSupport_xf,)
ParentalSupport_xf˙˙˙˙˙˙˙˙˙
0
	Sports_xf# 
	Sports_xf˙˙˙˙˙˙˙˙˙
B
StudyTimeWeekly_xf,)
StudyTimeWeekly_xf˙˙˙˙˙˙˙˙˙
4
Tutoring_xf%"
Tutoring_xf˙˙˙˙˙˙˙˙˙
<
Volunteering_xf)&
Volunteering_xf˙˙˙˙˙˙˙˙˙ć
9__inference_transform_features_layer_layer_call_fn_147149¨4˘
ú˘ö
óŞď
5
Absences)&
inputs/Absences˙˙˙˙˙˙˙˙˙	
+
Age$!

inputs/Age˙˙˙˙˙˙˙˙˙	
7
	Ethnicity*'
inputs/Ethnicity˙˙˙˙˙˙˙˙˙	
C
Extracurricular0-
inputs/Extracurricular˙˙˙˙˙˙˙˙˙	
+
GPA$!

inputs/GPA˙˙˙˙˙˙˙˙˙
1
Gender'$
inputs/Gender˙˙˙˙˙˙˙˙˙	
/
Music&#
inputs/Music˙˙˙˙˙˙˙˙˙	
G
ParentalEducation2/
inputs/ParentalEducation˙˙˙˙˙˙˙˙˙	
C
ParentalSupport0-
inputs/ParentalSupport˙˙˙˙˙˙˙˙˙	
1
Sports'$
inputs/Sports˙˙˙˙˙˙˙˙˙	
C
StudyTimeWeekly0-
inputs/StudyTimeWeekly˙˙˙˙˙˙˙˙˙
5
Tutoring)&
inputs/Tutoring˙˙˙˙˙˙˙˙˙	
=
Volunteering-*
inputs/Volunteering˙˙˙˙˙˙˙˙˙	
Ş "ćŞâ
4
Absences_xf%"
Absences_xf˙˙˙˙˙˙˙˙˙
*
Age_xf 
Age_xf˙˙˙˙˙˙˙˙˙
6
Ethnicity_xf&#
Ethnicity_xf˙˙˙˙˙˙˙˙˙
B
Extracurricular_xf,)
Extracurricular_xf˙˙˙˙˙˙˙˙˙
*
GPA_xf 
GPA_xf˙˙˙˙˙˙˙˙˙
0
	Gender_xf# 
	Gender_xf˙˙˙˙˙˙˙˙˙
.
Music_xf"
Music_xf˙˙˙˙˙˙˙˙˙
F
ParentalEducation_xf.+
ParentalEducation_xf˙˙˙˙˙˙˙˙˙
B
ParentalSupport_xf,)
ParentalSupport_xf˙˙˙˙˙˙˙˙˙
0
	Sports_xf# 
	Sports_xf˙˙˙˙˙˙˙˙˙
B
StudyTimeWeekly_xf,)
StudyTimeWeekly_xf˙˙˙˙˙˙˙˙˙
4
Tutoring_xf%"
Tutoring_xf˙˙˙˙˙˙˙˙˙
<
Volunteering_xf)&
Volunteering_xf˙˙˙˙˙˙˙˙˙