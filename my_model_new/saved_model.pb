Õ5
¾
D
AddV2
x"T
y"T
z"T"
Ttype:
2	
B
AssignVariableOp
resource
value"dtype"
dtypetype
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
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
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
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
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
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype
E
Relu
features"T
activations"T"
Ttype:
2	
¥
ResourceGather
resource
indices"Tindices
output"dtype"

batch_dimsint "
validate_indicesbool("
dtypetype"
Tindicestype:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
n
	ReverseV2
tensor"T
axis"Tidx
output"T"
Tidxtype0:
2	"
Ttype:
2	

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
ö
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

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
-
Tanh
x"T
y"T"
Ttype:

2
«
TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type*
output_handleéelement_dtype"
element_dtypetype"

shape_typetype:
2	

TensorListReserve
element_shape"
shape_type
num_elements#
handleéelement_dtype"
element_dtypetype"

shape_typetype:
2	

TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsintÿÿÿÿÿÿÿÿÿ
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 

While

input2T
output2T"
T
list(type)("
condfunc"
bodyfunc" 
output_shapeslist(shape)
 "
parallel_iterationsint

&
	ZerosLike
x"T
y"T"	
Ttype"serve*2.7.02v2.7.0-rc1-69-gc256c071bb28ß3

embedding_1/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	© @*'
shared_nameembedding_1/embeddings

*embedding_1/embeddings/Read/ReadVariableOpReadVariableOpembedding_1/embeddings*
_output_shapes
:	© @*
dtype0
y
dense_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@*
shared_namedense_2/kernel
r
"dense_2/kernel/Read/ReadVariableOpReadVariableOpdense_2/kernel*
_output_shapes
:	@*
dtype0
p
dense_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namedense_2/bias
i
 dense_2/bias/Read/ReadVariableOpReadVariableOpdense_2/bias*
_output_shapes
:@*
dtype0
x
dense_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*
shared_namedense_3/kernel
q
"dense_3/kernel/Read/ReadVariableOpReadVariableOpdense_3/kernel*
_output_shapes

:@*
dtype0
p
dense_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_3/bias
i
 dense_3/bias/Read/ReadVariableOpReadVariableOpdense_3/bias*
_output_shapes
:*
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
Ö
=bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@*N
shared_name?=bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/kernel
Ï
Qbidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/kernel/Read/ReadVariableOpReadVariableOp=bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/kernel*
_output_shapes

:@@*
dtype0
ê
Gbidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@*X
shared_nameIGbidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/recurrent_kernel
ã
[bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/recurrent_kernel/Read/ReadVariableOpReadVariableOpGbidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/recurrent_kernel*
_output_shapes

:@@*
dtype0
Î
;bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*L
shared_name=;bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/bias
Ç
Obidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/bias/Read/ReadVariableOpReadVariableOp;bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/bias*
_output_shapes
:@*
dtype0
Ø
>bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@*O
shared_name@>bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/kernel
Ñ
Rbidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/kernel/Read/ReadVariableOpReadVariableOp>bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/kernel*
_output_shapes

:@@*
dtype0
ì
Hbidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@*Y
shared_nameJHbidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/recurrent_kernel
å
\bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/recurrent_kernel/Read/ReadVariableOpReadVariableOpHbidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/recurrent_kernel*
_output_shapes

:@@*
dtype0
Ð
<bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*M
shared_name><bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/bias
É
Pbidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/bias/Read/ReadVariableOpReadVariableOp<bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/bias*
_output_shapes
:@*
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

Adam/embedding_1/embeddings/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	© @*.
shared_nameAdam/embedding_1/embeddings/m

1Adam/embedding_1/embeddings/m/Read/ReadVariableOpReadVariableOpAdam/embedding_1/embeddings/m*
_output_shapes
:	© @*
dtype0

Adam/dense_2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@*&
shared_nameAdam/dense_2/kernel/m

)Adam/dense_2/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_2/kernel/m*
_output_shapes
:	@*
dtype0
~
Adam/dense_2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*$
shared_nameAdam/dense_2/bias/m
w
'Adam/dense_2/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_2/bias/m*
_output_shapes
:@*
dtype0

Adam/dense_3/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*&
shared_nameAdam/dense_3/kernel/m

)Adam/dense_3/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_3/kernel/m*
_output_shapes

:@*
dtype0
~
Adam/dense_3/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_3/bias/m
w
'Adam/dense_3/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_3/bias/m*
_output_shapes
:*
dtype0
ä
DAdam/bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@*U
shared_nameFDAdam/bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/kernel/m
Ý
XAdam/bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/kernel/m/Read/ReadVariableOpReadVariableOpDAdam/bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/kernel/m*
_output_shapes

:@@*
dtype0
ø
NAdam/bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@*_
shared_namePNAdam/bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/recurrent_kernel/m
ñ
bAdam/bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/recurrent_kernel/m/Read/ReadVariableOpReadVariableOpNAdam/bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/recurrent_kernel/m*
_output_shapes

:@@*
dtype0
Ü
BAdam/bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*S
shared_nameDBAdam/bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/bias/m
Õ
VAdam/bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/bias/m/Read/ReadVariableOpReadVariableOpBAdam/bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/bias/m*
_output_shapes
:@*
dtype0
æ
EAdam/bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@*V
shared_nameGEAdam/bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/kernel/m
ß
YAdam/bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/kernel/m/Read/ReadVariableOpReadVariableOpEAdam/bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/kernel/m*
_output_shapes

:@@*
dtype0
ú
OAdam/bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@*`
shared_nameQOAdam/bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/recurrent_kernel/m
ó
cAdam/bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/recurrent_kernel/m/Read/ReadVariableOpReadVariableOpOAdam/bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/recurrent_kernel/m*
_output_shapes

:@@*
dtype0
Þ
CAdam/bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*T
shared_nameECAdam/bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/bias/m
×
WAdam/bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/bias/m/Read/ReadVariableOpReadVariableOpCAdam/bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/bias/m*
_output_shapes
:@*
dtype0

Adam/embedding_1/embeddings/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	© @*.
shared_nameAdam/embedding_1/embeddings/v

1Adam/embedding_1/embeddings/v/Read/ReadVariableOpReadVariableOpAdam/embedding_1/embeddings/v*
_output_shapes
:	© @*
dtype0

Adam/dense_2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@*&
shared_nameAdam/dense_2/kernel/v

)Adam/dense_2/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_2/kernel/v*
_output_shapes
:	@*
dtype0
~
Adam/dense_2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*$
shared_nameAdam/dense_2/bias/v
w
'Adam/dense_2/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_2/bias/v*
_output_shapes
:@*
dtype0

Adam/dense_3/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*&
shared_nameAdam/dense_3/kernel/v

)Adam/dense_3/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_3/kernel/v*
_output_shapes

:@*
dtype0
~
Adam/dense_3/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_3/bias/v
w
'Adam/dense_3/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_3/bias/v*
_output_shapes
:*
dtype0
ä
DAdam/bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@*U
shared_nameFDAdam/bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/kernel/v
Ý
XAdam/bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/kernel/v/Read/ReadVariableOpReadVariableOpDAdam/bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/kernel/v*
_output_shapes

:@@*
dtype0
ø
NAdam/bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@*_
shared_namePNAdam/bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/recurrent_kernel/v
ñ
bAdam/bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/recurrent_kernel/v/Read/ReadVariableOpReadVariableOpNAdam/bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/recurrent_kernel/v*
_output_shapes

:@@*
dtype0
Ü
BAdam/bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*S
shared_nameDBAdam/bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/bias/v
Õ
VAdam/bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/bias/v/Read/ReadVariableOpReadVariableOpBAdam/bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/bias/v*
_output_shapes
:@*
dtype0
æ
EAdam/bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@*V
shared_nameGEAdam/bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/kernel/v
ß
YAdam/bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/kernel/v/Read/ReadVariableOpReadVariableOpEAdam/bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/kernel/v*
_output_shapes

:@@*
dtype0
ú
OAdam/bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@*`
shared_nameQOAdam/bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/recurrent_kernel/v
ó
cAdam/bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/recurrent_kernel/v/Read/ReadVariableOpReadVariableOpOAdam/bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/recurrent_kernel/v*
_output_shapes

:@@*
dtype0
Þ
CAdam/bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*T
shared_nameECAdam/bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/bias/v
×
WAdam/bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/bias/v/Read/ReadVariableOpReadVariableOpCAdam/bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/bias/v*
_output_shapes
:@*
dtype0

NoOpNoOp
H
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*ÚG
valueÐGBÍG BÆG

layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
layer_with_weights-3
layer-3
	optimizer
	variables
trainable_variables
regularization_losses
		keras_api


signatures
b

embeddings
	variables
trainable_variables
regularization_losses
	keras_api
y
forward_layer
backward_layer
	variables
trainable_variables
regularization_losses
	keras_api
h

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
h

kernel
bias
	variables
trainable_variables
 regularization_losses
!	keras_api

"iter

#beta_1

$beta_2
	%decay
&learning_ratem{m|m}m~m'm(m)m*m+m,mvvvvv'v(v)v*v+v,v
N
0
'1
(2
)3
*4
+5
,6
7
8
9
10
N
0
'1
(2
)3
*4
+5
,6
7
8
9
10
 
­
-non_trainable_variables

.layers
/metrics
0layer_regularization_losses
1layer_metrics
	variables
trainable_variables
regularization_losses
 
fd
VARIABLE_VALUEembedding_1/embeddings:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUE

0

0
 
­
2non_trainable_variables

3layers
4metrics
5layer_regularization_losses
6layer_metrics
	variables
trainable_variables
regularization_losses
l
7cell
8
state_spec
9	variables
:trainable_variables
;regularization_losses
<	keras_api
l
=cell
>
state_spec
?	variables
@trainable_variables
Aregularization_losses
B	keras_api
*
'0
(1
)2
*3
+4
,5
*
'0
(1
)2
*3
+4
,5
 
­
Cnon_trainable_variables

Dlayers
Emetrics
Flayer_regularization_losses
Glayer_metrics
	variables
trainable_variables
regularization_losses
ZX
VARIABLE_VALUEdense_2/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_2/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
­
Hnon_trainable_variables

Ilayers
Jmetrics
Klayer_regularization_losses
Llayer_metrics
	variables
trainable_variables
regularization_losses
ZX
VARIABLE_VALUEdense_3/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_3/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
­
Mnon_trainable_variables

Nlayers
Ometrics
Player_regularization_losses
Qlayer_metrics
	variables
trainable_variables
 regularization_losses
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUE=bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUEGbidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/recurrent_kernel&variables/2/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUE;bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/bias&variables/3/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE>bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUEHbidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/recurrent_kernel&variables/5/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE<bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/bias&variables/6/.ATTRIBUTES/VARIABLE_VALUE
 

0
1
2
3

R0
S1
 
 
 
 
 
 
 
~

'kernel
(recurrent_kernel
)bias
T	variables
Utrainable_variables
Vregularization_losses
W	keras_api
 

'0
(1
)2

'0
(1
)2
 
¹

Xstates
Ynon_trainable_variables

Zlayers
[metrics
\layer_regularization_losses
]layer_metrics
9	variables
:trainable_variables
;regularization_losses
~

*kernel
+recurrent_kernel
,bias
^	variables
_trainable_variables
`regularization_losses
a	keras_api
 

*0
+1
,2

*0
+1
,2
 
¹

bstates
cnon_trainable_variables

dlayers
emetrics
flayer_regularization_losses
glayer_metrics
?	variables
@trainable_variables
Aregularization_losses
 

0
1
 
 
 
 
 
 
 
 
 
 
 
 
 
4
	htotal
	icount
j	variables
k	keras_api
D
	ltotal
	mcount
n
_fn_kwargs
o	variables
p	keras_api

'0
(1
)2

'0
(1
)2
 
­
qnon_trainable_variables

rlayers
smetrics
tlayer_regularization_losses
ulayer_metrics
T	variables
Utrainable_variables
Vregularization_losses
 
 

70
 
 
 

*0
+1
,2

*0
+1
,2
 
­
vnon_trainable_variables

wlayers
xmetrics
ylayer_regularization_losses
zlayer_metrics
^	variables
_trainable_variables
`regularization_losses
 
 

=0
 
 
 
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

h0
i1

j	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

l0
m1

o	variables
 
 
 
 
 
 
 
 
 
 

VARIABLE_VALUEAdam/embedding_1/embeddings/mVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_2/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_2/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_3/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_3/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUEDAdam/bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
§¤
VARIABLE_VALUENAdam/bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/recurrent_kernel/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUEBAdam/bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/bias/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUEEAdam/bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
¨¥
VARIABLE_VALUEOAdam/bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/recurrent_kernel/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUECAdam/bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/bias/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUEAdam/embedding_1/embeddings/vVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_2/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_2/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_3/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_3/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUEDAdam/bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
§¤
VARIABLE_VALUENAdam/bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/recurrent_kernel/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUEBAdam/bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/bias/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUEEAdam/bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
¨¥
VARIABLE_VALUEOAdam/bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/recurrent_kernel/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUECAdam/bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/bias/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

!serving_default_embedding_1_inputPlaceholder*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
dtype0*%
shape:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
²
StatefulPartitionedCallStatefulPartitionedCall!serving_default_embedding_1_inputembedding_1/embeddings=bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/kernel;bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/biasGbidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/recurrent_kernel>bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/kernel<bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/biasHbidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/recurrent_kerneldense_2/kerneldense_2/biasdense_3/kerneldense_3/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *,
f'R%
#__inference_signature_wrapper_68945
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
®
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename*embedding_1/embeddings/Read/ReadVariableOp"dense_2/kernel/Read/ReadVariableOp dense_2/bias/Read/ReadVariableOp"dense_3/kernel/Read/ReadVariableOp dense_3/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOpQbidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/kernel/Read/ReadVariableOp[bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/recurrent_kernel/Read/ReadVariableOpObidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/bias/Read/ReadVariableOpRbidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/kernel/Read/ReadVariableOp\bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/recurrent_kernel/Read/ReadVariableOpPbidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp1Adam/embedding_1/embeddings/m/Read/ReadVariableOp)Adam/dense_2/kernel/m/Read/ReadVariableOp'Adam/dense_2/bias/m/Read/ReadVariableOp)Adam/dense_3/kernel/m/Read/ReadVariableOp'Adam/dense_3/bias/m/Read/ReadVariableOpXAdam/bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/kernel/m/Read/ReadVariableOpbAdam/bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/recurrent_kernel/m/Read/ReadVariableOpVAdam/bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/bias/m/Read/ReadVariableOpYAdam/bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/kernel/m/Read/ReadVariableOpcAdam/bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/recurrent_kernel/m/Read/ReadVariableOpWAdam/bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/bias/m/Read/ReadVariableOp1Adam/embedding_1/embeddings/v/Read/ReadVariableOp)Adam/dense_2/kernel/v/Read/ReadVariableOp'Adam/dense_2/bias/v/Read/ReadVariableOp)Adam/dense_3/kernel/v/Read/ReadVariableOp'Adam/dense_3/bias/v/Read/ReadVariableOpXAdam/bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/kernel/v/Read/ReadVariableOpbAdam/bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/recurrent_kernel/v/Read/ReadVariableOpVAdam/bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/bias/v/Read/ReadVariableOpYAdam/bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/kernel/v/Read/ReadVariableOpcAdam/bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/recurrent_kernel/v/Read/ReadVariableOpWAdam/bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/bias/v/Read/ReadVariableOpConst*7
Tin0
.2,	*
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
GPU 2J 8 *'
f"R 
__inference__traced_save_71898
á
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameembedding_1/embeddingsdense_2/kerneldense_2/biasdense_3/kerneldense_3/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_rate=bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/kernelGbidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/recurrent_kernel;bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/bias>bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/kernelHbidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/recurrent_kernel<bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/biastotalcounttotal_1count_1Adam/embedding_1/embeddings/mAdam/dense_2/kernel/mAdam/dense_2/bias/mAdam/dense_3/kernel/mAdam/dense_3/bias/mDAdam/bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/kernel/mNAdam/bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/recurrent_kernel/mBAdam/bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/bias/mEAdam/bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/kernel/mOAdam/bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/recurrent_kernel/mCAdam/bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/bias/mAdam/embedding_1/embeddings/vAdam/dense_2/kernel/vAdam/dense_2/bias/vAdam/dense_3/kernel/vAdam/dense_3/bias/vDAdam/bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/kernel/vNAdam/bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/recurrent_kernel/vBAdam/bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/bias/vEAdam/bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/kernel/vOAdam/bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/recurrent_kernel/vCAdam/bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/bias/v*6
Tin/
-2+*
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
GPU 2J 8 **
f%R#
!__inference__traced_restore_72034åû1
®	

/__inference_bidirectional_1_layer_call_fn_69624
inputs_0
unknown:@@
	unknown_0:@
	unknown_1:@@
	unknown_2:@@
	unknown_3:@
	unknown_4:@@
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_bidirectional_1_layer_call_and_return_conditional_losses_68025p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:g c
=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
æ?
Ã
P__inference_backward_simple_rnn_1_layer_call_and_return_conditional_losses_67864

inputsB
0simple_rnn_cell_5_matmul_readvariableop_resource:@@?
1simple_rnn_cell_5_biasadd_readvariableop_resource:@D
2simple_rnn_cell_5_matmul_1_readvariableop_resource:@@
identity¢(simple_rnn_cell_5/BiasAdd/ReadVariableOp¢'simple_rnn_cell_5/MatMul/ReadVariableOp¢)simple_rnn_cell_5/MatMul_1/ReadVariableOp¢while;
ShapeShapeinputs*
T0*
_output_shapes
:]
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
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
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
:ÿÿÿÿÿÿÿÿÿ@c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
	transpose	Transposeinputstranspose/perm:output:0*
T0*=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
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
valueB:Û
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒX
ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: 
	ReverseV2	ReverseV2transpose:y:0ReverseV2/axis:output:0*
T0*=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÿÿÿÿå
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensorReverseV2:output:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ò
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask
'simple_rnn_cell_5/MatMul/ReadVariableOpReadVariableOp0simple_rnn_cell_5_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype0
simple_rnn_cell_5/MatMulMatMulstrided_slice_2:output:0/simple_rnn_cell_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
(simple_rnn_cell_5/BiasAdd/ReadVariableOpReadVariableOp1simple_rnn_cell_5_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0¬
simple_rnn_cell_5/BiasAddBiasAdd"simple_rnn_cell_5/MatMul:product:00simple_rnn_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
)simple_rnn_cell_5/MatMul_1/ReadVariableOpReadVariableOp2simple_rnn_cell_5_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype0
simple_rnn_cell_5/MatMul_1MatMulzeros:output:01simple_rnn_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
simple_rnn_cell_5/addAddV2"simple_rnn_cell_5/BiasAdd:output:0$simple_rnn_cell_5/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@k
simple_rnn_cell_5/TanhTanhsimple_rnn_cell_5/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ö
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:00simple_rnn_cell_5_matmul_readvariableop_resource1simple_rnn_cell_5_biasadd_readvariableop_resource2simple_rnn_cell_5_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ@: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_67798*
condR
while_cond_67797*8
output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ@: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   Ë
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Ï
NoOpNoOp)^simple_rnn_cell_5/BiasAdd/ReadVariableOp(^simple_rnn_cell_5/MatMul/ReadVariableOp*^simple_rnn_cell_5/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2T
(simple_rnn_cell_5/BiasAdd/ReadVariableOp(simple_rnn_cell_5/BiasAdd/ReadVariableOp2R
'simple_rnn_cell_5/MatMul/ReadVariableOp'simple_rnn_cell_5/MatMul/ReadVariableOp2V
)simple_rnn_cell_5/MatMul_1/ReadVariableOp)simple_rnn_cell_5/MatMul_1/ReadVariableOp2
whilewhile:e a
=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ª
Ö
G__inference_sequential_1_layer_call_and_return_conditional_losses_69573

inputs5
"embedding_1_embedding_lookup_69290:	© @g
Ubidirectional_1_forward_simple_rnn_1_simple_rnn_cell_4_matmul_readvariableop_resource:@@d
Vbidirectional_1_forward_simple_rnn_1_simple_rnn_cell_4_biasadd_readvariableop_resource:@i
Wbidirectional_1_forward_simple_rnn_1_simple_rnn_cell_4_matmul_1_readvariableop_resource:@@h
Vbidirectional_1_backward_simple_rnn_1_simple_rnn_cell_5_matmul_readvariableop_resource:@@e
Wbidirectional_1_backward_simple_rnn_1_simple_rnn_cell_5_biasadd_readvariableop_resource:@j
Xbidirectional_1_backward_simple_rnn_1_simple_rnn_cell_5_matmul_1_readvariableop_resource:@@9
&dense_2_matmul_readvariableop_resource:	@5
'dense_2_biasadd_readvariableop_resource:@8
&dense_3_matmul_readvariableop_resource:@5
'dense_3_biasadd_readvariableop_resource:
identity¢Nbidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/BiasAdd/ReadVariableOp¢Mbidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/MatMul/ReadVariableOp¢Obidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/MatMul_1/ReadVariableOp¢+bidirectional_1/backward_simple_rnn_1/while¢Mbidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/BiasAdd/ReadVariableOp¢Lbidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/MatMul/ReadVariableOp¢Nbidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/MatMul_1/ReadVariableOp¢*bidirectional_1/forward_simple_rnn_1/while¢dense_2/BiasAdd/ReadVariableOp¢dense_2/MatMul/ReadVariableOp¢dense_3/BiasAdd/ReadVariableOp¢dense_3/MatMul/ReadVariableOp¢embedding_1/embedding_lookupj
embedding_1/CastCastinputs*

DstT0*

SrcT0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿò
embedding_1/embedding_lookupResourceGather"embedding_1_embedding_lookup_69290embedding_1/Cast:y:0*
Tindices0*5
_class+
)'loc:@embedding_1/embedding_lookup/69290*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*
dtype0Î
%embedding_1/embedding_lookup/IdentityIdentity%embedding_1/embedding_lookup:output:0*
T0*5
_class+
)'loc:@embedding_1/embedding_lookup/69290*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@¢
'embedding_1/embedding_lookup/Identity_1Identity.embedding_1/embedding_lookup/Identity:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@[
embedding_1/NotEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
embedding_1/NotEqualNotEqualinputsembedding_1/NotEqual/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
*bidirectional_1/forward_simple_rnn_1/ShapeShape0embedding_1/embedding_lookup/Identity_1:output:0*
T0*
_output_shapes
:
8bidirectional_1/forward_simple_rnn_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
:bidirectional_1/forward_simple_rnn_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
:bidirectional_1/forward_simple_rnn_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
2bidirectional_1/forward_simple_rnn_1/strided_sliceStridedSlice3bidirectional_1/forward_simple_rnn_1/Shape:output:0Abidirectional_1/forward_simple_rnn_1/strided_slice/stack:output:0Cbidirectional_1/forward_simple_rnn_1/strided_slice/stack_1:output:0Cbidirectional_1/forward_simple_rnn_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masku
3bidirectional_1/forward_simple_rnn_1/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@â
1bidirectional_1/forward_simple_rnn_1/zeros/packedPack;bidirectional_1/forward_simple_rnn_1/strided_slice:output:0<bidirectional_1/forward_simple_rnn_1/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:u
0bidirectional_1/forward_simple_rnn_1/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Û
*bidirectional_1/forward_simple_rnn_1/zerosFill:bidirectional_1/forward_simple_rnn_1/zeros/packed:output:09bidirectional_1/forward_simple_rnn_1/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
3bidirectional_1/forward_simple_rnn_1/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ê
.bidirectional_1/forward_simple_rnn_1/transpose	Transpose0embedding_1/embedding_lookup/Identity_1:output:0<bidirectional_1/forward_simple_rnn_1/transpose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
,bidirectional_1/forward_simple_rnn_1/Shape_1Shape2bidirectional_1/forward_simple_rnn_1/transpose:y:0*
T0*
_output_shapes
:
:bidirectional_1/forward_simple_rnn_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 
<bidirectional_1/forward_simple_rnn_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
<bidirectional_1/forward_simple_rnn_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
4bidirectional_1/forward_simple_rnn_1/strided_slice_1StridedSlice5bidirectional_1/forward_simple_rnn_1/Shape_1:output:0Cbidirectional_1/forward_simple_rnn_1/strided_slice_1/stack:output:0Ebidirectional_1/forward_simple_rnn_1/strided_slice_1/stack_1:output:0Ebidirectional_1/forward_simple_rnn_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3bidirectional_1/forward_simple_rnn_1/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿÔ
/bidirectional_1/forward_simple_rnn_1/ExpandDims
ExpandDimsembedding_1/NotEqual:z:0<bidirectional_1/forward_simple_rnn_1/ExpandDims/dim:output:0*
T0
*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
5bidirectional_1/forward_simple_rnn_1/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ö
0bidirectional_1/forward_simple_rnn_1/transpose_1	Transpose8bidirectional_1/forward_simple_rnn_1/ExpandDims:output:0>bidirectional_1/forward_simple_rnn_1/transpose_1/perm:output:0*
T0
*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
@bidirectional_1/forward_simple_rnn_1/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ£
2bidirectional_1/forward_simple_rnn_1/TensorArrayV2TensorListReserveIbidirectional_1/forward_simple_rnn_1/TensorArrayV2/element_shape:output:0=bidirectional_1/forward_simple_rnn_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ«
Zbidirectional_1/forward_simple_rnn_1/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   Ï
Lbidirectional_1/forward_simple_rnn_1/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor2bidirectional_1/forward_simple_rnn_1/transpose:y:0cbidirectional_1/forward_simple_rnn_1/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
:bidirectional_1/forward_simple_rnn_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 
<bidirectional_1/forward_simple_rnn_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
<bidirectional_1/forward_simple_rnn_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¢
4bidirectional_1/forward_simple_rnn_1/strided_slice_2StridedSlice2bidirectional_1/forward_simple_rnn_1/transpose:y:0Cbidirectional_1/forward_simple_rnn_1/strided_slice_2/stack:output:0Ebidirectional_1/forward_simple_rnn_1/strided_slice_2/stack_1:output:0Ebidirectional_1/forward_simple_rnn_1/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_maskâ
Lbidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/MatMul/ReadVariableOpReadVariableOpUbidirectional_1_forward_simple_rnn_1_simple_rnn_cell_4_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype0
=bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/MatMulMatMul=bidirectional_1/forward_simple_rnn_1/strided_slice_2:output:0Tbidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@à
Mbidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/BiasAdd/ReadVariableOpReadVariableOpVbidirectional_1_forward_simple_rnn_1_simple_rnn_cell_4_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
>bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/BiasAddBiasAddGbidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/MatMul:product:0Ubidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@æ
Nbidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/MatMul_1/ReadVariableOpReadVariableOpWbidirectional_1_forward_simple_rnn_1_simple_rnn_cell_4_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype0
?bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/MatMul_1MatMul3bidirectional_1/forward_simple_rnn_1/zeros:output:0Vbidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
:bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/addAddV2Gbidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/BiasAdd:output:0Ibidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@µ
;bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/TanhTanh>bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
Bbidirectional_1/forward_simple_rnn_1/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   §
4bidirectional_1/forward_simple_rnn_1/TensorArrayV2_1TensorListReserveKbidirectional_1/forward_simple_rnn_1/TensorArrayV2_1/element_shape:output:0=bidirectional_1/forward_simple_rnn_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒk
)bidirectional_1/forward_simple_rnn_1/timeConst*
_output_shapes
: *
dtype0*
value	B : 
Bbidirectional_1/forward_simple_rnn_1/TensorArrayV2_2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ§
4bidirectional_1/forward_simple_rnn_1/TensorArrayV2_2TensorListReserveKbidirectional_1/forward_simple_rnn_1/TensorArrayV2_2/element_shape:output:0=bidirectional_1/forward_simple_rnn_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0
*

shape_type0:éèÈ­
\bidirectional_1/forward_simple_rnn_1/TensorArrayUnstack_1/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   Õ
Nbidirectional_1/forward_simple_rnn_1/TensorArrayUnstack_1/TensorListFromTensorTensorListFromTensor4bidirectional_1/forward_simple_rnn_1/transpose_1:y:0ebidirectional_1/forward_simple_rnn_1/TensorArrayUnstack_1/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0
*

shape_type0:éèÈ¯
/bidirectional_1/forward_simple_rnn_1/zeros_like	ZerosLike?bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
=bidirectional_1/forward_simple_rnn_1/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿy
7bidirectional_1/forward_simple_rnn_1/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ø

*bidirectional_1/forward_simple_rnn_1/whileWhile@bidirectional_1/forward_simple_rnn_1/while/loop_counter:output:0Fbidirectional_1/forward_simple_rnn_1/while/maximum_iterations:output:02bidirectional_1/forward_simple_rnn_1/time:output:0=bidirectional_1/forward_simple_rnn_1/TensorArrayV2_1:handle:03bidirectional_1/forward_simple_rnn_1/zeros_like:y:03bidirectional_1/forward_simple_rnn_1/zeros:output:0=bidirectional_1/forward_simple_rnn_1/strided_slice_1:output:0\bidirectional_1/forward_simple_rnn_1/TensorArrayUnstack/TensorListFromTensor:output_handle:0^bidirectional_1/forward_simple_rnn_1/TensorArrayUnstack_1/TensorListFromTensor:output_handle:0Ubidirectional_1_forward_simple_rnn_1_simple_rnn_cell_4_matmul_readvariableop_resourceVbidirectional_1_forward_simple_rnn_1_simple_rnn_cell_4_biasadd_readvariableop_resourceWbidirectional_1_forward_simple_rnn_1_simple_rnn_cell_4_matmul_1_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *A
body9R7
5bidirectional_1_forward_simple_rnn_1_while_body_69345*A
cond9R7
5bidirectional_1_forward_simple_rnn_1_while_cond_69344*M
output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : : *
parallel_iterations ¦
Ubidirectional_1/forward_simple_rnn_1/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   º
Gbidirectional_1/forward_simple_rnn_1/TensorArrayV2Stack/TensorListStackTensorListStack3bidirectional_1/forward_simple_rnn_1/while:output:3^bidirectional_1/forward_simple_rnn_1/TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*
element_dtype0
:bidirectional_1/forward_simple_rnn_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ
<bidirectional_1/forward_simple_rnn_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 
<bidirectional_1/forward_simple_rnn_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:À
4bidirectional_1/forward_simple_rnn_1/strided_slice_3StridedSlicePbidirectional_1/forward_simple_rnn_1/TensorArrayV2Stack/TensorListStack:tensor:0Cbidirectional_1/forward_simple_rnn_1/strided_slice_3/stack:output:0Ebidirectional_1/forward_simple_rnn_1/strided_slice_3/stack_1:output:0Ebidirectional_1/forward_simple_rnn_1/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_mask
5bidirectional_1/forward_simple_rnn_1/transpose_2/permConst*
_output_shapes
:*
dtype0*!
valueB"          
0bidirectional_1/forward_simple_rnn_1/transpose_2	TransposePbidirectional_1/forward_simple_rnn_1/TensorArrayV2Stack/TensorListStack:tensor:0>bidirectional_1/forward_simple_rnn_1/transpose_2/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
+bidirectional_1/backward_simple_rnn_1/ShapeShape0embedding_1/embedding_lookup/Identity_1:output:0*
T0*
_output_shapes
:
9bidirectional_1/backward_simple_rnn_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
;bidirectional_1/backward_simple_rnn_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
;bidirectional_1/backward_simple_rnn_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
3bidirectional_1/backward_simple_rnn_1/strided_sliceStridedSlice4bidirectional_1/backward_simple_rnn_1/Shape:output:0Bbidirectional_1/backward_simple_rnn_1/strided_slice/stack:output:0Dbidirectional_1/backward_simple_rnn_1/strided_slice/stack_1:output:0Dbidirectional_1/backward_simple_rnn_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskv
4bidirectional_1/backward_simple_rnn_1/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@å
2bidirectional_1/backward_simple_rnn_1/zeros/packedPack<bidirectional_1/backward_simple_rnn_1/strided_slice:output:0=bidirectional_1/backward_simple_rnn_1/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:v
1bidirectional_1/backward_simple_rnn_1/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Þ
+bidirectional_1/backward_simple_rnn_1/zerosFill;bidirectional_1/backward_simple_rnn_1/zeros/packed:output:0:bidirectional_1/backward_simple_rnn_1/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
4bidirectional_1/backward_simple_rnn_1/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ì
/bidirectional_1/backward_simple_rnn_1/transpose	Transpose0embedding_1/embedding_lookup/Identity_1:output:0=bidirectional_1/backward_simple_rnn_1/transpose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
-bidirectional_1/backward_simple_rnn_1/Shape_1Shape3bidirectional_1/backward_simple_rnn_1/transpose:y:0*
T0*
_output_shapes
:
;bidirectional_1/backward_simple_rnn_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 
=bidirectional_1/backward_simple_rnn_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
=bidirectional_1/backward_simple_rnn_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
5bidirectional_1/backward_simple_rnn_1/strided_slice_1StridedSlice6bidirectional_1/backward_simple_rnn_1/Shape_1:output:0Dbidirectional_1/backward_simple_rnn_1/strided_slice_1/stack:output:0Fbidirectional_1/backward_simple_rnn_1/strided_slice_1/stack_1:output:0Fbidirectional_1/backward_simple_rnn_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
4bidirectional_1/backward_simple_rnn_1/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿÖ
0bidirectional_1/backward_simple_rnn_1/ExpandDims
ExpandDimsembedding_1/NotEqual:z:0=bidirectional_1/backward_simple_rnn_1/ExpandDims/dim:output:0*
T0
*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
6bidirectional_1/backward_simple_rnn_1/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ù
1bidirectional_1/backward_simple_rnn_1/transpose_1	Transpose9bidirectional_1/backward_simple_rnn_1/ExpandDims:output:0?bidirectional_1/backward_simple_rnn_1/transpose_1/perm:output:0*
T0
*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
Abidirectional_1/backward_simple_rnn_1/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ¦
3bidirectional_1/backward_simple_rnn_1/TensorArrayV2TensorListReserveJbidirectional_1/backward_simple_rnn_1/TensorArrayV2/element_shape:output:0>bidirectional_1/backward_simple_rnn_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ~
4bidirectional_1/backward_simple_rnn_1/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: ï
/bidirectional_1/backward_simple_rnn_1/ReverseV2	ReverseV23bidirectional_1/backward_simple_rnn_1/transpose:y:0=bidirectional_1/backward_simple_rnn_1/ReverseV2/axis:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@¬
[bidirectional_1/backward_simple_rnn_1/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   ×
Mbidirectional_1/backward_simple_rnn_1/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor8bidirectional_1/backward_simple_rnn_1/ReverseV2:output:0dbidirectional_1/backward_simple_rnn_1/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
;bidirectional_1/backward_simple_rnn_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 
=bidirectional_1/backward_simple_rnn_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
=bidirectional_1/backward_simple_rnn_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:§
5bidirectional_1/backward_simple_rnn_1/strided_slice_2StridedSlice3bidirectional_1/backward_simple_rnn_1/transpose:y:0Dbidirectional_1/backward_simple_rnn_1/strided_slice_2/stack:output:0Fbidirectional_1/backward_simple_rnn_1/strided_slice_2/stack_1:output:0Fbidirectional_1/backward_simple_rnn_1/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_maskä
Mbidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/MatMul/ReadVariableOpReadVariableOpVbidirectional_1_backward_simple_rnn_1_simple_rnn_cell_5_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype0
>bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/MatMulMatMul>bidirectional_1/backward_simple_rnn_1/strided_slice_2:output:0Ubidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@â
Nbidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/BiasAdd/ReadVariableOpReadVariableOpWbidirectional_1_backward_simple_rnn_1_simple_rnn_cell_5_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
?bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/BiasAddBiasAddHbidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/MatMul:product:0Vbidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@è
Obidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/MatMul_1/ReadVariableOpReadVariableOpXbidirectional_1_backward_simple_rnn_1_simple_rnn_cell_5_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype0
@bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/MatMul_1MatMul4bidirectional_1/backward_simple_rnn_1/zeros:output:0Wbidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
;bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/addAddV2Hbidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/BiasAdd:output:0Jbidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@·
<bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/TanhTanh?bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
Cbidirectional_1/backward_simple_rnn_1/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   ª
5bidirectional_1/backward_simple_rnn_1/TensorArrayV2_1TensorListReserveLbidirectional_1/backward_simple_rnn_1/TensorArrayV2_1/element_shape:output:0>bidirectional_1/backward_simple_rnn_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒl
*bidirectional_1/backward_simple_rnn_1/timeConst*
_output_shapes
: *
dtype0*
value	B : 
6bidirectional_1/backward_simple_rnn_1/ReverseV2_1/axisConst*
_output_shapes
:*
dtype0*
valueB: õ
1bidirectional_1/backward_simple_rnn_1/ReverseV2_1	ReverseV25bidirectional_1/backward_simple_rnn_1/transpose_1:y:0?bidirectional_1/backward_simple_rnn_1/ReverseV2_1/axis:output:0*
T0
*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
Cbidirectional_1/backward_simple_rnn_1/TensorArrayV2_2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿª
5bidirectional_1/backward_simple_rnn_1/TensorArrayV2_2TensorListReserveLbidirectional_1/backward_simple_rnn_1/TensorArrayV2_2/element_shape:output:0>bidirectional_1/backward_simple_rnn_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0
*

shape_type0:éèÈ®
]bidirectional_1/backward_simple_rnn_1/TensorArrayUnstack_1/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   Ý
Obidirectional_1/backward_simple_rnn_1/TensorArrayUnstack_1/TensorListFromTensorTensorListFromTensor:bidirectional_1/backward_simple_rnn_1/ReverseV2_1:output:0fbidirectional_1/backward_simple_rnn_1/TensorArrayUnstack_1/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0
*

shape_type0:éèÈ±
0bidirectional_1/backward_simple_rnn_1/zeros_like	ZerosLike@bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
>bidirectional_1/backward_simple_rnn_1/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿz
8bidirectional_1/backward_simple_rnn_1/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
+bidirectional_1/backward_simple_rnn_1/whileWhileAbidirectional_1/backward_simple_rnn_1/while/loop_counter:output:0Gbidirectional_1/backward_simple_rnn_1/while/maximum_iterations:output:03bidirectional_1/backward_simple_rnn_1/time:output:0>bidirectional_1/backward_simple_rnn_1/TensorArrayV2_1:handle:04bidirectional_1/backward_simple_rnn_1/zeros_like:y:04bidirectional_1/backward_simple_rnn_1/zeros:output:0>bidirectional_1/backward_simple_rnn_1/strided_slice_1:output:0]bidirectional_1/backward_simple_rnn_1/TensorArrayUnstack/TensorListFromTensor:output_handle:0_bidirectional_1/backward_simple_rnn_1/TensorArrayUnstack_1/TensorListFromTensor:output_handle:0Vbidirectional_1_backward_simple_rnn_1_simple_rnn_cell_5_matmul_readvariableop_resourceWbidirectional_1_backward_simple_rnn_1_simple_rnn_cell_5_biasadd_readvariableop_resourceXbidirectional_1_backward_simple_rnn_1_simple_rnn_cell_5_matmul_1_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *B
body:R8
6bidirectional_1_backward_simple_rnn_1_while_body_69477*B
cond:R8
6bidirectional_1_backward_simple_rnn_1_while_cond_69476*M
output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : : *
parallel_iterations §
Vbidirectional_1/backward_simple_rnn_1/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   ½
Hbidirectional_1/backward_simple_rnn_1/TensorArrayV2Stack/TensorListStackTensorListStack4bidirectional_1/backward_simple_rnn_1/while:output:3_bidirectional_1/backward_simple_rnn_1/TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*
element_dtype0
;bidirectional_1/backward_simple_rnn_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ
=bidirectional_1/backward_simple_rnn_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 
=bidirectional_1/backward_simple_rnn_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Å
5bidirectional_1/backward_simple_rnn_1/strided_slice_3StridedSliceQbidirectional_1/backward_simple_rnn_1/TensorArrayV2Stack/TensorListStack:tensor:0Dbidirectional_1/backward_simple_rnn_1/strided_slice_3/stack:output:0Fbidirectional_1/backward_simple_rnn_1/strided_slice_3/stack_1:output:0Fbidirectional_1/backward_simple_rnn_1/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_mask
6bidirectional_1/backward_simple_rnn_1/transpose_2/permConst*
_output_shapes
:*
dtype0*!
valueB"          
1bidirectional_1/backward_simple_rnn_1/transpose_2	TransposeQbidirectional_1/backward_simple_rnn_1/TensorArrayV2Stack/TensorListStack:tensor:0?bidirectional_1/backward_simple_rnn_1/transpose_2/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@]
bidirectional_1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :
bidirectional_1/concatConcatV2=bidirectional_1/forward_simple_rnn_1/strided_slice_3:output:0>bidirectional_1/backward_simple_rnn_1/strided_slice_3:output:0$bidirectional_1/concat/axis:output:0*
N*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes
:	@*
dtype0
dense_2/MatMulMatMulbidirectional_1/concat:output:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@`
dense_2/ReluReludense_2/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
dense_3/MatMul/ReadVariableOpReadVariableOp&dense_3_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0
dense_3/MatMulMatMuldense_2/Relu:activations:0%dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_3/BiasAddBiasAdddense_3/MatMul:product:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿg
IdentityIdentitydense_3/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¥
NoOpNoOpO^bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/BiasAdd/ReadVariableOpN^bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/MatMul/ReadVariableOpP^bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/MatMul_1/ReadVariableOp,^bidirectional_1/backward_simple_rnn_1/whileN^bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/BiasAdd/ReadVariableOpM^bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/MatMul/ReadVariableOpO^bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/MatMul_1/ReadVariableOp+^bidirectional_1/forward_simple_rnn_1/while^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp^embedding_1/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : 2 
Nbidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/BiasAdd/ReadVariableOpNbidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/BiasAdd/ReadVariableOp2
Mbidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/MatMul/ReadVariableOpMbidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/MatMul/ReadVariableOp2¢
Obidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/MatMul_1/ReadVariableOpObidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/MatMul_1/ReadVariableOp2Z
+bidirectional_1/backward_simple_rnn_1/while+bidirectional_1/backward_simple_rnn_1/while2
Mbidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/BiasAdd/ReadVariableOpMbidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/BiasAdd/ReadVariableOp2
Lbidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/MatMul/ReadVariableOpLbidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/MatMul/ReadVariableOp2 
Nbidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/MatMul_1/ReadVariableOpNbidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/MatMul_1/ReadVariableOp2X
*bidirectional_1/forward_simple_rnn_1/while*bidirectional_1/forward_simple_rnn_1/while2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2>
dense_3/MatMul/ReadVariableOpdense_3/MatMul/ReadVariableOp2<
embedding_1/embedding_lookupembedding_1/embedding_lookup:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
4

O__inference_forward_simple_rnn_1_layer_call_and_return_conditional_losses_67020

inputs)
simple_rnn_cell_4_66945:@@%
simple_rnn_cell_4_66947:@)
simple_rnn_cell_4_66949:@@
identity¢)simple_rnn_cell_4/StatefulPartitionedCall¢while;
ShapeShapeinputs*
T0*
_output_shapes
:]
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
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
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
:ÿÿÿÿÿÿÿÿÿ@c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
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
valueB:Û
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_maskã
)simple_rnn_cell_4/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0simple_rnn_cell_4_66945simple_rnn_cell_4_66947simple_rnn_cell_4_66949*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_simple_rnn_cell_4_layer_call_and_return_conditional_losses_66944n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0simple_rnn_cell_4_66945simple_rnn_cell_4_66947simple_rnn_cell_4_66949*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ@: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_66957*
condR
while_cond_66956*8
output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ@: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   Ë
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@z
NoOpNoOp*^simple_rnn_cell_4/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@: : : 2V
)simple_rnn_cell_4/StatefulPartitionedCall)simple_rnn_cell_4/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
@
¾
%forward_simple_rnn_1_while_body_69702F
Bforward_simple_rnn_1_while_forward_simple_rnn_1_while_loop_counterL
Hforward_simple_rnn_1_while_forward_simple_rnn_1_while_maximum_iterations*
&forward_simple_rnn_1_while_placeholder,
(forward_simple_rnn_1_while_placeholder_1,
(forward_simple_rnn_1_while_placeholder_2E
Aforward_simple_rnn_1_while_forward_simple_rnn_1_strided_slice_1_0
}forward_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_forward_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor_0_
Mforward_simple_rnn_1_while_simple_rnn_cell_4_matmul_readvariableop_resource_0:@@\
Nforward_simple_rnn_1_while_simple_rnn_cell_4_biasadd_readvariableop_resource_0:@a
Oforward_simple_rnn_1_while_simple_rnn_cell_4_matmul_1_readvariableop_resource_0:@@'
#forward_simple_rnn_1_while_identity)
%forward_simple_rnn_1_while_identity_1)
%forward_simple_rnn_1_while_identity_2)
%forward_simple_rnn_1_while_identity_3)
%forward_simple_rnn_1_while_identity_4C
?forward_simple_rnn_1_while_forward_simple_rnn_1_strided_slice_1
{forward_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_forward_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor]
Kforward_simple_rnn_1_while_simple_rnn_cell_4_matmul_readvariableop_resource:@@Z
Lforward_simple_rnn_1_while_simple_rnn_cell_4_biasadd_readvariableop_resource:@_
Mforward_simple_rnn_1_while_simple_rnn_cell_4_matmul_1_readvariableop_resource:@@¢Cforward_simple_rnn_1/while/simple_rnn_cell_4/BiasAdd/ReadVariableOp¢Bforward_simple_rnn_1/while/simple_rnn_cell_4/MatMul/ReadVariableOp¢Dforward_simple_rnn_1/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp
Lforward_simple_rnn_1/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÿÿÿÿ
>forward_simple_rnn_1/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem}forward_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_forward_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor_0&forward_simple_rnn_1_while_placeholderUforward_simple_rnn_1/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
element_dtype0Ð
Bforward_simple_rnn_1/while/simple_rnn_cell_4/MatMul/ReadVariableOpReadVariableOpMforward_simple_rnn_1_while_simple_rnn_cell_4_matmul_readvariableop_resource_0*
_output_shapes

:@@*
dtype0
3forward_simple_rnn_1/while/simple_rnn_cell_4/MatMulMatMulEforward_simple_rnn_1/while/TensorArrayV2Read/TensorListGetItem:item:0Jforward_simple_rnn_1/while/simple_rnn_cell_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Î
Cforward_simple_rnn_1/while/simple_rnn_cell_4/BiasAdd/ReadVariableOpReadVariableOpNforward_simple_rnn_1_while_simple_rnn_cell_4_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype0ý
4forward_simple_rnn_1/while/simple_rnn_cell_4/BiasAddBiasAdd=forward_simple_rnn_1/while/simple_rnn_cell_4/MatMul:product:0Kforward_simple_rnn_1/while/simple_rnn_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Ô
Dforward_simple_rnn_1/while/simple_rnn_cell_4/MatMul_1/ReadVariableOpReadVariableOpOforward_simple_rnn_1_while_simple_rnn_cell_4_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype0é
5forward_simple_rnn_1/while/simple_rnn_cell_4/MatMul_1MatMul(forward_simple_rnn_1_while_placeholder_2Lforward_simple_rnn_1/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@ë
0forward_simple_rnn_1/while/simple_rnn_cell_4/addAddV2=forward_simple_rnn_1/while/simple_rnn_cell_4/BiasAdd:output:0?forward_simple_rnn_1/while/simple_rnn_cell_4/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¡
1forward_simple_rnn_1/while/simple_rnn_cell_4/TanhTanh4forward_simple_rnn_1/while/simple_rnn_cell_4/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
?forward_simple_rnn_1/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem(forward_simple_rnn_1_while_placeholder_1&forward_simple_rnn_1_while_placeholder5forward_simple_rnn_1/while/simple_rnn_cell_4/Tanh:y:0*
_output_shapes
: *
element_dtype0:éèÒb
 forward_simple_rnn_1/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :
forward_simple_rnn_1/while/addAddV2&forward_simple_rnn_1_while_placeholder)forward_simple_rnn_1/while/add/y:output:0*
T0*
_output_shapes
: d
"forward_simple_rnn_1/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :»
 forward_simple_rnn_1/while/add_1AddV2Bforward_simple_rnn_1_while_forward_simple_rnn_1_while_loop_counter+forward_simple_rnn_1/while/add_1/y:output:0*
T0*
_output_shapes
: 
#forward_simple_rnn_1/while/IdentityIdentity$forward_simple_rnn_1/while/add_1:z:0 ^forward_simple_rnn_1/while/NoOp*
T0*
_output_shapes
: ¾
%forward_simple_rnn_1/while/Identity_1IdentityHforward_simple_rnn_1_while_forward_simple_rnn_1_while_maximum_iterations ^forward_simple_rnn_1/while/NoOp*
T0*
_output_shapes
: 
%forward_simple_rnn_1/while/Identity_2Identity"forward_simple_rnn_1/while/add:z:0 ^forward_simple_rnn_1/while/NoOp*
T0*
_output_shapes
: Å
%forward_simple_rnn_1/while/Identity_3IdentityOforward_simple_rnn_1/while/TensorArrayV2Write/TensorListSetItem:output_handle:0 ^forward_simple_rnn_1/while/NoOp*
T0*
_output_shapes
: ¼
%forward_simple_rnn_1/while/Identity_4Identity5forward_simple_rnn_1/while/simple_rnn_cell_4/Tanh:y:0 ^forward_simple_rnn_1/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@³
forward_simple_rnn_1/while/NoOpNoOpD^forward_simple_rnn_1/while/simple_rnn_cell_4/BiasAdd/ReadVariableOpC^forward_simple_rnn_1/while/simple_rnn_cell_4/MatMul/ReadVariableOpE^forward_simple_rnn_1/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
?forward_simple_rnn_1_while_forward_simple_rnn_1_strided_slice_1Aforward_simple_rnn_1_while_forward_simple_rnn_1_strided_slice_1_0"S
#forward_simple_rnn_1_while_identity,forward_simple_rnn_1/while/Identity:output:0"W
%forward_simple_rnn_1_while_identity_1.forward_simple_rnn_1/while/Identity_1:output:0"W
%forward_simple_rnn_1_while_identity_2.forward_simple_rnn_1/while/Identity_2:output:0"W
%forward_simple_rnn_1_while_identity_3.forward_simple_rnn_1/while/Identity_3:output:0"W
%forward_simple_rnn_1_while_identity_4.forward_simple_rnn_1/while/Identity_4:output:0"
Lforward_simple_rnn_1_while_simple_rnn_cell_4_biasadd_readvariableop_resourceNforward_simple_rnn_1_while_simple_rnn_cell_4_biasadd_readvariableop_resource_0" 
Mforward_simple_rnn_1_while_simple_rnn_cell_4_matmul_1_readvariableop_resourceOforward_simple_rnn_1_while_simple_rnn_cell_4_matmul_1_readvariableop_resource_0"
Kforward_simple_rnn_1_while_simple_rnn_cell_4_matmul_readvariableop_resourceMforward_simple_rnn_1_while_simple_rnn_cell_4_matmul_readvariableop_resource_0"ü
{forward_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_forward_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor}forward_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_forward_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ@: : : : : 2
Cforward_simple_rnn_1/while/simple_rnn_cell_4/BiasAdd/ReadVariableOpCforward_simple_rnn_1/while/simple_rnn_cell_4/BiasAdd/ReadVariableOp2
Bforward_simple_rnn_1/while/simple_rnn_cell_4/MatMul/ReadVariableOpBforward_simple_rnn_1/while/simple_rnn_cell_4/MatMul/ReadVariableOp2
Dforward_simple_rnn_1/while/simple_rnn_cell_4/MatMul_1/ReadVariableOpDforward_simple_rnn_1/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
: 
©,
Ç
while_body_71339
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0J
8while_simple_rnn_cell_5_matmul_readvariableop_resource_0:@@G
9while_simple_rnn_cell_5_biasadd_readvariableop_resource_0:@L
:while_simple_rnn_cell_5_matmul_1_readvariableop_resource_0:@@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorH
6while_simple_rnn_cell_5_matmul_readvariableop_resource:@@E
7while_simple_rnn_cell_5_biasadd_readvariableop_resource:@J
8while_simple_rnn_cell_5_matmul_1_readvariableop_resource:@@¢.while/simple_rnn_cell_5/BiasAdd/ReadVariableOp¢-while/simple_rnn_cell_5/MatMul/ReadVariableOp¢/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
element_dtype0¦
-while/simple_rnn_cell_5/MatMul/ReadVariableOpReadVariableOp8while_simple_rnn_cell_5_matmul_readvariableop_resource_0*
_output_shapes

:@@*
dtype0Ã
while/simple_rnn_cell_5/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:05while/simple_rnn_cell_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¤
.while/simple_rnn_cell_5/BiasAdd/ReadVariableOpReadVariableOp9while_simple_rnn_cell_5_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype0¾
while/simple_rnn_cell_5/BiasAddBiasAdd(while/simple_rnn_cell_5/MatMul:product:06while/simple_rnn_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@ª
/while/simple_rnn_cell_5/MatMul_1/ReadVariableOpReadVariableOp:while_simple_rnn_cell_5_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype0ª
 while/simple_rnn_cell_5/MatMul_1MatMulwhile_placeholder_27while/simple_rnn_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¬
while/simple_rnn_cell_5/addAddV2(while/simple_rnn_cell_5/BiasAdd:output:0*while/simple_rnn_cell_5/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@w
while/simple_rnn_cell_5/TanhTanhwhile/simple_rnn_cell_5/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@É
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder while/simple_rnn_cell_5/Tanh:y:0*
_output_shapes
: *
element_dtype0:éèÒM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: }
while/Identity_4Identity while/simple_rnn_cell_5/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@ß

while/NoOpNoOp/^while/simple_rnn_cell_5/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_5/MatMul/ReadVariableOp0^while/simple_rnn_cell_5/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"t
7while_simple_rnn_cell_5_biasadd_readvariableop_resource9while_simple_rnn_cell_5_biasadd_readvariableop_resource_0"v
8while_simple_rnn_cell_5_matmul_1_readvariableop_resource:while_simple_rnn_cell_5_matmul_1_readvariableop_resource_0"r
6while_simple_rnn_cell_5_matmul_readvariableop_resource8while_simple_rnn_cell_5_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ@: : : : : 2`
.while/simple_rnn_cell_5/BiasAdd/ReadVariableOp.while/simple_rnn_cell_5/BiasAdd/ReadVariableOp2^
-while/simple_rnn_cell_5/MatMul/ReadVariableOp-while/simple_rnn_cell_5/MatMul/ReadVariableOp2b
/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
: 
À?
Å
P__inference_backward_simple_rnn_1_layer_call_and_return_conditional_losses_71405
inputs_0B
0simple_rnn_cell_5_matmul_readvariableop_resource:@@?
1simple_rnn_cell_5_biasadd_readvariableop_resource:@D
2simple_rnn_cell_5_matmul_1_readvariableop_resource:@@
identity¢(simple_rnn_cell_5/BiasAdd/ReadVariableOp¢'simple_rnn_cell_5/MatMul/ReadVariableOp¢)simple_rnn_cell_5/MatMul_1/ReadVariableOp¢while=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
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
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
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
:ÿÿÿÿÿÿÿÿÿ@c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
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
valueB:Û
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒX
ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: }
	ReverseV2	ReverseV2transpose:y:0ReverseV2/axis:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   å
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensorReverseV2:output:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_mask
'simple_rnn_cell_5/MatMul/ReadVariableOpReadVariableOp0simple_rnn_cell_5_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype0
simple_rnn_cell_5/MatMulMatMulstrided_slice_2:output:0/simple_rnn_cell_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
(simple_rnn_cell_5/BiasAdd/ReadVariableOpReadVariableOp1simple_rnn_cell_5_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0¬
simple_rnn_cell_5/BiasAddBiasAdd"simple_rnn_cell_5/MatMul:product:00simple_rnn_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
)simple_rnn_cell_5/MatMul_1/ReadVariableOpReadVariableOp2simple_rnn_cell_5_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype0
simple_rnn_cell_5/MatMul_1MatMulzeros:output:01simple_rnn_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
simple_rnn_cell_5/addAddV2"simple_rnn_cell_5/BiasAdd:output:0$simple_rnn_cell_5/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@k
simple_rnn_cell_5/TanhTanhsimple_rnn_cell_5/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ö
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:00simple_rnn_cell_5_matmul_readvariableop_resource1simple_rnn_cell_5_biasadd_readvariableop_resource2simple_rnn_cell_5_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ@: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_71339*
condR
while_cond_71338*8
output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ@: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   Ë
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Ï
NoOpNoOp)^simple_rnn_cell_5/BiasAdd/ReadVariableOp(^simple_rnn_cell_5/MatMul/ReadVariableOp*^simple_rnn_cell_5/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@: : : 2T
(simple_rnn_cell_5/BiasAdd/ReadVariableOp(simple_rnn_cell_5/BiasAdd/ReadVariableOp2R
'simple_rnn_cell_5/MatMul/ReadVariableOp'simple_rnn_cell_5/MatMul/ReadVariableOp2V
)simple_rnn_cell_5/MatMul_1/ReadVariableOp)simple_rnn_cell_5/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
"
_user_specified_name
inputs/0
·

Ù
1__inference_simple_rnn_cell_5_layer_call_fn_71715

inputs
states_0
unknown:@@
	unknown_0:@
	unknown_1:@@
identity

identity_1¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0unknown	unknown_0	unknown_1*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_simple_rnn_cell_5_layer_call_and_return_conditional_losses_67358o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
"
_user_specified_name
states/0
U
¦
%forward_simple_rnn_1_while_body_68114F
Bforward_simple_rnn_1_while_forward_simple_rnn_1_while_loop_counterL
Hforward_simple_rnn_1_while_forward_simple_rnn_1_while_maximum_iterations*
&forward_simple_rnn_1_while_placeholder,
(forward_simple_rnn_1_while_placeholder_1,
(forward_simple_rnn_1_while_placeholder_2,
(forward_simple_rnn_1_while_placeholder_3E
Aforward_simple_rnn_1_while_forward_simple_rnn_1_strided_slice_1_0
}forward_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_forward_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor_0
forward_simple_rnn_1_while_tensorarrayv2read_1_tensorlistgetitem_forward_simple_rnn_1_tensorarrayunstack_1_tensorlistfromtensor_0_
Mforward_simple_rnn_1_while_simple_rnn_cell_4_matmul_readvariableop_resource_0:@@\
Nforward_simple_rnn_1_while_simple_rnn_cell_4_biasadd_readvariableop_resource_0:@a
Oforward_simple_rnn_1_while_simple_rnn_cell_4_matmul_1_readvariableop_resource_0:@@'
#forward_simple_rnn_1_while_identity)
%forward_simple_rnn_1_while_identity_1)
%forward_simple_rnn_1_while_identity_2)
%forward_simple_rnn_1_while_identity_3)
%forward_simple_rnn_1_while_identity_4)
%forward_simple_rnn_1_while_identity_5C
?forward_simple_rnn_1_while_forward_simple_rnn_1_strided_slice_1
{forward_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_forward_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor
forward_simple_rnn_1_while_tensorarrayv2read_1_tensorlistgetitem_forward_simple_rnn_1_tensorarrayunstack_1_tensorlistfromtensor]
Kforward_simple_rnn_1_while_simple_rnn_cell_4_matmul_readvariableop_resource:@@Z
Lforward_simple_rnn_1_while_simple_rnn_cell_4_biasadd_readvariableop_resource:@_
Mforward_simple_rnn_1_while_simple_rnn_cell_4_matmul_1_readvariableop_resource:@@¢Cforward_simple_rnn_1/while/simple_rnn_cell_4/BiasAdd/ReadVariableOp¢Bforward_simple_rnn_1/while/simple_rnn_cell_4/MatMul/ReadVariableOp¢Dforward_simple_rnn_1/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp
Lforward_simple_rnn_1/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   
>forward_simple_rnn_1/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem}forward_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_forward_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor_0&forward_simple_rnn_1_while_placeholderUforward_simple_rnn_1/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
element_dtype0
Nforward_simple_rnn_1/while/TensorArrayV2Read_1/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   
@forward_simple_rnn_1/while/TensorArrayV2Read_1/TensorListGetItemTensorListGetItemforward_simple_rnn_1_while_tensorarrayv2read_1_tensorlistgetitem_forward_simple_rnn_1_tensorarrayunstack_1_tensorlistfromtensor_0&forward_simple_rnn_1_while_placeholderWforward_simple_rnn_1/while/TensorArrayV2Read_1/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0
Ð
Bforward_simple_rnn_1/while/simple_rnn_cell_4/MatMul/ReadVariableOpReadVariableOpMforward_simple_rnn_1_while_simple_rnn_cell_4_matmul_readvariableop_resource_0*
_output_shapes

:@@*
dtype0
3forward_simple_rnn_1/while/simple_rnn_cell_4/MatMulMatMulEforward_simple_rnn_1/while/TensorArrayV2Read/TensorListGetItem:item:0Jforward_simple_rnn_1/while/simple_rnn_cell_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Î
Cforward_simple_rnn_1/while/simple_rnn_cell_4/BiasAdd/ReadVariableOpReadVariableOpNforward_simple_rnn_1_while_simple_rnn_cell_4_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype0ý
4forward_simple_rnn_1/while/simple_rnn_cell_4/BiasAddBiasAdd=forward_simple_rnn_1/while/simple_rnn_cell_4/MatMul:product:0Kforward_simple_rnn_1/while/simple_rnn_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Ô
Dforward_simple_rnn_1/while/simple_rnn_cell_4/MatMul_1/ReadVariableOpReadVariableOpOforward_simple_rnn_1_while_simple_rnn_cell_4_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype0é
5forward_simple_rnn_1/while/simple_rnn_cell_4/MatMul_1MatMul(forward_simple_rnn_1_while_placeholder_3Lforward_simple_rnn_1/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@ë
0forward_simple_rnn_1/while/simple_rnn_cell_4/addAddV2=forward_simple_rnn_1/while/simple_rnn_cell_4/BiasAdd:output:0?forward_simple_rnn_1/while/simple_rnn_cell_4/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¡
1forward_simple_rnn_1/while/simple_rnn_cell_4/TanhTanh4forward_simple_rnn_1/while/simple_rnn_cell_4/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@z
)forward_simple_rnn_1/while/Tile/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      Ö
forward_simple_rnn_1/while/TileTileGforward_simple_rnn_1/while/TensorArrayV2Read_1/TensorListGetItem:item:02forward_simple_rnn_1/while/Tile/multiples:output:0*
T0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿì
#forward_simple_rnn_1/while/SelectV2SelectV2(forward_simple_rnn_1/while/Tile:output:05forward_simple_rnn_1/while/simple_rnn_cell_4/Tanh:y:0(forward_simple_rnn_1_while_placeholder_2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@|
+forward_simple_rnn_1/while/Tile_1/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      Ú
!forward_simple_rnn_1/while/Tile_1TileGforward_simple_rnn_1/while/TensorArrayV2Read_1/TensorListGetItem:item:04forward_simple_rnn_1/while/Tile_1/multiples:output:0*
T0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿð
%forward_simple_rnn_1/while/SelectV2_1SelectV2*forward_simple_rnn_1/while/Tile_1:output:05forward_simple_rnn_1/while/simple_rnn_cell_4/Tanh:y:0(forward_simple_rnn_1_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
?forward_simple_rnn_1/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem(forward_simple_rnn_1_while_placeholder_1&forward_simple_rnn_1_while_placeholder,forward_simple_rnn_1/while/SelectV2:output:0*
_output_shapes
: *
element_dtype0:éèÒb
 forward_simple_rnn_1/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :
forward_simple_rnn_1/while/addAddV2&forward_simple_rnn_1_while_placeholder)forward_simple_rnn_1/while/add/y:output:0*
T0*
_output_shapes
: d
"forward_simple_rnn_1/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :»
 forward_simple_rnn_1/while/add_1AddV2Bforward_simple_rnn_1_while_forward_simple_rnn_1_while_loop_counter+forward_simple_rnn_1/while/add_1/y:output:0*
T0*
_output_shapes
: 
#forward_simple_rnn_1/while/IdentityIdentity$forward_simple_rnn_1/while/add_1:z:0 ^forward_simple_rnn_1/while/NoOp*
T0*
_output_shapes
: ¾
%forward_simple_rnn_1/while/Identity_1IdentityHforward_simple_rnn_1_while_forward_simple_rnn_1_while_maximum_iterations ^forward_simple_rnn_1/while/NoOp*
T0*
_output_shapes
: 
%forward_simple_rnn_1/while/Identity_2Identity"forward_simple_rnn_1/while/add:z:0 ^forward_simple_rnn_1/while/NoOp*
T0*
_output_shapes
: Å
%forward_simple_rnn_1/while/Identity_3IdentityOforward_simple_rnn_1/while/TensorArrayV2Write/TensorListSetItem:output_handle:0 ^forward_simple_rnn_1/while/NoOp*
T0*
_output_shapes
: ³
%forward_simple_rnn_1/while/Identity_4Identity,forward_simple_rnn_1/while/SelectV2:output:0 ^forward_simple_rnn_1/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@µ
%forward_simple_rnn_1/while/Identity_5Identity.forward_simple_rnn_1/while/SelectV2_1:output:0 ^forward_simple_rnn_1/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@³
forward_simple_rnn_1/while/NoOpNoOpD^forward_simple_rnn_1/while/simple_rnn_cell_4/BiasAdd/ReadVariableOpC^forward_simple_rnn_1/while/simple_rnn_cell_4/MatMul/ReadVariableOpE^forward_simple_rnn_1/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
?forward_simple_rnn_1_while_forward_simple_rnn_1_strided_slice_1Aforward_simple_rnn_1_while_forward_simple_rnn_1_strided_slice_1_0"S
#forward_simple_rnn_1_while_identity,forward_simple_rnn_1/while/Identity:output:0"W
%forward_simple_rnn_1_while_identity_1.forward_simple_rnn_1/while/Identity_1:output:0"W
%forward_simple_rnn_1_while_identity_2.forward_simple_rnn_1/while/Identity_2:output:0"W
%forward_simple_rnn_1_while_identity_3.forward_simple_rnn_1/while/Identity_3:output:0"W
%forward_simple_rnn_1_while_identity_4.forward_simple_rnn_1/while/Identity_4:output:0"W
%forward_simple_rnn_1_while_identity_5.forward_simple_rnn_1/while/Identity_5:output:0"
Lforward_simple_rnn_1_while_simple_rnn_cell_4_biasadd_readvariableop_resourceNforward_simple_rnn_1_while_simple_rnn_cell_4_biasadd_readvariableop_resource_0" 
Mforward_simple_rnn_1_while_simple_rnn_cell_4_matmul_1_readvariableop_resourceOforward_simple_rnn_1_while_simple_rnn_cell_4_matmul_1_readvariableop_resource_0"
Kforward_simple_rnn_1_while_simple_rnn_cell_4_matmul_readvariableop_resourceMforward_simple_rnn_1_while_simple_rnn_cell_4_matmul_readvariableop_resource_0"
forward_simple_rnn_1_while_tensorarrayv2read_1_tensorlistgetitem_forward_simple_rnn_1_tensorarrayunstack_1_tensorlistfromtensorforward_simple_rnn_1_while_tensorarrayv2read_1_tensorlistgetitem_forward_simple_rnn_1_tensorarrayunstack_1_tensorlistfromtensor_0"ü
{forward_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_forward_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor}forward_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_forward_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : : 2
Cforward_simple_rnn_1/while/simple_rnn_cell_4/BiasAdd/ReadVariableOpCforward_simple_rnn_1/while/simple_rnn_cell_4/BiasAdd/ReadVariableOp2
Bforward_simple_rnn_1/while/simple_rnn_cell_4/MatMul/ReadVariableOpBforward_simple_rnn_1/while/simple_rnn_cell_4/MatMul/ReadVariableOp2
Dforward_simple_rnn_1/while/simple_rnn_cell_4/MatMul_1/ReadVariableOpDforward_simple_rnn_1/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
¥
À
J__inference_bidirectional_1_layer_call_and_return_conditional_losses_70092
inputs_0W
Eforward_simple_rnn_1_simple_rnn_cell_4_matmul_readvariableop_resource:@@T
Fforward_simple_rnn_1_simple_rnn_cell_4_biasadd_readvariableop_resource:@Y
Gforward_simple_rnn_1_simple_rnn_cell_4_matmul_1_readvariableop_resource:@@X
Fbackward_simple_rnn_1_simple_rnn_cell_5_matmul_readvariableop_resource:@@U
Gbackward_simple_rnn_1_simple_rnn_cell_5_biasadd_readvariableop_resource:@Z
Hbackward_simple_rnn_1_simple_rnn_cell_5_matmul_1_readvariableop_resource:@@
identity¢>backward_simple_rnn_1/simple_rnn_cell_5/BiasAdd/ReadVariableOp¢=backward_simple_rnn_1/simple_rnn_cell_5/MatMul/ReadVariableOp¢?backward_simple_rnn_1/simple_rnn_cell_5/MatMul_1/ReadVariableOp¢backward_simple_rnn_1/while¢=forward_simple_rnn_1/simple_rnn_cell_4/BiasAdd/ReadVariableOp¢<forward_simple_rnn_1/simple_rnn_cell_4/MatMul/ReadVariableOp¢>forward_simple_rnn_1/simple_rnn_cell_4/MatMul_1/ReadVariableOp¢forward_simple_rnn_1/whileR
forward_simple_rnn_1/ShapeShapeinputs_0*
T0*
_output_shapes
:r
(forward_simple_rnn_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: t
*forward_simple_rnn_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*forward_simple_rnn_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:º
"forward_simple_rnn_1/strided_sliceStridedSlice#forward_simple_rnn_1/Shape:output:01forward_simple_rnn_1/strided_slice/stack:output:03forward_simple_rnn_1/strided_slice/stack_1:output:03forward_simple_rnn_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maske
#forward_simple_rnn_1/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@²
!forward_simple_rnn_1/zeros/packedPack+forward_simple_rnn_1/strided_slice:output:0,forward_simple_rnn_1/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:e
 forward_simple_rnn_1/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    «
forward_simple_rnn_1/zerosFill*forward_simple_rnn_1/zeros/packed:output:0)forward_simple_rnn_1/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@x
#forward_simple_rnn_1/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          «
forward_simple_rnn_1/transpose	Transposeinputs_0,forward_simple_rnn_1/transpose/perm:output:0*
T0*=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿn
forward_simple_rnn_1/Shape_1Shape"forward_simple_rnn_1/transpose:y:0*
T0*
_output_shapes
:t
*forward_simple_rnn_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,forward_simple_rnn_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,forward_simple_rnn_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ä
$forward_simple_rnn_1/strided_slice_1StridedSlice%forward_simple_rnn_1/Shape_1:output:03forward_simple_rnn_1/strided_slice_1/stack:output:05forward_simple_rnn_1/strided_slice_1/stack_1:output:05forward_simple_rnn_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask{
0forward_simple_rnn_1/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿó
"forward_simple_rnn_1/TensorArrayV2TensorListReserve9forward_simple_rnn_1/TensorArrayV2/element_shape:output:0-forward_simple_rnn_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
Jforward_simple_rnn_1/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÿÿÿÿ
<forward_simple_rnn_1/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor"forward_simple_rnn_1/transpose:y:0Sforward_simple_rnn_1/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒt
*forward_simple_rnn_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,forward_simple_rnn_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,forward_simple_rnn_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Û
$forward_simple_rnn_1/strided_slice_2StridedSlice"forward_simple_rnn_1/transpose:y:03forward_simple_rnn_1/strided_slice_2/stack:output:05forward_simple_rnn_1/strided_slice_2/stack_1:output:05forward_simple_rnn_1/strided_slice_2/stack_2:output:0*
Index0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
shrink_axis_maskÂ
<forward_simple_rnn_1/simple_rnn_cell_4/MatMul/ReadVariableOpReadVariableOpEforward_simple_rnn_1_simple_rnn_cell_4_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype0Þ
-forward_simple_rnn_1/simple_rnn_cell_4/MatMulMatMul-forward_simple_rnn_1/strided_slice_2:output:0Dforward_simple_rnn_1/simple_rnn_cell_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@À
=forward_simple_rnn_1/simple_rnn_cell_4/BiasAdd/ReadVariableOpReadVariableOpFforward_simple_rnn_1_simple_rnn_cell_4_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0ë
.forward_simple_rnn_1/simple_rnn_cell_4/BiasAddBiasAdd7forward_simple_rnn_1/simple_rnn_cell_4/MatMul:product:0Eforward_simple_rnn_1/simple_rnn_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Æ
>forward_simple_rnn_1/simple_rnn_cell_4/MatMul_1/ReadVariableOpReadVariableOpGforward_simple_rnn_1_simple_rnn_cell_4_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype0Ø
/forward_simple_rnn_1/simple_rnn_cell_4/MatMul_1MatMul#forward_simple_rnn_1/zeros:output:0Fforward_simple_rnn_1/simple_rnn_cell_4/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Ù
*forward_simple_rnn_1/simple_rnn_cell_4/addAddV27forward_simple_rnn_1/simple_rnn_cell_4/BiasAdd:output:09forward_simple_rnn_1/simple_rnn_cell_4/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
+forward_simple_rnn_1/simple_rnn_cell_4/TanhTanh.forward_simple_rnn_1/simple_rnn_cell_4/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
2forward_simple_rnn_1/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   ÷
$forward_simple_rnn_1/TensorArrayV2_1TensorListReserve;forward_simple_rnn_1/TensorArrayV2_1/element_shape:output:0-forward_simple_rnn_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ[
forward_simple_rnn_1/timeConst*
_output_shapes
: *
dtype0*
value	B : x
-forward_simple_rnn_1/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿi
'forward_simple_rnn_1/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ç
forward_simple_rnn_1/whileWhile0forward_simple_rnn_1/while/loop_counter:output:06forward_simple_rnn_1/while/maximum_iterations:output:0"forward_simple_rnn_1/time:output:0-forward_simple_rnn_1/TensorArrayV2_1:handle:0#forward_simple_rnn_1/zeros:output:0-forward_simple_rnn_1/strided_slice_1:output:0Lforward_simple_rnn_1/TensorArrayUnstack/TensorListFromTensor:output_handle:0Eforward_simple_rnn_1_simple_rnn_cell_4_matmul_readvariableop_resourceFforward_simple_rnn_1_simple_rnn_cell_4_biasadd_readvariableop_resourceGforward_simple_rnn_1_simple_rnn_cell_4_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ@: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *1
body)R'
%forward_simple_rnn_1_while_body_69918*1
cond)R'
%forward_simple_rnn_1_while_cond_69917*8
output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ@: : : : : *
parallel_iterations 
Eforward_simple_rnn_1/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   
7forward_simple_rnn_1/TensorArrayV2Stack/TensorListStackTensorListStack#forward_simple_rnn_1/while:output:3Nforward_simple_rnn_1/TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*
element_dtype0}
*forward_simple_rnn_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿv
,forward_simple_rnn_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: v
,forward_simple_rnn_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ð
$forward_simple_rnn_1/strided_slice_3StridedSlice@forward_simple_rnn_1/TensorArrayV2Stack/TensorListStack:tensor:03forward_simple_rnn_1/strided_slice_3/stack:output:05forward_simple_rnn_1/strided_slice_3/stack_1:output:05forward_simple_rnn_1/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_maskz
%forward_simple_rnn_1/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Þ
 forward_simple_rnn_1/transpose_1	Transpose@forward_simple_rnn_1/TensorArrayV2Stack/TensorListStack:tensor:0.forward_simple_rnn_1/transpose_1/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@S
backward_simple_rnn_1/ShapeShapeinputs_0*
T0*
_output_shapes
:s
)backward_simple_rnn_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+backward_simple_rnn_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+backward_simple_rnn_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¿
#backward_simple_rnn_1/strided_sliceStridedSlice$backward_simple_rnn_1/Shape:output:02backward_simple_rnn_1/strided_slice/stack:output:04backward_simple_rnn_1/strided_slice/stack_1:output:04backward_simple_rnn_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
$backward_simple_rnn_1/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@µ
"backward_simple_rnn_1/zeros/packedPack,backward_simple_rnn_1/strided_slice:output:0-backward_simple_rnn_1/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:f
!backward_simple_rnn_1/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ®
backward_simple_rnn_1/zerosFill+backward_simple_rnn_1/zeros/packed:output:0*backward_simple_rnn_1/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@y
$backward_simple_rnn_1/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ­
backward_simple_rnn_1/transpose	Transposeinputs_0-backward_simple_rnn_1/transpose/perm:output:0*
T0*=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿp
backward_simple_rnn_1/Shape_1Shape#backward_simple_rnn_1/transpose:y:0*
T0*
_output_shapes
:u
+backward_simple_rnn_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-backward_simple_rnn_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-backward_simple_rnn_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:É
%backward_simple_rnn_1/strided_slice_1StridedSlice&backward_simple_rnn_1/Shape_1:output:04backward_simple_rnn_1/strided_slice_1/stack:output:06backward_simple_rnn_1/strided_slice_1/stack_1:output:06backward_simple_rnn_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask|
1backward_simple_rnn_1/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿö
#backward_simple_rnn_1/TensorArrayV2TensorListReserve:backward_simple_rnn_1/TensorArrayV2/element_shape:output:0.backward_simple_rnn_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒn
$backward_simple_rnn_1/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: È
backward_simple_rnn_1/ReverseV2	ReverseV2#backward_simple_rnn_1/transpose:y:0-backward_simple_rnn_1/ReverseV2/axis:output:0*
T0*=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
Kbackward_simple_rnn_1/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÿÿÿÿ§
=backward_simple_rnn_1/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor(backward_simple_rnn_1/ReverseV2:output:0Tbackward_simple_rnn_1/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒu
+backward_simple_rnn_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-backward_simple_rnn_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-backward_simple_rnn_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:à
%backward_simple_rnn_1/strided_slice_2StridedSlice#backward_simple_rnn_1/transpose:y:04backward_simple_rnn_1/strided_slice_2/stack:output:06backward_simple_rnn_1/strided_slice_2/stack_1:output:06backward_simple_rnn_1/strided_slice_2/stack_2:output:0*
Index0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
shrink_axis_maskÄ
=backward_simple_rnn_1/simple_rnn_cell_5/MatMul/ReadVariableOpReadVariableOpFbackward_simple_rnn_1_simple_rnn_cell_5_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype0á
.backward_simple_rnn_1/simple_rnn_cell_5/MatMulMatMul.backward_simple_rnn_1/strided_slice_2:output:0Ebackward_simple_rnn_1/simple_rnn_cell_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Â
>backward_simple_rnn_1/simple_rnn_cell_5/BiasAdd/ReadVariableOpReadVariableOpGbackward_simple_rnn_1_simple_rnn_cell_5_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0î
/backward_simple_rnn_1/simple_rnn_cell_5/BiasAddBiasAdd8backward_simple_rnn_1/simple_rnn_cell_5/MatMul:product:0Fbackward_simple_rnn_1/simple_rnn_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@È
?backward_simple_rnn_1/simple_rnn_cell_5/MatMul_1/ReadVariableOpReadVariableOpHbackward_simple_rnn_1_simple_rnn_cell_5_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype0Û
0backward_simple_rnn_1/simple_rnn_cell_5/MatMul_1MatMul$backward_simple_rnn_1/zeros:output:0Gbackward_simple_rnn_1/simple_rnn_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Ü
+backward_simple_rnn_1/simple_rnn_cell_5/addAddV28backward_simple_rnn_1/simple_rnn_cell_5/BiasAdd:output:0:backward_simple_rnn_1/simple_rnn_cell_5/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
,backward_simple_rnn_1/simple_rnn_cell_5/TanhTanh/backward_simple_rnn_1/simple_rnn_cell_5/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
3backward_simple_rnn_1/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   ú
%backward_simple_rnn_1/TensorArrayV2_1TensorListReserve<backward_simple_rnn_1/TensorArrayV2_1/element_shape:output:0.backward_simple_rnn_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ\
backward_simple_rnn_1/timeConst*
_output_shapes
: *
dtype0*
value	B : y
.backward_simple_rnn_1/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿj
(backward_simple_rnn_1/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ô
backward_simple_rnn_1/whileWhile1backward_simple_rnn_1/while/loop_counter:output:07backward_simple_rnn_1/while/maximum_iterations:output:0#backward_simple_rnn_1/time:output:0.backward_simple_rnn_1/TensorArrayV2_1:handle:0$backward_simple_rnn_1/zeros:output:0.backward_simple_rnn_1/strided_slice_1:output:0Mbackward_simple_rnn_1/TensorArrayUnstack/TensorListFromTensor:output_handle:0Fbackward_simple_rnn_1_simple_rnn_cell_5_matmul_readvariableop_resourceGbackward_simple_rnn_1_simple_rnn_cell_5_biasadd_readvariableop_resourceHbackward_simple_rnn_1_simple_rnn_cell_5_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ@: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *2
body*R(
&backward_simple_rnn_1_while_body_70024*2
cond*R(
&backward_simple_rnn_1_while_cond_70023*8
output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ@: : : : : *
parallel_iterations 
Fbackward_simple_rnn_1/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   
8backward_simple_rnn_1/TensorArrayV2Stack/TensorListStackTensorListStack$backward_simple_rnn_1/while:output:3Obackward_simple_rnn_1/TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*
element_dtype0~
+backward_simple_rnn_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿw
-backward_simple_rnn_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: w
-backward_simple_rnn_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:õ
%backward_simple_rnn_1/strided_slice_3StridedSliceAbackward_simple_rnn_1/TensorArrayV2Stack/TensorListStack:tensor:04backward_simple_rnn_1/strided_slice_3/stack:output:06backward_simple_rnn_1/strided_slice_3/stack_1:output:06backward_simple_rnn_1/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_mask{
&backward_simple_rnn_1/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          á
!backward_simple_rnn_1/transpose_1	TransposeAbackward_simple_rnn_1/TensorArrayV2Stack/TensorListStack:tensor:0/backward_simple_rnn_1/transpose_1/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :Ã
concatConcatV2-forward_simple_rnn_1/strided_slice_3:output:0.backward_simple_rnn_1/strided_slice_3:output:0concat/axis:output:0*
N*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_
IdentityIdentityconcat:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp?^backward_simple_rnn_1/simple_rnn_cell_5/BiasAdd/ReadVariableOp>^backward_simple_rnn_1/simple_rnn_cell_5/MatMul/ReadVariableOp@^backward_simple_rnn_1/simple_rnn_cell_5/MatMul_1/ReadVariableOp^backward_simple_rnn_1/while>^forward_simple_rnn_1/simple_rnn_cell_4/BiasAdd/ReadVariableOp=^forward_simple_rnn_1/simple_rnn_cell_4/MatMul/ReadVariableOp?^forward_simple_rnn_1/simple_rnn_cell_4/MatMul_1/ReadVariableOp^forward_simple_rnn_1/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : : : : 2
>backward_simple_rnn_1/simple_rnn_cell_5/BiasAdd/ReadVariableOp>backward_simple_rnn_1/simple_rnn_cell_5/BiasAdd/ReadVariableOp2~
=backward_simple_rnn_1/simple_rnn_cell_5/MatMul/ReadVariableOp=backward_simple_rnn_1/simple_rnn_cell_5/MatMul/ReadVariableOp2
?backward_simple_rnn_1/simple_rnn_cell_5/MatMul_1/ReadVariableOp?backward_simple_rnn_1/simple_rnn_cell_5/MatMul_1/ReadVariableOp2:
backward_simple_rnn_1/whilebackward_simple_rnn_1/while2~
=forward_simple_rnn_1/simple_rnn_cell_4/BiasAdd/ReadVariableOp=forward_simple_rnn_1/simple_rnn_cell_4/BiasAdd/ReadVariableOp2|
<forward_simple_rnn_1/simple_rnn_cell_4/MatMul/ReadVariableOp<forward_simple_rnn_1/simple_rnn_cell_4/MatMul/ReadVariableOp2
>forward_simple_rnn_1/simple_rnn_cell_4/MatMul_1/ReadVariableOp>forward_simple_rnn_1/simple_rnn_cell_4/MatMul_1/ReadVariableOp28
forward_simple_rnn_1/whileforward_simple_rnn_1/while:g c
=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
©,
Ç
while_body_70751
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0J
8while_simple_rnn_cell_4_matmul_readvariableop_resource_0:@@G
9while_simple_rnn_cell_4_biasadd_readvariableop_resource_0:@L
:while_simple_rnn_cell_4_matmul_1_readvariableop_resource_0:@@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorH
6while_simple_rnn_cell_4_matmul_readvariableop_resource:@@E
7while_simple_rnn_cell_4_biasadd_readvariableop_resource:@J
8while_simple_rnn_cell_4_matmul_1_readvariableop_resource:@@¢.while/simple_rnn_cell_4/BiasAdd/ReadVariableOp¢-while/simple_rnn_cell_4/MatMul/ReadVariableOp¢/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
element_dtype0¦
-while/simple_rnn_cell_4/MatMul/ReadVariableOpReadVariableOp8while_simple_rnn_cell_4_matmul_readvariableop_resource_0*
_output_shapes

:@@*
dtype0Ã
while/simple_rnn_cell_4/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:05while/simple_rnn_cell_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¤
.while/simple_rnn_cell_4/BiasAdd/ReadVariableOpReadVariableOp9while_simple_rnn_cell_4_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype0¾
while/simple_rnn_cell_4/BiasAddBiasAdd(while/simple_rnn_cell_4/MatMul:product:06while/simple_rnn_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@ª
/while/simple_rnn_cell_4/MatMul_1/ReadVariableOpReadVariableOp:while_simple_rnn_cell_4_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype0ª
 while/simple_rnn_cell_4/MatMul_1MatMulwhile_placeholder_27while/simple_rnn_cell_4/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¬
while/simple_rnn_cell_4/addAddV2(while/simple_rnn_cell_4/BiasAdd:output:0*while/simple_rnn_cell_4/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@w
while/simple_rnn_cell_4/TanhTanhwhile/simple_rnn_cell_4/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@É
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder while/simple_rnn_cell_4/Tanh:y:0*
_output_shapes
: *
element_dtype0:éèÒM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: }
while/Identity_4Identity while/simple_rnn_cell_4/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@ß

while/NoOpNoOp/^while/simple_rnn_cell_4/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_4/MatMul/ReadVariableOp0^while/simple_rnn_cell_4/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"t
7while_simple_rnn_cell_4_biasadd_readvariableop_resource9while_simple_rnn_cell_4_biasadd_readvariableop_resource_0"v
8while_simple_rnn_cell_4_matmul_1_readvariableop_resource:while_simple_rnn_cell_4_matmul_1_readvariableop_resource_0"r
6while_simple_rnn_cell_4_matmul_readvariableop_resource8while_simple_rnn_cell_4_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ@: : : : : 2`
.while/simple_rnn_cell_4/BiasAdd/ReadVariableOp.while/simple_rnn_cell_4/BiasAdd/ReadVariableOp2^
-while/simple_rnn_cell_4/MatMul/ReadVariableOp-while/simple_rnn_cell_4/MatMul/ReadVariableOp2b
/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
: 
¥
À
J__inference_bidirectional_1_layer_call_and_return_conditional_losses_69876
inputs_0W
Eforward_simple_rnn_1_simple_rnn_cell_4_matmul_readvariableop_resource:@@T
Fforward_simple_rnn_1_simple_rnn_cell_4_biasadd_readvariableop_resource:@Y
Gforward_simple_rnn_1_simple_rnn_cell_4_matmul_1_readvariableop_resource:@@X
Fbackward_simple_rnn_1_simple_rnn_cell_5_matmul_readvariableop_resource:@@U
Gbackward_simple_rnn_1_simple_rnn_cell_5_biasadd_readvariableop_resource:@Z
Hbackward_simple_rnn_1_simple_rnn_cell_5_matmul_1_readvariableop_resource:@@
identity¢>backward_simple_rnn_1/simple_rnn_cell_5/BiasAdd/ReadVariableOp¢=backward_simple_rnn_1/simple_rnn_cell_5/MatMul/ReadVariableOp¢?backward_simple_rnn_1/simple_rnn_cell_5/MatMul_1/ReadVariableOp¢backward_simple_rnn_1/while¢=forward_simple_rnn_1/simple_rnn_cell_4/BiasAdd/ReadVariableOp¢<forward_simple_rnn_1/simple_rnn_cell_4/MatMul/ReadVariableOp¢>forward_simple_rnn_1/simple_rnn_cell_4/MatMul_1/ReadVariableOp¢forward_simple_rnn_1/whileR
forward_simple_rnn_1/ShapeShapeinputs_0*
T0*
_output_shapes
:r
(forward_simple_rnn_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: t
*forward_simple_rnn_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*forward_simple_rnn_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:º
"forward_simple_rnn_1/strided_sliceStridedSlice#forward_simple_rnn_1/Shape:output:01forward_simple_rnn_1/strided_slice/stack:output:03forward_simple_rnn_1/strided_slice/stack_1:output:03forward_simple_rnn_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maske
#forward_simple_rnn_1/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@²
!forward_simple_rnn_1/zeros/packedPack+forward_simple_rnn_1/strided_slice:output:0,forward_simple_rnn_1/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:e
 forward_simple_rnn_1/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    «
forward_simple_rnn_1/zerosFill*forward_simple_rnn_1/zeros/packed:output:0)forward_simple_rnn_1/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@x
#forward_simple_rnn_1/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          «
forward_simple_rnn_1/transpose	Transposeinputs_0,forward_simple_rnn_1/transpose/perm:output:0*
T0*=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿn
forward_simple_rnn_1/Shape_1Shape"forward_simple_rnn_1/transpose:y:0*
T0*
_output_shapes
:t
*forward_simple_rnn_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,forward_simple_rnn_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,forward_simple_rnn_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ä
$forward_simple_rnn_1/strided_slice_1StridedSlice%forward_simple_rnn_1/Shape_1:output:03forward_simple_rnn_1/strided_slice_1/stack:output:05forward_simple_rnn_1/strided_slice_1/stack_1:output:05forward_simple_rnn_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask{
0forward_simple_rnn_1/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿó
"forward_simple_rnn_1/TensorArrayV2TensorListReserve9forward_simple_rnn_1/TensorArrayV2/element_shape:output:0-forward_simple_rnn_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
Jforward_simple_rnn_1/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÿÿÿÿ
<forward_simple_rnn_1/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor"forward_simple_rnn_1/transpose:y:0Sforward_simple_rnn_1/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒt
*forward_simple_rnn_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,forward_simple_rnn_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,forward_simple_rnn_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Û
$forward_simple_rnn_1/strided_slice_2StridedSlice"forward_simple_rnn_1/transpose:y:03forward_simple_rnn_1/strided_slice_2/stack:output:05forward_simple_rnn_1/strided_slice_2/stack_1:output:05forward_simple_rnn_1/strided_slice_2/stack_2:output:0*
Index0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
shrink_axis_maskÂ
<forward_simple_rnn_1/simple_rnn_cell_4/MatMul/ReadVariableOpReadVariableOpEforward_simple_rnn_1_simple_rnn_cell_4_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype0Þ
-forward_simple_rnn_1/simple_rnn_cell_4/MatMulMatMul-forward_simple_rnn_1/strided_slice_2:output:0Dforward_simple_rnn_1/simple_rnn_cell_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@À
=forward_simple_rnn_1/simple_rnn_cell_4/BiasAdd/ReadVariableOpReadVariableOpFforward_simple_rnn_1_simple_rnn_cell_4_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0ë
.forward_simple_rnn_1/simple_rnn_cell_4/BiasAddBiasAdd7forward_simple_rnn_1/simple_rnn_cell_4/MatMul:product:0Eforward_simple_rnn_1/simple_rnn_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Æ
>forward_simple_rnn_1/simple_rnn_cell_4/MatMul_1/ReadVariableOpReadVariableOpGforward_simple_rnn_1_simple_rnn_cell_4_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype0Ø
/forward_simple_rnn_1/simple_rnn_cell_4/MatMul_1MatMul#forward_simple_rnn_1/zeros:output:0Fforward_simple_rnn_1/simple_rnn_cell_4/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Ù
*forward_simple_rnn_1/simple_rnn_cell_4/addAddV27forward_simple_rnn_1/simple_rnn_cell_4/BiasAdd:output:09forward_simple_rnn_1/simple_rnn_cell_4/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
+forward_simple_rnn_1/simple_rnn_cell_4/TanhTanh.forward_simple_rnn_1/simple_rnn_cell_4/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
2forward_simple_rnn_1/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   ÷
$forward_simple_rnn_1/TensorArrayV2_1TensorListReserve;forward_simple_rnn_1/TensorArrayV2_1/element_shape:output:0-forward_simple_rnn_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ[
forward_simple_rnn_1/timeConst*
_output_shapes
: *
dtype0*
value	B : x
-forward_simple_rnn_1/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿi
'forward_simple_rnn_1/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ç
forward_simple_rnn_1/whileWhile0forward_simple_rnn_1/while/loop_counter:output:06forward_simple_rnn_1/while/maximum_iterations:output:0"forward_simple_rnn_1/time:output:0-forward_simple_rnn_1/TensorArrayV2_1:handle:0#forward_simple_rnn_1/zeros:output:0-forward_simple_rnn_1/strided_slice_1:output:0Lforward_simple_rnn_1/TensorArrayUnstack/TensorListFromTensor:output_handle:0Eforward_simple_rnn_1_simple_rnn_cell_4_matmul_readvariableop_resourceFforward_simple_rnn_1_simple_rnn_cell_4_biasadd_readvariableop_resourceGforward_simple_rnn_1_simple_rnn_cell_4_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ@: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *1
body)R'
%forward_simple_rnn_1_while_body_69702*1
cond)R'
%forward_simple_rnn_1_while_cond_69701*8
output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ@: : : : : *
parallel_iterations 
Eforward_simple_rnn_1/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   
7forward_simple_rnn_1/TensorArrayV2Stack/TensorListStackTensorListStack#forward_simple_rnn_1/while:output:3Nforward_simple_rnn_1/TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*
element_dtype0}
*forward_simple_rnn_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿv
,forward_simple_rnn_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: v
,forward_simple_rnn_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ð
$forward_simple_rnn_1/strided_slice_3StridedSlice@forward_simple_rnn_1/TensorArrayV2Stack/TensorListStack:tensor:03forward_simple_rnn_1/strided_slice_3/stack:output:05forward_simple_rnn_1/strided_slice_3/stack_1:output:05forward_simple_rnn_1/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_maskz
%forward_simple_rnn_1/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Þ
 forward_simple_rnn_1/transpose_1	Transpose@forward_simple_rnn_1/TensorArrayV2Stack/TensorListStack:tensor:0.forward_simple_rnn_1/transpose_1/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@S
backward_simple_rnn_1/ShapeShapeinputs_0*
T0*
_output_shapes
:s
)backward_simple_rnn_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+backward_simple_rnn_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+backward_simple_rnn_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¿
#backward_simple_rnn_1/strided_sliceStridedSlice$backward_simple_rnn_1/Shape:output:02backward_simple_rnn_1/strided_slice/stack:output:04backward_simple_rnn_1/strided_slice/stack_1:output:04backward_simple_rnn_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
$backward_simple_rnn_1/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@µ
"backward_simple_rnn_1/zeros/packedPack,backward_simple_rnn_1/strided_slice:output:0-backward_simple_rnn_1/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:f
!backward_simple_rnn_1/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ®
backward_simple_rnn_1/zerosFill+backward_simple_rnn_1/zeros/packed:output:0*backward_simple_rnn_1/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@y
$backward_simple_rnn_1/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ­
backward_simple_rnn_1/transpose	Transposeinputs_0-backward_simple_rnn_1/transpose/perm:output:0*
T0*=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿp
backward_simple_rnn_1/Shape_1Shape#backward_simple_rnn_1/transpose:y:0*
T0*
_output_shapes
:u
+backward_simple_rnn_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-backward_simple_rnn_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-backward_simple_rnn_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:É
%backward_simple_rnn_1/strided_slice_1StridedSlice&backward_simple_rnn_1/Shape_1:output:04backward_simple_rnn_1/strided_slice_1/stack:output:06backward_simple_rnn_1/strided_slice_1/stack_1:output:06backward_simple_rnn_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask|
1backward_simple_rnn_1/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿö
#backward_simple_rnn_1/TensorArrayV2TensorListReserve:backward_simple_rnn_1/TensorArrayV2/element_shape:output:0.backward_simple_rnn_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒn
$backward_simple_rnn_1/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: È
backward_simple_rnn_1/ReverseV2	ReverseV2#backward_simple_rnn_1/transpose:y:0-backward_simple_rnn_1/ReverseV2/axis:output:0*
T0*=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
Kbackward_simple_rnn_1/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÿÿÿÿ§
=backward_simple_rnn_1/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor(backward_simple_rnn_1/ReverseV2:output:0Tbackward_simple_rnn_1/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒu
+backward_simple_rnn_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-backward_simple_rnn_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-backward_simple_rnn_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:à
%backward_simple_rnn_1/strided_slice_2StridedSlice#backward_simple_rnn_1/transpose:y:04backward_simple_rnn_1/strided_slice_2/stack:output:06backward_simple_rnn_1/strided_slice_2/stack_1:output:06backward_simple_rnn_1/strided_slice_2/stack_2:output:0*
Index0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
shrink_axis_maskÄ
=backward_simple_rnn_1/simple_rnn_cell_5/MatMul/ReadVariableOpReadVariableOpFbackward_simple_rnn_1_simple_rnn_cell_5_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype0á
.backward_simple_rnn_1/simple_rnn_cell_5/MatMulMatMul.backward_simple_rnn_1/strided_slice_2:output:0Ebackward_simple_rnn_1/simple_rnn_cell_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Â
>backward_simple_rnn_1/simple_rnn_cell_5/BiasAdd/ReadVariableOpReadVariableOpGbackward_simple_rnn_1_simple_rnn_cell_5_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0î
/backward_simple_rnn_1/simple_rnn_cell_5/BiasAddBiasAdd8backward_simple_rnn_1/simple_rnn_cell_5/MatMul:product:0Fbackward_simple_rnn_1/simple_rnn_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@È
?backward_simple_rnn_1/simple_rnn_cell_5/MatMul_1/ReadVariableOpReadVariableOpHbackward_simple_rnn_1_simple_rnn_cell_5_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype0Û
0backward_simple_rnn_1/simple_rnn_cell_5/MatMul_1MatMul$backward_simple_rnn_1/zeros:output:0Gbackward_simple_rnn_1/simple_rnn_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Ü
+backward_simple_rnn_1/simple_rnn_cell_5/addAddV28backward_simple_rnn_1/simple_rnn_cell_5/BiasAdd:output:0:backward_simple_rnn_1/simple_rnn_cell_5/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
,backward_simple_rnn_1/simple_rnn_cell_5/TanhTanh/backward_simple_rnn_1/simple_rnn_cell_5/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
3backward_simple_rnn_1/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   ú
%backward_simple_rnn_1/TensorArrayV2_1TensorListReserve<backward_simple_rnn_1/TensorArrayV2_1/element_shape:output:0.backward_simple_rnn_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ\
backward_simple_rnn_1/timeConst*
_output_shapes
: *
dtype0*
value	B : y
.backward_simple_rnn_1/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿj
(backward_simple_rnn_1/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ô
backward_simple_rnn_1/whileWhile1backward_simple_rnn_1/while/loop_counter:output:07backward_simple_rnn_1/while/maximum_iterations:output:0#backward_simple_rnn_1/time:output:0.backward_simple_rnn_1/TensorArrayV2_1:handle:0$backward_simple_rnn_1/zeros:output:0.backward_simple_rnn_1/strided_slice_1:output:0Mbackward_simple_rnn_1/TensorArrayUnstack/TensorListFromTensor:output_handle:0Fbackward_simple_rnn_1_simple_rnn_cell_5_matmul_readvariableop_resourceGbackward_simple_rnn_1_simple_rnn_cell_5_biasadd_readvariableop_resourceHbackward_simple_rnn_1_simple_rnn_cell_5_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ@: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *2
body*R(
&backward_simple_rnn_1_while_body_69808*2
cond*R(
&backward_simple_rnn_1_while_cond_69807*8
output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ@: : : : : *
parallel_iterations 
Fbackward_simple_rnn_1/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   
8backward_simple_rnn_1/TensorArrayV2Stack/TensorListStackTensorListStack$backward_simple_rnn_1/while:output:3Obackward_simple_rnn_1/TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*
element_dtype0~
+backward_simple_rnn_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿw
-backward_simple_rnn_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: w
-backward_simple_rnn_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:õ
%backward_simple_rnn_1/strided_slice_3StridedSliceAbackward_simple_rnn_1/TensorArrayV2Stack/TensorListStack:tensor:04backward_simple_rnn_1/strided_slice_3/stack:output:06backward_simple_rnn_1/strided_slice_3/stack_1:output:06backward_simple_rnn_1/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_mask{
&backward_simple_rnn_1/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          á
!backward_simple_rnn_1/transpose_1	TransposeAbackward_simple_rnn_1/TensorArrayV2Stack/TensorListStack:tensor:0/backward_simple_rnn_1/transpose_1/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :Ã
concatConcatV2-forward_simple_rnn_1/strided_slice_3:output:0.backward_simple_rnn_1/strided_slice_3:output:0concat/axis:output:0*
N*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_
IdentityIdentityconcat:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp?^backward_simple_rnn_1/simple_rnn_cell_5/BiasAdd/ReadVariableOp>^backward_simple_rnn_1/simple_rnn_cell_5/MatMul/ReadVariableOp@^backward_simple_rnn_1/simple_rnn_cell_5/MatMul_1/ReadVariableOp^backward_simple_rnn_1/while>^forward_simple_rnn_1/simple_rnn_cell_4/BiasAdd/ReadVariableOp=^forward_simple_rnn_1/simple_rnn_cell_4/MatMul/ReadVariableOp?^forward_simple_rnn_1/simple_rnn_cell_4/MatMul_1/ReadVariableOp^forward_simple_rnn_1/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : : : : 2
>backward_simple_rnn_1/simple_rnn_cell_5/BiasAdd/ReadVariableOp>backward_simple_rnn_1/simple_rnn_cell_5/BiasAdd/ReadVariableOp2~
=backward_simple_rnn_1/simple_rnn_cell_5/MatMul/ReadVariableOp=backward_simple_rnn_1/simple_rnn_cell_5/MatMul/ReadVariableOp2
?backward_simple_rnn_1/simple_rnn_cell_5/MatMul_1/ReadVariableOp?backward_simple_rnn_1/simple_rnn_cell_5/MatMul_1/ReadVariableOp2:
backward_simple_rnn_1/whilebackward_simple_rnn_1/while2~
=forward_simple_rnn_1/simple_rnn_cell_4/BiasAdd/ReadVariableOp=forward_simple_rnn_1/simple_rnn_cell_4/BiasAdd/ReadVariableOp2|
<forward_simple_rnn_1/simple_rnn_cell_4/MatMul/ReadVariableOp<forward_simple_rnn_1/simple_rnn_cell_4/MatMul/ReadVariableOp2
>forward_simple_rnn_1/simple_rnn_cell_4/MatMul_1/ReadVariableOp>forward_simple_rnn_1/simple_rnn_cell_4/MatMul_1/ReadVariableOp28
forward_simple_rnn_1/whileforward_simple_rnn_1/while:g c
=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
©,
Ç
while_body_70859
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0J
8while_simple_rnn_cell_4_matmul_readvariableop_resource_0:@@G
9while_simple_rnn_cell_4_biasadd_readvariableop_resource_0:@L
:while_simple_rnn_cell_4_matmul_1_readvariableop_resource_0:@@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorH
6while_simple_rnn_cell_4_matmul_readvariableop_resource:@@E
7while_simple_rnn_cell_4_biasadd_readvariableop_resource:@J
8while_simple_rnn_cell_4_matmul_1_readvariableop_resource:@@¢.while/simple_rnn_cell_4/BiasAdd/ReadVariableOp¢-while/simple_rnn_cell_4/MatMul/ReadVariableOp¢/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
element_dtype0¦
-while/simple_rnn_cell_4/MatMul/ReadVariableOpReadVariableOp8while_simple_rnn_cell_4_matmul_readvariableop_resource_0*
_output_shapes

:@@*
dtype0Ã
while/simple_rnn_cell_4/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:05while/simple_rnn_cell_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¤
.while/simple_rnn_cell_4/BiasAdd/ReadVariableOpReadVariableOp9while_simple_rnn_cell_4_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype0¾
while/simple_rnn_cell_4/BiasAddBiasAdd(while/simple_rnn_cell_4/MatMul:product:06while/simple_rnn_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@ª
/while/simple_rnn_cell_4/MatMul_1/ReadVariableOpReadVariableOp:while_simple_rnn_cell_4_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype0ª
 while/simple_rnn_cell_4/MatMul_1MatMulwhile_placeholder_27while/simple_rnn_cell_4/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¬
while/simple_rnn_cell_4/addAddV2(while/simple_rnn_cell_4/BiasAdd:output:0*while/simple_rnn_cell_4/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@w
while/simple_rnn_cell_4/TanhTanhwhile/simple_rnn_cell_4/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@É
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder while/simple_rnn_cell_4/Tanh:y:0*
_output_shapes
: *
element_dtype0:éèÒM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: }
while/Identity_4Identity while/simple_rnn_cell_4/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@ß

while/NoOpNoOp/^while/simple_rnn_cell_4/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_4/MatMul/ReadVariableOp0^while/simple_rnn_cell_4/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"t
7while_simple_rnn_cell_4_biasadd_readvariableop_resource9while_simple_rnn_cell_4_biasadd_readvariableop_resource_0"v
8while_simple_rnn_cell_4_matmul_1_readvariableop_resource:while_simple_rnn_cell_4_matmul_1_readvariableop_resource_0"r
6while_simple_rnn_cell_4_matmul_readvariableop_resource8while_simple_rnn_cell_4_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ@: : : : : 2`
.while/simple_rnn_cell_4/BiasAdd/ReadVariableOp.while/simple_rnn_cell_4/BiasAdd/ReadVariableOp2^
-while/simple_rnn_cell_4/MatMul/ReadVariableOp-while/simple_rnn_cell_4/MatMul/ReadVariableOp2b
/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
: 
U
¦
%forward_simple_rnn_1_while_body_70411F
Bforward_simple_rnn_1_while_forward_simple_rnn_1_while_loop_counterL
Hforward_simple_rnn_1_while_forward_simple_rnn_1_while_maximum_iterations*
&forward_simple_rnn_1_while_placeholder,
(forward_simple_rnn_1_while_placeholder_1,
(forward_simple_rnn_1_while_placeholder_2,
(forward_simple_rnn_1_while_placeholder_3E
Aforward_simple_rnn_1_while_forward_simple_rnn_1_strided_slice_1_0
}forward_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_forward_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor_0
forward_simple_rnn_1_while_tensorarrayv2read_1_tensorlistgetitem_forward_simple_rnn_1_tensorarrayunstack_1_tensorlistfromtensor_0_
Mforward_simple_rnn_1_while_simple_rnn_cell_4_matmul_readvariableop_resource_0:@@\
Nforward_simple_rnn_1_while_simple_rnn_cell_4_biasadd_readvariableop_resource_0:@a
Oforward_simple_rnn_1_while_simple_rnn_cell_4_matmul_1_readvariableop_resource_0:@@'
#forward_simple_rnn_1_while_identity)
%forward_simple_rnn_1_while_identity_1)
%forward_simple_rnn_1_while_identity_2)
%forward_simple_rnn_1_while_identity_3)
%forward_simple_rnn_1_while_identity_4)
%forward_simple_rnn_1_while_identity_5C
?forward_simple_rnn_1_while_forward_simple_rnn_1_strided_slice_1
{forward_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_forward_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor
forward_simple_rnn_1_while_tensorarrayv2read_1_tensorlistgetitem_forward_simple_rnn_1_tensorarrayunstack_1_tensorlistfromtensor]
Kforward_simple_rnn_1_while_simple_rnn_cell_4_matmul_readvariableop_resource:@@Z
Lforward_simple_rnn_1_while_simple_rnn_cell_4_biasadd_readvariableop_resource:@_
Mforward_simple_rnn_1_while_simple_rnn_cell_4_matmul_1_readvariableop_resource:@@¢Cforward_simple_rnn_1/while/simple_rnn_cell_4/BiasAdd/ReadVariableOp¢Bforward_simple_rnn_1/while/simple_rnn_cell_4/MatMul/ReadVariableOp¢Dforward_simple_rnn_1/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp
Lforward_simple_rnn_1/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   
>forward_simple_rnn_1/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem}forward_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_forward_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor_0&forward_simple_rnn_1_while_placeholderUforward_simple_rnn_1/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
element_dtype0
Nforward_simple_rnn_1/while/TensorArrayV2Read_1/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   
@forward_simple_rnn_1/while/TensorArrayV2Read_1/TensorListGetItemTensorListGetItemforward_simple_rnn_1_while_tensorarrayv2read_1_tensorlistgetitem_forward_simple_rnn_1_tensorarrayunstack_1_tensorlistfromtensor_0&forward_simple_rnn_1_while_placeholderWforward_simple_rnn_1/while/TensorArrayV2Read_1/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0
Ð
Bforward_simple_rnn_1/while/simple_rnn_cell_4/MatMul/ReadVariableOpReadVariableOpMforward_simple_rnn_1_while_simple_rnn_cell_4_matmul_readvariableop_resource_0*
_output_shapes

:@@*
dtype0
3forward_simple_rnn_1/while/simple_rnn_cell_4/MatMulMatMulEforward_simple_rnn_1/while/TensorArrayV2Read/TensorListGetItem:item:0Jforward_simple_rnn_1/while/simple_rnn_cell_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Î
Cforward_simple_rnn_1/while/simple_rnn_cell_4/BiasAdd/ReadVariableOpReadVariableOpNforward_simple_rnn_1_while_simple_rnn_cell_4_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype0ý
4forward_simple_rnn_1/while/simple_rnn_cell_4/BiasAddBiasAdd=forward_simple_rnn_1/while/simple_rnn_cell_4/MatMul:product:0Kforward_simple_rnn_1/while/simple_rnn_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Ô
Dforward_simple_rnn_1/while/simple_rnn_cell_4/MatMul_1/ReadVariableOpReadVariableOpOforward_simple_rnn_1_while_simple_rnn_cell_4_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype0é
5forward_simple_rnn_1/while/simple_rnn_cell_4/MatMul_1MatMul(forward_simple_rnn_1_while_placeholder_3Lforward_simple_rnn_1/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@ë
0forward_simple_rnn_1/while/simple_rnn_cell_4/addAddV2=forward_simple_rnn_1/while/simple_rnn_cell_4/BiasAdd:output:0?forward_simple_rnn_1/while/simple_rnn_cell_4/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¡
1forward_simple_rnn_1/while/simple_rnn_cell_4/TanhTanh4forward_simple_rnn_1/while/simple_rnn_cell_4/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@z
)forward_simple_rnn_1/while/Tile/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      Ö
forward_simple_rnn_1/while/TileTileGforward_simple_rnn_1/while/TensorArrayV2Read_1/TensorListGetItem:item:02forward_simple_rnn_1/while/Tile/multiples:output:0*
T0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿì
#forward_simple_rnn_1/while/SelectV2SelectV2(forward_simple_rnn_1/while/Tile:output:05forward_simple_rnn_1/while/simple_rnn_cell_4/Tanh:y:0(forward_simple_rnn_1_while_placeholder_2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@|
+forward_simple_rnn_1/while/Tile_1/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      Ú
!forward_simple_rnn_1/while/Tile_1TileGforward_simple_rnn_1/while/TensorArrayV2Read_1/TensorListGetItem:item:04forward_simple_rnn_1/while/Tile_1/multiples:output:0*
T0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿð
%forward_simple_rnn_1/while/SelectV2_1SelectV2*forward_simple_rnn_1/while/Tile_1:output:05forward_simple_rnn_1/while/simple_rnn_cell_4/Tanh:y:0(forward_simple_rnn_1_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
?forward_simple_rnn_1/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem(forward_simple_rnn_1_while_placeholder_1&forward_simple_rnn_1_while_placeholder,forward_simple_rnn_1/while/SelectV2:output:0*
_output_shapes
: *
element_dtype0:éèÒb
 forward_simple_rnn_1/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :
forward_simple_rnn_1/while/addAddV2&forward_simple_rnn_1_while_placeholder)forward_simple_rnn_1/while/add/y:output:0*
T0*
_output_shapes
: d
"forward_simple_rnn_1/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :»
 forward_simple_rnn_1/while/add_1AddV2Bforward_simple_rnn_1_while_forward_simple_rnn_1_while_loop_counter+forward_simple_rnn_1/while/add_1/y:output:0*
T0*
_output_shapes
: 
#forward_simple_rnn_1/while/IdentityIdentity$forward_simple_rnn_1/while/add_1:z:0 ^forward_simple_rnn_1/while/NoOp*
T0*
_output_shapes
: ¾
%forward_simple_rnn_1/while/Identity_1IdentityHforward_simple_rnn_1_while_forward_simple_rnn_1_while_maximum_iterations ^forward_simple_rnn_1/while/NoOp*
T0*
_output_shapes
: 
%forward_simple_rnn_1/while/Identity_2Identity"forward_simple_rnn_1/while/add:z:0 ^forward_simple_rnn_1/while/NoOp*
T0*
_output_shapes
: Å
%forward_simple_rnn_1/while/Identity_3IdentityOforward_simple_rnn_1/while/TensorArrayV2Write/TensorListSetItem:output_handle:0 ^forward_simple_rnn_1/while/NoOp*
T0*
_output_shapes
: ³
%forward_simple_rnn_1/while/Identity_4Identity,forward_simple_rnn_1/while/SelectV2:output:0 ^forward_simple_rnn_1/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@µ
%forward_simple_rnn_1/while/Identity_5Identity.forward_simple_rnn_1/while/SelectV2_1:output:0 ^forward_simple_rnn_1/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@³
forward_simple_rnn_1/while/NoOpNoOpD^forward_simple_rnn_1/while/simple_rnn_cell_4/BiasAdd/ReadVariableOpC^forward_simple_rnn_1/while/simple_rnn_cell_4/MatMul/ReadVariableOpE^forward_simple_rnn_1/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
?forward_simple_rnn_1_while_forward_simple_rnn_1_strided_slice_1Aforward_simple_rnn_1_while_forward_simple_rnn_1_strided_slice_1_0"S
#forward_simple_rnn_1_while_identity,forward_simple_rnn_1/while/Identity:output:0"W
%forward_simple_rnn_1_while_identity_1.forward_simple_rnn_1/while/Identity_1:output:0"W
%forward_simple_rnn_1_while_identity_2.forward_simple_rnn_1/while/Identity_2:output:0"W
%forward_simple_rnn_1_while_identity_3.forward_simple_rnn_1/while/Identity_3:output:0"W
%forward_simple_rnn_1_while_identity_4.forward_simple_rnn_1/while/Identity_4:output:0"W
%forward_simple_rnn_1_while_identity_5.forward_simple_rnn_1/while/Identity_5:output:0"
Lforward_simple_rnn_1_while_simple_rnn_cell_4_biasadd_readvariableop_resourceNforward_simple_rnn_1_while_simple_rnn_cell_4_biasadd_readvariableop_resource_0" 
Mforward_simple_rnn_1_while_simple_rnn_cell_4_matmul_1_readvariableop_resourceOforward_simple_rnn_1_while_simple_rnn_cell_4_matmul_1_readvariableop_resource_0"
Kforward_simple_rnn_1_while_simple_rnn_cell_4_matmul_readvariableop_resourceMforward_simple_rnn_1_while_simple_rnn_cell_4_matmul_readvariableop_resource_0"
forward_simple_rnn_1_while_tensorarrayv2read_1_tensorlistgetitem_forward_simple_rnn_1_tensorarrayunstack_1_tensorlistfromtensorforward_simple_rnn_1_while_tensorarrayv2read_1_tensorlistgetitem_forward_simple_rnn_1_tensorarrayunstack_1_tensorlistfromtensor_0"ü
{forward_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_forward_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor}forward_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_forward_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : : 2
Cforward_simple_rnn_1/while/simple_rnn_cell_4/BiasAdd/ReadVariableOpCforward_simple_rnn_1/while/simple_rnn_cell_4/BiasAdd/ReadVariableOp2
Bforward_simple_rnn_1/while/simple_rnn_cell_4/MatMul/ReadVariableOpBforward_simple_rnn_1/while/simple_rnn_cell_4/MatMul/ReadVariableOp2
Dforward_simple_rnn_1/while/simple_rnn_cell_4/MatMul_1/ReadVariableOpDforward_simple_rnn_1/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
ºV
Ì
&backward_simple_rnn_1_while_body_68627H
Dbackward_simple_rnn_1_while_backward_simple_rnn_1_while_loop_counterN
Jbackward_simple_rnn_1_while_backward_simple_rnn_1_while_maximum_iterations+
'backward_simple_rnn_1_while_placeholder-
)backward_simple_rnn_1_while_placeholder_1-
)backward_simple_rnn_1_while_placeholder_2-
)backward_simple_rnn_1_while_placeholder_3G
Cbackward_simple_rnn_1_while_backward_simple_rnn_1_strided_slice_1_0
backward_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_backward_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor_0
backward_simple_rnn_1_while_tensorarrayv2read_1_tensorlistgetitem_backward_simple_rnn_1_tensorarrayunstack_1_tensorlistfromtensor_0`
Nbackward_simple_rnn_1_while_simple_rnn_cell_5_matmul_readvariableop_resource_0:@@]
Obackward_simple_rnn_1_while_simple_rnn_cell_5_biasadd_readvariableop_resource_0:@b
Pbackward_simple_rnn_1_while_simple_rnn_cell_5_matmul_1_readvariableop_resource_0:@@(
$backward_simple_rnn_1_while_identity*
&backward_simple_rnn_1_while_identity_1*
&backward_simple_rnn_1_while_identity_2*
&backward_simple_rnn_1_while_identity_3*
&backward_simple_rnn_1_while_identity_4*
&backward_simple_rnn_1_while_identity_5E
Abackward_simple_rnn_1_while_backward_simple_rnn_1_strided_slice_1
}backward_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_backward_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor
backward_simple_rnn_1_while_tensorarrayv2read_1_tensorlistgetitem_backward_simple_rnn_1_tensorarrayunstack_1_tensorlistfromtensor^
Lbackward_simple_rnn_1_while_simple_rnn_cell_5_matmul_readvariableop_resource:@@[
Mbackward_simple_rnn_1_while_simple_rnn_cell_5_biasadd_readvariableop_resource:@`
Nbackward_simple_rnn_1_while_simple_rnn_cell_5_matmul_1_readvariableop_resource:@@¢Dbackward_simple_rnn_1/while/simple_rnn_cell_5/BiasAdd/ReadVariableOp¢Cbackward_simple_rnn_1/while/simple_rnn_cell_5/MatMul/ReadVariableOp¢Ebackward_simple_rnn_1/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp
Mbackward_simple_rnn_1/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   
?backward_simple_rnn_1/while/TensorArrayV2Read/TensorListGetItemTensorListGetItembackward_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_backward_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor_0'backward_simple_rnn_1_while_placeholderVbackward_simple_rnn_1/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
element_dtype0 
Obackward_simple_rnn_1/while/TensorArrayV2Read_1/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   
Abackward_simple_rnn_1/while/TensorArrayV2Read_1/TensorListGetItemTensorListGetItembackward_simple_rnn_1_while_tensorarrayv2read_1_tensorlistgetitem_backward_simple_rnn_1_tensorarrayunstack_1_tensorlistfromtensor_0'backward_simple_rnn_1_while_placeholderXbackward_simple_rnn_1/while/TensorArrayV2Read_1/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0
Ò
Cbackward_simple_rnn_1/while/simple_rnn_cell_5/MatMul/ReadVariableOpReadVariableOpNbackward_simple_rnn_1_while_simple_rnn_cell_5_matmul_readvariableop_resource_0*
_output_shapes

:@@*
dtype0
4backward_simple_rnn_1/while/simple_rnn_cell_5/MatMulMatMulFbackward_simple_rnn_1/while/TensorArrayV2Read/TensorListGetItem:item:0Kbackward_simple_rnn_1/while/simple_rnn_cell_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Ð
Dbackward_simple_rnn_1/while/simple_rnn_cell_5/BiasAdd/ReadVariableOpReadVariableOpObackward_simple_rnn_1_while_simple_rnn_cell_5_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype0
5backward_simple_rnn_1/while/simple_rnn_cell_5/BiasAddBiasAdd>backward_simple_rnn_1/while/simple_rnn_cell_5/MatMul:product:0Lbackward_simple_rnn_1/while/simple_rnn_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Ö
Ebackward_simple_rnn_1/while/simple_rnn_cell_5/MatMul_1/ReadVariableOpReadVariableOpPbackward_simple_rnn_1_while_simple_rnn_cell_5_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype0ì
6backward_simple_rnn_1/while/simple_rnn_cell_5/MatMul_1MatMul)backward_simple_rnn_1_while_placeholder_3Mbackward_simple_rnn_1/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@î
1backward_simple_rnn_1/while/simple_rnn_cell_5/addAddV2>backward_simple_rnn_1/while/simple_rnn_cell_5/BiasAdd:output:0@backward_simple_rnn_1/while/simple_rnn_cell_5/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@£
2backward_simple_rnn_1/while/simple_rnn_cell_5/TanhTanh5backward_simple_rnn_1/while/simple_rnn_cell_5/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@{
*backward_simple_rnn_1/while/Tile/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      Ù
 backward_simple_rnn_1/while/TileTileHbackward_simple_rnn_1/while/TensorArrayV2Read_1/TensorListGetItem:item:03backward_simple_rnn_1/while/Tile/multiples:output:0*
T0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿð
$backward_simple_rnn_1/while/SelectV2SelectV2)backward_simple_rnn_1/while/Tile:output:06backward_simple_rnn_1/while/simple_rnn_cell_5/Tanh:y:0)backward_simple_rnn_1_while_placeholder_2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@}
,backward_simple_rnn_1/while/Tile_1/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      Ý
"backward_simple_rnn_1/while/Tile_1TileHbackward_simple_rnn_1/while/TensorArrayV2Read_1/TensorListGetItem:item:05backward_simple_rnn_1/while/Tile_1/multiples:output:0*
T0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿô
&backward_simple_rnn_1/while/SelectV2_1SelectV2+backward_simple_rnn_1/while/Tile_1:output:06backward_simple_rnn_1/while/simple_rnn_cell_5/Tanh:y:0)backward_simple_rnn_1_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
@backward_simple_rnn_1/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem)backward_simple_rnn_1_while_placeholder_1'backward_simple_rnn_1_while_placeholder-backward_simple_rnn_1/while/SelectV2:output:0*
_output_shapes
: *
element_dtype0:éèÒc
!backward_simple_rnn_1/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :
backward_simple_rnn_1/while/addAddV2'backward_simple_rnn_1_while_placeholder*backward_simple_rnn_1/while/add/y:output:0*
T0*
_output_shapes
: e
#backward_simple_rnn_1/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :¿
!backward_simple_rnn_1/while/add_1AddV2Dbackward_simple_rnn_1_while_backward_simple_rnn_1_while_loop_counter,backward_simple_rnn_1/while/add_1/y:output:0*
T0*
_output_shapes
: 
$backward_simple_rnn_1/while/IdentityIdentity%backward_simple_rnn_1/while/add_1:z:0!^backward_simple_rnn_1/while/NoOp*
T0*
_output_shapes
: Â
&backward_simple_rnn_1/while/Identity_1IdentityJbackward_simple_rnn_1_while_backward_simple_rnn_1_while_maximum_iterations!^backward_simple_rnn_1/while/NoOp*
T0*
_output_shapes
: 
&backward_simple_rnn_1/while/Identity_2Identity#backward_simple_rnn_1/while/add:z:0!^backward_simple_rnn_1/while/NoOp*
T0*
_output_shapes
: È
&backward_simple_rnn_1/while/Identity_3IdentityPbackward_simple_rnn_1/while/TensorArrayV2Write/TensorListSetItem:output_handle:0!^backward_simple_rnn_1/while/NoOp*
T0*
_output_shapes
: ¶
&backward_simple_rnn_1/while/Identity_4Identity-backward_simple_rnn_1/while/SelectV2:output:0!^backward_simple_rnn_1/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¸
&backward_simple_rnn_1/while/Identity_5Identity/backward_simple_rnn_1/while/SelectV2_1:output:0!^backward_simple_rnn_1/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@·
 backward_simple_rnn_1/while/NoOpNoOpE^backward_simple_rnn_1/while/simple_rnn_cell_5/BiasAdd/ReadVariableOpD^backward_simple_rnn_1/while/simple_rnn_cell_5/MatMul/ReadVariableOpF^backward_simple_rnn_1/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
Abackward_simple_rnn_1_while_backward_simple_rnn_1_strided_slice_1Cbackward_simple_rnn_1_while_backward_simple_rnn_1_strided_slice_1_0"U
$backward_simple_rnn_1_while_identity-backward_simple_rnn_1/while/Identity:output:0"Y
&backward_simple_rnn_1_while_identity_1/backward_simple_rnn_1/while/Identity_1:output:0"Y
&backward_simple_rnn_1_while_identity_2/backward_simple_rnn_1/while/Identity_2:output:0"Y
&backward_simple_rnn_1_while_identity_3/backward_simple_rnn_1/while/Identity_3:output:0"Y
&backward_simple_rnn_1_while_identity_4/backward_simple_rnn_1/while/Identity_4:output:0"Y
&backward_simple_rnn_1_while_identity_5/backward_simple_rnn_1/while/Identity_5:output:0" 
Mbackward_simple_rnn_1_while_simple_rnn_cell_5_biasadd_readvariableop_resourceObackward_simple_rnn_1_while_simple_rnn_cell_5_biasadd_readvariableop_resource_0"¢
Nbackward_simple_rnn_1_while_simple_rnn_cell_5_matmul_1_readvariableop_resourcePbackward_simple_rnn_1_while_simple_rnn_cell_5_matmul_1_readvariableop_resource_0"
Lbackward_simple_rnn_1_while_simple_rnn_cell_5_matmul_readvariableop_resourceNbackward_simple_rnn_1_while_simple_rnn_cell_5_matmul_readvariableop_resource_0"
backward_simple_rnn_1_while_tensorarrayv2read_1_tensorlistgetitem_backward_simple_rnn_1_tensorarrayunstack_1_tensorlistfromtensorbackward_simple_rnn_1_while_tensorarrayv2read_1_tensorlistgetitem_backward_simple_rnn_1_tensorarrayunstack_1_tensorlistfromtensor_0"
}backward_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_backward_simple_rnn_1_tensorarrayunstack_tensorlistfromtensorbackward_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_backward_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : : 2
Dbackward_simple_rnn_1/while/simple_rnn_cell_5/BiasAdd/ReadVariableOpDbackward_simple_rnn_1/while/simple_rnn_cell_5/BiasAdd/ReadVariableOp2
Cbackward_simple_rnn_1/while/simple_rnn_cell_5/MatMul/ReadVariableOpCbackward_simple_rnn_1/while/simple_rnn_cell_5/MatMul/ReadVariableOp2
Ebackward_simple_rnn_1/while/simple_rnn_cell_5/MatMul_1/ReadVariableOpEbackward_simple_rnn_1/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
j

6bidirectional_1_backward_simple_rnn_1_while_body_69190h
dbidirectional_1_backward_simple_rnn_1_while_bidirectional_1_backward_simple_rnn_1_while_loop_countern
jbidirectional_1_backward_simple_rnn_1_while_bidirectional_1_backward_simple_rnn_1_while_maximum_iterations;
7bidirectional_1_backward_simple_rnn_1_while_placeholder=
9bidirectional_1_backward_simple_rnn_1_while_placeholder_1=
9bidirectional_1_backward_simple_rnn_1_while_placeholder_2=
9bidirectional_1_backward_simple_rnn_1_while_placeholder_3g
cbidirectional_1_backward_simple_rnn_1_while_bidirectional_1_backward_simple_rnn_1_strided_slice_1_0¤
bidirectional_1_backward_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_bidirectional_1_backward_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor_0¨
£bidirectional_1_backward_simple_rnn_1_while_tensorarrayv2read_1_tensorlistgetitem_bidirectional_1_backward_simple_rnn_1_tensorarrayunstack_1_tensorlistfromtensor_0p
^bidirectional_1_backward_simple_rnn_1_while_simple_rnn_cell_5_matmul_readvariableop_resource_0:@@m
_bidirectional_1_backward_simple_rnn_1_while_simple_rnn_cell_5_biasadd_readvariableop_resource_0:@r
`bidirectional_1_backward_simple_rnn_1_while_simple_rnn_cell_5_matmul_1_readvariableop_resource_0:@@8
4bidirectional_1_backward_simple_rnn_1_while_identity:
6bidirectional_1_backward_simple_rnn_1_while_identity_1:
6bidirectional_1_backward_simple_rnn_1_while_identity_2:
6bidirectional_1_backward_simple_rnn_1_while_identity_3:
6bidirectional_1_backward_simple_rnn_1_while_identity_4:
6bidirectional_1_backward_simple_rnn_1_while_identity_5e
abidirectional_1_backward_simple_rnn_1_while_bidirectional_1_backward_simple_rnn_1_strided_slice_1¢
bidirectional_1_backward_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_bidirectional_1_backward_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor¦
¡bidirectional_1_backward_simple_rnn_1_while_tensorarrayv2read_1_tensorlistgetitem_bidirectional_1_backward_simple_rnn_1_tensorarrayunstack_1_tensorlistfromtensorn
\bidirectional_1_backward_simple_rnn_1_while_simple_rnn_cell_5_matmul_readvariableop_resource:@@k
]bidirectional_1_backward_simple_rnn_1_while_simple_rnn_cell_5_biasadd_readvariableop_resource:@p
^bidirectional_1_backward_simple_rnn_1_while_simple_rnn_cell_5_matmul_1_readvariableop_resource:@@¢Tbidirectional_1/backward_simple_rnn_1/while/simple_rnn_cell_5/BiasAdd/ReadVariableOp¢Sbidirectional_1/backward_simple_rnn_1/while/simple_rnn_cell_5/MatMul/ReadVariableOp¢Ubidirectional_1/backward_simple_rnn_1/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp®
]bidirectional_1/backward_simple_rnn_1/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   å
Obidirectional_1/backward_simple_rnn_1/while/TensorArrayV2Read/TensorListGetItemTensorListGetItembidirectional_1_backward_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_bidirectional_1_backward_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor_07bidirectional_1_backward_simple_rnn_1_while_placeholderfbidirectional_1/backward_simple_rnn_1/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
element_dtype0°
_bidirectional_1/backward_simple_rnn_1/while/TensorArrayV2Read_1/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   í
Qbidirectional_1/backward_simple_rnn_1/while/TensorArrayV2Read_1/TensorListGetItemTensorListGetItem£bidirectional_1_backward_simple_rnn_1_while_tensorarrayv2read_1_tensorlistgetitem_bidirectional_1_backward_simple_rnn_1_tensorarrayunstack_1_tensorlistfromtensor_07bidirectional_1_backward_simple_rnn_1_while_placeholderhbidirectional_1/backward_simple_rnn_1/while/TensorArrayV2Read_1/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0
ò
Sbidirectional_1/backward_simple_rnn_1/while/simple_rnn_cell_5/MatMul/ReadVariableOpReadVariableOp^bidirectional_1_backward_simple_rnn_1_while_simple_rnn_cell_5_matmul_readvariableop_resource_0*
_output_shapes

:@@*
dtype0µ
Dbidirectional_1/backward_simple_rnn_1/while/simple_rnn_cell_5/MatMulMatMulVbidirectional_1/backward_simple_rnn_1/while/TensorArrayV2Read/TensorListGetItem:item:0[bidirectional_1/backward_simple_rnn_1/while/simple_rnn_cell_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@ð
Tbidirectional_1/backward_simple_rnn_1/while/simple_rnn_cell_5/BiasAdd/ReadVariableOpReadVariableOp_bidirectional_1_backward_simple_rnn_1_while_simple_rnn_cell_5_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype0°
Ebidirectional_1/backward_simple_rnn_1/while/simple_rnn_cell_5/BiasAddBiasAddNbidirectional_1/backward_simple_rnn_1/while/simple_rnn_cell_5/MatMul:product:0\bidirectional_1/backward_simple_rnn_1/while/simple_rnn_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@ö
Ubidirectional_1/backward_simple_rnn_1/while/simple_rnn_cell_5/MatMul_1/ReadVariableOpReadVariableOp`bidirectional_1_backward_simple_rnn_1_while_simple_rnn_cell_5_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype0
Fbidirectional_1/backward_simple_rnn_1/while/simple_rnn_cell_5/MatMul_1MatMul9bidirectional_1_backward_simple_rnn_1_while_placeholder_3]bidirectional_1/backward_simple_rnn_1/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
Abidirectional_1/backward_simple_rnn_1/while/simple_rnn_cell_5/addAddV2Nbidirectional_1/backward_simple_rnn_1/while/simple_rnn_cell_5/BiasAdd:output:0Pbidirectional_1/backward_simple_rnn_1/while/simple_rnn_cell_5/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Ã
Bbidirectional_1/backward_simple_rnn_1/while/simple_rnn_cell_5/TanhTanhEbidirectional_1/backward_simple_rnn_1/while/simple_rnn_cell_5/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
:bidirectional_1/backward_simple_rnn_1/while/Tile/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      
0bidirectional_1/backward_simple_rnn_1/while/TileTileXbidirectional_1/backward_simple_rnn_1/while/TensorArrayV2Read_1/TensorListGetItem:item:0Cbidirectional_1/backward_simple_rnn_1/while/Tile/multiples:output:0*
T0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ°
4bidirectional_1/backward_simple_rnn_1/while/SelectV2SelectV29bidirectional_1/backward_simple_rnn_1/while/Tile:output:0Fbidirectional_1/backward_simple_rnn_1/while/simple_rnn_cell_5/Tanh:y:09bidirectional_1_backward_simple_rnn_1_while_placeholder_2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
<bidirectional_1/backward_simple_rnn_1/while/Tile_1/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      
2bidirectional_1/backward_simple_rnn_1/while/Tile_1TileXbidirectional_1/backward_simple_rnn_1/while/TensorArrayV2Read_1/TensorListGetItem:item:0Ebidirectional_1/backward_simple_rnn_1/while/Tile_1/multiples:output:0*
T0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´
6bidirectional_1/backward_simple_rnn_1/while/SelectV2_1SelectV2;bidirectional_1/backward_simple_rnn_1/while/Tile_1:output:0Fbidirectional_1/backward_simple_rnn_1/while/simple_rnn_cell_5/Tanh:y:09bidirectional_1_backward_simple_rnn_1_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Ø
Pbidirectional_1/backward_simple_rnn_1/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem9bidirectional_1_backward_simple_rnn_1_while_placeholder_17bidirectional_1_backward_simple_rnn_1_while_placeholder=bidirectional_1/backward_simple_rnn_1/while/SelectV2:output:0*
_output_shapes
: *
element_dtype0:éèÒs
1bidirectional_1/backward_simple_rnn_1/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :Î
/bidirectional_1/backward_simple_rnn_1/while/addAddV27bidirectional_1_backward_simple_rnn_1_while_placeholder:bidirectional_1/backward_simple_rnn_1/while/add/y:output:0*
T0*
_output_shapes
: u
3bidirectional_1/backward_simple_rnn_1/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :ÿ
1bidirectional_1/backward_simple_rnn_1/while/add_1AddV2dbidirectional_1_backward_simple_rnn_1_while_bidirectional_1_backward_simple_rnn_1_while_loop_counter<bidirectional_1/backward_simple_rnn_1/while/add_1/y:output:0*
T0*
_output_shapes
: Ë
4bidirectional_1/backward_simple_rnn_1/while/IdentityIdentity5bidirectional_1/backward_simple_rnn_1/while/add_1:z:01^bidirectional_1/backward_simple_rnn_1/while/NoOp*
T0*
_output_shapes
: 
6bidirectional_1/backward_simple_rnn_1/while/Identity_1Identityjbidirectional_1_backward_simple_rnn_1_while_bidirectional_1_backward_simple_rnn_1_while_maximum_iterations1^bidirectional_1/backward_simple_rnn_1/while/NoOp*
T0*
_output_shapes
: Ë
6bidirectional_1/backward_simple_rnn_1/while/Identity_2Identity3bidirectional_1/backward_simple_rnn_1/while/add:z:01^bidirectional_1/backward_simple_rnn_1/while/NoOp*
T0*
_output_shapes
: ø
6bidirectional_1/backward_simple_rnn_1/while/Identity_3Identity`bidirectional_1/backward_simple_rnn_1/while/TensorArrayV2Write/TensorListSetItem:output_handle:01^bidirectional_1/backward_simple_rnn_1/while/NoOp*
T0*
_output_shapes
: æ
6bidirectional_1/backward_simple_rnn_1/while/Identity_4Identity=bidirectional_1/backward_simple_rnn_1/while/SelectV2:output:01^bidirectional_1/backward_simple_rnn_1/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@è
6bidirectional_1/backward_simple_rnn_1/while/Identity_5Identity?bidirectional_1/backward_simple_rnn_1/while/SelectV2_1:output:01^bidirectional_1/backward_simple_rnn_1/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@÷
0bidirectional_1/backward_simple_rnn_1/while/NoOpNoOpU^bidirectional_1/backward_simple_rnn_1/while/simple_rnn_cell_5/BiasAdd/ReadVariableOpT^bidirectional_1/backward_simple_rnn_1/while/simple_rnn_cell_5/MatMul/ReadVariableOpV^bidirectional_1/backward_simple_rnn_1/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "È
abidirectional_1_backward_simple_rnn_1_while_bidirectional_1_backward_simple_rnn_1_strided_slice_1cbidirectional_1_backward_simple_rnn_1_while_bidirectional_1_backward_simple_rnn_1_strided_slice_1_0"u
4bidirectional_1_backward_simple_rnn_1_while_identity=bidirectional_1/backward_simple_rnn_1/while/Identity:output:0"y
6bidirectional_1_backward_simple_rnn_1_while_identity_1?bidirectional_1/backward_simple_rnn_1/while/Identity_1:output:0"y
6bidirectional_1_backward_simple_rnn_1_while_identity_2?bidirectional_1/backward_simple_rnn_1/while/Identity_2:output:0"y
6bidirectional_1_backward_simple_rnn_1_while_identity_3?bidirectional_1/backward_simple_rnn_1/while/Identity_3:output:0"y
6bidirectional_1_backward_simple_rnn_1_while_identity_4?bidirectional_1/backward_simple_rnn_1/while/Identity_4:output:0"y
6bidirectional_1_backward_simple_rnn_1_while_identity_5?bidirectional_1/backward_simple_rnn_1/while/Identity_5:output:0"À
]bidirectional_1_backward_simple_rnn_1_while_simple_rnn_cell_5_biasadd_readvariableop_resource_bidirectional_1_backward_simple_rnn_1_while_simple_rnn_cell_5_biasadd_readvariableop_resource_0"Â
^bidirectional_1_backward_simple_rnn_1_while_simple_rnn_cell_5_matmul_1_readvariableop_resource`bidirectional_1_backward_simple_rnn_1_while_simple_rnn_cell_5_matmul_1_readvariableop_resource_0"¾
\bidirectional_1_backward_simple_rnn_1_while_simple_rnn_cell_5_matmul_readvariableop_resource^bidirectional_1_backward_simple_rnn_1_while_simple_rnn_cell_5_matmul_readvariableop_resource_0"Ê
¡bidirectional_1_backward_simple_rnn_1_while_tensorarrayv2read_1_tensorlistgetitem_bidirectional_1_backward_simple_rnn_1_tensorarrayunstack_1_tensorlistfromtensor£bidirectional_1_backward_simple_rnn_1_while_tensorarrayv2read_1_tensorlistgetitem_bidirectional_1_backward_simple_rnn_1_tensorarrayunstack_1_tensorlistfromtensor_0"Â
bidirectional_1_backward_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_bidirectional_1_backward_simple_rnn_1_tensorarrayunstack_tensorlistfromtensorbidirectional_1_backward_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_bidirectional_1_backward_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : : 2¬
Tbidirectional_1/backward_simple_rnn_1/while/simple_rnn_cell_5/BiasAdd/ReadVariableOpTbidirectional_1/backward_simple_rnn_1/while/simple_rnn_cell_5/BiasAdd/ReadVariableOp2ª
Sbidirectional_1/backward_simple_rnn_1/while/simple_rnn_cell_5/MatMul/ReadVariableOpSbidirectional_1/backward_simple_rnn_1/while/simple_rnn_cell_5/MatMul/ReadVariableOp2®
Ubidirectional_1/backward_simple_rnn_1/while/simple_rnn_cell_5/MatMul_1/ReadVariableOpUbidirectional_1/backward_simple_rnn_1/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 

×
&backward_simple_rnn_1_while_cond_70275H
Dbackward_simple_rnn_1_while_backward_simple_rnn_1_while_loop_counterN
Jbackward_simple_rnn_1_while_backward_simple_rnn_1_while_maximum_iterations+
'backward_simple_rnn_1_while_placeholder-
)backward_simple_rnn_1_while_placeholder_1-
)backward_simple_rnn_1_while_placeholder_2-
)backward_simple_rnn_1_while_placeholder_3J
Fbackward_simple_rnn_1_while_less_backward_simple_rnn_1_strided_slice_1_
[backward_simple_rnn_1_while_backward_simple_rnn_1_while_cond_70275___redundant_placeholder0_
[backward_simple_rnn_1_while_backward_simple_rnn_1_while_cond_70275___redundant_placeholder1_
[backward_simple_rnn_1_while_backward_simple_rnn_1_while_cond_70275___redundant_placeholder2_
[backward_simple_rnn_1_while_backward_simple_rnn_1_while_cond_70275___redundant_placeholder3_
[backward_simple_rnn_1_while_backward_simple_rnn_1_while_cond_70275___redundant_placeholder4(
$backward_simple_rnn_1_while_identity
º
 backward_simple_rnn_1/while/LessLess'backward_simple_rnn_1_while_placeholderFbackward_simple_rnn_1_while_less_backward_simple_rnn_1_strided_slice_1*
T0*
_output_shapes
: w
$backward_simple_rnn_1/while/IdentityIdentity$backward_simple_rnn_1/while/Less:z:0*
T0
*
_output_shapes
: "U
$backward_simple_rnn_1_while_identity-backward_simple_rnn_1/while/Identity:output:0*(
_construction_contextkEagerRuntime*W
_input_shapesF
D: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: :::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
::

_output_shapes
:
¾

'__inference_dense_3_layer_call_fn_70655

inputs
unknown:@
	unknown_0:
identity¢StatefulPartitionedCall×
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_3_layer_call_and_return_conditional_losses_68370o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
¤
À
4__inference_forward_simple_rnn_1_layer_call_fn_70676
inputs_0
unknown:@@
	unknown_0:@
	unknown_1:@@
identity¢StatefulPartitionedCalló
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *X
fSRQ
O__inference_forward_simple_rnn_1_layer_call_and_return_conditional_losses_67020o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
"
_user_specified_name
inputs/0
ý


,__inference_sequential_1_layer_call_fn_68846
embedding_1_input
unknown:	© @
	unknown_0:@@
	unknown_1:@
	unknown_2:@@
	unknown_3:@@
	unknown_4:@
	unknown_5:@@
	unknown_6:	@
	unknown_7:@
	unknown_8:@
	unknown_9:
identity¢StatefulPartitionedCallÜ
StatefulPartitionedCallStatefulPartitionedCallembedding_1_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_sequential_1_layer_call_and_return_conditional_losses_68794o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:c _
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
+
_user_specified_nameembedding_1_input
Ð

G__inference_sequential_1_layer_call_and_return_conditional_losses_68878
embedding_1_input$
embedding_1_68849:	© @'
bidirectional_1_68854:@@#
bidirectional_1_68856:@'
bidirectional_1_68858:@@'
bidirectional_1_68860:@@#
bidirectional_1_68862:@'
bidirectional_1_68864:@@ 
dense_2_68867:	@
dense_2_68869:@
dense_3_68872:@
dense_3_68874:
identity¢'bidirectional_1/StatefulPartitionedCall¢dense_2/StatefulPartitionedCall¢dense_3/StatefulPartitionedCall¢#embedding_1/StatefulPartitionedCallü
#embedding_1/StatefulPartitionedCallStatefulPartitionedCallembedding_1_inputembedding_1_68849*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_embedding_1_layer_call_and_return_conditional_losses_68057[
embedding_1/NotEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
embedding_1/NotEqualNotEqualembedding_1_inputembedding_1/NotEqual/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¯
'bidirectional_1/StatefulPartitionedCallStatefulPartitionedCall,embedding_1/StatefulPartitionedCall:output:0embedding_1/NotEqual:z:0bidirectional_1_68854bidirectional_1_68856bidirectional_1_68858bidirectional_1_68860bidirectional_1_68862bidirectional_1_68864*
Tin

2
*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_bidirectional_1_layer_call_and_return_conditional_losses_68329
dense_2/StatefulPartitionedCallStatefulPartitionedCall0bidirectional_1/StatefulPartitionedCall:output:0dense_2_68867dense_2_68869*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_2_layer_call_and_return_conditional_losses_68354
dense_3/StatefulPartitionedCallStatefulPartitionedCall(dense_2/StatefulPartitionedCall:output:0dense_3_68872dense_3_68874*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_3_layer_call_and_return_conditional_losses_68370w
IdentityIdentity(dense_3/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÚ
NoOpNoOp(^bidirectional_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall$^embedding_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : 2R
'bidirectional_1/StatefulPartitionedCall'bidirectional_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2J
#embedding_1/StatefulPartitionedCall#embedding_1/StatefulPartitionedCall:c _
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
+
_user_specified_nameembedding_1_input

é
L__inference_simple_rnn_cell_4_layer_call_and_return_conditional_losses_71687

inputs
states_00
matmul_readvariableop_resource:@@-
biasadd_readvariableop_resource:@2
 matmul_1_readvariableop_resource:@@
identity

identity_1¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype0o
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@d
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@G
TanhTanhadd:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@W
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Y

Identity_1IdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
"
_user_specified_name
states/0
4

O__inference_forward_simple_rnn_1_layer_call_and_return_conditional_losses_67179

inputs)
simple_rnn_cell_4_67104:@@%
simple_rnn_cell_4_67106:@)
simple_rnn_cell_4_67108:@@
identity¢)simple_rnn_cell_4/StatefulPartitionedCall¢while;
ShapeShapeinputs*
T0*
_output_shapes
:]
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
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
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
:ÿÿÿÿÿÿÿÿÿ@c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
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
valueB:Û
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_maskã
)simple_rnn_cell_4/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0simple_rnn_cell_4_67104simple_rnn_cell_4_67106simple_rnn_cell_4_67108*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_simple_rnn_cell_4_layer_call_and_return_conditional_losses_67064n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0simple_rnn_cell_4_67104simple_rnn_cell_4_67106simple_rnn_cell_4_67108*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ@: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_67116*
condR
while_cond_67115*8
output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ@: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   Ë
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@z
NoOpNoOp*^simple_rnn_cell_4/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@: : : 2V
)simple_rnn_cell_4/StatefulPartitionedCall)simple_rnn_cell_4/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
á=
Ä
O__inference_forward_simple_rnn_1_layer_call_and_return_conditional_losses_70925
inputs_0B
0simple_rnn_cell_4_matmul_readvariableop_resource:@@?
1simple_rnn_cell_4_biasadd_readvariableop_resource:@D
2simple_rnn_cell_4_matmul_1_readvariableop_resource:@@
identity¢(simple_rnn_cell_4/BiasAdd/ReadVariableOp¢'simple_rnn_cell_4/MatMul/ReadVariableOp¢)simple_rnn_cell_4/MatMul_1/ReadVariableOp¢while=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
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
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
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
:ÿÿÿÿÿÿÿÿÿ@c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
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
valueB:Û
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_mask
'simple_rnn_cell_4/MatMul/ReadVariableOpReadVariableOp0simple_rnn_cell_4_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype0
simple_rnn_cell_4/MatMulMatMulstrided_slice_2:output:0/simple_rnn_cell_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
(simple_rnn_cell_4/BiasAdd/ReadVariableOpReadVariableOp1simple_rnn_cell_4_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0¬
simple_rnn_cell_4/BiasAddBiasAdd"simple_rnn_cell_4/MatMul:product:00simple_rnn_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
)simple_rnn_cell_4/MatMul_1/ReadVariableOpReadVariableOp2simple_rnn_cell_4_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype0
simple_rnn_cell_4/MatMul_1MatMulzeros:output:01simple_rnn_cell_4/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
simple_rnn_cell_4/addAddV2"simple_rnn_cell_4/BiasAdd:output:0$simple_rnn_cell_4/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@k
simple_rnn_cell_4/TanhTanhsimple_rnn_cell_4/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ö
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:00simple_rnn_cell_4_matmul_readvariableop_resource1simple_rnn_cell_4_biasadd_readvariableop_resource2simple_rnn_cell_4_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ@: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_70859*
condR
while_cond_70858*8
output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ@: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   Ë
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Ï
NoOpNoOp)^simple_rnn_cell_4/BiasAdd/ReadVariableOp(^simple_rnn_cell_4/MatMul/ReadVariableOp*^simple_rnn_cell_4/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@: : : 2T
(simple_rnn_cell_4/BiasAdd/ReadVariableOp(simple_rnn_cell_4/BiasAdd/ReadVariableOp2R
'simple_rnn_cell_4/MatMul/ReadVariableOp'simple_rnn_cell_4/MatMul/ReadVariableOp2V
)simple_rnn_cell_4/MatMul_1/ReadVariableOp)simple_rnn_cell_4/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
"
_user_specified_name
inputs/0
ã5
 
P__inference_backward_simple_rnn_1_layer_call_and_return_conditional_losses_67475

inputs)
simple_rnn_cell_5_67400:@@%
simple_rnn_cell_5_67402:@)
simple_rnn_cell_5_67404:@@
identity¢)simple_rnn_cell_5/StatefulPartitionedCall¢while;
ShapeShapeinputs*
T0*
_output_shapes
:]
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
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
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
:ÿÿÿÿÿÿÿÿÿ@c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
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
valueB:Û
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒX
ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: }
	ReverseV2	ReverseV2transpose:y:0ReverseV2/axis:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   å
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensorReverseV2:output:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_maskã
)simple_rnn_cell_5/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0simple_rnn_cell_5_67400simple_rnn_cell_5_67402simple_rnn_cell_5_67404*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_simple_rnn_cell_5_layer_call_and_return_conditional_losses_67358n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0simple_rnn_cell_5_67400simple_rnn_cell_5_67402simple_rnn_cell_5_67404*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ@: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_67412*
condR
while_cond_67411*8
output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ@: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   Ë
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@z
NoOpNoOp*^simple_rnn_cell_5/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@: : : 2V
)simple_rnn_cell_5/StatefulPartitionedCall)simple_rnn_cell_5/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs

×
&backward_simple_rnn_1_while_cond_68245H
Dbackward_simple_rnn_1_while_backward_simple_rnn_1_while_loop_counterN
Jbackward_simple_rnn_1_while_backward_simple_rnn_1_while_maximum_iterations+
'backward_simple_rnn_1_while_placeholder-
)backward_simple_rnn_1_while_placeholder_1-
)backward_simple_rnn_1_while_placeholder_2-
)backward_simple_rnn_1_while_placeholder_3J
Fbackward_simple_rnn_1_while_less_backward_simple_rnn_1_strided_slice_1_
[backward_simple_rnn_1_while_backward_simple_rnn_1_while_cond_68245___redundant_placeholder0_
[backward_simple_rnn_1_while_backward_simple_rnn_1_while_cond_68245___redundant_placeholder1_
[backward_simple_rnn_1_while_backward_simple_rnn_1_while_cond_68245___redundant_placeholder2_
[backward_simple_rnn_1_while_backward_simple_rnn_1_while_cond_68245___redundant_placeholder3_
[backward_simple_rnn_1_while_backward_simple_rnn_1_while_cond_68245___redundant_placeholder4(
$backward_simple_rnn_1_while_identity
º
 backward_simple_rnn_1/while/LessLess'backward_simple_rnn_1_while_placeholderFbackward_simple_rnn_1_while_less_backward_simple_rnn_1_strided_slice_1*
T0*
_output_shapes
: w
$backward_simple_rnn_1/while/IdentityIdentity$backward_simple_rnn_1/while/Less:z:0*
T0
*
_output_shapes
: "U
$backward_simple_rnn_1_while_identity-backward_simple_rnn_1/while/Identity:output:0*(
_construction_contextkEagerRuntime*W
_input_shapesF
D: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: :::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
::

_output_shapes
:
·

Ù
1__inference_simple_rnn_cell_5_layer_call_fn_71701

inputs
states_0
unknown:@@
	unknown_0:@
	unknown_1:@@
identity

identity_1¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0unknown	unknown_0	unknown_1*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_simple_rnn_cell_5_layer_call_and_return_conditional_losses_67238o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
"
_user_specified_name
states/0
ü
ç
L__inference_simple_rnn_cell_4_layer_call_and_return_conditional_losses_66944

inputs

states0
matmul_readvariableop_resource:@@-
biasadd_readvariableop_resource:@2
 matmul_1_readvariableop_resource:@@
identity

identity_1¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype0m
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@d
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@G
TanhTanhadd:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@W
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Y

Identity_1IdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_namestates
·

Ù
1__inference_simple_rnn_cell_4_layer_call_fn_71653

inputs
states_0
unknown:@@
	unknown_0:@
	unknown_1:@@
identity

identity_1¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0unknown	unknown_0	unknown_1*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_simple_rnn_cell_4_layer_call_and_return_conditional_losses_67064o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
"
_user_specified_name
states/0
ß	
£
F__inference_embedding_1_layer_call_and_return_conditional_losses_68057

inputs)
embedding_lookup_68051:	© @
identity¢embedding_lookup^
CastCastinputs*

DstT0*

SrcT0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÂ
embedding_lookupResourceGatherembedding_lookup_68051Cast:y:0*
Tindices0*)
_class
loc:@embedding_lookup/68051*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*
dtype0ª
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*)
_class
loc:@embedding_lookup/68051*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@Y
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: 2$
embedding_lookupembedding_lookup:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Õ
¥
while_cond_67115
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_67115___redundant_placeholder03
/while_while_cond_67115___redundant_placeholder13
/while_while_cond_67115___redundant_placeholder23
/while_while_cond_67115___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :ÿÿÿÿÿÿÿÿÿ@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
:
Á
×
J__inference_bidirectional_1_layer_call_and_return_conditional_losses_68025

inputs,
forward_simple_rnn_1_68008:@@(
forward_simple_rnn_1_68010:@,
forward_simple_rnn_1_68012:@@-
backward_simple_rnn_1_68015:@@)
backward_simple_rnn_1_68017:@-
backward_simple_rnn_1_68019:@@
identity¢-backward_simple_rnn_1/StatefulPartitionedCall¢,forward_simple_rnn_1/StatefulPartitionedCall»
,forward_simple_rnn_1/StatefulPartitionedCallStatefulPartitionedCallinputsforward_simple_rnn_1_68008forward_simple_rnn_1_68010forward_simple_rnn_1_68012*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *X
fSRQ
O__inference_forward_simple_rnn_1_layer_call_and_return_conditional_losses_67994À
-backward_simple_rnn_1/StatefulPartitionedCallStatefulPartitionedCallinputsbackward_simple_rnn_1_68015backward_simple_rnn_1_68017backward_simple_rnn_1_68019*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Y
fTRR
P__inference_backward_simple_rnn_1_layer_call_and_return_conditional_losses_67864M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :Ó
concatConcatV25forward_simple_rnn_1/StatefulPartitionedCall:output:06backward_simple_rnn_1/StatefulPartitionedCall:output:0concat/axis:output:0*
N*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_
IdentityIdentityconcat:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¥
NoOpNoOp.^backward_simple_rnn_1/StatefulPartitionedCall-^forward_simple_rnn_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : : : : 2^
-backward_simple_rnn_1/StatefulPartitionedCall-backward_simple_rnn_1/StatefulPartitionedCall2\
,forward_simple_rnn_1/StatefulPartitionedCall,forward_simple_rnn_1/StatefulPartitionedCall:e a
=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
U
¦
%forward_simple_rnn_1_while_body_68495F
Bforward_simple_rnn_1_while_forward_simple_rnn_1_while_loop_counterL
Hforward_simple_rnn_1_while_forward_simple_rnn_1_while_maximum_iterations*
&forward_simple_rnn_1_while_placeholder,
(forward_simple_rnn_1_while_placeholder_1,
(forward_simple_rnn_1_while_placeholder_2,
(forward_simple_rnn_1_while_placeholder_3E
Aforward_simple_rnn_1_while_forward_simple_rnn_1_strided_slice_1_0
}forward_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_forward_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor_0
forward_simple_rnn_1_while_tensorarrayv2read_1_tensorlistgetitem_forward_simple_rnn_1_tensorarrayunstack_1_tensorlistfromtensor_0_
Mforward_simple_rnn_1_while_simple_rnn_cell_4_matmul_readvariableop_resource_0:@@\
Nforward_simple_rnn_1_while_simple_rnn_cell_4_biasadd_readvariableop_resource_0:@a
Oforward_simple_rnn_1_while_simple_rnn_cell_4_matmul_1_readvariableop_resource_0:@@'
#forward_simple_rnn_1_while_identity)
%forward_simple_rnn_1_while_identity_1)
%forward_simple_rnn_1_while_identity_2)
%forward_simple_rnn_1_while_identity_3)
%forward_simple_rnn_1_while_identity_4)
%forward_simple_rnn_1_while_identity_5C
?forward_simple_rnn_1_while_forward_simple_rnn_1_strided_slice_1
{forward_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_forward_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor
forward_simple_rnn_1_while_tensorarrayv2read_1_tensorlistgetitem_forward_simple_rnn_1_tensorarrayunstack_1_tensorlistfromtensor]
Kforward_simple_rnn_1_while_simple_rnn_cell_4_matmul_readvariableop_resource:@@Z
Lforward_simple_rnn_1_while_simple_rnn_cell_4_biasadd_readvariableop_resource:@_
Mforward_simple_rnn_1_while_simple_rnn_cell_4_matmul_1_readvariableop_resource:@@¢Cforward_simple_rnn_1/while/simple_rnn_cell_4/BiasAdd/ReadVariableOp¢Bforward_simple_rnn_1/while/simple_rnn_cell_4/MatMul/ReadVariableOp¢Dforward_simple_rnn_1/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp
Lforward_simple_rnn_1/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   
>forward_simple_rnn_1/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem}forward_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_forward_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor_0&forward_simple_rnn_1_while_placeholderUforward_simple_rnn_1/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
element_dtype0
Nforward_simple_rnn_1/while/TensorArrayV2Read_1/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   
@forward_simple_rnn_1/while/TensorArrayV2Read_1/TensorListGetItemTensorListGetItemforward_simple_rnn_1_while_tensorarrayv2read_1_tensorlistgetitem_forward_simple_rnn_1_tensorarrayunstack_1_tensorlistfromtensor_0&forward_simple_rnn_1_while_placeholderWforward_simple_rnn_1/while/TensorArrayV2Read_1/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0
Ð
Bforward_simple_rnn_1/while/simple_rnn_cell_4/MatMul/ReadVariableOpReadVariableOpMforward_simple_rnn_1_while_simple_rnn_cell_4_matmul_readvariableop_resource_0*
_output_shapes

:@@*
dtype0
3forward_simple_rnn_1/while/simple_rnn_cell_4/MatMulMatMulEforward_simple_rnn_1/while/TensorArrayV2Read/TensorListGetItem:item:0Jforward_simple_rnn_1/while/simple_rnn_cell_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Î
Cforward_simple_rnn_1/while/simple_rnn_cell_4/BiasAdd/ReadVariableOpReadVariableOpNforward_simple_rnn_1_while_simple_rnn_cell_4_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype0ý
4forward_simple_rnn_1/while/simple_rnn_cell_4/BiasAddBiasAdd=forward_simple_rnn_1/while/simple_rnn_cell_4/MatMul:product:0Kforward_simple_rnn_1/while/simple_rnn_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Ô
Dforward_simple_rnn_1/while/simple_rnn_cell_4/MatMul_1/ReadVariableOpReadVariableOpOforward_simple_rnn_1_while_simple_rnn_cell_4_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype0é
5forward_simple_rnn_1/while/simple_rnn_cell_4/MatMul_1MatMul(forward_simple_rnn_1_while_placeholder_3Lforward_simple_rnn_1/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@ë
0forward_simple_rnn_1/while/simple_rnn_cell_4/addAddV2=forward_simple_rnn_1/while/simple_rnn_cell_4/BiasAdd:output:0?forward_simple_rnn_1/while/simple_rnn_cell_4/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¡
1forward_simple_rnn_1/while/simple_rnn_cell_4/TanhTanh4forward_simple_rnn_1/while/simple_rnn_cell_4/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@z
)forward_simple_rnn_1/while/Tile/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      Ö
forward_simple_rnn_1/while/TileTileGforward_simple_rnn_1/while/TensorArrayV2Read_1/TensorListGetItem:item:02forward_simple_rnn_1/while/Tile/multiples:output:0*
T0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿì
#forward_simple_rnn_1/while/SelectV2SelectV2(forward_simple_rnn_1/while/Tile:output:05forward_simple_rnn_1/while/simple_rnn_cell_4/Tanh:y:0(forward_simple_rnn_1_while_placeholder_2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@|
+forward_simple_rnn_1/while/Tile_1/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      Ú
!forward_simple_rnn_1/while/Tile_1TileGforward_simple_rnn_1/while/TensorArrayV2Read_1/TensorListGetItem:item:04forward_simple_rnn_1/while/Tile_1/multiples:output:0*
T0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿð
%forward_simple_rnn_1/while/SelectV2_1SelectV2*forward_simple_rnn_1/while/Tile_1:output:05forward_simple_rnn_1/while/simple_rnn_cell_4/Tanh:y:0(forward_simple_rnn_1_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
?forward_simple_rnn_1/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem(forward_simple_rnn_1_while_placeholder_1&forward_simple_rnn_1_while_placeholder,forward_simple_rnn_1/while/SelectV2:output:0*
_output_shapes
: *
element_dtype0:éèÒb
 forward_simple_rnn_1/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :
forward_simple_rnn_1/while/addAddV2&forward_simple_rnn_1_while_placeholder)forward_simple_rnn_1/while/add/y:output:0*
T0*
_output_shapes
: d
"forward_simple_rnn_1/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :»
 forward_simple_rnn_1/while/add_1AddV2Bforward_simple_rnn_1_while_forward_simple_rnn_1_while_loop_counter+forward_simple_rnn_1/while/add_1/y:output:0*
T0*
_output_shapes
: 
#forward_simple_rnn_1/while/IdentityIdentity$forward_simple_rnn_1/while/add_1:z:0 ^forward_simple_rnn_1/while/NoOp*
T0*
_output_shapes
: ¾
%forward_simple_rnn_1/while/Identity_1IdentityHforward_simple_rnn_1_while_forward_simple_rnn_1_while_maximum_iterations ^forward_simple_rnn_1/while/NoOp*
T0*
_output_shapes
: 
%forward_simple_rnn_1/while/Identity_2Identity"forward_simple_rnn_1/while/add:z:0 ^forward_simple_rnn_1/while/NoOp*
T0*
_output_shapes
: Å
%forward_simple_rnn_1/while/Identity_3IdentityOforward_simple_rnn_1/while/TensorArrayV2Write/TensorListSetItem:output_handle:0 ^forward_simple_rnn_1/while/NoOp*
T0*
_output_shapes
: ³
%forward_simple_rnn_1/while/Identity_4Identity,forward_simple_rnn_1/while/SelectV2:output:0 ^forward_simple_rnn_1/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@µ
%forward_simple_rnn_1/while/Identity_5Identity.forward_simple_rnn_1/while/SelectV2_1:output:0 ^forward_simple_rnn_1/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@³
forward_simple_rnn_1/while/NoOpNoOpD^forward_simple_rnn_1/while/simple_rnn_cell_4/BiasAdd/ReadVariableOpC^forward_simple_rnn_1/while/simple_rnn_cell_4/MatMul/ReadVariableOpE^forward_simple_rnn_1/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
?forward_simple_rnn_1_while_forward_simple_rnn_1_strided_slice_1Aforward_simple_rnn_1_while_forward_simple_rnn_1_strided_slice_1_0"S
#forward_simple_rnn_1_while_identity,forward_simple_rnn_1/while/Identity:output:0"W
%forward_simple_rnn_1_while_identity_1.forward_simple_rnn_1/while/Identity_1:output:0"W
%forward_simple_rnn_1_while_identity_2.forward_simple_rnn_1/while/Identity_2:output:0"W
%forward_simple_rnn_1_while_identity_3.forward_simple_rnn_1/while/Identity_3:output:0"W
%forward_simple_rnn_1_while_identity_4.forward_simple_rnn_1/while/Identity_4:output:0"W
%forward_simple_rnn_1_while_identity_5.forward_simple_rnn_1/while/Identity_5:output:0"
Lforward_simple_rnn_1_while_simple_rnn_cell_4_biasadd_readvariableop_resourceNforward_simple_rnn_1_while_simple_rnn_cell_4_biasadd_readvariableop_resource_0" 
Mforward_simple_rnn_1_while_simple_rnn_cell_4_matmul_1_readvariableop_resourceOforward_simple_rnn_1_while_simple_rnn_cell_4_matmul_1_readvariableop_resource_0"
Kforward_simple_rnn_1_while_simple_rnn_cell_4_matmul_readvariableop_resourceMforward_simple_rnn_1_while_simple_rnn_cell_4_matmul_readvariableop_resource_0"
forward_simple_rnn_1_while_tensorarrayv2read_1_tensorlistgetitem_forward_simple_rnn_1_tensorarrayunstack_1_tensorlistfromtensorforward_simple_rnn_1_while_tensorarrayv2read_1_tensorlistgetitem_forward_simple_rnn_1_tensorarrayunstack_1_tensorlistfromtensor_0"ü
{forward_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_forward_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor}forward_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_forward_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : : 2
Cforward_simple_rnn_1/while/simple_rnn_cell_4/BiasAdd/ReadVariableOpCforward_simple_rnn_1/while/simple_rnn_cell_4/BiasAdd/ReadVariableOp2
Bforward_simple_rnn_1/while/simple_rnn_cell_4/MatMul/ReadVariableOpBforward_simple_rnn_1/while/simple_rnn_cell_4/MatMul/ReadVariableOp2
Dforward_simple_rnn_1/while/simple_rnn_cell_4/MatMul_1/ReadVariableOpDforward_simple_rnn_1/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
åh
ê
5bidirectional_1_forward_simple_rnn_1_while_body_69058f
bbidirectional_1_forward_simple_rnn_1_while_bidirectional_1_forward_simple_rnn_1_while_loop_counterl
hbidirectional_1_forward_simple_rnn_1_while_bidirectional_1_forward_simple_rnn_1_while_maximum_iterations:
6bidirectional_1_forward_simple_rnn_1_while_placeholder<
8bidirectional_1_forward_simple_rnn_1_while_placeholder_1<
8bidirectional_1_forward_simple_rnn_1_while_placeholder_2<
8bidirectional_1_forward_simple_rnn_1_while_placeholder_3e
abidirectional_1_forward_simple_rnn_1_while_bidirectional_1_forward_simple_rnn_1_strided_slice_1_0¢
bidirectional_1_forward_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_bidirectional_1_forward_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor_0¦
¡bidirectional_1_forward_simple_rnn_1_while_tensorarrayv2read_1_tensorlistgetitem_bidirectional_1_forward_simple_rnn_1_tensorarrayunstack_1_tensorlistfromtensor_0o
]bidirectional_1_forward_simple_rnn_1_while_simple_rnn_cell_4_matmul_readvariableop_resource_0:@@l
^bidirectional_1_forward_simple_rnn_1_while_simple_rnn_cell_4_biasadd_readvariableop_resource_0:@q
_bidirectional_1_forward_simple_rnn_1_while_simple_rnn_cell_4_matmul_1_readvariableop_resource_0:@@7
3bidirectional_1_forward_simple_rnn_1_while_identity9
5bidirectional_1_forward_simple_rnn_1_while_identity_19
5bidirectional_1_forward_simple_rnn_1_while_identity_29
5bidirectional_1_forward_simple_rnn_1_while_identity_39
5bidirectional_1_forward_simple_rnn_1_while_identity_49
5bidirectional_1_forward_simple_rnn_1_while_identity_5c
_bidirectional_1_forward_simple_rnn_1_while_bidirectional_1_forward_simple_rnn_1_strided_slice_1 
bidirectional_1_forward_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_bidirectional_1_forward_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor¤
bidirectional_1_forward_simple_rnn_1_while_tensorarrayv2read_1_tensorlistgetitem_bidirectional_1_forward_simple_rnn_1_tensorarrayunstack_1_tensorlistfromtensorm
[bidirectional_1_forward_simple_rnn_1_while_simple_rnn_cell_4_matmul_readvariableop_resource:@@j
\bidirectional_1_forward_simple_rnn_1_while_simple_rnn_cell_4_biasadd_readvariableop_resource:@o
]bidirectional_1_forward_simple_rnn_1_while_simple_rnn_cell_4_matmul_1_readvariableop_resource:@@¢Sbidirectional_1/forward_simple_rnn_1/while/simple_rnn_cell_4/BiasAdd/ReadVariableOp¢Rbidirectional_1/forward_simple_rnn_1/while/simple_rnn_cell_4/MatMul/ReadVariableOp¢Tbidirectional_1/forward_simple_rnn_1/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp­
\bidirectional_1/forward_simple_rnn_1/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   à
Nbidirectional_1/forward_simple_rnn_1/while/TensorArrayV2Read/TensorListGetItemTensorListGetItembidirectional_1_forward_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_bidirectional_1_forward_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor_06bidirectional_1_forward_simple_rnn_1_while_placeholderebidirectional_1/forward_simple_rnn_1/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
element_dtype0¯
^bidirectional_1/forward_simple_rnn_1/while/TensorArrayV2Read_1/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   è
Pbidirectional_1/forward_simple_rnn_1/while/TensorArrayV2Read_1/TensorListGetItemTensorListGetItem¡bidirectional_1_forward_simple_rnn_1_while_tensorarrayv2read_1_tensorlistgetitem_bidirectional_1_forward_simple_rnn_1_tensorarrayunstack_1_tensorlistfromtensor_06bidirectional_1_forward_simple_rnn_1_while_placeholdergbidirectional_1/forward_simple_rnn_1/while/TensorArrayV2Read_1/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0
ð
Rbidirectional_1/forward_simple_rnn_1/while/simple_rnn_cell_4/MatMul/ReadVariableOpReadVariableOp]bidirectional_1_forward_simple_rnn_1_while_simple_rnn_cell_4_matmul_readvariableop_resource_0*
_output_shapes

:@@*
dtype0²
Cbidirectional_1/forward_simple_rnn_1/while/simple_rnn_cell_4/MatMulMatMulUbidirectional_1/forward_simple_rnn_1/while/TensorArrayV2Read/TensorListGetItem:item:0Zbidirectional_1/forward_simple_rnn_1/while/simple_rnn_cell_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@î
Sbidirectional_1/forward_simple_rnn_1/while/simple_rnn_cell_4/BiasAdd/ReadVariableOpReadVariableOp^bidirectional_1_forward_simple_rnn_1_while_simple_rnn_cell_4_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype0­
Dbidirectional_1/forward_simple_rnn_1/while/simple_rnn_cell_4/BiasAddBiasAddMbidirectional_1/forward_simple_rnn_1/while/simple_rnn_cell_4/MatMul:product:0[bidirectional_1/forward_simple_rnn_1/while/simple_rnn_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@ô
Tbidirectional_1/forward_simple_rnn_1/while/simple_rnn_cell_4/MatMul_1/ReadVariableOpReadVariableOp_bidirectional_1_forward_simple_rnn_1_while_simple_rnn_cell_4_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype0
Ebidirectional_1/forward_simple_rnn_1/while/simple_rnn_cell_4/MatMul_1MatMul8bidirectional_1_forward_simple_rnn_1_while_placeholder_3\bidirectional_1/forward_simple_rnn_1/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
@bidirectional_1/forward_simple_rnn_1/while/simple_rnn_cell_4/addAddV2Mbidirectional_1/forward_simple_rnn_1/while/simple_rnn_cell_4/BiasAdd:output:0Obidirectional_1/forward_simple_rnn_1/while/simple_rnn_cell_4/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Á
Abidirectional_1/forward_simple_rnn_1/while/simple_rnn_cell_4/TanhTanhDbidirectional_1/forward_simple_rnn_1/while/simple_rnn_cell_4/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
9bidirectional_1/forward_simple_rnn_1/while/Tile/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      
/bidirectional_1/forward_simple_rnn_1/while/TileTileWbidirectional_1/forward_simple_rnn_1/while/TensorArrayV2Read_1/TensorListGetItem:item:0Bbidirectional_1/forward_simple_rnn_1/while/Tile/multiples:output:0*
T0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬
3bidirectional_1/forward_simple_rnn_1/while/SelectV2SelectV28bidirectional_1/forward_simple_rnn_1/while/Tile:output:0Ebidirectional_1/forward_simple_rnn_1/while/simple_rnn_cell_4/Tanh:y:08bidirectional_1_forward_simple_rnn_1_while_placeholder_2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
;bidirectional_1/forward_simple_rnn_1/while/Tile_1/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      
1bidirectional_1/forward_simple_rnn_1/while/Tile_1TileWbidirectional_1/forward_simple_rnn_1/while/TensorArrayV2Read_1/TensorListGetItem:item:0Dbidirectional_1/forward_simple_rnn_1/while/Tile_1/multiples:output:0*
T0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ°
5bidirectional_1/forward_simple_rnn_1/while/SelectV2_1SelectV2:bidirectional_1/forward_simple_rnn_1/while/Tile_1:output:0Ebidirectional_1/forward_simple_rnn_1/while/simple_rnn_cell_4/Tanh:y:08bidirectional_1_forward_simple_rnn_1_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Ô
Obidirectional_1/forward_simple_rnn_1/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem8bidirectional_1_forward_simple_rnn_1_while_placeholder_16bidirectional_1_forward_simple_rnn_1_while_placeholder<bidirectional_1/forward_simple_rnn_1/while/SelectV2:output:0*
_output_shapes
: *
element_dtype0:éèÒr
0bidirectional_1/forward_simple_rnn_1/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :Ë
.bidirectional_1/forward_simple_rnn_1/while/addAddV26bidirectional_1_forward_simple_rnn_1_while_placeholder9bidirectional_1/forward_simple_rnn_1/while/add/y:output:0*
T0*
_output_shapes
: t
2bidirectional_1/forward_simple_rnn_1/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :û
0bidirectional_1/forward_simple_rnn_1/while/add_1AddV2bbidirectional_1_forward_simple_rnn_1_while_bidirectional_1_forward_simple_rnn_1_while_loop_counter;bidirectional_1/forward_simple_rnn_1/while/add_1/y:output:0*
T0*
_output_shapes
: È
3bidirectional_1/forward_simple_rnn_1/while/IdentityIdentity4bidirectional_1/forward_simple_rnn_1/while/add_1:z:00^bidirectional_1/forward_simple_rnn_1/while/NoOp*
T0*
_output_shapes
: þ
5bidirectional_1/forward_simple_rnn_1/while/Identity_1Identityhbidirectional_1_forward_simple_rnn_1_while_bidirectional_1_forward_simple_rnn_1_while_maximum_iterations0^bidirectional_1/forward_simple_rnn_1/while/NoOp*
T0*
_output_shapes
: È
5bidirectional_1/forward_simple_rnn_1/while/Identity_2Identity2bidirectional_1/forward_simple_rnn_1/while/add:z:00^bidirectional_1/forward_simple_rnn_1/while/NoOp*
T0*
_output_shapes
: õ
5bidirectional_1/forward_simple_rnn_1/while/Identity_3Identity_bidirectional_1/forward_simple_rnn_1/while/TensorArrayV2Write/TensorListSetItem:output_handle:00^bidirectional_1/forward_simple_rnn_1/while/NoOp*
T0*
_output_shapes
: ã
5bidirectional_1/forward_simple_rnn_1/while/Identity_4Identity<bidirectional_1/forward_simple_rnn_1/while/SelectV2:output:00^bidirectional_1/forward_simple_rnn_1/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@å
5bidirectional_1/forward_simple_rnn_1/while/Identity_5Identity>bidirectional_1/forward_simple_rnn_1/while/SelectV2_1:output:00^bidirectional_1/forward_simple_rnn_1/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@ó
/bidirectional_1/forward_simple_rnn_1/while/NoOpNoOpT^bidirectional_1/forward_simple_rnn_1/while/simple_rnn_cell_4/BiasAdd/ReadVariableOpS^bidirectional_1/forward_simple_rnn_1/while/simple_rnn_cell_4/MatMul/ReadVariableOpU^bidirectional_1/forward_simple_rnn_1/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Ä
_bidirectional_1_forward_simple_rnn_1_while_bidirectional_1_forward_simple_rnn_1_strided_slice_1abidirectional_1_forward_simple_rnn_1_while_bidirectional_1_forward_simple_rnn_1_strided_slice_1_0"s
3bidirectional_1_forward_simple_rnn_1_while_identity<bidirectional_1/forward_simple_rnn_1/while/Identity:output:0"w
5bidirectional_1_forward_simple_rnn_1_while_identity_1>bidirectional_1/forward_simple_rnn_1/while/Identity_1:output:0"w
5bidirectional_1_forward_simple_rnn_1_while_identity_2>bidirectional_1/forward_simple_rnn_1/while/Identity_2:output:0"w
5bidirectional_1_forward_simple_rnn_1_while_identity_3>bidirectional_1/forward_simple_rnn_1/while/Identity_3:output:0"w
5bidirectional_1_forward_simple_rnn_1_while_identity_4>bidirectional_1/forward_simple_rnn_1/while/Identity_4:output:0"w
5bidirectional_1_forward_simple_rnn_1_while_identity_5>bidirectional_1/forward_simple_rnn_1/while/Identity_5:output:0"¾
\bidirectional_1_forward_simple_rnn_1_while_simple_rnn_cell_4_biasadd_readvariableop_resource^bidirectional_1_forward_simple_rnn_1_while_simple_rnn_cell_4_biasadd_readvariableop_resource_0"À
]bidirectional_1_forward_simple_rnn_1_while_simple_rnn_cell_4_matmul_1_readvariableop_resource_bidirectional_1_forward_simple_rnn_1_while_simple_rnn_cell_4_matmul_1_readvariableop_resource_0"¼
[bidirectional_1_forward_simple_rnn_1_while_simple_rnn_cell_4_matmul_readvariableop_resource]bidirectional_1_forward_simple_rnn_1_while_simple_rnn_cell_4_matmul_readvariableop_resource_0"Æ
bidirectional_1_forward_simple_rnn_1_while_tensorarrayv2read_1_tensorlistgetitem_bidirectional_1_forward_simple_rnn_1_tensorarrayunstack_1_tensorlistfromtensor¡bidirectional_1_forward_simple_rnn_1_while_tensorarrayv2read_1_tensorlistgetitem_bidirectional_1_forward_simple_rnn_1_tensorarrayunstack_1_tensorlistfromtensor_0"¾
bidirectional_1_forward_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_bidirectional_1_forward_simple_rnn_1_tensorarrayunstack_tensorlistfromtensorbidirectional_1_forward_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_bidirectional_1_forward_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : : 2ª
Sbidirectional_1/forward_simple_rnn_1/while/simple_rnn_cell_4/BiasAdd/ReadVariableOpSbidirectional_1/forward_simple_rnn_1/while/simple_rnn_cell_4/BiasAdd/ReadVariableOp2¨
Rbidirectional_1/forward_simple_rnn_1/while/simple_rnn_cell_4/MatMul/ReadVariableOpRbidirectional_1/forward_simple_rnn_1/while/simple_rnn_cell_4/MatMul/ReadVariableOp2¬
Tbidirectional_1/forward_simple_rnn_1/while/simple_rnn_cell_4/MatMul_1/ReadVariableOpTbidirectional_1/forward_simple_rnn_1/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
æ?
Ã
P__inference_backward_simple_rnn_1_layer_call_and_return_conditional_losses_71515

inputsB
0simple_rnn_cell_5_matmul_readvariableop_resource:@@?
1simple_rnn_cell_5_biasadd_readvariableop_resource:@D
2simple_rnn_cell_5_matmul_1_readvariableop_resource:@@
identity¢(simple_rnn_cell_5/BiasAdd/ReadVariableOp¢'simple_rnn_cell_5/MatMul/ReadVariableOp¢)simple_rnn_cell_5/MatMul_1/ReadVariableOp¢while;
ShapeShapeinputs*
T0*
_output_shapes
:]
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
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
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
:ÿÿÿÿÿÿÿÿÿ@c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
	transpose	Transposeinputstranspose/perm:output:0*
T0*=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
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
valueB:Û
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒX
ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: 
	ReverseV2	ReverseV2transpose:y:0ReverseV2/axis:output:0*
T0*=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÿÿÿÿå
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensorReverseV2:output:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ò
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask
'simple_rnn_cell_5/MatMul/ReadVariableOpReadVariableOp0simple_rnn_cell_5_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype0
simple_rnn_cell_5/MatMulMatMulstrided_slice_2:output:0/simple_rnn_cell_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
(simple_rnn_cell_5/BiasAdd/ReadVariableOpReadVariableOp1simple_rnn_cell_5_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0¬
simple_rnn_cell_5/BiasAddBiasAdd"simple_rnn_cell_5/MatMul:product:00simple_rnn_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
)simple_rnn_cell_5/MatMul_1/ReadVariableOpReadVariableOp2simple_rnn_cell_5_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype0
simple_rnn_cell_5/MatMul_1MatMulzeros:output:01simple_rnn_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
simple_rnn_cell_5/addAddV2"simple_rnn_cell_5/BiasAdd:output:0$simple_rnn_cell_5/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@k
simple_rnn_cell_5/TanhTanhsimple_rnn_cell_5/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ö
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:00simple_rnn_cell_5_matmul_readvariableop_resource1simple_rnn_cell_5_biasadd_readvariableop_resource2simple_rnn_cell_5_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ@: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_71449*
condR
while_cond_71448*8
output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ@: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   Ë
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Ï
NoOpNoOp)^simple_rnn_cell_5/BiasAdd/ReadVariableOp(^simple_rnn_cell_5/MatMul/ReadVariableOp*^simple_rnn_cell_5/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2T
(simple_rnn_cell_5/BiasAdd/ReadVariableOp(simple_rnn_cell_5/BiasAdd/ReadVariableOp2R
'simple_rnn_cell_5/MatMul/ReadVariableOp'simple_rnn_cell_5/MatMul/ReadVariableOp2V
)simple_rnn_cell_5/MatMul_1/ReadVariableOp)simple_rnn_cell_5/MatMul_1/ReadVariableOp2
whilewhile:e a
=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ý=
Â
O__inference_forward_simple_rnn_1_layer_call_and_return_conditional_losses_67994

inputsB
0simple_rnn_cell_4_matmul_readvariableop_resource:@@?
1simple_rnn_cell_4_biasadd_readvariableop_resource:@D
2simple_rnn_cell_4_matmul_1_readvariableop_resource:@@
identity¢(simple_rnn_cell_4/BiasAdd/ReadVariableOp¢'simple_rnn_cell_4/MatMul/ReadVariableOp¢)simple_rnn_cell_4/MatMul_1/ReadVariableOp¢while;
ShapeShapeinputs*
T0*
_output_shapes
:]
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
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
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
:ÿÿÿÿÿÿÿÿÿ@c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
	transpose	Transposeinputstranspose/perm:output:0*
T0*=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
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
valueB:Û
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÿÿÿÿà
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ò
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask
'simple_rnn_cell_4/MatMul/ReadVariableOpReadVariableOp0simple_rnn_cell_4_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype0
simple_rnn_cell_4/MatMulMatMulstrided_slice_2:output:0/simple_rnn_cell_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
(simple_rnn_cell_4/BiasAdd/ReadVariableOpReadVariableOp1simple_rnn_cell_4_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0¬
simple_rnn_cell_4/BiasAddBiasAdd"simple_rnn_cell_4/MatMul:product:00simple_rnn_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
)simple_rnn_cell_4/MatMul_1/ReadVariableOpReadVariableOp2simple_rnn_cell_4_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype0
simple_rnn_cell_4/MatMul_1MatMulzeros:output:01simple_rnn_cell_4/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
simple_rnn_cell_4/addAddV2"simple_rnn_cell_4/BiasAdd:output:0$simple_rnn_cell_4/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@k
simple_rnn_cell_4/TanhTanhsimple_rnn_cell_4/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ö
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:00simple_rnn_cell_4_matmul_readvariableop_resource1simple_rnn_cell_4_biasadd_readvariableop_resource2simple_rnn_cell_4_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ@: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_67928*
condR
while_cond_67927*8
output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ@: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   Ë
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Ï
NoOpNoOp)^simple_rnn_cell_4/BiasAdd/ReadVariableOp(^simple_rnn_cell_4/MatMul/ReadVariableOp*^simple_rnn_cell_4/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2T
(simple_rnn_cell_4/BiasAdd/ReadVariableOp(simple_rnn_cell_4/BiasAdd/ReadVariableOp2R
'simple_rnn_cell_4/MatMul/ReadVariableOp'simple_rnn_cell_4/MatMul/ReadVariableOp2V
)simple_rnn_cell_4/MatMul_1/ReadVariableOp)simple_rnn_cell_4/MatMul_1/ReadVariableOp2
whilewhile:e a
=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Õ
¥
while_cond_71228
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_71228___redundant_placeholder03
/while_while_cond_71228___redundant_placeholder13
/while_while_cond_71228___redundant_placeholder23
/while_while_cond_71228___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :ÿÿÿÿÿÿÿÿÿ@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
:
ö
Í
Bsequential_1_bidirectional_1_forward_simple_rnn_1_while_cond_66667
|sequential_1_bidirectional_1_forward_simple_rnn_1_while_sequential_1_bidirectional_1_forward_simple_rnn_1_while_loop_counter
sequential_1_bidirectional_1_forward_simple_rnn_1_while_sequential_1_bidirectional_1_forward_simple_rnn_1_while_maximum_iterationsG
Csequential_1_bidirectional_1_forward_simple_rnn_1_while_placeholderI
Esequential_1_bidirectional_1_forward_simple_rnn_1_while_placeholder_1I
Esequential_1_bidirectional_1_forward_simple_rnn_1_while_placeholder_2I
Esequential_1_bidirectional_1_forward_simple_rnn_1_while_placeholder_3
~sequential_1_bidirectional_1_forward_simple_rnn_1_while_less_sequential_1_bidirectional_1_forward_simple_rnn_1_strided_slice_1
sequential_1_bidirectional_1_forward_simple_rnn_1_while_sequential_1_bidirectional_1_forward_simple_rnn_1_while_cond_66667___redundant_placeholder0
sequential_1_bidirectional_1_forward_simple_rnn_1_while_sequential_1_bidirectional_1_forward_simple_rnn_1_while_cond_66667___redundant_placeholder1
sequential_1_bidirectional_1_forward_simple_rnn_1_while_sequential_1_bidirectional_1_forward_simple_rnn_1_while_cond_66667___redundant_placeholder2
sequential_1_bidirectional_1_forward_simple_rnn_1_while_sequential_1_bidirectional_1_forward_simple_rnn_1_while_cond_66667___redundant_placeholder3
sequential_1_bidirectional_1_forward_simple_rnn_1_while_sequential_1_bidirectional_1_forward_simple_rnn_1_while_cond_66667___redundant_placeholder4D
@sequential_1_bidirectional_1_forward_simple_rnn_1_while_identity
ª
<sequential_1/bidirectional_1/forward_simple_rnn_1/while/LessLessCsequential_1_bidirectional_1_forward_simple_rnn_1_while_placeholder~sequential_1_bidirectional_1_forward_simple_rnn_1_while_less_sequential_1_bidirectional_1_forward_simple_rnn_1_strided_slice_1*
T0*
_output_shapes
: ¯
@sequential_1/bidirectional_1/forward_simple_rnn_1/while/IdentityIdentity@sequential_1/bidirectional_1/forward_simple_rnn_1/while/Less:z:0*
T0
*
_output_shapes
: "
@sequential_1_bidirectional_1_forward_simple_rnn_1_while_identityIsequential_1/bidirectional_1/forward_simple_rnn_1/while/Identity:output:0*(
_construction_contextkEagerRuntime*W
_input_shapesF
D: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: :::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
::

_output_shapes
:
å 
Ê
while_body_67116
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_01
while_simple_rnn_cell_4_67138_0:@@-
while_simple_rnn_cell_4_67140_0:@1
while_simple_rnn_cell_4_67142_0:@@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor/
while_simple_rnn_cell_4_67138:@@+
while_simple_rnn_cell_4_67140:@/
while_simple_rnn_cell_4_67142:@@¢/while/simple_rnn_cell_4/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
element_dtype0
/while/simple_rnn_cell_4/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_simple_rnn_cell_4_67138_0while_simple_rnn_cell_4_67140_0while_simple_rnn_cell_4_67142_0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_simple_rnn_cell_4_layer_call_and_return_conditional_losses_67064á
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder8while/simple_rnn_cell_4/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:éèÒM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_4Identity8while/simple_rnn_cell_4/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@~

while/NoOpNoOp0^while/simple_rnn_cell_4/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"@
while_simple_rnn_cell_4_67138while_simple_rnn_cell_4_67138_0"@
while_simple_rnn_cell_4_67140while_simple_rnn_cell_4_67140_0"@
while_simple_rnn_cell_4_67142while_simple_rnn_cell_4_67142_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ@: : : : : 2b
/while/simple_rnn_cell_4/StatefulPartitionedCall/while/simple_rnn_cell_4/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
: 
ý=
Â
O__inference_forward_simple_rnn_1_layer_call_and_return_conditional_losses_71141

inputsB
0simple_rnn_cell_4_matmul_readvariableop_resource:@@?
1simple_rnn_cell_4_biasadd_readvariableop_resource:@D
2simple_rnn_cell_4_matmul_1_readvariableop_resource:@@
identity¢(simple_rnn_cell_4/BiasAdd/ReadVariableOp¢'simple_rnn_cell_4/MatMul/ReadVariableOp¢)simple_rnn_cell_4/MatMul_1/ReadVariableOp¢while;
ShapeShapeinputs*
T0*
_output_shapes
:]
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
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
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
:ÿÿÿÿÿÿÿÿÿ@c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
	transpose	Transposeinputstranspose/perm:output:0*
T0*=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
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
valueB:Û
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÿÿÿÿà
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ò
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask
'simple_rnn_cell_4/MatMul/ReadVariableOpReadVariableOp0simple_rnn_cell_4_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype0
simple_rnn_cell_4/MatMulMatMulstrided_slice_2:output:0/simple_rnn_cell_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
(simple_rnn_cell_4/BiasAdd/ReadVariableOpReadVariableOp1simple_rnn_cell_4_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0¬
simple_rnn_cell_4/BiasAddBiasAdd"simple_rnn_cell_4/MatMul:product:00simple_rnn_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
)simple_rnn_cell_4/MatMul_1/ReadVariableOpReadVariableOp2simple_rnn_cell_4_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype0
simple_rnn_cell_4/MatMul_1MatMulzeros:output:01simple_rnn_cell_4/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
simple_rnn_cell_4/addAddV2"simple_rnn_cell_4/BiasAdd:output:0$simple_rnn_cell_4/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@k
simple_rnn_cell_4/TanhTanhsimple_rnn_cell_4/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ö
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:00simple_rnn_cell_4_matmul_readvariableop_resource1simple_rnn_cell_4_biasadd_readvariableop_resource2simple_rnn_cell_4_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ@: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_71075*
condR
while_cond_71074*8
output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ@: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   Ë
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Ï
NoOpNoOp)^simple_rnn_cell_4/BiasAdd/ReadVariableOp(^simple_rnn_cell_4/MatMul/ReadVariableOp*^simple_rnn_cell_4/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2T
(simple_rnn_cell_4/BiasAdd/ReadVariableOp(simple_rnn_cell_4/BiasAdd/ReadVariableOp2R
'simple_rnn_cell_4/MatMul/ReadVariableOp'simple_rnn_cell_4/MatMul/ReadVariableOp2V
)simple_rnn_cell_4/MatMul_1/ReadVariableOp)simple_rnn_cell_4/MatMul_1/ReadVariableOp2
whilewhile:e a
=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs


ô
B__inference_dense_2_layer_call_and_return_conditional_losses_68354

inputs1
matmul_readvariableop_resource:	@-
biasadd_readvariableop_resource:@
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
æ?
Ã
P__inference_backward_simple_rnn_1_layer_call_and_return_conditional_losses_71625

inputsB
0simple_rnn_cell_5_matmul_readvariableop_resource:@@?
1simple_rnn_cell_5_biasadd_readvariableop_resource:@D
2simple_rnn_cell_5_matmul_1_readvariableop_resource:@@
identity¢(simple_rnn_cell_5/BiasAdd/ReadVariableOp¢'simple_rnn_cell_5/MatMul/ReadVariableOp¢)simple_rnn_cell_5/MatMul_1/ReadVariableOp¢while;
ShapeShapeinputs*
T0*
_output_shapes
:]
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
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
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
:ÿÿÿÿÿÿÿÿÿ@c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
	transpose	Transposeinputstranspose/perm:output:0*
T0*=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
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
valueB:Û
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒX
ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: 
	ReverseV2	ReverseV2transpose:y:0ReverseV2/axis:output:0*
T0*=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÿÿÿÿå
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensorReverseV2:output:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ò
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask
'simple_rnn_cell_5/MatMul/ReadVariableOpReadVariableOp0simple_rnn_cell_5_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype0
simple_rnn_cell_5/MatMulMatMulstrided_slice_2:output:0/simple_rnn_cell_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
(simple_rnn_cell_5/BiasAdd/ReadVariableOpReadVariableOp1simple_rnn_cell_5_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0¬
simple_rnn_cell_5/BiasAddBiasAdd"simple_rnn_cell_5/MatMul:product:00simple_rnn_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
)simple_rnn_cell_5/MatMul_1/ReadVariableOpReadVariableOp2simple_rnn_cell_5_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype0
simple_rnn_cell_5/MatMul_1MatMulzeros:output:01simple_rnn_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
simple_rnn_cell_5/addAddV2"simple_rnn_cell_5/BiasAdd:output:0$simple_rnn_cell_5/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@k
simple_rnn_cell_5/TanhTanhsimple_rnn_cell_5/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ö
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:00simple_rnn_cell_5_matmul_readvariableop_resource1simple_rnn_cell_5_biasadd_readvariableop_resource2simple_rnn_cell_5_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ@: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_71559*
condR
while_cond_71558*8
output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ@: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   Ë
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Ï
NoOpNoOp)^simple_rnn_cell_5/BiasAdd/ReadVariableOp(^simple_rnn_cell_5/MatMul/ReadVariableOp*^simple_rnn_cell_5/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2T
(simple_rnn_cell_5/BiasAdd/ReadVariableOp(simple_rnn_cell_5/BiasAdd/ReadVariableOp2R
'simple_rnn_cell_5/MatMul/ReadVariableOp'simple_rnn_cell_5/MatMul/ReadVariableOp2V
)simple_rnn_cell_5/MatMul_1/ReadVariableOp)simple_rnn_cell_5/MatMul_1/ReadVariableOp2
whilewhile:e a
=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
²,
Ç
while_body_67928
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0J
8while_simple_rnn_cell_4_matmul_readvariableop_resource_0:@@G
9while_simple_rnn_cell_4_biasadd_readvariableop_resource_0:@L
:while_simple_rnn_cell_4_matmul_1_readvariableop_resource_0:@@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorH
6while_simple_rnn_cell_4_matmul_readvariableop_resource:@@E
7while_simple_rnn_cell_4_biasadd_readvariableop_resource:@J
8while_simple_rnn_cell_4_matmul_1_readvariableop_resource:@@¢.while/simple_rnn_cell_4/BiasAdd/ReadVariableOp¢-while/simple_rnn_cell_4/MatMul/ReadVariableOp¢/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÿÿÿÿ¯
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
element_dtype0¦
-while/simple_rnn_cell_4/MatMul/ReadVariableOpReadVariableOp8while_simple_rnn_cell_4_matmul_readvariableop_resource_0*
_output_shapes

:@@*
dtype0Ã
while/simple_rnn_cell_4/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:05while/simple_rnn_cell_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¤
.while/simple_rnn_cell_4/BiasAdd/ReadVariableOpReadVariableOp9while_simple_rnn_cell_4_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype0¾
while/simple_rnn_cell_4/BiasAddBiasAdd(while/simple_rnn_cell_4/MatMul:product:06while/simple_rnn_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@ª
/while/simple_rnn_cell_4/MatMul_1/ReadVariableOpReadVariableOp:while_simple_rnn_cell_4_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype0ª
 while/simple_rnn_cell_4/MatMul_1MatMulwhile_placeholder_27while/simple_rnn_cell_4/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¬
while/simple_rnn_cell_4/addAddV2(while/simple_rnn_cell_4/BiasAdd:output:0*while/simple_rnn_cell_4/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@w
while/simple_rnn_cell_4/TanhTanhwhile/simple_rnn_cell_4/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@É
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder while/simple_rnn_cell_4/Tanh:y:0*
_output_shapes
: *
element_dtype0:éèÒM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: }
while/Identity_4Identity while/simple_rnn_cell_4/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@ß

while/NoOpNoOp/^while/simple_rnn_cell_4/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_4/MatMul/ReadVariableOp0^while/simple_rnn_cell_4/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"t
7while_simple_rnn_cell_4_biasadd_readvariableop_resource9while_simple_rnn_cell_4_biasadd_readvariableop_resource_0"v
8while_simple_rnn_cell_4_matmul_1_readvariableop_resource:while_simple_rnn_cell_4_matmul_1_readvariableop_resource_0"r
6while_simple_rnn_cell_4_matmul_readvariableop_resource8while_simple_rnn_cell_4_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ@: : : : : 2`
.while/simple_rnn_cell_4/BiasAdd/ReadVariableOp.while/simple_rnn_cell_4/BiasAdd/ReadVariableOp2^
-while/simple_rnn_cell_4/MatMul/ReadVariableOp-while/simple_rnn_cell_4/MatMul/ReadVariableOp2b
/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
: 
Õ
¥
while_cond_67648
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_67648___redundant_placeholder03
/while_while_cond_67648___redundant_placeholder13
/while_while_cond_67648___redundant_placeholder23
/while_while_cond_67648___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :ÿÿÿÿÿÿÿÿÿ@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
:
²,
Ç
while_body_71449
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0J
8while_simple_rnn_cell_5_matmul_readvariableop_resource_0:@@G
9while_simple_rnn_cell_5_biasadd_readvariableop_resource_0:@L
:while_simple_rnn_cell_5_matmul_1_readvariableop_resource_0:@@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorH
6while_simple_rnn_cell_5_matmul_readvariableop_resource:@@E
7while_simple_rnn_cell_5_biasadd_readvariableop_resource:@J
8while_simple_rnn_cell_5_matmul_1_readvariableop_resource:@@¢.while/simple_rnn_cell_5/BiasAdd/ReadVariableOp¢-while/simple_rnn_cell_5/MatMul/ReadVariableOp¢/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÿÿÿÿ¯
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
element_dtype0¦
-while/simple_rnn_cell_5/MatMul/ReadVariableOpReadVariableOp8while_simple_rnn_cell_5_matmul_readvariableop_resource_0*
_output_shapes

:@@*
dtype0Ã
while/simple_rnn_cell_5/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:05while/simple_rnn_cell_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¤
.while/simple_rnn_cell_5/BiasAdd/ReadVariableOpReadVariableOp9while_simple_rnn_cell_5_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype0¾
while/simple_rnn_cell_5/BiasAddBiasAdd(while/simple_rnn_cell_5/MatMul:product:06while/simple_rnn_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@ª
/while/simple_rnn_cell_5/MatMul_1/ReadVariableOpReadVariableOp:while_simple_rnn_cell_5_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype0ª
 while/simple_rnn_cell_5/MatMul_1MatMulwhile_placeholder_27while/simple_rnn_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¬
while/simple_rnn_cell_5/addAddV2(while/simple_rnn_cell_5/BiasAdd:output:0*while/simple_rnn_cell_5/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@w
while/simple_rnn_cell_5/TanhTanhwhile/simple_rnn_cell_5/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@É
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder while/simple_rnn_cell_5/Tanh:y:0*
_output_shapes
: *
element_dtype0:éèÒM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: }
while/Identity_4Identity while/simple_rnn_cell_5/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@ß

while/NoOpNoOp/^while/simple_rnn_cell_5/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_5/MatMul/ReadVariableOp0^while/simple_rnn_cell_5/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"t
7while_simple_rnn_cell_5_biasadd_readvariableop_resource9while_simple_rnn_cell_5_biasadd_readvariableop_resource_0"v
8while_simple_rnn_cell_5_matmul_1_readvariableop_resource:while_simple_rnn_cell_5_matmul_1_readvariableop_resource_0"r
6while_simple_rnn_cell_5_matmul_readvariableop_resource8while_simple_rnn_cell_5_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ@: : : : : 2`
.while/simple_rnn_cell_5/BiasAdd/ReadVariableOp.while/simple_rnn_cell_5/BiasAdd/ReadVariableOp2^
-while/simple_rnn_cell_5/MatMul/ReadVariableOp-while/simple_rnn_cell_5/MatMul/ReadVariableOp2b
/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
: 
¤

G__inference_sequential_1_layer_call_and_return_conditional_losses_68377

inputs$
embedding_1_68058:	© @'
bidirectional_1_68330:@@#
bidirectional_1_68332:@'
bidirectional_1_68334:@@'
bidirectional_1_68336:@@#
bidirectional_1_68338:@'
bidirectional_1_68340:@@ 
dense_2_68355:	@
dense_2_68357:@
dense_3_68371:@
dense_3_68373:
identity¢'bidirectional_1/StatefulPartitionedCall¢dense_2/StatefulPartitionedCall¢dense_3/StatefulPartitionedCall¢#embedding_1/StatefulPartitionedCallñ
#embedding_1/StatefulPartitionedCallStatefulPartitionedCallinputsembedding_1_68058*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_embedding_1_layer_call_and_return_conditional_losses_68057[
embedding_1/NotEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
embedding_1/NotEqualNotEqualinputsembedding_1/NotEqual/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¯
'bidirectional_1/StatefulPartitionedCallStatefulPartitionedCall,embedding_1/StatefulPartitionedCall:output:0embedding_1/NotEqual:z:0bidirectional_1_68330bidirectional_1_68332bidirectional_1_68334bidirectional_1_68336bidirectional_1_68338bidirectional_1_68340*
Tin

2
*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_bidirectional_1_layer_call_and_return_conditional_losses_68329
dense_2/StatefulPartitionedCallStatefulPartitionedCall0bidirectional_1/StatefulPartitionedCall:output:0dense_2_68355dense_2_68357*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_2_layer_call_and_return_conditional_losses_68354
dense_3/StatefulPartitionedCallStatefulPartitionedCall(dense_2/StatefulPartitionedCall:output:0dense_3_68371dense_3_68373*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_3_layer_call_and_return_conditional_losses_68370w
IdentityIdentity(dense_3/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÚ
NoOpNoOp(^bidirectional_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall$^embedding_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : 2R
'bidirectional_1/StatefulPartitionedCall'bidirectional_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2J
#embedding_1/StatefulPartitionedCall#embedding_1/StatefulPartitionedCall:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ºV
Ì
&backward_simple_rnn_1_while_body_70276H
Dbackward_simple_rnn_1_while_backward_simple_rnn_1_while_loop_counterN
Jbackward_simple_rnn_1_while_backward_simple_rnn_1_while_maximum_iterations+
'backward_simple_rnn_1_while_placeholder-
)backward_simple_rnn_1_while_placeholder_1-
)backward_simple_rnn_1_while_placeholder_2-
)backward_simple_rnn_1_while_placeholder_3G
Cbackward_simple_rnn_1_while_backward_simple_rnn_1_strided_slice_1_0
backward_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_backward_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor_0
backward_simple_rnn_1_while_tensorarrayv2read_1_tensorlistgetitem_backward_simple_rnn_1_tensorarrayunstack_1_tensorlistfromtensor_0`
Nbackward_simple_rnn_1_while_simple_rnn_cell_5_matmul_readvariableop_resource_0:@@]
Obackward_simple_rnn_1_while_simple_rnn_cell_5_biasadd_readvariableop_resource_0:@b
Pbackward_simple_rnn_1_while_simple_rnn_cell_5_matmul_1_readvariableop_resource_0:@@(
$backward_simple_rnn_1_while_identity*
&backward_simple_rnn_1_while_identity_1*
&backward_simple_rnn_1_while_identity_2*
&backward_simple_rnn_1_while_identity_3*
&backward_simple_rnn_1_while_identity_4*
&backward_simple_rnn_1_while_identity_5E
Abackward_simple_rnn_1_while_backward_simple_rnn_1_strided_slice_1
}backward_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_backward_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor
backward_simple_rnn_1_while_tensorarrayv2read_1_tensorlistgetitem_backward_simple_rnn_1_tensorarrayunstack_1_tensorlistfromtensor^
Lbackward_simple_rnn_1_while_simple_rnn_cell_5_matmul_readvariableop_resource:@@[
Mbackward_simple_rnn_1_while_simple_rnn_cell_5_biasadd_readvariableop_resource:@`
Nbackward_simple_rnn_1_while_simple_rnn_cell_5_matmul_1_readvariableop_resource:@@¢Dbackward_simple_rnn_1/while/simple_rnn_cell_5/BiasAdd/ReadVariableOp¢Cbackward_simple_rnn_1/while/simple_rnn_cell_5/MatMul/ReadVariableOp¢Ebackward_simple_rnn_1/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp
Mbackward_simple_rnn_1/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   
?backward_simple_rnn_1/while/TensorArrayV2Read/TensorListGetItemTensorListGetItembackward_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_backward_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor_0'backward_simple_rnn_1_while_placeholderVbackward_simple_rnn_1/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
element_dtype0 
Obackward_simple_rnn_1/while/TensorArrayV2Read_1/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   
Abackward_simple_rnn_1/while/TensorArrayV2Read_1/TensorListGetItemTensorListGetItembackward_simple_rnn_1_while_tensorarrayv2read_1_tensorlistgetitem_backward_simple_rnn_1_tensorarrayunstack_1_tensorlistfromtensor_0'backward_simple_rnn_1_while_placeholderXbackward_simple_rnn_1/while/TensorArrayV2Read_1/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0
Ò
Cbackward_simple_rnn_1/while/simple_rnn_cell_5/MatMul/ReadVariableOpReadVariableOpNbackward_simple_rnn_1_while_simple_rnn_cell_5_matmul_readvariableop_resource_0*
_output_shapes

:@@*
dtype0
4backward_simple_rnn_1/while/simple_rnn_cell_5/MatMulMatMulFbackward_simple_rnn_1/while/TensorArrayV2Read/TensorListGetItem:item:0Kbackward_simple_rnn_1/while/simple_rnn_cell_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Ð
Dbackward_simple_rnn_1/while/simple_rnn_cell_5/BiasAdd/ReadVariableOpReadVariableOpObackward_simple_rnn_1_while_simple_rnn_cell_5_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype0
5backward_simple_rnn_1/while/simple_rnn_cell_5/BiasAddBiasAdd>backward_simple_rnn_1/while/simple_rnn_cell_5/MatMul:product:0Lbackward_simple_rnn_1/while/simple_rnn_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Ö
Ebackward_simple_rnn_1/while/simple_rnn_cell_5/MatMul_1/ReadVariableOpReadVariableOpPbackward_simple_rnn_1_while_simple_rnn_cell_5_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype0ì
6backward_simple_rnn_1/while/simple_rnn_cell_5/MatMul_1MatMul)backward_simple_rnn_1_while_placeholder_3Mbackward_simple_rnn_1/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@î
1backward_simple_rnn_1/while/simple_rnn_cell_5/addAddV2>backward_simple_rnn_1/while/simple_rnn_cell_5/BiasAdd:output:0@backward_simple_rnn_1/while/simple_rnn_cell_5/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@£
2backward_simple_rnn_1/while/simple_rnn_cell_5/TanhTanh5backward_simple_rnn_1/while/simple_rnn_cell_5/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@{
*backward_simple_rnn_1/while/Tile/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      Ù
 backward_simple_rnn_1/while/TileTileHbackward_simple_rnn_1/while/TensorArrayV2Read_1/TensorListGetItem:item:03backward_simple_rnn_1/while/Tile/multiples:output:0*
T0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿð
$backward_simple_rnn_1/while/SelectV2SelectV2)backward_simple_rnn_1/while/Tile:output:06backward_simple_rnn_1/while/simple_rnn_cell_5/Tanh:y:0)backward_simple_rnn_1_while_placeholder_2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@}
,backward_simple_rnn_1/while/Tile_1/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      Ý
"backward_simple_rnn_1/while/Tile_1TileHbackward_simple_rnn_1/while/TensorArrayV2Read_1/TensorListGetItem:item:05backward_simple_rnn_1/while/Tile_1/multiples:output:0*
T0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿô
&backward_simple_rnn_1/while/SelectV2_1SelectV2+backward_simple_rnn_1/while/Tile_1:output:06backward_simple_rnn_1/while/simple_rnn_cell_5/Tanh:y:0)backward_simple_rnn_1_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
@backward_simple_rnn_1/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem)backward_simple_rnn_1_while_placeholder_1'backward_simple_rnn_1_while_placeholder-backward_simple_rnn_1/while/SelectV2:output:0*
_output_shapes
: *
element_dtype0:éèÒc
!backward_simple_rnn_1/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :
backward_simple_rnn_1/while/addAddV2'backward_simple_rnn_1_while_placeholder*backward_simple_rnn_1/while/add/y:output:0*
T0*
_output_shapes
: e
#backward_simple_rnn_1/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :¿
!backward_simple_rnn_1/while/add_1AddV2Dbackward_simple_rnn_1_while_backward_simple_rnn_1_while_loop_counter,backward_simple_rnn_1/while/add_1/y:output:0*
T0*
_output_shapes
: 
$backward_simple_rnn_1/while/IdentityIdentity%backward_simple_rnn_1/while/add_1:z:0!^backward_simple_rnn_1/while/NoOp*
T0*
_output_shapes
: Â
&backward_simple_rnn_1/while/Identity_1IdentityJbackward_simple_rnn_1_while_backward_simple_rnn_1_while_maximum_iterations!^backward_simple_rnn_1/while/NoOp*
T0*
_output_shapes
: 
&backward_simple_rnn_1/while/Identity_2Identity#backward_simple_rnn_1/while/add:z:0!^backward_simple_rnn_1/while/NoOp*
T0*
_output_shapes
: È
&backward_simple_rnn_1/while/Identity_3IdentityPbackward_simple_rnn_1/while/TensorArrayV2Write/TensorListSetItem:output_handle:0!^backward_simple_rnn_1/while/NoOp*
T0*
_output_shapes
: ¶
&backward_simple_rnn_1/while/Identity_4Identity-backward_simple_rnn_1/while/SelectV2:output:0!^backward_simple_rnn_1/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¸
&backward_simple_rnn_1/while/Identity_5Identity/backward_simple_rnn_1/while/SelectV2_1:output:0!^backward_simple_rnn_1/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@·
 backward_simple_rnn_1/while/NoOpNoOpE^backward_simple_rnn_1/while/simple_rnn_cell_5/BiasAdd/ReadVariableOpD^backward_simple_rnn_1/while/simple_rnn_cell_5/MatMul/ReadVariableOpF^backward_simple_rnn_1/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
Abackward_simple_rnn_1_while_backward_simple_rnn_1_strided_slice_1Cbackward_simple_rnn_1_while_backward_simple_rnn_1_strided_slice_1_0"U
$backward_simple_rnn_1_while_identity-backward_simple_rnn_1/while/Identity:output:0"Y
&backward_simple_rnn_1_while_identity_1/backward_simple_rnn_1/while/Identity_1:output:0"Y
&backward_simple_rnn_1_while_identity_2/backward_simple_rnn_1/while/Identity_2:output:0"Y
&backward_simple_rnn_1_while_identity_3/backward_simple_rnn_1/while/Identity_3:output:0"Y
&backward_simple_rnn_1_while_identity_4/backward_simple_rnn_1/while/Identity_4:output:0"Y
&backward_simple_rnn_1_while_identity_5/backward_simple_rnn_1/while/Identity_5:output:0" 
Mbackward_simple_rnn_1_while_simple_rnn_cell_5_biasadd_readvariableop_resourceObackward_simple_rnn_1_while_simple_rnn_cell_5_biasadd_readvariableop_resource_0"¢
Nbackward_simple_rnn_1_while_simple_rnn_cell_5_matmul_1_readvariableop_resourcePbackward_simple_rnn_1_while_simple_rnn_cell_5_matmul_1_readvariableop_resource_0"
Lbackward_simple_rnn_1_while_simple_rnn_cell_5_matmul_readvariableop_resourceNbackward_simple_rnn_1_while_simple_rnn_cell_5_matmul_readvariableop_resource_0"
backward_simple_rnn_1_while_tensorarrayv2read_1_tensorlistgetitem_backward_simple_rnn_1_tensorarrayunstack_1_tensorlistfromtensorbackward_simple_rnn_1_while_tensorarrayv2read_1_tensorlistgetitem_backward_simple_rnn_1_tensorarrayunstack_1_tensorlistfromtensor_0"
}backward_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_backward_simple_rnn_1_tensorarrayunstack_tensorlistfromtensorbackward_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_backward_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : : 2
Dbackward_simple_rnn_1/while/simple_rnn_cell_5/BiasAdd/ReadVariableOpDbackward_simple_rnn_1/while/simple_rnn_cell_5/BiasAdd/ReadVariableOp2
Cbackward_simple_rnn_1/while/simple_rnn_cell_5/MatMul/ReadVariableOpCbackward_simple_rnn_1/while/simple_rnn_cell_5/MatMul/ReadVariableOp2
Ebackward_simple_rnn_1/while/simple_rnn_cell_5/MatMul_1/ReadVariableOpEbackward_simple_rnn_1/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
Õ
¥
while_cond_67531
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_67531___redundant_placeholder03
/while_while_cond_67531___redundant_placeholder13
/while_while_cond_67531___redundant_placeholder23
/while_while_cond_67531___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :ÿÿÿÿÿÿÿÿÿ@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
:
¦
Á
5__inference_backward_simple_rnn_1_layer_call_fn_71152
inputs_0
unknown:@@
	unknown_0:@
	unknown_1:@@
identity¢StatefulPartitionedCallô
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Y
fTRR
P__inference_backward_simple_rnn_1_layer_call_and_return_conditional_losses_67314o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
"
_user_specified_name
inputs/0

×
&backward_simple_rnn_1_while_cond_70542H
Dbackward_simple_rnn_1_while_backward_simple_rnn_1_while_loop_counterN
Jbackward_simple_rnn_1_while_backward_simple_rnn_1_while_maximum_iterations+
'backward_simple_rnn_1_while_placeholder-
)backward_simple_rnn_1_while_placeholder_1-
)backward_simple_rnn_1_while_placeholder_2-
)backward_simple_rnn_1_while_placeholder_3J
Fbackward_simple_rnn_1_while_less_backward_simple_rnn_1_strided_slice_1_
[backward_simple_rnn_1_while_backward_simple_rnn_1_while_cond_70542___redundant_placeholder0_
[backward_simple_rnn_1_while_backward_simple_rnn_1_while_cond_70542___redundant_placeholder1_
[backward_simple_rnn_1_while_backward_simple_rnn_1_while_cond_70542___redundant_placeholder2_
[backward_simple_rnn_1_while_backward_simple_rnn_1_while_cond_70542___redundant_placeholder3_
[backward_simple_rnn_1_while_backward_simple_rnn_1_while_cond_70542___redundant_placeholder4(
$backward_simple_rnn_1_while_identity
º
 backward_simple_rnn_1/while/LessLess'backward_simple_rnn_1_while_placeholderFbackward_simple_rnn_1_while_less_backward_simple_rnn_1_strided_slice_1*
T0*
_output_shapes
: w
$backward_simple_rnn_1/while/IdentityIdentity$backward_simple_rnn_1/while/Less:z:0*
T0
*
_output_shapes
: "U
$backward_simple_rnn_1_while_identity-backward_simple_rnn_1/while/Identity:output:0*(
_construction_contextkEagerRuntime*W
_input_shapesF
D: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: :::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
::

_output_shapes
:
Üx
Á
Bsequential_1_bidirectional_1_forward_simple_rnn_1_while_body_66668
|sequential_1_bidirectional_1_forward_simple_rnn_1_while_sequential_1_bidirectional_1_forward_simple_rnn_1_while_loop_counter
sequential_1_bidirectional_1_forward_simple_rnn_1_while_sequential_1_bidirectional_1_forward_simple_rnn_1_while_maximum_iterationsG
Csequential_1_bidirectional_1_forward_simple_rnn_1_while_placeholderI
Esequential_1_bidirectional_1_forward_simple_rnn_1_while_placeholder_1I
Esequential_1_bidirectional_1_forward_simple_rnn_1_while_placeholder_2I
Esequential_1_bidirectional_1_forward_simple_rnn_1_while_placeholder_3
{sequential_1_bidirectional_1_forward_simple_rnn_1_while_sequential_1_bidirectional_1_forward_simple_rnn_1_strided_slice_1_0¼
·sequential_1_bidirectional_1_forward_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_sequential_1_bidirectional_1_forward_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor_0À
»sequential_1_bidirectional_1_forward_simple_rnn_1_while_tensorarrayv2read_1_tensorlistgetitem_sequential_1_bidirectional_1_forward_simple_rnn_1_tensorarrayunstack_1_tensorlistfromtensor_0|
jsequential_1_bidirectional_1_forward_simple_rnn_1_while_simple_rnn_cell_4_matmul_readvariableop_resource_0:@@y
ksequential_1_bidirectional_1_forward_simple_rnn_1_while_simple_rnn_cell_4_biasadd_readvariableop_resource_0:@~
lsequential_1_bidirectional_1_forward_simple_rnn_1_while_simple_rnn_cell_4_matmul_1_readvariableop_resource_0:@@D
@sequential_1_bidirectional_1_forward_simple_rnn_1_while_identityF
Bsequential_1_bidirectional_1_forward_simple_rnn_1_while_identity_1F
Bsequential_1_bidirectional_1_forward_simple_rnn_1_while_identity_2F
Bsequential_1_bidirectional_1_forward_simple_rnn_1_while_identity_3F
Bsequential_1_bidirectional_1_forward_simple_rnn_1_while_identity_4F
Bsequential_1_bidirectional_1_forward_simple_rnn_1_while_identity_5}
ysequential_1_bidirectional_1_forward_simple_rnn_1_while_sequential_1_bidirectional_1_forward_simple_rnn_1_strided_slice_1º
µsequential_1_bidirectional_1_forward_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_sequential_1_bidirectional_1_forward_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor¾
¹sequential_1_bidirectional_1_forward_simple_rnn_1_while_tensorarrayv2read_1_tensorlistgetitem_sequential_1_bidirectional_1_forward_simple_rnn_1_tensorarrayunstack_1_tensorlistfromtensorz
hsequential_1_bidirectional_1_forward_simple_rnn_1_while_simple_rnn_cell_4_matmul_readvariableop_resource:@@w
isequential_1_bidirectional_1_forward_simple_rnn_1_while_simple_rnn_cell_4_biasadd_readvariableop_resource:@|
jsequential_1_bidirectional_1_forward_simple_rnn_1_while_simple_rnn_cell_4_matmul_1_readvariableop_resource:@@¢`sequential_1/bidirectional_1/forward_simple_rnn_1/while/simple_rnn_cell_4/BiasAdd/ReadVariableOp¢_sequential_1/bidirectional_1/forward_simple_rnn_1/while/simple_rnn_cell_4/MatMul/ReadVariableOp¢asequential_1/bidirectional_1/forward_simple_rnn_1/while/simple_rnn_cell_4/MatMul_1/ReadVariableOpº
isequential_1/bidirectional_1/forward_simple_rnn_1/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   ¡
[sequential_1/bidirectional_1/forward_simple_rnn_1/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem·sequential_1_bidirectional_1_forward_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_sequential_1_bidirectional_1_forward_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor_0Csequential_1_bidirectional_1_forward_simple_rnn_1_while_placeholderrsequential_1/bidirectional_1/forward_simple_rnn_1/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
element_dtype0¼
ksequential_1/bidirectional_1/forward_simple_rnn_1/while/TensorArrayV2Read_1/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ©
]sequential_1/bidirectional_1/forward_simple_rnn_1/while/TensorArrayV2Read_1/TensorListGetItemTensorListGetItem»sequential_1_bidirectional_1_forward_simple_rnn_1_while_tensorarrayv2read_1_tensorlistgetitem_sequential_1_bidirectional_1_forward_simple_rnn_1_tensorarrayunstack_1_tensorlistfromtensor_0Csequential_1_bidirectional_1_forward_simple_rnn_1_while_placeholdertsequential_1/bidirectional_1/forward_simple_rnn_1/while/TensorArrayV2Read_1/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0

_sequential_1/bidirectional_1/forward_simple_rnn_1/while/simple_rnn_cell_4/MatMul/ReadVariableOpReadVariableOpjsequential_1_bidirectional_1_forward_simple_rnn_1_while_simple_rnn_cell_4_matmul_readvariableop_resource_0*
_output_shapes

:@@*
dtype0Ù
Psequential_1/bidirectional_1/forward_simple_rnn_1/while/simple_rnn_cell_4/MatMulMatMulbsequential_1/bidirectional_1/forward_simple_rnn_1/while/TensorArrayV2Read/TensorListGetItem:item:0gsequential_1/bidirectional_1/forward_simple_rnn_1/while/simple_rnn_cell_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
`sequential_1/bidirectional_1/forward_simple_rnn_1/while/simple_rnn_cell_4/BiasAdd/ReadVariableOpReadVariableOpksequential_1_bidirectional_1_forward_simple_rnn_1_while_simple_rnn_cell_4_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype0Ô
Qsequential_1/bidirectional_1/forward_simple_rnn_1/while/simple_rnn_cell_4/BiasAddBiasAddZsequential_1/bidirectional_1/forward_simple_rnn_1/while/simple_rnn_cell_4/MatMul:product:0hsequential_1/bidirectional_1/forward_simple_rnn_1/while/simple_rnn_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
asequential_1/bidirectional_1/forward_simple_rnn_1/while/simple_rnn_cell_4/MatMul_1/ReadVariableOpReadVariableOplsequential_1_bidirectional_1_forward_simple_rnn_1_while_simple_rnn_cell_4_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype0À
Rsequential_1/bidirectional_1/forward_simple_rnn_1/while/simple_rnn_cell_4/MatMul_1MatMulEsequential_1_bidirectional_1_forward_simple_rnn_1_while_placeholder_3isequential_1/bidirectional_1/forward_simple_rnn_1/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Â
Msequential_1/bidirectional_1/forward_simple_rnn_1/while/simple_rnn_cell_4/addAddV2Zsequential_1/bidirectional_1/forward_simple_rnn_1/while/simple_rnn_cell_4/BiasAdd:output:0\sequential_1/bidirectional_1/forward_simple_rnn_1/while/simple_rnn_cell_4/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Û
Nsequential_1/bidirectional_1/forward_simple_rnn_1/while/simple_rnn_cell_4/TanhTanhQsequential_1/bidirectional_1/forward_simple_rnn_1/while/simple_rnn_cell_4/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
Fsequential_1/bidirectional_1/forward_simple_rnn_1/while/Tile/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      ­
<sequential_1/bidirectional_1/forward_simple_rnn_1/while/TileTiledsequential_1/bidirectional_1/forward_simple_rnn_1/while/TensorArrayV2Read_1/TensorListGetItem:item:0Osequential_1/bidirectional_1/forward_simple_rnn_1/while/Tile/multiples:output:0*
T0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿà
@sequential_1/bidirectional_1/forward_simple_rnn_1/while/SelectV2SelectV2Esequential_1/bidirectional_1/forward_simple_rnn_1/while/Tile:output:0Rsequential_1/bidirectional_1/forward_simple_rnn_1/while/simple_rnn_cell_4/Tanh:y:0Esequential_1_bidirectional_1_forward_simple_rnn_1_while_placeholder_2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
Hsequential_1/bidirectional_1/forward_simple_rnn_1/while/Tile_1/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      ±
>sequential_1/bidirectional_1/forward_simple_rnn_1/while/Tile_1Tiledsequential_1/bidirectional_1/forward_simple_rnn_1/while/TensorArrayV2Read_1/TensorListGetItem:item:0Qsequential_1/bidirectional_1/forward_simple_rnn_1/while/Tile_1/multiples:output:0*
T0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿä
Bsequential_1/bidirectional_1/forward_simple_rnn_1/while/SelectV2_1SelectV2Gsequential_1/bidirectional_1/forward_simple_rnn_1/while/Tile_1:output:0Rsequential_1/bidirectional_1/forward_simple_rnn_1/while/simple_rnn_cell_4/Tanh:y:0Esequential_1_bidirectional_1_forward_simple_rnn_1_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
\sequential_1/bidirectional_1/forward_simple_rnn_1/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemEsequential_1_bidirectional_1_forward_simple_rnn_1_while_placeholder_1Csequential_1_bidirectional_1_forward_simple_rnn_1_while_placeholderIsequential_1/bidirectional_1/forward_simple_rnn_1/while/SelectV2:output:0*
_output_shapes
: *
element_dtype0:éèÒ
=sequential_1/bidirectional_1/forward_simple_rnn_1/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :ò
;sequential_1/bidirectional_1/forward_simple_rnn_1/while/addAddV2Csequential_1_bidirectional_1_forward_simple_rnn_1_while_placeholderFsequential_1/bidirectional_1/forward_simple_rnn_1/while/add/y:output:0*
T0*
_output_shapes
: 
?sequential_1/bidirectional_1/forward_simple_rnn_1/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :¯
=sequential_1/bidirectional_1/forward_simple_rnn_1/while/add_1AddV2|sequential_1_bidirectional_1_forward_simple_rnn_1_while_sequential_1_bidirectional_1_forward_simple_rnn_1_while_loop_counterHsequential_1/bidirectional_1/forward_simple_rnn_1/while/add_1/y:output:0*
T0*
_output_shapes
: ï
@sequential_1/bidirectional_1/forward_simple_rnn_1/while/IdentityIdentityAsequential_1/bidirectional_1/forward_simple_rnn_1/while/add_1:z:0=^sequential_1/bidirectional_1/forward_simple_rnn_1/while/NoOp*
T0*
_output_shapes
: ³
Bsequential_1/bidirectional_1/forward_simple_rnn_1/while/Identity_1Identitysequential_1_bidirectional_1_forward_simple_rnn_1_while_sequential_1_bidirectional_1_forward_simple_rnn_1_while_maximum_iterations=^sequential_1/bidirectional_1/forward_simple_rnn_1/while/NoOp*
T0*
_output_shapes
: ï
Bsequential_1/bidirectional_1/forward_simple_rnn_1/while/Identity_2Identity?sequential_1/bidirectional_1/forward_simple_rnn_1/while/add:z:0=^sequential_1/bidirectional_1/forward_simple_rnn_1/while/NoOp*
T0*
_output_shapes
: 
Bsequential_1/bidirectional_1/forward_simple_rnn_1/while/Identity_3Identitylsequential_1/bidirectional_1/forward_simple_rnn_1/while/TensorArrayV2Write/TensorListSetItem:output_handle:0=^sequential_1/bidirectional_1/forward_simple_rnn_1/while/NoOp*
T0*
_output_shapes
: 
Bsequential_1/bidirectional_1/forward_simple_rnn_1/while/Identity_4IdentityIsequential_1/bidirectional_1/forward_simple_rnn_1/while/SelectV2:output:0=^sequential_1/bidirectional_1/forward_simple_rnn_1/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
Bsequential_1/bidirectional_1/forward_simple_rnn_1/while/Identity_5IdentityKsequential_1/bidirectional_1/forward_simple_rnn_1/while/SelectV2_1:output:0=^sequential_1/bidirectional_1/forward_simple_rnn_1/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@§
<sequential_1/bidirectional_1/forward_simple_rnn_1/while/NoOpNoOpa^sequential_1/bidirectional_1/forward_simple_rnn_1/while/simple_rnn_cell_4/BiasAdd/ReadVariableOp`^sequential_1/bidirectional_1/forward_simple_rnn_1/while/simple_rnn_cell_4/MatMul/ReadVariableOpb^sequential_1/bidirectional_1/forward_simple_rnn_1/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
@sequential_1_bidirectional_1_forward_simple_rnn_1_while_identityIsequential_1/bidirectional_1/forward_simple_rnn_1/while/Identity:output:0"
Bsequential_1_bidirectional_1_forward_simple_rnn_1_while_identity_1Ksequential_1/bidirectional_1/forward_simple_rnn_1/while/Identity_1:output:0"
Bsequential_1_bidirectional_1_forward_simple_rnn_1_while_identity_2Ksequential_1/bidirectional_1/forward_simple_rnn_1/while/Identity_2:output:0"
Bsequential_1_bidirectional_1_forward_simple_rnn_1_while_identity_3Ksequential_1/bidirectional_1/forward_simple_rnn_1/while/Identity_3:output:0"
Bsequential_1_bidirectional_1_forward_simple_rnn_1_while_identity_4Ksequential_1/bidirectional_1/forward_simple_rnn_1/while/Identity_4:output:0"
Bsequential_1_bidirectional_1_forward_simple_rnn_1_while_identity_5Ksequential_1/bidirectional_1/forward_simple_rnn_1/while/Identity_5:output:0"ø
ysequential_1_bidirectional_1_forward_simple_rnn_1_while_sequential_1_bidirectional_1_forward_simple_rnn_1_strided_slice_1{sequential_1_bidirectional_1_forward_simple_rnn_1_while_sequential_1_bidirectional_1_forward_simple_rnn_1_strided_slice_1_0"Ø
isequential_1_bidirectional_1_forward_simple_rnn_1_while_simple_rnn_cell_4_biasadd_readvariableop_resourceksequential_1_bidirectional_1_forward_simple_rnn_1_while_simple_rnn_cell_4_biasadd_readvariableop_resource_0"Ú
jsequential_1_bidirectional_1_forward_simple_rnn_1_while_simple_rnn_cell_4_matmul_1_readvariableop_resourcelsequential_1_bidirectional_1_forward_simple_rnn_1_while_simple_rnn_cell_4_matmul_1_readvariableop_resource_0"Ö
hsequential_1_bidirectional_1_forward_simple_rnn_1_while_simple_rnn_cell_4_matmul_readvariableop_resourcejsequential_1_bidirectional_1_forward_simple_rnn_1_while_simple_rnn_cell_4_matmul_readvariableop_resource_0"ú
¹sequential_1_bidirectional_1_forward_simple_rnn_1_while_tensorarrayv2read_1_tensorlistgetitem_sequential_1_bidirectional_1_forward_simple_rnn_1_tensorarrayunstack_1_tensorlistfromtensor»sequential_1_bidirectional_1_forward_simple_rnn_1_while_tensorarrayv2read_1_tensorlistgetitem_sequential_1_bidirectional_1_forward_simple_rnn_1_tensorarrayunstack_1_tensorlistfromtensor_0"ò
µsequential_1_bidirectional_1_forward_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_sequential_1_bidirectional_1_forward_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor·sequential_1_bidirectional_1_forward_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_sequential_1_bidirectional_1_forward_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : : 2Ä
`sequential_1/bidirectional_1/forward_simple_rnn_1/while/simple_rnn_cell_4/BiasAdd/ReadVariableOp`sequential_1/bidirectional_1/forward_simple_rnn_1/while/simple_rnn_cell_4/BiasAdd/ReadVariableOp2Â
_sequential_1/bidirectional_1/forward_simple_rnn_1/while/simple_rnn_cell_4/MatMul/ReadVariableOp_sequential_1/bidirectional_1/forward_simple_rnn_1/while/simple_rnn_cell_4/MatMul/ReadVariableOp2Æ
asequential_1/bidirectional_1/forward_simple_rnn_1/while/simple_rnn_cell_4/MatMul_1/ReadVariableOpasequential_1/bidirectional_1/forward_simple_rnn_1/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 

×
&backward_simple_rnn_1_while_cond_68626H
Dbackward_simple_rnn_1_while_backward_simple_rnn_1_while_loop_counterN
Jbackward_simple_rnn_1_while_backward_simple_rnn_1_while_maximum_iterations+
'backward_simple_rnn_1_while_placeholder-
)backward_simple_rnn_1_while_placeholder_1-
)backward_simple_rnn_1_while_placeholder_2-
)backward_simple_rnn_1_while_placeholder_3J
Fbackward_simple_rnn_1_while_less_backward_simple_rnn_1_strided_slice_1_
[backward_simple_rnn_1_while_backward_simple_rnn_1_while_cond_68626___redundant_placeholder0_
[backward_simple_rnn_1_while_backward_simple_rnn_1_while_cond_68626___redundant_placeholder1_
[backward_simple_rnn_1_while_backward_simple_rnn_1_while_cond_68626___redundant_placeholder2_
[backward_simple_rnn_1_while_backward_simple_rnn_1_while_cond_68626___redundant_placeholder3_
[backward_simple_rnn_1_while_backward_simple_rnn_1_while_cond_68626___redundant_placeholder4(
$backward_simple_rnn_1_while_identity
º
 backward_simple_rnn_1/while/LessLess'backward_simple_rnn_1_while_placeholderFbackward_simple_rnn_1_while_less_backward_simple_rnn_1_strided_slice_1*
T0*
_output_shapes
: w
$backward_simple_rnn_1/while/IdentityIdentity$backward_simple_rnn_1/while/Less:z:0*
T0
*
_output_shapes
: "U
$backward_simple_rnn_1_while_identity-backward_simple_rnn_1/while/Identity:output:0*(
_construction_contextkEagerRuntime*W
_input_shapesF
D: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: :::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
::

_output_shapes
:
ÿ
·

6bidirectional_1_backward_simple_rnn_1_while_cond_69476h
dbidirectional_1_backward_simple_rnn_1_while_bidirectional_1_backward_simple_rnn_1_while_loop_countern
jbidirectional_1_backward_simple_rnn_1_while_bidirectional_1_backward_simple_rnn_1_while_maximum_iterations;
7bidirectional_1_backward_simple_rnn_1_while_placeholder=
9bidirectional_1_backward_simple_rnn_1_while_placeholder_1=
9bidirectional_1_backward_simple_rnn_1_while_placeholder_2=
9bidirectional_1_backward_simple_rnn_1_while_placeholder_3j
fbidirectional_1_backward_simple_rnn_1_while_less_bidirectional_1_backward_simple_rnn_1_strided_slice_1
{bidirectional_1_backward_simple_rnn_1_while_bidirectional_1_backward_simple_rnn_1_while_cond_69476___redundant_placeholder0
{bidirectional_1_backward_simple_rnn_1_while_bidirectional_1_backward_simple_rnn_1_while_cond_69476___redundant_placeholder1
{bidirectional_1_backward_simple_rnn_1_while_bidirectional_1_backward_simple_rnn_1_while_cond_69476___redundant_placeholder2
{bidirectional_1_backward_simple_rnn_1_while_bidirectional_1_backward_simple_rnn_1_while_cond_69476___redundant_placeholder3
{bidirectional_1_backward_simple_rnn_1_while_bidirectional_1_backward_simple_rnn_1_while_cond_69476___redundant_placeholder48
4bidirectional_1_backward_simple_rnn_1_while_identity
ú
0bidirectional_1/backward_simple_rnn_1/while/LessLess7bidirectional_1_backward_simple_rnn_1_while_placeholderfbidirectional_1_backward_simple_rnn_1_while_less_bidirectional_1_backward_simple_rnn_1_strided_slice_1*
T0*
_output_shapes
: 
4bidirectional_1/backward_simple_rnn_1/while/IdentityIdentity4bidirectional_1/backward_simple_rnn_1/while/Less:z:0*
T0
*
_output_shapes
: "u
4bidirectional_1_backward_simple_rnn_1_while_identity=bidirectional_1/backward_simple_rnn_1/while/Identity:output:0*(
_construction_contextkEagerRuntime*W
_input_shapesF
D: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: :::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
::

_output_shapes
:

ä
Csequential_1_bidirectional_1_backward_simple_rnn_1_while_cond_66799
~sequential_1_bidirectional_1_backward_simple_rnn_1_while_sequential_1_bidirectional_1_backward_simple_rnn_1_while_loop_counter
sequential_1_bidirectional_1_backward_simple_rnn_1_while_sequential_1_bidirectional_1_backward_simple_rnn_1_while_maximum_iterationsH
Dsequential_1_bidirectional_1_backward_simple_rnn_1_while_placeholderJ
Fsequential_1_bidirectional_1_backward_simple_rnn_1_while_placeholder_1J
Fsequential_1_bidirectional_1_backward_simple_rnn_1_while_placeholder_2J
Fsequential_1_bidirectional_1_backward_simple_rnn_1_while_placeholder_3
sequential_1_bidirectional_1_backward_simple_rnn_1_while_less_sequential_1_bidirectional_1_backward_simple_rnn_1_strided_slice_1
sequential_1_bidirectional_1_backward_simple_rnn_1_while_sequential_1_bidirectional_1_backward_simple_rnn_1_while_cond_66799___redundant_placeholder0
sequential_1_bidirectional_1_backward_simple_rnn_1_while_sequential_1_bidirectional_1_backward_simple_rnn_1_while_cond_66799___redundant_placeholder1
sequential_1_bidirectional_1_backward_simple_rnn_1_while_sequential_1_bidirectional_1_backward_simple_rnn_1_while_cond_66799___redundant_placeholder2
sequential_1_bidirectional_1_backward_simple_rnn_1_while_sequential_1_bidirectional_1_backward_simple_rnn_1_while_cond_66799___redundant_placeholder3
sequential_1_bidirectional_1_backward_simple_rnn_1_while_sequential_1_bidirectional_1_backward_simple_rnn_1_while_cond_66799___redundant_placeholder4E
Asequential_1_bidirectional_1_backward_simple_rnn_1_while_identity
¯
=sequential_1/bidirectional_1/backward_simple_rnn_1/while/LessLessDsequential_1_bidirectional_1_backward_simple_rnn_1_while_placeholdersequential_1_bidirectional_1_backward_simple_rnn_1_while_less_sequential_1_bidirectional_1_backward_simple_rnn_1_strided_slice_1*
T0*
_output_shapes
: ±
Asequential_1/bidirectional_1/backward_simple_rnn_1/while/IdentityIdentityAsequential_1/bidirectional_1/backward_simple_rnn_1/while/Less:z:0*
T0
*
_output_shapes
: "
Asequential_1_bidirectional_1_backward_simple_rnn_1_while_identityJsequential_1/bidirectional_1/backward_simple_rnn_1/while/Identity:output:0*(
_construction_contextkEagerRuntime*W
_input_shapesF
D: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: :::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
::

_output_shapes
:
Õ
¥
while_cond_70966
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_70966___redundant_placeholder03
/while_while_cond_70966___redundant_placeholder13
/while_while_cond_70966___redundant_placeholder23
/while_while_cond_70966___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :ÿÿÿÿÿÿÿÿÿ@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
:
Õ
¥
while_cond_67411
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_67411___redundant_placeholder03
/while_while_cond_67411___redundant_placeholder13
/while_while_cond_67411___redundant_placeholder23
/while_while_cond_67411___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :ÿÿÿÿÿÿÿÿÿ@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
:



/__inference_bidirectional_1_layer_call_fn_69642

inputs
mask

unknown:@@
	unknown_0:@
	unknown_1:@@
	unknown_2:@@
	unknown_3:@
	unknown_4:@@
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsmaskunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin

2
*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_bidirectional_1_layer_call_and_return_conditional_losses_68329p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs:VR
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

_user_specified_namemask
²,
Ç
while_body_71075
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0J
8while_simple_rnn_cell_4_matmul_readvariableop_resource_0:@@G
9while_simple_rnn_cell_4_biasadd_readvariableop_resource_0:@L
:while_simple_rnn_cell_4_matmul_1_readvariableop_resource_0:@@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorH
6while_simple_rnn_cell_4_matmul_readvariableop_resource:@@E
7while_simple_rnn_cell_4_biasadd_readvariableop_resource:@J
8while_simple_rnn_cell_4_matmul_1_readvariableop_resource:@@¢.while/simple_rnn_cell_4/BiasAdd/ReadVariableOp¢-while/simple_rnn_cell_4/MatMul/ReadVariableOp¢/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÿÿÿÿ¯
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
element_dtype0¦
-while/simple_rnn_cell_4/MatMul/ReadVariableOpReadVariableOp8while_simple_rnn_cell_4_matmul_readvariableop_resource_0*
_output_shapes

:@@*
dtype0Ã
while/simple_rnn_cell_4/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:05while/simple_rnn_cell_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¤
.while/simple_rnn_cell_4/BiasAdd/ReadVariableOpReadVariableOp9while_simple_rnn_cell_4_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype0¾
while/simple_rnn_cell_4/BiasAddBiasAdd(while/simple_rnn_cell_4/MatMul:product:06while/simple_rnn_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@ª
/while/simple_rnn_cell_4/MatMul_1/ReadVariableOpReadVariableOp:while_simple_rnn_cell_4_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype0ª
 while/simple_rnn_cell_4/MatMul_1MatMulwhile_placeholder_27while/simple_rnn_cell_4/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¬
while/simple_rnn_cell_4/addAddV2(while/simple_rnn_cell_4/BiasAdd:output:0*while/simple_rnn_cell_4/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@w
while/simple_rnn_cell_4/TanhTanhwhile/simple_rnn_cell_4/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@É
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder while/simple_rnn_cell_4/Tanh:y:0*
_output_shapes
: *
element_dtype0:éèÒM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: }
while/Identity_4Identity while/simple_rnn_cell_4/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@ß

while/NoOpNoOp/^while/simple_rnn_cell_4/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_4/MatMul/ReadVariableOp0^while/simple_rnn_cell_4/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"t
7while_simple_rnn_cell_4_biasadd_readvariableop_resource9while_simple_rnn_cell_4_biasadd_readvariableop_resource_0"v
8while_simple_rnn_cell_4_matmul_1_readvariableop_resource:while_simple_rnn_cell_4_matmul_1_readvariableop_resource_0"r
6while_simple_rnn_cell_4_matmul_readvariableop_resource8while_simple_rnn_cell_4_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ@: : : : : 2`
.while/simple_rnn_cell_4/BiasAdd/ReadVariableOp.while/simple_rnn_cell_4/BiasAdd/ReadVariableOp2^
-while/simple_rnn_cell_4/MatMul/ReadVariableOp-while/simple_rnn_cell_4/MatMul/ReadVariableOp2b
/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
: 
ÿ
·

6bidirectional_1_backward_simple_rnn_1_while_cond_69189h
dbidirectional_1_backward_simple_rnn_1_while_bidirectional_1_backward_simple_rnn_1_while_loop_countern
jbidirectional_1_backward_simple_rnn_1_while_bidirectional_1_backward_simple_rnn_1_while_maximum_iterations;
7bidirectional_1_backward_simple_rnn_1_while_placeholder=
9bidirectional_1_backward_simple_rnn_1_while_placeholder_1=
9bidirectional_1_backward_simple_rnn_1_while_placeholder_2=
9bidirectional_1_backward_simple_rnn_1_while_placeholder_3j
fbidirectional_1_backward_simple_rnn_1_while_less_bidirectional_1_backward_simple_rnn_1_strided_slice_1
{bidirectional_1_backward_simple_rnn_1_while_bidirectional_1_backward_simple_rnn_1_while_cond_69189___redundant_placeholder0
{bidirectional_1_backward_simple_rnn_1_while_bidirectional_1_backward_simple_rnn_1_while_cond_69189___redundant_placeholder1
{bidirectional_1_backward_simple_rnn_1_while_bidirectional_1_backward_simple_rnn_1_while_cond_69189___redundant_placeholder2
{bidirectional_1_backward_simple_rnn_1_while_bidirectional_1_backward_simple_rnn_1_while_cond_69189___redundant_placeholder3
{bidirectional_1_backward_simple_rnn_1_while_bidirectional_1_backward_simple_rnn_1_while_cond_69189___redundant_placeholder48
4bidirectional_1_backward_simple_rnn_1_while_identity
ú
0bidirectional_1/backward_simple_rnn_1/while/LessLess7bidirectional_1_backward_simple_rnn_1_while_placeholderfbidirectional_1_backward_simple_rnn_1_while_less_bidirectional_1_backward_simple_rnn_1_strided_slice_1*
T0*
_output_shapes
: 
4bidirectional_1/backward_simple_rnn_1/while/IdentityIdentity4bidirectional_1/backward_simple_rnn_1/while/Less:z:0*
T0
*
_output_shapes
: "u
4bidirectional_1_backward_simple_rnn_1_while_identity=bidirectional_1/backward_simple_rnn_1/while/Identity:output:0*(
_construction_contextkEagerRuntime*W
_input_shapesF
D: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: :::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
::

_output_shapes
:

Á
%forward_simple_rnn_1_while_cond_68113F
Bforward_simple_rnn_1_while_forward_simple_rnn_1_while_loop_counterL
Hforward_simple_rnn_1_while_forward_simple_rnn_1_while_maximum_iterations*
&forward_simple_rnn_1_while_placeholder,
(forward_simple_rnn_1_while_placeholder_1,
(forward_simple_rnn_1_while_placeholder_2,
(forward_simple_rnn_1_while_placeholder_3H
Dforward_simple_rnn_1_while_less_forward_simple_rnn_1_strided_slice_1]
Yforward_simple_rnn_1_while_forward_simple_rnn_1_while_cond_68113___redundant_placeholder0]
Yforward_simple_rnn_1_while_forward_simple_rnn_1_while_cond_68113___redundant_placeholder1]
Yforward_simple_rnn_1_while_forward_simple_rnn_1_while_cond_68113___redundant_placeholder2]
Yforward_simple_rnn_1_while_forward_simple_rnn_1_while_cond_68113___redundant_placeholder3]
Yforward_simple_rnn_1_while_forward_simple_rnn_1_while_cond_68113___redundant_placeholder4'
#forward_simple_rnn_1_while_identity
¶
forward_simple_rnn_1/while/LessLess&forward_simple_rnn_1_while_placeholderDforward_simple_rnn_1_while_less_forward_simple_rnn_1_strided_slice_1*
T0*
_output_shapes
: u
#forward_simple_rnn_1/while/IdentityIdentity#forward_simple_rnn_1/while/Less:z:0*
T0
*
_output_shapes
: "S
#forward_simple_rnn_1_while_identity,forward_simple_rnn_1/while/Identity:output:0*(
_construction_contextkEagerRuntime*W
_input_shapesF
D: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: :::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
::

_output_shapes
:
ß	
£
F__inference_embedding_1_layer_call_and_return_conditional_losses_69590

inputs)
embedding_lookup_69584:	© @
identity¢embedding_lookup^
CastCastinputs*

DstT0*

SrcT0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÂ
embedding_lookupResourceGatherembedding_lookup_69584Cast:y:0*
Tindices0*)
_class
loc:@embedding_lookup/69584*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*
dtype0ª
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*)
_class
loc:@embedding_lookup/69584*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@Y
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: 2$
embedding_lookupembedding_lookup:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
úy
æ
Csequential_1_bidirectional_1_backward_simple_rnn_1_while_body_66800
~sequential_1_bidirectional_1_backward_simple_rnn_1_while_sequential_1_bidirectional_1_backward_simple_rnn_1_while_loop_counter
sequential_1_bidirectional_1_backward_simple_rnn_1_while_sequential_1_bidirectional_1_backward_simple_rnn_1_while_maximum_iterationsH
Dsequential_1_bidirectional_1_backward_simple_rnn_1_while_placeholderJ
Fsequential_1_bidirectional_1_backward_simple_rnn_1_while_placeholder_1J
Fsequential_1_bidirectional_1_backward_simple_rnn_1_while_placeholder_2J
Fsequential_1_bidirectional_1_backward_simple_rnn_1_while_placeholder_3
}sequential_1_bidirectional_1_backward_simple_rnn_1_while_sequential_1_bidirectional_1_backward_simple_rnn_1_strided_slice_1_0¾
¹sequential_1_bidirectional_1_backward_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_sequential_1_bidirectional_1_backward_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor_0Â
½sequential_1_bidirectional_1_backward_simple_rnn_1_while_tensorarrayv2read_1_tensorlistgetitem_sequential_1_bidirectional_1_backward_simple_rnn_1_tensorarrayunstack_1_tensorlistfromtensor_0}
ksequential_1_bidirectional_1_backward_simple_rnn_1_while_simple_rnn_cell_5_matmul_readvariableop_resource_0:@@z
lsequential_1_bidirectional_1_backward_simple_rnn_1_while_simple_rnn_cell_5_biasadd_readvariableop_resource_0:@
msequential_1_bidirectional_1_backward_simple_rnn_1_while_simple_rnn_cell_5_matmul_1_readvariableop_resource_0:@@E
Asequential_1_bidirectional_1_backward_simple_rnn_1_while_identityG
Csequential_1_bidirectional_1_backward_simple_rnn_1_while_identity_1G
Csequential_1_bidirectional_1_backward_simple_rnn_1_while_identity_2G
Csequential_1_bidirectional_1_backward_simple_rnn_1_while_identity_3G
Csequential_1_bidirectional_1_backward_simple_rnn_1_while_identity_4G
Csequential_1_bidirectional_1_backward_simple_rnn_1_while_identity_5
{sequential_1_bidirectional_1_backward_simple_rnn_1_while_sequential_1_bidirectional_1_backward_simple_rnn_1_strided_slice_1¼
·sequential_1_bidirectional_1_backward_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_sequential_1_bidirectional_1_backward_simple_rnn_1_tensorarrayunstack_tensorlistfromtensorÀ
»sequential_1_bidirectional_1_backward_simple_rnn_1_while_tensorarrayv2read_1_tensorlistgetitem_sequential_1_bidirectional_1_backward_simple_rnn_1_tensorarrayunstack_1_tensorlistfromtensor{
isequential_1_bidirectional_1_backward_simple_rnn_1_while_simple_rnn_cell_5_matmul_readvariableop_resource:@@x
jsequential_1_bidirectional_1_backward_simple_rnn_1_while_simple_rnn_cell_5_biasadd_readvariableop_resource:@}
ksequential_1_bidirectional_1_backward_simple_rnn_1_while_simple_rnn_cell_5_matmul_1_readvariableop_resource:@@¢asequential_1/bidirectional_1/backward_simple_rnn_1/while/simple_rnn_cell_5/BiasAdd/ReadVariableOp¢`sequential_1/bidirectional_1/backward_simple_rnn_1/while/simple_rnn_cell_5/MatMul/ReadVariableOp¢bsequential_1/bidirectional_1/backward_simple_rnn_1/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp»
jsequential_1/bidirectional_1/backward_simple_rnn_1/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   ¦
\sequential_1/bidirectional_1/backward_simple_rnn_1/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem¹sequential_1_bidirectional_1_backward_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_sequential_1_bidirectional_1_backward_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor_0Dsequential_1_bidirectional_1_backward_simple_rnn_1_while_placeholderssequential_1/bidirectional_1/backward_simple_rnn_1/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
element_dtype0½
lsequential_1/bidirectional_1/backward_simple_rnn_1/while/TensorArrayV2Read_1/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ®
^sequential_1/bidirectional_1/backward_simple_rnn_1/while/TensorArrayV2Read_1/TensorListGetItemTensorListGetItem½sequential_1_bidirectional_1_backward_simple_rnn_1_while_tensorarrayv2read_1_tensorlistgetitem_sequential_1_bidirectional_1_backward_simple_rnn_1_tensorarrayunstack_1_tensorlistfromtensor_0Dsequential_1_bidirectional_1_backward_simple_rnn_1_while_placeholderusequential_1/bidirectional_1/backward_simple_rnn_1/while/TensorArrayV2Read_1/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0

`sequential_1/bidirectional_1/backward_simple_rnn_1/while/simple_rnn_cell_5/MatMul/ReadVariableOpReadVariableOpksequential_1_bidirectional_1_backward_simple_rnn_1_while_simple_rnn_cell_5_matmul_readvariableop_resource_0*
_output_shapes

:@@*
dtype0Ü
Qsequential_1/bidirectional_1/backward_simple_rnn_1/while/simple_rnn_cell_5/MatMulMatMulcsequential_1/bidirectional_1/backward_simple_rnn_1/while/TensorArrayV2Read/TensorListGetItem:item:0hsequential_1/bidirectional_1/backward_simple_rnn_1/while/simple_rnn_cell_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
asequential_1/bidirectional_1/backward_simple_rnn_1/while/simple_rnn_cell_5/BiasAdd/ReadVariableOpReadVariableOplsequential_1_bidirectional_1_backward_simple_rnn_1_while_simple_rnn_cell_5_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype0×
Rsequential_1/bidirectional_1/backward_simple_rnn_1/while/simple_rnn_cell_5/BiasAddBiasAdd[sequential_1/bidirectional_1/backward_simple_rnn_1/while/simple_rnn_cell_5/MatMul:product:0isequential_1/bidirectional_1/backward_simple_rnn_1/while/simple_rnn_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
bsequential_1/bidirectional_1/backward_simple_rnn_1/while/simple_rnn_cell_5/MatMul_1/ReadVariableOpReadVariableOpmsequential_1_bidirectional_1_backward_simple_rnn_1_while_simple_rnn_cell_5_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype0Ã
Ssequential_1/bidirectional_1/backward_simple_rnn_1/while/simple_rnn_cell_5/MatMul_1MatMulFsequential_1_bidirectional_1_backward_simple_rnn_1_while_placeholder_3jsequential_1/bidirectional_1/backward_simple_rnn_1/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Å
Nsequential_1/bidirectional_1/backward_simple_rnn_1/while/simple_rnn_cell_5/addAddV2[sequential_1/bidirectional_1/backward_simple_rnn_1/while/simple_rnn_cell_5/BiasAdd:output:0]sequential_1/bidirectional_1/backward_simple_rnn_1/while/simple_rnn_cell_5/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Ý
Osequential_1/bidirectional_1/backward_simple_rnn_1/while/simple_rnn_cell_5/TanhTanhRsequential_1/bidirectional_1/backward_simple_rnn_1/while/simple_rnn_cell_5/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
Gsequential_1/bidirectional_1/backward_simple_rnn_1/while/Tile/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      °
=sequential_1/bidirectional_1/backward_simple_rnn_1/while/TileTileesequential_1/bidirectional_1/backward_simple_rnn_1/while/TensorArrayV2Read_1/TensorListGetItem:item:0Psequential_1/bidirectional_1/backward_simple_rnn_1/while/Tile/multiples:output:0*
T0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿä
Asequential_1/bidirectional_1/backward_simple_rnn_1/while/SelectV2SelectV2Fsequential_1/bidirectional_1/backward_simple_rnn_1/while/Tile:output:0Ssequential_1/bidirectional_1/backward_simple_rnn_1/while/simple_rnn_cell_5/Tanh:y:0Fsequential_1_bidirectional_1_backward_simple_rnn_1_while_placeholder_2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
Isequential_1/bidirectional_1/backward_simple_rnn_1/while/Tile_1/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      ´
?sequential_1/bidirectional_1/backward_simple_rnn_1/while/Tile_1Tileesequential_1/bidirectional_1/backward_simple_rnn_1/while/TensorArrayV2Read_1/TensorListGetItem:item:0Rsequential_1/bidirectional_1/backward_simple_rnn_1/while/Tile_1/multiples:output:0*
T0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿè
Csequential_1/bidirectional_1/backward_simple_rnn_1/while/SelectV2_1SelectV2Hsequential_1/bidirectional_1/backward_simple_rnn_1/while/Tile_1:output:0Ssequential_1/bidirectional_1/backward_simple_rnn_1/while/simple_rnn_cell_5/Tanh:y:0Fsequential_1_bidirectional_1_backward_simple_rnn_1_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
]sequential_1/bidirectional_1/backward_simple_rnn_1/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemFsequential_1_bidirectional_1_backward_simple_rnn_1_while_placeholder_1Dsequential_1_bidirectional_1_backward_simple_rnn_1_while_placeholderJsequential_1/bidirectional_1/backward_simple_rnn_1/while/SelectV2:output:0*
_output_shapes
: *
element_dtype0:éèÒ
>sequential_1/bidirectional_1/backward_simple_rnn_1/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :õ
<sequential_1/bidirectional_1/backward_simple_rnn_1/while/addAddV2Dsequential_1_bidirectional_1_backward_simple_rnn_1_while_placeholderGsequential_1/bidirectional_1/backward_simple_rnn_1/while/add/y:output:0*
T0*
_output_shapes
: 
@sequential_1/bidirectional_1/backward_simple_rnn_1/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :³
>sequential_1/bidirectional_1/backward_simple_rnn_1/while/add_1AddV2~sequential_1_bidirectional_1_backward_simple_rnn_1_while_sequential_1_bidirectional_1_backward_simple_rnn_1_while_loop_counterIsequential_1/bidirectional_1/backward_simple_rnn_1/while/add_1/y:output:0*
T0*
_output_shapes
: ò
Asequential_1/bidirectional_1/backward_simple_rnn_1/while/IdentityIdentityBsequential_1/bidirectional_1/backward_simple_rnn_1/while/add_1:z:0>^sequential_1/bidirectional_1/backward_simple_rnn_1/while/NoOp*
T0*
_output_shapes
: ·
Csequential_1/bidirectional_1/backward_simple_rnn_1/while/Identity_1Identitysequential_1_bidirectional_1_backward_simple_rnn_1_while_sequential_1_bidirectional_1_backward_simple_rnn_1_while_maximum_iterations>^sequential_1/bidirectional_1/backward_simple_rnn_1/while/NoOp*
T0*
_output_shapes
: ò
Csequential_1/bidirectional_1/backward_simple_rnn_1/while/Identity_2Identity@sequential_1/bidirectional_1/backward_simple_rnn_1/while/add:z:0>^sequential_1/bidirectional_1/backward_simple_rnn_1/while/NoOp*
T0*
_output_shapes
: 
Csequential_1/bidirectional_1/backward_simple_rnn_1/while/Identity_3Identitymsequential_1/bidirectional_1/backward_simple_rnn_1/while/TensorArrayV2Write/TensorListSetItem:output_handle:0>^sequential_1/bidirectional_1/backward_simple_rnn_1/while/NoOp*
T0*
_output_shapes
: 
Csequential_1/bidirectional_1/backward_simple_rnn_1/while/Identity_4IdentityJsequential_1/bidirectional_1/backward_simple_rnn_1/while/SelectV2:output:0>^sequential_1/bidirectional_1/backward_simple_rnn_1/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
Csequential_1/bidirectional_1/backward_simple_rnn_1/while/Identity_5IdentityLsequential_1/bidirectional_1/backward_simple_rnn_1/while/SelectV2_1:output:0>^sequential_1/bidirectional_1/backward_simple_rnn_1/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@«
=sequential_1/bidirectional_1/backward_simple_rnn_1/while/NoOpNoOpb^sequential_1/bidirectional_1/backward_simple_rnn_1/while/simple_rnn_cell_5/BiasAdd/ReadVariableOpa^sequential_1/bidirectional_1/backward_simple_rnn_1/while/simple_rnn_cell_5/MatMul/ReadVariableOpc^sequential_1/bidirectional_1/backward_simple_rnn_1/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
Asequential_1_bidirectional_1_backward_simple_rnn_1_while_identityJsequential_1/bidirectional_1/backward_simple_rnn_1/while/Identity:output:0"
Csequential_1_bidirectional_1_backward_simple_rnn_1_while_identity_1Lsequential_1/bidirectional_1/backward_simple_rnn_1/while/Identity_1:output:0"
Csequential_1_bidirectional_1_backward_simple_rnn_1_while_identity_2Lsequential_1/bidirectional_1/backward_simple_rnn_1/while/Identity_2:output:0"
Csequential_1_bidirectional_1_backward_simple_rnn_1_while_identity_3Lsequential_1/bidirectional_1/backward_simple_rnn_1/while/Identity_3:output:0"
Csequential_1_bidirectional_1_backward_simple_rnn_1_while_identity_4Lsequential_1/bidirectional_1/backward_simple_rnn_1/while/Identity_4:output:0"
Csequential_1_bidirectional_1_backward_simple_rnn_1_while_identity_5Lsequential_1/bidirectional_1/backward_simple_rnn_1/while/Identity_5:output:0"ü
{sequential_1_bidirectional_1_backward_simple_rnn_1_while_sequential_1_bidirectional_1_backward_simple_rnn_1_strided_slice_1}sequential_1_bidirectional_1_backward_simple_rnn_1_while_sequential_1_bidirectional_1_backward_simple_rnn_1_strided_slice_1_0"Ú
jsequential_1_bidirectional_1_backward_simple_rnn_1_while_simple_rnn_cell_5_biasadd_readvariableop_resourcelsequential_1_bidirectional_1_backward_simple_rnn_1_while_simple_rnn_cell_5_biasadd_readvariableop_resource_0"Ü
ksequential_1_bidirectional_1_backward_simple_rnn_1_while_simple_rnn_cell_5_matmul_1_readvariableop_resourcemsequential_1_bidirectional_1_backward_simple_rnn_1_while_simple_rnn_cell_5_matmul_1_readvariableop_resource_0"Ø
isequential_1_bidirectional_1_backward_simple_rnn_1_while_simple_rnn_cell_5_matmul_readvariableop_resourceksequential_1_bidirectional_1_backward_simple_rnn_1_while_simple_rnn_cell_5_matmul_readvariableop_resource_0"þ
»sequential_1_bidirectional_1_backward_simple_rnn_1_while_tensorarrayv2read_1_tensorlistgetitem_sequential_1_bidirectional_1_backward_simple_rnn_1_tensorarrayunstack_1_tensorlistfromtensor½sequential_1_bidirectional_1_backward_simple_rnn_1_while_tensorarrayv2read_1_tensorlistgetitem_sequential_1_bidirectional_1_backward_simple_rnn_1_tensorarrayunstack_1_tensorlistfromtensor_0"ö
·sequential_1_bidirectional_1_backward_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_sequential_1_bidirectional_1_backward_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor¹sequential_1_bidirectional_1_backward_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_sequential_1_bidirectional_1_backward_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : : 2Æ
asequential_1/bidirectional_1/backward_simple_rnn_1/while/simple_rnn_cell_5/BiasAdd/ReadVariableOpasequential_1/bidirectional_1/backward_simple_rnn_1/while/simple_rnn_cell_5/BiasAdd/ReadVariableOp2Ä
`sequential_1/bidirectional_1/backward_simple_rnn_1/while/simple_rnn_cell_5/MatMul/ReadVariableOp`sequential_1/bidirectional_1/backward_simple_rnn_1/while/simple_rnn_cell_5/MatMul/ReadVariableOp2È
bsequential_1/bidirectional_1/backward_simple_rnn_1/while/simple_rnn_cell_5/MatMul_1/ReadVariableOpbsequential_1/bidirectional_1/backward_simple_rnn_1/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
ºV
Ì
&backward_simple_rnn_1_while_body_68246H
Dbackward_simple_rnn_1_while_backward_simple_rnn_1_while_loop_counterN
Jbackward_simple_rnn_1_while_backward_simple_rnn_1_while_maximum_iterations+
'backward_simple_rnn_1_while_placeholder-
)backward_simple_rnn_1_while_placeholder_1-
)backward_simple_rnn_1_while_placeholder_2-
)backward_simple_rnn_1_while_placeholder_3G
Cbackward_simple_rnn_1_while_backward_simple_rnn_1_strided_slice_1_0
backward_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_backward_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor_0
backward_simple_rnn_1_while_tensorarrayv2read_1_tensorlistgetitem_backward_simple_rnn_1_tensorarrayunstack_1_tensorlistfromtensor_0`
Nbackward_simple_rnn_1_while_simple_rnn_cell_5_matmul_readvariableop_resource_0:@@]
Obackward_simple_rnn_1_while_simple_rnn_cell_5_biasadd_readvariableop_resource_0:@b
Pbackward_simple_rnn_1_while_simple_rnn_cell_5_matmul_1_readvariableop_resource_0:@@(
$backward_simple_rnn_1_while_identity*
&backward_simple_rnn_1_while_identity_1*
&backward_simple_rnn_1_while_identity_2*
&backward_simple_rnn_1_while_identity_3*
&backward_simple_rnn_1_while_identity_4*
&backward_simple_rnn_1_while_identity_5E
Abackward_simple_rnn_1_while_backward_simple_rnn_1_strided_slice_1
}backward_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_backward_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor
backward_simple_rnn_1_while_tensorarrayv2read_1_tensorlistgetitem_backward_simple_rnn_1_tensorarrayunstack_1_tensorlistfromtensor^
Lbackward_simple_rnn_1_while_simple_rnn_cell_5_matmul_readvariableop_resource:@@[
Mbackward_simple_rnn_1_while_simple_rnn_cell_5_biasadd_readvariableop_resource:@`
Nbackward_simple_rnn_1_while_simple_rnn_cell_5_matmul_1_readvariableop_resource:@@¢Dbackward_simple_rnn_1/while/simple_rnn_cell_5/BiasAdd/ReadVariableOp¢Cbackward_simple_rnn_1/while/simple_rnn_cell_5/MatMul/ReadVariableOp¢Ebackward_simple_rnn_1/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp
Mbackward_simple_rnn_1/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   
?backward_simple_rnn_1/while/TensorArrayV2Read/TensorListGetItemTensorListGetItembackward_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_backward_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor_0'backward_simple_rnn_1_while_placeholderVbackward_simple_rnn_1/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
element_dtype0 
Obackward_simple_rnn_1/while/TensorArrayV2Read_1/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   
Abackward_simple_rnn_1/while/TensorArrayV2Read_1/TensorListGetItemTensorListGetItembackward_simple_rnn_1_while_tensorarrayv2read_1_tensorlistgetitem_backward_simple_rnn_1_tensorarrayunstack_1_tensorlistfromtensor_0'backward_simple_rnn_1_while_placeholderXbackward_simple_rnn_1/while/TensorArrayV2Read_1/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0
Ò
Cbackward_simple_rnn_1/while/simple_rnn_cell_5/MatMul/ReadVariableOpReadVariableOpNbackward_simple_rnn_1_while_simple_rnn_cell_5_matmul_readvariableop_resource_0*
_output_shapes

:@@*
dtype0
4backward_simple_rnn_1/while/simple_rnn_cell_5/MatMulMatMulFbackward_simple_rnn_1/while/TensorArrayV2Read/TensorListGetItem:item:0Kbackward_simple_rnn_1/while/simple_rnn_cell_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Ð
Dbackward_simple_rnn_1/while/simple_rnn_cell_5/BiasAdd/ReadVariableOpReadVariableOpObackward_simple_rnn_1_while_simple_rnn_cell_5_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype0
5backward_simple_rnn_1/while/simple_rnn_cell_5/BiasAddBiasAdd>backward_simple_rnn_1/while/simple_rnn_cell_5/MatMul:product:0Lbackward_simple_rnn_1/while/simple_rnn_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Ö
Ebackward_simple_rnn_1/while/simple_rnn_cell_5/MatMul_1/ReadVariableOpReadVariableOpPbackward_simple_rnn_1_while_simple_rnn_cell_5_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype0ì
6backward_simple_rnn_1/while/simple_rnn_cell_5/MatMul_1MatMul)backward_simple_rnn_1_while_placeholder_3Mbackward_simple_rnn_1/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@î
1backward_simple_rnn_1/while/simple_rnn_cell_5/addAddV2>backward_simple_rnn_1/while/simple_rnn_cell_5/BiasAdd:output:0@backward_simple_rnn_1/while/simple_rnn_cell_5/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@£
2backward_simple_rnn_1/while/simple_rnn_cell_5/TanhTanh5backward_simple_rnn_1/while/simple_rnn_cell_5/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@{
*backward_simple_rnn_1/while/Tile/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      Ù
 backward_simple_rnn_1/while/TileTileHbackward_simple_rnn_1/while/TensorArrayV2Read_1/TensorListGetItem:item:03backward_simple_rnn_1/while/Tile/multiples:output:0*
T0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿð
$backward_simple_rnn_1/while/SelectV2SelectV2)backward_simple_rnn_1/while/Tile:output:06backward_simple_rnn_1/while/simple_rnn_cell_5/Tanh:y:0)backward_simple_rnn_1_while_placeholder_2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@}
,backward_simple_rnn_1/while/Tile_1/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      Ý
"backward_simple_rnn_1/while/Tile_1TileHbackward_simple_rnn_1/while/TensorArrayV2Read_1/TensorListGetItem:item:05backward_simple_rnn_1/while/Tile_1/multiples:output:0*
T0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿô
&backward_simple_rnn_1/while/SelectV2_1SelectV2+backward_simple_rnn_1/while/Tile_1:output:06backward_simple_rnn_1/while/simple_rnn_cell_5/Tanh:y:0)backward_simple_rnn_1_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
@backward_simple_rnn_1/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem)backward_simple_rnn_1_while_placeholder_1'backward_simple_rnn_1_while_placeholder-backward_simple_rnn_1/while/SelectV2:output:0*
_output_shapes
: *
element_dtype0:éèÒc
!backward_simple_rnn_1/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :
backward_simple_rnn_1/while/addAddV2'backward_simple_rnn_1_while_placeholder*backward_simple_rnn_1/while/add/y:output:0*
T0*
_output_shapes
: e
#backward_simple_rnn_1/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :¿
!backward_simple_rnn_1/while/add_1AddV2Dbackward_simple_rnn_1_while_backward_simple_rnn_1_while_loop_counter,backward_simple_rnn_1/while/add_1/y:output:0*
T0*
_output_shapes
: 
$backward_simple_rnn_1/while/IdentityIdentity%backward_simple_rnn_1/while/add_1:z:0!^backward_simple_rnn_1/while/NoOp*
T0*
_output_shapes
: Â
&backward_simple_rnn_1/while/Identity_1IdentityJbackward_simple_rnn_1_while_backward_simple_rnn_1_while_maximum_iterations!^backward_simple_rnn_1/while/NoOp*
T0*
_output_shapes
: 
&backward_simple_rnn_1/while/Identity_2Identity#backward_simple_rnn_1/while/add:z:0!^backward_simple_rnn_1/while/NoOp*
T0*
_output_shapes
: È
&backward_simple_rnn_1/while/Identity_3IdentityPbackward_simple_rnn_1/while/TensorArrayV2Write/TensorListSetItem:output_handle:0!^backward_simple_rnn_1/while/NoOp*
T0*
_output_shapes
: ¶
&backward_simple_rnn_1/while/Identity_4Identity-backward_simple_rnn_1/while/SelectV2:output:0!^backward_simple_rnn_1/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¸
&backward_simple_rnn_1/while/Identity_5Identity/backward_simple_rnn_1/while/SelectV2_1:output:0!^backward_simple_rnn_1/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@·
 backward_simple_rnn_1/while/NoOpNoOpE^backward_simple_rnn_1/while/simple_rnn_cell_5/BiasAdd/ReadVariableOpD^backward_simple_rnn_1/while/simple_rnn_cell_5/MatMul/ReadVariableOpF^backward_simple_rnn_1/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
Abackward_simple_rnn_1_while_backward_simple_rnn_1_strided_slice_1Cbackward_simple_rnn_1_while_backward_simple_rnn_1_strided_slice_1_0"U
$backward_simple_rnn_1_while_identity-backward_simple_rnn_1/while/Identity:output:0"Y
&backward_simple_rnn_1_while_identity_1/backward_simple_rnn_1/while/Identity_1:output:0"Y
&backward_simple_rnn_1_while_identity_2/backward_simple_rnn_1/while/Identity_2:output:0"Y
&backward_simple_rnn_1_while_identity_3/backward_simple_rnn_1/while/Identity_3:output:0"Y
&backward_simple_rnn_1_while_identity_4/backward_simple_rnn_1/while/Identity_4:output:0"Y
&backward_simple_rnn_1_while_identity_5/backward_simple_rnn_1/while/Identity_5:output:0" 
Mbackward_simple_rnn_1_while_simple_rnn_cell_5_biasadd_readvariableop_resourceObackward_simple_rnn_1_while_simple_rnn_cell_5_biasadd_readvariableop_resource_0"¢
Nbackward_simple_rnn_1_while_simple_rnn_cell_5_matmul_1_readvariableop_resourcePbackward_simple_rnn_1_while_simple_rnn_cell_5_matmul_1_readvariableop_resource_0"
Lbackward_simple_rnn_1_while_simple_rnn_cell_5_matmul_readvariableop_resourceNbackward_simple_rnn_1_while_simple_rnn_cell_5_matmul_readvariableop_resource_0"
backward_simple_rnn_1_while_tensorarrayv2read_1_tensorlistgetitem_backward_simple_rnn_1_tensorarrayunstack_1_tensorlistfromtensorbackward_simple_rnn_1_while_tensorarrayv2read_1_tensorlistgetitem_backward_simple_rnn_1_tensorarrayunstack_1_tensorlistfromtensor_0"
}backward_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_backward_simple_rnn_1_tensorarrayunstack_tensorlistfromtensorbackward_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_backward_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : : 2
Dbackward_simple_rnn_1/while/simple_rnn_cell_5/BiasAdd/ReadVariableOpDbackward_simple_rnn_1/while/simple_rnn_cell_5/BiasAdd/ReadVariableOp2
Cbackward_simple_rnn_1/while/simple_rnn_cell_5/MatMul/ReadVariableOpCbackward_simple_rnn_1/while/simple_rnn_cell_5/MatMul/ReadVariableOp2
Ebackward_simple_rnn_1/while/simple_rnn_cell_5/MatMul_1/ReadVariableOpEbackward_simple_rnn_1/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
Ë

+__inference_embedding_1_layer_call_fn_69580

inputs
unknown:	© @
identity¢StatefulPartitionedCallÛ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_embedding_1_layer_call_and_return_conditional_losses_68057|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs



/__inference_bidirectional_1_layer_call_fn_69660

inputs
mask

unknown:@@
	unknown_0:@
	unknown_1:@@
	unknown_2:@@
	unknown_3:@
	unknown_4:@@
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsmaskunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin

2
*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_bidirectional_1_layer_call_and_return_conditional_losses_68710p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs:VR
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

_user_specified_namemask
Õ
¥
while_cond_70858
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_70858___redundant_placeholder03
/while_while_cond_70858___redundant_placeholder13
/while_while_cond_70858___redundant_placeholder23
/while_while_cond_70858___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :ÿÿÿÿÿÿÿÿÿ@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
:
ºÃ
È
J__inference_bidirectional_1_layer_call_and_return_conditional_losses_68329

inputs
mask
W
Eforward_simple_rnn_1_simple_rnn_cell_4_matmul_readvariableop_resource:@@T
Fforward_simple_rnn_1_simple_rnn_cell_4_biasadd_readvariableop_resource:@Y
Gforward_simple_rnn_1_simple_rnn_cell_4_matmul_1_readvariableop_resource:@@X
Fbackward_simple_rnn_1_simple_rnn_cell_5_matmul_readvariableop_resource:@@U
Gbackward_simple_rnn_1_simple_rnn_cell_5_biasadd_readvariableop_resource:@Z
Hbackward_simple_rnn_1_simple_rnn_cell_5_matmul_1_readvariableop_resource:@@
identity¢>backward_simple_rnn_1/simple_rnn_cell_5/BiasAdd/ReadVariableOp¢=backward_simple_rnn_1/simple_rnn_cell_5/MatMul/ReadVariableOp¢?backward_simple_rnn_1/simple_rnn_cell_5/MatMul_1/ReadVariableOp¢backward_simple_rnn_1/while¢=forward_simple_rnn_1/simple_rnn_cell_4/BiasAdd/ReadVariableOp¢<forward_simple_rnn_1/simple_rnn_cell_4/MatMul/ReadVariableOp¢>forward_simple_rnn_1/simple_rnn_cell_4/MatMul_1/ReadVariableOp¢forward_simple_rnn_1/whileP
forward_simple_rnn_1/ShapeShapeinputs*
T0*
_output_shapes
:r
(forward_simple_rnn_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: t
*forward_simple_rnn_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*forward_simple_rnn_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:º
"forward_simple_rnn_1/strided_sliceStridedSlice#forward_simple_rnn_1/Shape:output:01forward_simple_rnn_1/strided_slice/stack:output:03forward_simple_rnn_1/strided_slice/stack_1:output:03forward_simple_rnn_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maske
#forward_simple_rnn_1/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@²
!forward_simple_rnn_1/zeros/packedPack+forward_simple_rnn_1/strided_slice:output:0,forward_simple_rnn_1/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:e
 forward_simple_rnn_1/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    «
forward_simple_rnn_1/zerosFill*forward_simple_rnn_1/zeros/packed:output:0)forward_simple_rnn_1/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@x
#forward_simple_rnn_1/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"           
forward_simple_rnn_1/transpose	Transposeinputs,forward_simple_rnn_1/transpose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@n
forward_simple_rnn_1/Shape_1Shape"forward_simple_rnn_1/transpose:y:0*
T0*
_output_shapes
:t
*forward_simple_rnn_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,forward_simple_rnn_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,forward_simple_rnn_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ä
$forward_simple_rnn_1/strided_slice_1StridedSlice%forward_simple_rnn_1/Shape_1:output:03forward_simple_rnn_1/strided_slice_1/stack:output:05forward_simple_rnn_1/strided_slice_1/stack_1:output:05forward_simple_rnn_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
#forward_simple_rnn_1/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ 
forward_simple_rnn_1/ExpandDims
ExpandDimsmask,forward_simple_rnn_1/ExpandDims/dim:output:0*
T0
*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿz
%forward_simple_rnn_1/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Æ
 forward_simple_rnn_1/transpose_1	Transpose(forward_simple_rnn_1/ExpandDims:output:0.forward_simple_rnn_1/transpose_1/perm:output:0*
T0
*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ{
0forward_simple_rnn_1/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿó
"forward_simple_rnn_1/TensorArrayV2TensorListReserve9forward_simple_rnn_1/TensorArrayV2/element_shape:output:0-forward_simple_rnn_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
Jforward_simple_rnn_1/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   
<forward_simple_rnn_1/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor"forward_simple_rnn_1/transpose:y:0Sforward_simple_rnn_1/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒt
*forward_simple_rnn_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,forward_simple_rnn_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,forward_simple_rnn_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ò
$forward_simple_rnn_1/strided_slice_2StridedSlice"forward_simple_rnn_1/transpose:y:03forward_simple_rnn_1/strided_slice_2/stack:output:05forward_simple_rnn_1/strided_slice_2/stack_1:output:05forward_simple_rnn_1/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_maskÂ
<forward_simple_rnn_1/simple_rnn_cell_4/MatMul/ReadVariableOpReadVariableOpEforward_simple_rnn_1_simple_rnn_cell_4_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype0Þ
-forward_simple_rnn_1/simple_rnn_cell_4/MatMulMatMul-forward_simple_rnn_1/strided_slice_2:output:0Dforward_simple_rnn_1/simple_rnn_cell_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@À
=forward_simple_rnn_1/simple_rnn_cell_4/BiasAdd/ReadVariableOpReadVariableOpFforward_simple_rnn_1_simple_rnn_cell_4_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0ë
.forward_simple_rnn_1/simple_rnn_cell_4/BiasAddBiasAdd7forward_simple_rnn_1/simple_rnn_cell_4/MatMul:product:0Eforward_simple_rnn_1/simple_rnn_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Æ
>forward_simple_rnn_1/simple_rnn_cell_4/MatMul_1/ReadVariableOpReadVariableOpGforward_simple_rnn_1_simple_rnn_cell_4_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype0Ø
/forward_simple_rnn_1/simple_rnn_cell_4/MatMul_1MatMul#forward_simple_rnn_1/zeros:output:0Fforward_simple_rnn_1/simple_rnn_cell_4/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Ù
*forward_simple_rnn_1/simple_rnn_cell_4/addAddV27forward_simple_rnn_1/simple_rnn_cell_4/BiasAdd:output:09forward_simple_rnn_1/simple_rnn_cell_4/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
+forward_simple_rnn_1/simple_rnn_cell_4/TanhTanh.forward_simple_rnn_1/simple_rnn_cell_4/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
2forward_simple_rnn_1/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   ÷
$forward_simple_rnn_1/TensorArrayV2_1TensorListReserve;forward_simple_rnn_1/TensorArrayV2_1/element_shape:output:0-forward_simple_rnn_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ[
forward_simple_rnn_1/timeConst*
_output_shapes
: *
dtype0*
value	B : }
2forward_simple_rnn_1/TensorArrayV2_2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ÷
$forward_simple_rnn_1/TensorArrayV2_2TensorListReserve;forward_simple_rnn_1/TensorArrayV2_2/element_shape:output:0-forward_simple_rnn_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0
*

shape_type0:éèÈ
Lforward_simple_rnn_1/TensorArrayUnstack_1/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¥
>forward_simple_rnn_1/TensorArrayUnstack_1/TensorListFromTensorTensorListFromTensor$forward_simple_rnn_1/transpose_1:y:0Uforward_simple_rnn_1/TensorArrayUnstack_1/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0
*

shape_type0:éèÈ
forward_simple_rnn_1/zeros_like	ZerosLike/forward_simple_rnn_1/simple_rnn_cell_4/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@x
-forward_simple_rnn_1/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿi
'forward_simple_rnn_1/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 	
forward_simple_rnn_1/whileWhile0forward_simple_rnn_1/while/loop_counter:output:06forward_simple_rnn_1/while/maximum_iterations:output:0"forward_simple_rnn_1/time:output:0-forward_simple_rnn_1/TensorArrayV2_1:handle:0#forward_simple_rnn_1/zeros_like:y:0#forward_simple_rnn_1/zeros:output:0-forward_simple_rnn_1/strided_slice_1:output:0Lforward_simple_rnn_1/TensorArrayUnstack/TensorListFromTensor:output_handle:0Nforward_simple_rnn_1/TensorArrayUnstack_1/TensorListFromTensor:output_handle:0Eforward_simple_rnn_1_simple_rnn_cell_4_matmul_readvariableop_resourceFforward_simple_rnn_1_simple_rnn_cell_4_biasadd_readvariableop_resourceGforward_simple_rnn_1_simple_rnn_cell_4_matmul_1_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *1
body)R'
%forward_simple_rnn_1_while_body_68114*1
cond)R'
%forward_simple_rnn_1_while_cond_68113*M
output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : : *
parallel_iterations 
Eforward_simple_rnn_1/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   
7forward_simple_rnn_1/TensorArrayV2Stack/TensorListStackTensorListStack#forward_simple_rnn_1/while:output:3Nforward_simple_rnn_1/TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*
element_dtype0}
*forward_simple_rnn_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿv
,forward_simple_rnn_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: v
,forward_simple_rnn_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ð
$forward_simple_rnn_1/strided_slice_3StridedSlice@forward_simple_rnn_1/TensorArrayV2Stack/TensorListStack:tensor:03forward_simple_rnn_1/strided_slice_3/stack:output:05forward_simple_rnn_1/strided_slice_3/stack_1:output:05forward_simple_rnn_1/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_maskz
%forward_simple_rnn_1/transpose_2/permConst*
_output_shapes
:*
dtype0*!
valueB"          Þ
 forward_simple_rnn_1/transpose_2	Transpose@forward_simple_rnn_1/TensorArrayV2Stack/TensorListStack:tensor:0.forward_simple_rnn_1/transpose_2/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@Q
backward_simple_rnn_1/ShapeShapeinputs*
T0*
_output_shapes
:s
)backward_simple_rnn_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+backward_simple_rnn_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+backward_simple_rnn_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¿
#backward_simple_rnn_1/strided_sliceStridedSlice$backward_simple_rnn_1/Shape:output:02backward_simple_rnn_1/strided_slice/stack:output:04backward_simple_rnn_1/strided_slice/stack_1:output:04backward_simple_rnn_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
$backward_simple_rnn_1/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@µ
"backward_simple_rnn_1/zeros/packedPack,backward_simple_rnn_1/strided_slice:output:0-backward_simple_rnn_1/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:f
!backward_simple_rnn_1/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ®
backward_simple_rnn_1/zerosFill+backward_simple_rnn_1/zeros/packed:output:0*backward_simple_rnn_1/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@y
$backward_simple_rnn_1/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ¢
backward_simple_rnn_1/transpose	Transposeinputs-backward_simple_rnn_1/transpose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@p
backward_simple_rnn_1/Shape_1Shape#backward_simple_rnn_1/transpose:y:0*
T0*
_output_shapes
:u
+backward_simple_rnn_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-backward_simple_rnn_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-backward_simple_rnn_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:É
%backward_simple_rnn_1/strided_slice_1StridedSlice&backward_simple_rnn_1/Shape_1:output:04backward_simple_rnn_1/strided_slice_1/stack:output:06backward_simple_rnn_1/strided_slice_1/stack_1:output:06backward_simple_rnn_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$backward_simple_rnn_1/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ¢
 backward_simple_rnn_1/ExpandDims
ExpandDimsmask-backward_simple_rnn_1/ExpandDims/dim:output:0*
T0
*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ{
&backward_simple_rnn_1/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          É
!backward_simple_rnn_1/transpose_1	Transpose)backward_simple_rnn_1/ExpandDims:output:0/backward_simple_rnn_1/transpose_1/perm:output:0*
T0
*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ|
1backward_simple_rnn_1/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿö
#backward_simple_rnn_1/TensorArrayV2TensorListReserve:backward_simple_rnn_1/TensorArrayV2/element_shape:output:0.backward_simple_rnn_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒn
$backward_simple_rnn_1/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: ¿
backward_simple_rnn_1/ReverseV2	ReverseV2#backward_simple_rnn_1/transpose:y:0-backward_simple_rnn_1/ReverseV2/axis:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
Kbackward_simple_rnn_1/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   §
=backward_simple_rnn_1/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor(backward_simple_rnn_1/ReverseV2:output:0Tbackward_simple_rnn_1/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒu
+backward_simple_rnn_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-backward_simple_rnn_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-backward_simple_rnn_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:×
%backward_simple_rnn_1/strided_slice_2StridedSlice#backward_simple_rnn_1/transpose:y:04backward_simple_rnn_1/strided_slice_2/stack:output:06backward_simple_rnn_1/strided_slice_2/stack_1:output:06backward_simple_rnn_1/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_maskÄ
=backward_simple_rnn_1/simple_rnn_cell_5/MatMul/ReadVariableOpReadVariableOpFbackward_simple_rnn_1_simple_rnn_cell_5_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype0á
.backward_simple_rnn_1/simple_rnn_cell_5/MatMulMatMul.backward_simple_rnn_1/strided_slice_2:output:0Ebackward_simple_rnn_1/simple_rnn_cell_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Â
>backward_simple_rnn_1/simple_rnn_cell_5/BiasAdd/ReadVariableOpReadVariableOpGbackward_simple_rnn_1_simple_rnn_cell_5_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0î
/backward_simple_rnn_1/simple_rnn_cell_5/BiasAddBiasAdd8backward_simple_rnn_1/simple_rnn_cell_5/MatMul:product:0Fbackward_simple_rnn_1/simple_rnn_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@È
?backward_simple_rnn_1/simple_rnn_cell_5/MatMul_1/ReadVariableOpReadVariableOpHbackward_simple_rnn_1_simple_rnn_cell_5_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype0Û
0backward_simple_rnn_1/simple_rnn_cell_5/MatMul_1MatMul$backward_simple_rnn_1/zeros:output:0Gbackward_simple_rnn_1/simple_rnn_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Ü
+backward_simple_rnn_1/simple_rnn_cell_5/addAddV28backward_simple_rnn_1/simple_rnn_cell_5/BiasAdd:output:0:backward_simple_rnn_1/simple_rnn_cell_5/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
,backward_simple_rnn_1/simple_rnn_cell_5/TanhTanh/backward_simple_rnn_1/simple_rnn_cell_5/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
3backward_simple_rnn_1/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   ú
%backward_simple_rnn_1/TensorArrayV2_1TensorListReserve<backward_simple_rnn_1/TensorArrayV2_1/element_shape:output:0.backward_simple_rnn_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ\
backward_simple_rnn_1/timeConst*
_output_shapes
: *
dtype0*
value	B : p
&backward_simple_rnn_1/ReverseV2_1/axisConst*
_output_shapes
:*
dtype0*
valueB: Å
!backward_simple_rnn_1/ReverseV2_1	ReverseV2%backward_simple_rnn_1/transpose_1:y:0/backward_simple_rnn_1/ReverseV2_1/axis:output:0*
T0
*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ~
3backward_simple_rnn_1/TensorArrayV2_2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿú
%backward_simple_rnn_1/TensorArrayV2_2TensorListReserve<backward_simple_rnn_1/TensorArrayV2_2/element_shape:output:0.backward_simple_rnn_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0
*

shape_type0:éèÈ
Mbackward_simple_rnn_1/TensorArrayUnstack_1/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ­
?backward_simple_rnn_1/TensorArrayUnstack_1/TensorListFromTensorTensorListFromTensor*backward_simple_rnn_1/ReverseV2_1:output:0Vbackward_simple_rnn_1/TensorArrayUnstack_1/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0
*

shape_type0:éèÈ
 backward_simple_rnn_1/zeros_like	ZerosLike0backward_simple_rnn_1/simple_rnn_cell_5/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@y
.backward_simple_rnn_1/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿj
(backward_simple_rnn_1/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 	
backward_simple_rnn_1/whileWhile1backward_simple_rnn_1/while/loop_counter:output:07backward_simple_rnn_1/while/maximum_iterations:output:0#backward_simple_rnn_1/time:output:0.backward_simple_rnn_1/TensorArrayV2_1:handle:0$backward_simple_rnn_1/zeros_like:y:0$backward_simple_rnn_1/zeros:output:0.backward_simple_rnn_1/strided_slice_1:output:0Mbackward_simple_rnn_1/TensorArrayUnstack/TensorListFromTensor:output_handle:0Obackward_simple_rnn_1/TensorArrayUnstack_1/TensorListFromTensor:output_handle:0Fbackward_simple_rnn_1_simple_rnn_cell_5_matmul_readvariableop_resourceGbackward_simple_rnn_1_simple_rnn_cell_5_biasadd_readvariableop_resourceHbackward_simple_rnn_1_simple_rnn_cell_5_matmul_1_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *2
body*R(
&backward_simple_rnn_1_while_body_68246*2
cond*R(
&backward_simple_rnn_1_while_cond_68245*M
output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : : *
parallel_iterations 
Fbackward_simple_rnn_1/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   
8backward_simple_rnn_1/TensorArrayV2Stack/TensorListStackTensorListStack$backward_simple_rnn_1/while:output:3Obackward_simple_rnn_1/TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*
element_dtype0~
+backward_simple_rnn_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿw
-backward_simple_rnn_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: w
-backward_simple_rnn_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:õ
%backward_simple_rnn_1/strided_slice_3StridedSliceAbackward_simple_rnn_1/TensorArrayV2Stack/TensorListStack:tensor:04backward_simple_rnn_1/strided_slice_3/stack:output:06backward_simple_rnn_1/strided_slice_3/stack_1:output:06backward_simple_rnn_1/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_mask{
&backward_simple_rnn_1/transpose_2/permConst*
_output_shapes
:*
dtype0*!
valueB"          á
!backward_simple_rnn_1/transpose_2	TransposeAbackward_simple_rnn_1/TensorArrayV2Stack/TensorListStack:tensor:0/backward_simple_rnn_1/transpose_2/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :Ã
concatConcatV2-forward_simple_rnn_1/strided_slice_3:output:0.backward_simple_rnn_1/strided_slice_3:output:0concat/axis:output:0*
N*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_
IdentityIdentityconcat:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp?^backward_simple_rnn_1/simple_rnn_cell_5/BiasAdd/ReadVariableOp>^backward_simple_rnn_1/simple_rnn_cell_5/MatMul/ReadVariableOp@^backward_simple_rnn_1/simple_rnn_cell_5/MatMul_1/ReadVariableOp^backward_simple_rnn_1/while>^forward_simple_rnn_1/simple_rnn_cell_4/BiasAdd/ReadVariableOp=^forward_simple_rnn_1/simple_rnn_cell_4/MatMul/ReadVariableOp?^forward_simple_rnn_1/simple_rnn_cell_4/MatMul_1/ReadVariableOp^forward_simple_rnn_1/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : : : : 2
>backward_simple_rnn_1/simple_rnn_cell_5/BiasAdd/ReadVariableOp>backward_simple_rnn_1/simple_rnn_cell_5/BiasAdd/ReadVariableOp2~
=backward_simple_rnn_1/simple_rnn_cell_5/MatMul/ReadVariableOp=backward_simple_rnn_1/simple_rnn_cell_5/MatMul/ReadVariableOp2
?backward_simple_rnn_1/simple_rnn_cell_5/MatMul_1/ReadVariableOp?backward_simple_rnn_1/simple_rnn_cell_5/MatMul_1/ReadVariableOp2:
backward_simple_rnn_1/whilebackward_simple_rnn_1/while2~
=forward_simple_rnn_1/simple_rnn_cell_4/BiasAdd/ReadVariableOp=forward_simple_rnn_1/simple_rnn_cell_4/BiasAdd/ReadVariableOp2|
<forward_simple_rnn_1/simple_rnn_cell_4/MatMul/ReadVariableOp<forward_simple_rnn_1/simple_rnn_cell_4/MatMul/ReadVariableOp2
>forward_simple_rnn_1/simple_rnn_cell_4/MatMul_1/ReadVariableOp>forward_simple_rnn_1/simple_rnn_cell_4/MatMul_1/ReadVariableOp28
forward_simple_rnn_1/whileforward_simple_rnn_1/while:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs:VR
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

_user_specified_namemask
¦
ò
 __inference__wrapped_model_66896
embedding_1_inputB
/sequential_1_embedding_1_embedding_lookup_66613:	© @t
bsequential_1_bidirectional_1_forward_simple_rnn_1_simple_rnn_cell_4_matmul_readvariableop_resource:@@q
csequential_1_bidirectional_1_forward_simple_rnn_1_simple_rnn_cell_4_biasadd_readvariableop_resource:@v
dsequential_1_bidirectional_1_forward_simple_rnn_1_simple_rnn_cell_4_matmul_1_readvariableop_resource:@@u
csequential_1_bidirectional_1_backward_simple_rnn_1_simple_rnn_cell_5_matmul_readvariableop_resource:@@r
dsequential_1_bidirectional_1_backward_simple_rnn_1_simple_rnn_cell_5_biasadd_readvariableop_resource:@w
esequential_1_bidirectional_1_backward_simple_rnn_1_simple_rnn_cell_5_matmul_1_readvariableop_resource:@@F
3sequential_1_dense_2_matmul_readvariableop_resource:	@B
4sequential_1_dense_2_biasadd_readvariableop_resource:@E
3sequential_1_dense_3_matmul_readvariableop_resource:@B
4sequential_1_dense_3_biasadd_readvariableop_resource:
identity¢[sequential_1/bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/BiasAdd/ReadVariableOp¢Zsequential_1/bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/MatMul/ReadVariableOp¢\sequential_1/bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/MatMul_1/ReadVariableOp¢8sequential_1/bidirectional_1/backward_simple_rnn_1/while¢Zsequential_1/bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/BiasAdd/ReadVariableOp¢Ysequential_1/bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/MatMul/ReadVariableOp¢[sequential_1/bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/MatMul_1/ReadVariableOp¢7sequential_1/bidirectional_1/forward_simple_rnn_1/while¢+sequential_1/dense_2/BiasAdd/ReadVariableOp¢*sequential_1/dense_2/MatMul/ReadVariableOp¢+sequential_1/dense_3/BiasAdd/ReadVariableOp¢*sequential_1/dense_3/MatMul/ReadVariableOp¢)sequential_1/embedding_1/embedding_lookup
sequential_1/embedding_1/CastCastembedding_1_input*

DstT0*

SrcT0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¦
)sequential_1/embedding_1/embedding_lookupResourceGather/sequential_1_embedding_1_embedding_lookup_66613!sequential_1/embedding_1/Cast:y:0*
Tindices0*B
_class8
64loc:@sequential_1/embedding_1/embedding_lookup/66613*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*
dtype0õ
2sequential_1/embedding_1/embedding_lookup/IdentityIdentity2sequential_1/embedding_1/embedding_lookup:output:0*
T0*B
_class8
64loc:@sequential_1/embedding_1/embedding_lookup/66613*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@¼
4sequential_1/embedding_1/embedding_lookup/Identity_1Identity;sequential_1/embedding_1/embedding_lookup/Identity:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@h
#sequential_1/embedding_1/NotEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *    ©
!sequential_1/embedding_1/NotEqualNotEqualembedding_1_input,sequential_1/embedding_1/NotEqual/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¤
7sequential_1/bidirectional_1/forward_simple_rnn_1/ShapeShape=sequential_1/embedding_1/embedding_lookup/Identity_1:output:0*
T0*
_output_shapes
:
Esequential_1/bidirectional_1/forward_simple_rnn_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
Gsequential_1/bidirectional_1/forward_simple_rnn_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Gsequential_1/bidirectional_1/forward_simple_rnn_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ë
?sequential_1/bidirectional_1/forward_simple_rnn_1/strided_sliceStridedSlice@sequential_1/bidirectional_1/forward_simple_rnn_1/Shape:output:0Nsequential_1/bidirectional_1/forward_simple_rnn_1/strided_slice/stack:output:0Psequential_1/bidirectional_1/forward_simple_rnn_1/strided_slice/stack_1:output:0Psequential_1/bidirectional_1/forward_simple_rnn_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
@sequential_1/bidirectional_1/forward_simple_rnn_1/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@
>sequential_1/bidirectional_1/forward_simple_rnn_1/zeros/packedPackHsequential_1/bidirectional_1/forward_simple_rnn_1/strided_slice:output:0Isequential_1/bidirectional_1/forward_simple_rnn_1/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:
=sequential_1/bidirectional_1/forward_simple_rnn_1/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
7sequential_1/bidirectional_1/forward_simple_rnn_1/zerosFillGsequential_1/bidirectional_1/forward_simple_rnn_1/zeros/packed:output:0Fsequential_1/bidirectional_1/forward_simple_rnn_1/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
@sequential_1/bidirectional_1/forward_simple_rnn_1/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
;sequential_1/bidirectional_1/forward_simple_rnn_1/transpose	Transpose=sequential_1/embedding_1/embedding_lookup/Identity_1:output:0Isequential_1/bidirectional_1/forward_simple_rnn_1/transpose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@¨
9sequential_1/bidirectional_1/forward_simple_rnn_1/Shape_1Shape?sequential_1/bidirectional_1/forward_simple_rnn_1/transpose:y:0*
T0*
_output_shapes
:
Gsequential_1/bidirectional_1/forward_simple_rnn_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 
Isequential_1/bidirectional_1/forward_simple_rnn_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Isequential_1/bidirectional_1/forward_simple_rnn_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Õ
Asequential_1/bidirectional_1/forward_simple_rnn_1/strided_slice_1StridedSliceBsequential_1/bidirectional_1/forward_simple_rnn_1/Shape_1:output:0Psequential_1/bidirectional_1/forward_simple_rnn_1/strided_slice_1/stack:output:0Rsequential_1/bidirectional_1/forward_simple_rnn_1/strided_slice_1/stack_1:output:0Rsequential_1/bidirectional_1/forward_simple_rnn_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
@sequential_1/bidirectional_1/forward_simple_rnn_1/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿû
<sequential_1/bidirectional_1/forward_simple_rnn_1/ExpandDims
ExpandDims%sequential_1/embedding_1/NotEqual:z:0Isequential_1/bidirectional_1/forward_simple_rnn_1/ExpandDims/dim:output:0*
T0
*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
Bsequential_1/bidirectional_1/forward_simple_rnn_1/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
=sequential_1/bidirectional_1/forward_simple_rnn_1/transpose_1	TransposeEsequential_1/bidirectional_1/forward_simple_rnn_1/ExpandDims:output:0Ksequential_1/bidirectional_1/forward_simple_rnn_1/transpose_1/perm:output:0*
T0
*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
Msequential_1/bidirectional_1/forward_simple_rnn_1/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿÊ
?sequential_1/bidirectional_1/forward_simple_rnn_1/TensorArrayV2TensorListReserveVsequential_1/bidirectional_1/forward_simple_rnn_1/TensorArrayV2/element_shape:output:0Jsequential_1/bidirectional_1/forward_simple_rnn_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ¸
gsequential_1/bidirectional_1/forward_simple_rnn_1/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   ö
Ysequential_1/bidirectional_1/forward_simple_rnn_1/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor?sequential_1/bidirectional_1/forward_simple_rnn_1/transpose:y:0psequential_1/bidirectional_1/forward_simple_rnn_1/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
Gsequential_1/bidirectional_1/forward_simple_rnn_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 
Isequential_1/bidirectional_1/forward_simple_rnn_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Isequential_1/bidirectional_1/forward_simple_rnn_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ã
Asequential_1/bidirectional_1/forward_simple_rnn_1/strided_slice_2StridedSlice?sequential_1/bidirectional_1/forward_simple_rnn_1/transpose:y:0Psequential_1/bidirectional_1/forward_simple_rnn_1/strided_slice_2/stack:output:0Rsequential_1/bidirectional_1/forward_simple_rnn_1/strided_slice_2/stack_1:output:0Rsequential_1/bidirectional_1/forward_simple_rnn_1/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_maskü
Ysequential_1/bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/MatMul/ReadVariableOpReadVariableOpbsequential_1_bidirectional_1_forward_simple_rnn_1_simple_rnn_cell_4_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype0µ
Jsequential_1/bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/MatMulMatMulJsequential_1/bidirectional_1/forward_simple_rnn_1/strided_slice_2:output:0asequential_1/bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@ú
Zsequential_1/bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/BiasAdd/ReadVariableOpReadVariableOpcsequential_1_bidirectional_1_forward_simple_rnn_1_simple_rnn_cell_4_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Â
Ksequential_1/bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/BiasAddBiasAddTsequential_1/bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/MatMul:product:0bsequential_1/bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
[sequential_1/bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/MatMul_1/ReadVariableOpReadVariableOpdsequential_1_bidirectional_1_forward_simple_rnn_1_simple_rnn_cell_4_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype0¯
Lsequential_1/bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/MatMul_1MatMul@sequential_1/bidirectional_1/forward_simple_rnn_1/zeros:output:0csequential_1/bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@°
Gsequential_1/bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/addAddV2Tsequential_1/bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/BiasAdd:output:0Vsequential_1/bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Ï
Hsequential_1/bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/TanhTanhKsequential_1/bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@ 
Osequential_1/bidirectional_1/forward_simple_rnn_1/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   Î
Asequential_1/bidirectional_1/forward_simple_rnn_1/TensorArrayV2_1TensorListReserveXsequential_1/bidirectional_1/forward_simple_rnn_1/TensorArrayV2_1/element_shape:output:0Jsequential_1/bidirectional_1/forward_simple_rnn_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒx
6sequential_1/bidirectional_1/forward_simple_rnn_1/timeConst*
_output_shapes
: *
dtype0*
value	B : 
Osequential_1/bidirectional_1/forward_simple_rnn_1/TensorArrayV2_2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿÎ
Asequential_1/bidirectional_1/forward_simple_rnn_1/TensorArrayV2_2TensorListReserveXsequential_1/bidirectional_1/forward_simple_rnn_1/TensorArrayV2_2/element_shape:output:0Jsequential_1/bidirectional_1/forward_simple_rnn_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0
*

shape_type0:éèÈº
isequential_1/bidirectional_1/forward_simple_rnn_1/TensorArrayUnstack_1/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ü
[sequential_1/bidirectional_1/forward_simple_rnn_1/TensorArrayUnstack_1/TensorListFromTensorTensorListFromTensorAsequential_1/bidirectional_1/forward_simple_rnn_1/transpose_1:y:0rsequential_1/bidirectional_1/forward_simple_rnn_1/TensorArrayUnstack_1/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0
*

shape_type0:éèÈÉ
<sequential_1/bidirectional_1/forward_simple_rnn_1/zeros_like	ZerosLikeLsequential_1/bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
Jsequential_1/bidirectional_1/forward_simple_rnn_1/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ
Dsequential_1/bidirectional_1/forward_simple_rnn_1/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : »
7sequential_1/bidirectional_1/forward_simple_rnn_1/whileWhileMsequential_1/bidirectional_1/forward_simple_rnn_1/while/loop_counter:output:0Ssequential_1/bidirectional_1/forward_simple_rnn_1/while/maximum_iterations:output:0?sequential_1/bidirectional_1/forward_simple_rnn_1/time:output:0Jsequential_1/bidirectional_1/forward_simple_rnn_1/TensorArrayV2_1:handle:0@sequential_1/bidirectional_1/forward_simple_rnn_1/zeros_like:y:0@sequential_1/bidirectional_1/forward_simple_rnn_1/zeros:output:0Jsequential_1/bidirectional_1/forward_simple_rnn_1/strided_slice_1:output:0isequential_1/bidirectional_1/forward_simple_rnn_1/TensorArrayUnstack/TensorListFromTensor:output_handle:0ksequential_1/bidirectional_1/forward_simple_rnn_1/TensorArrayUnstack_1/TensorListFromTensor:output_handle:0bsequential_1_bidirectional_1_forward_simple_rnn_1_simple_rnn_cell_4_matmul_readvariableop_resourcecsequential_1_bidirectional_1_forward_simple_rnn_1_simple_rnn_cell_4_biasadd_readvariableop_resourcedsequential_1_bidirectional_1_forward_simple_rnn_1_simple_rnn_cell_4_matmul_1_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *N
bodyFRD
Bsequential_1_bidirectional_1_forward_simple_rnn_1_while_body_66668*N
condFRD
Bsequential_1_bidirectional_1_forward_simple_rnn_1_while_cond_66667*M
output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : : *
parallel_iterations ³
bsequential_1/bidirectional_1/forward_simple_rnn_1/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   á
Tsequential_1/bidirectional_1/forward_simple_rnn_1/TensorArrayV2Stack/TensorListStackTensorListStack@sequential_1/bidirectional_1/forward_simple_rnn_1/while:output:3ksequential_1/bidirectional_1/forward_simple_rnn_1/TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*
element_dtype0
Gsequential_1/bidirectional_1/forward_simple_rnn_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ
Isequential_1/bidirectional_1/forward_simple_rnn_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 
Isequential_1/bidirectional_1/forward_simple_rnn_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
Asequential_1/bidirectional_1/forward_simple_rnn_1/strided_slice_3StridedSlice]sequential_1/bidirectional_1/forward_simple_rnn_1/TensorArrayV2Stack/TensorListStack:tensor:0Psequential_1/bidirectional_1/forward_simple_rnn_1/strided_slice_3/stack:output:0Rsequential_1/bidirectional_1/forward_simple_rnn_1/strided_slice_3/stack_1:output:0Rsequential_1/bidirectional_1/forward_simple_rnn_1/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_mask
Bsequential_1/bidirectional_1/forward_simple_rnn_1/transpose_2/permConst*
_output_shapes
:*
dtype0*!
valueB"          µ
=sequential_1/bidirectional_1/forward_simple_rnn_1/transpose_2	Transpose]sequential_1/bidirectional_1/forward_simple_rnn_1/TensorArrayV2Stack/TensorListStack:tensor:0Ksequential_1/bidirectional_1/forward_simple_rnn_1/transpose_2/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@¥
8sequential_1/bidirectional_1/backward_simple_rnn_1/ShapeShape=sequential_1/embedding_1/embedding_lookup/Identity_1:output:0*
T0*
_output_shapes
:
Fsequential_1/bidirectional_1/backward_simple_rnn_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
Hsequential_1/bidirectional_1/backward_simple_rnn_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Hsequential_1/bidirectional_1/backward_simple_rnn_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ð
@sequential_1/bidirectional_1/backward_simple_rnn_1/strided_sliceStridedSliceAsequential_1/bidirectional_1/backward_simple_rnn_1/Shape:output:0Osequential_1/bidirectional_1/backward_simple_rnn_1/strided_slice/stack:output:0Qsequential_1/bidirectional_1/backward_simple_rnn_1/strided_slice/stack_1:output:0Qsequential_1/bidirectional_1/backward_simple_rnn_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
Asequential_1/bidirectional_1/backward_simple_rnn_1/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@
?sequential_1/bidirectional_1/backward_simple_rnn_1/zeros/packedPackIsequential_1/bidirectional_1/backward_simple_rnn_1/strided_slice:output:0Jsequential_1/bidirectional_1/backward_simple_rnn_1/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:
>sequential_1/bidirectional_1/backward_simple_rnn_1/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
8sequential_1/bidirectional_1/backward_simple_rnn_1/zerosFillHsequential_1/bidirectional_1/backward_simple_rnn_1/zeros/packed:output:0Gsequential_1/bidirectional_1/backward_simple_rnn_1/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
Asequential_1/bidirectional_1/backward_simple_rnn_1/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
<sequential_1/bidirectional_1/backward_simple_rnn_1/transpose	Transpose=sequential_1/embedding_1/embedding_lookup/Identity_1:output:0Jsequential_1/bidirectional_1/backward_simple_rnn_1/transpose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@ª
:sequential_1/bidirectional_1/backward_simple_rnn_1/Shape_1Shape@sequential_1/bidirectional_1/backward_simple_rnn_1/transpose:y:0*
T0*
_output_shapes
:
Hsequential_1/bidirectional_1/backward_simple_rnn_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 
Jsequential_1/bidirectional_1/backward_simple_rnn_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Jsequential_1/bidirectional_1/backward_simple_rnn_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ú
Bsequential_1/bidirectional_1/backward_simple_rnn_1/strided_slice_1StridedSliceCsequential_1/bidirectional_1/backward_simple_rnn_1/Shape_1:output:0Qsequential_1/bidirectional_1/backward_simple_rnn_1/strided_slice_1/stack:output:0Ssequential_1/bidirectional_1/backward_simple_rnn_1/strided_slice_1/stack_1:output:0Ssequential_1/bidirectional_1/backward_simple_rnn_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
Asequential_1/bidirectional_1/backward_simple_rnn_1/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿý
=sequential_1/bidirectional_1/backward_simple_rnn_1/ExpandDims
ExpandDims%sequential_1/embedding_1/NotEqual:z:0Jsequential_1/bidirectional_1/backward_simple_rnn_1/ExpandDims/dim:output:0*
T0
*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
Csequential_1/bidirectional_1/backward_simple_rnn_1/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"           
>sequential_1/bidirectional_1/backward_simple_rnn_1/transpose_1	TransposeFsequential_1/bidirectional_1/backward_simple_rnn_1/ExpandDims:output:0Lsequential_1/bidirectional_1/backward_simple_rnn_1/transpose_1/perm:output:0*
T0
*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
Nsequential_1/bidirectional_1/backward_simple_rnn_1/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿÍ
@sequential_1/bidirectional_1/backward_simple_rnn_1/TensorArrayV2TensorListReserveWsequential_1/bidirectional_1/backward_simple_rnn_1/TensorArrayV2/element_shape:output:0Ksequential_1/bidirectional_1/backward_simple_rnn_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
Asequential_1/bidirectional_1/backward_simple_rnn_1/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: 
<sequential_1/bidirectional_1/backward_simple_rnn_1/ReverseV2	ReverseV2@sequential_1/bidirectional_1/backward_simple_rnn_1/transpose:y:0Jsequential_1/bidirectional_1/backward_simple_rnn_1/ReverseV2/axis:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@¹
hsequential_1/bidirectional_1/backward_simple_rnn_1/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   þ
Zsequential_1/bidirectional_1/backward_simple_rnn_1/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorEsequential_1/bidirectional_1/backward_simple_rnn_1/ReverseV2:output:0qsequential_1/bidirectional_1/backward_simple_rnn_1/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
Hsequential_1/bidirectional_1/backward_simple_rnn_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 
Jsequential_1/bidirectional_1/backward_simple_rnn_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Jsequential_1/bidirectional_1/backward_simple_rnn_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:è
Bsequential_1/bidirectional_1/backward_simple_rnn_1/strided_slice_2StridedSlice@sequential_1/bidirectional_1/backward_simple_rnn_1/transpose:y:0Qsequential_1/bidirectional_1/backward_simple_rnn_1/strided_slice_2/stack:output:0Ssequential_1/bidirectional_1/backward_simple_rnn_1/strided_slice_2/stack_1:output:0Ssequential_1/bidirectional_1/backward_simple_rnn_1/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_maskþ
Zsequential_1/bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/MatMul/ReadVariableOpReadVariableOpcsequential_1_bidirectional_1_backward_simple_rnn_1_simple_rnn_cell_5_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype0¸
Ksequential_1/bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/MatMulMatMulKsequential_1/bidirectional_1/backward_simple_rnn_1/strided_slice_2:output:0bsequential_1/bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@ü
[sequential_1/bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/BiasAdd/ReadVariableOpReadVariableOpdsequential_1_bidirectional_1_backward_simple_rnn_1_simple_rnn_cell_5_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Å
Lsequential_1/bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/BiasAddBiasAddUsequential_1/bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/MatMul:product:0csequential_1/bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
\sequential_1/bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/MatMul_1/ReadVariableOpReadVariableOpesequential_1_bidirectional_1_backward_simple_rnn_1_simple_rnn_cell_5_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype0²
Msequential_1/bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/MatMul_1MatMulAsequential_1/bidirectional_1/backward_simple_rnn_1/zeros:output:0dsequential_1/bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@³
Hsequential_1/bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/addAddV2Usequential_1/bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/BiasAdd:output:0Wsequential_1/bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Ñ
Isequential_1/bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/TanhTanhLsequential_1/bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¡
Psequential_1/bidirectional_1/backward_simple_rnn_1/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   Ñ
Bsequential_1/bidirectional_1/backward_simple_rnn_1/TensorArrayV2_1TensorListReserveYsequential_1/bidirectional_1/backward_simple_rnn_1/TensorArrayV2_1/element_shape:output:0Ksequential_1/bidirectional_1/backward_simple_rnn_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒy
7sequential_1/bidirectional_1/backward_simple_rnn_1/timeConst*
_output_shapes
: *
dtype0*
value	B : 
Csequential_1/bidirectional_1/backward_simple_rnn_1/ReverseV2_1/axisConst*
_output_shapes
:*
dtype0*
valueB: 
>sequential_1/bidirectional_1/backward_simple_rnn_1/ReverseV2_1	ReverseV2Bsequential_1/bidirectional_1/backward_simple_rnn_1/transpose_1:y:0Lsequential_1/bidirectional_1/backward_simple_rnn_1/ReverseV2_1/axis:output:0*
T0
*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
Psequential_1/bidirectional_1/backward_simple_rnn_1/TensorArrayV2_2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿÑ
Bsequential_1/bidirectional_1/backward_simple_rnn_1/TensorArrayV2_2TensorListReserveYsequential_1/bidirectional_1/backward_simple_rnn_1/TensorArrayV2_2/element_shape:output:0Ksequential_1/bidirectional_1/backward_simple_rnn_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0
*

shape_type0:éèÈ»
jsequential_1/bidirectional_1/backward_simple_rnn_1/TensorArrayUnstack_1/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   
\sequential_1/bidirectional_1/backward_simple_rnn_1/TensorArrayUnstack_1/TensorListFromTensorTensorListFromTensorGsequential_1/bidirectional_1/backward_simple_rnn_1/ReverseV2_1:output:0ssequential_1/bidirectional_1/backward_simple_rnn_1/TensorArrayUnstack_1/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0
*

shape_type0:éèÈË
=sequential_1/bidirectional_1/backward_simple_rnn_1/zeros_like	ZerosLikeMsequential_1/bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
Ksequential_1/bidirectional_1/backward_simple_rnn_1/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ
Esequential_1/bidirectional_1/backward_simple_rnn_1/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ê
8sequential_1/bidirectional_1/backward_simple_rnn_1/whileWhileNsequential_1/bidirectional_1/backward_simple_rnn_1/while/loop_counter:output:0Tsequential_1/bidirectional_1/backward_simple_rnn_1/while/maximum_iterations:output:0@sequential_1/bidirectional_1/backward_simple_rnn_1/time:output:0Ksequential_1/bidirectional_1/backward_simple_rnn_1/TensorArrayV2_1:handle:0Asequential_1/bidirectional_1/backward_simple_rnn_1/zeros_like:y:0Asequential_1/bidirectional_1/backward_simple_rnn_1/zeros:output:0Ksequential_1/bidirectional_1/backward_simple_rnn_1/strided_slice_1:output:0jsequential_1/bidirectional_1/backward_simple_rnn_1/TensorArrayUnstack/TensorListFromTensor:output_handle:0lsequential_1/bidirectional_1/backward_simple_rnn_1/TensorArrayUnstack_1/TensorListFromTensor:output_handle:0csequential_1_bidirectional_1_backward_simple_rnn_1_simple_rnn_cell_5_matmul_readvariableop_resourcedsequential_1_bidirectional_1_backward_simple_rnn_1_simple_rnn_cell_5_biasadd_readvariableop_resourceesequential_1_bidirectional_1_backward_simple_rnn_1_simple_rnn_cell_5_matmul_1_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *O
bodyGRE
Csequential_1_bidirectional_1_backward_simple_rnn_1_while_body_66800*O
condGRE
Csequential_1_bidirectional_1_backward_simple_rnn_1_while_cond_66799*M
output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : : *
parallel_iterations ´
csequential_1/bidirectional_1/backward_simple_rnn_1/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   ä
Usequential_1/bidirectional_1/backward_simple_rnn_1/TensorArrayV2Stack/TensorListStackTensorListStackAsequential_1/bidirectional_1/backward_simple_rnn_1/while:output:3lsequential_1/bidirectional_1/backward_simple_rnn_1/TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*
element_dtype0
Hsequential_1/bidirectional_1/backward_simple_rnn_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ
Jsequential_1/bidirectional_1/backward_simple_rnn_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 
Jsequential_1/bidirectional_1/backward_simple_rnn_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
Bsequential_1/bidirectional_1/backward_simple_rnn_1/strided_slice_3StridedSlice^sequential_1/bidirectional_1/backward_simple_rnn_1/TensorArrayV2Stack/TensorListStack:tensor:0Qsequential_1/bidirectional_1/backward_simple_rnn_1/strided_slice_3/stack:output:0Ssequential_1/bidirectional_1/backward_simple_rnn_1/strided_slice_3/stack_1:output:0Ssequential_1/bidirectional_1/backward_simple_rnn_1/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_mask
Csequential_1/bidirectional_1/backward_simple_rnn_1/transpose_2/permConst*
_output_shapes
:*
dtype0*!
valueB"          ¸
>sequential_1/bidirectional_1/backward_simple_rnn_1/transpose_2	Transpose^sequential_1/bidirectional_1/backward_simple_rnn_1/TensorArrayV2Stack/TensorListStack:tensor:0Lsequential_1/bidirectional_1/backward_simple_rnn_1/transpose_2/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@j
(sequential_1/bidirectional_1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :·
#sequential_1/bidirectional_1/concatConcatV2Jsequential_1/bidirectional_1/forward_simple_rnn_1/strided_slice_3:output:0Ksequential_1/bidirectional_1/backward_simple_rnn_1/strided_slice_3:output:01sequential_1/bidirectional_1/concat/axis:output:0*
N*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*sequential_1/dense_2/MatMul/ReadVariableOpReadVariableOp3sequential_1_dense_2_matmul_readvariableop_resource*
_output_shapes
:	@*
dtype0¹
sequential_1/dense_2/MatMulMatMul,sequential_1/bidirectional_1/concat:output:02sequential_1/dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
+sequential_1/dense_2/BiasAdd/ReadVariableOpReadVariableOp4sequential_1_dense_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0µ
sequential_1/dense_2/BiasAddBiasAdd%sequential_1/dense_2/MatMul:product:03sequential_1/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@z
sequential_1/dense_2/ReluRelu%sequential_1/dense_2/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
*sequential_1/dense_3/MatMul/ReadVariableOpReadVariableOp3sequential_1_dense_3_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0´
sequential_1/dense_3/MatMulMatMul'sequential_1/dense_2/Relu:activations:02sequential_1/dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
+sequential_1/dense_3/BiasAdd/ReadVariableOpReadVariableOp4sequential_1_dense_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0µ
sequential_1/dense_3/BiasAddBiasAdd%sequential_1/dense_3/MatMul:product:03sequential_1/dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿt
IdentityIdentity%sequential_1/dense_3/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÎ
NoOpNoOp\^sequential_1/bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/BiasAdd/ReadVariableOp[^sequential_1/bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/MatMul/ReadVariableOp]^sequential_1/bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/MatMul_1/ReadVariableOp9^sequential_1/bidirectional_1/backward_simple_rnn_1/while[^sequential_1/bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/BiasAdd/ReadVariableOpZ^sequential_1/bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/MatMul/ReadVariableOp\^sequential_1/bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/MatMul_1/ReadVariableOp8^sequential_1/bidirectional_1/forward_simple_rnn_1/while,^sequential_1/dense_2/BiasAdd/ReadVariableOp+^sequential_1/dense_2/MatMul/ReadVariableOp,^sequential_1/dense_3/BiasAdd/ReadVariableOp+^sequential_1/dense_3/MatMul/ReadVariableOp*^sequential_1/embedding_1/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : 2º
[sequential_1/bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/BiasAdd/ReadVariableOp[sequential_1/bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/BiasAdd/ReadVariableOp2¸
Zsequential_1/bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/MatMul/ReadVariableOpZsequential_1/bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/MatMul/ReadVariableOp2¼
\sequential_1/bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/MatMul_1/ReadVariableOp\sequential_1/bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/MatMul_1/ReadVariableOp2t
8sequential_1/bidirectional_1/backward_simple_rnn_1/while8sequential_1/bidirectional_1/backward_simple_rnn_1/while2¸
Zsequential_1/bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/BiasAdd/ReadVariableOpZsequential_1/bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/BiasAdd/ReadVariableOp2¶
Ysequential_1/bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/MatMul/ReadVariableOpYsequential_1/bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/MatMul/ReadVariableOp2º
[sequential_1/bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/MatMul_1/ReadVariableOp[sequential_1/bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/MatMul_1/ReadVariableOp2r
7sequential_1/bidirectional_1/forward_simple_rnn_1/while7sequential_1/bidirectional_1/forward_simple_rnn_1/while2Z
+sequential_1/dense_2/BiasAdd/ReadVariableOp+sequential_1/dense_2/BiasAdd/ReadVariableOp2X
*sequential_1/dense_2/MatMul/ReadVariableOp*sequential_1/dense_2/MatMul/ReadVariableOp2Z
+sequential_1/dense_3/BiasAdd/ReadVariableOp+sequential_1/dense_3/BiasAdd/ReadVariableOp2X
*sequential_1/dense_3/MatMul/ReadVariableOp*sequential_1/dense_3/MatMul/ReadVariableOp2V
)sequential_1/embedding_1/embedding_lookup)sequential_1/embedding_1/embedding_lookup:c _
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
+
_user_specified_nameembedding_1_input
²,
Ç
while_body_67649
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0J
8while_simple_rnn_cell_5_matmul_readvariableop_resource_0:@@G
9while_simple_rnn_cell_5_biasadd_readvariableop_resource_0:@L
:while_simple_rnn_cell_5_matmul_1_readvariableop_resource_0:@@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorH
6while_simple_rnn_cell_5_matmul_readvariableop_resource:@@E
7while_simple_rnn_cell_5_biasadd_readvariableop_resource:@J
8while_simple_rnn_cell_5_matmul_1_readvariableop_resource:@@¢.while/simple_rnn_cell_5/BiasAdd/ReadVariableOp¢-while/simple_rnn_cell_5/MatMul/ReadVariableOp¢/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÿÿÿÿ¯
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
element_dtype0¦
-while/simple_rnn_cell_5/MatMul/ReadVariableOpReadVariableOp8while_simple_rnn_cell_5_matmul_readvariableop_resource_0*
_output_shapes

:@@*
dtype0Ã
while/simple_rnn_cell_5/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:05while/simple_rnn_cell_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¤
.while/simple_rnn_cell_5/BiasAdd/ReadVariableOpReadVariableOp9while_simple_rnn_cell_5_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype0¾
while/simple_rnn_cell_5/BiasAddBiasAdd(while/simple_rnn_cell_5/MatMul:product:06while/simple_rnn_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@ª
/while/simple_rnn_cell_5/MatMul_1/ReadVariableOpReadVariableOp:while_simple_rnn_cell_5_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype0ª
 while/simple_rnn_cell_5/MatMul_1MatMulwhile_placeholder_27while/simple_rnn_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¬
while/simple_rnn_cell_5/addAddV2(while/simple_rnn_cell_5/BiasAdd:output:0*while/simple_rnn_cell_5/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@w
while/simple_rnn_cell_5/TanhTanhwhile/simple_rnn_cell_5/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@É
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder while/simple_rnn_cell_5/Tanh:y:0*
_output_shapes
: *
element_dtype0:éèÒM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: }
while/Identity_4Identity while/simple_rnn_cell_5/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@ß

while/NoOpNoOp/^while/simple_rnn_cell_5/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_5/MatMul/ReadVariableOp0^while/simple_rnn_cell_5/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"t
7while_simple_rnn_cell_5_biasadd_readvariableop_resource9while_simple_rnn_cell_5_biasadd_readvariableop_resource_0"v
8while_simple_rnn_cell_5_matmul_1_readvariableop_resource:while_simple_rnn_cell_5_matmul_1_readvariableop_resource_0"r
6while_simple_rnn_cell_5_matmul_readvariableop_resource8while_simple_rnn_cell_5_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ@: : : : : 2`
.while/simple_rnn_cell_5/BiasAdd/ReadVariableOp.while/simple_rnn_cell_5/BiasAdd/ReadVariableOp2^
-while/simple_rnn_cell_5/MatMul/ReadVariableOp-while/simple_rnn_cell_5/MatMul/ReadVariableOp2b
/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
: 
ü
ç
L__inference_simple_rnn_cell_5_layer_call_and_return_conditional_losses_67238

inputs

states0
matmul_readvariableop_resource:@@-
biasadd_readvariableop_resource:@2
 matmul_1_readvariableop_resource:@@
identity

identity_1¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype0m
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@d
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@G
TanhTanhadd:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@W
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Y

Identity_1IdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_namestates
Ð

G__inference_sequential_1_layer_call_and_return_conditional_losses_68910
embedding_1_input$
embedding_1_68881:	© @'
bidirectional_1_68886:@@#
bidirectional_1_68888:@'
bidirectional_1_68890:@@'
bidirectional_1_68892:@@#
bidirectional_1_68894:@'
bidirectional_1_68896:@@ 
dense_2_68899:	@
dense_2_68901:@
dense_3_68904:@
dense_3_68906:
identity¢'bidirectional_1/StatefulPartitionedCall¢dense_2/StatefulPartitionedCall¢dense_3/StatefulPartitionedCall¢#embedding_1/StatefulPartitionedCallü
#embedding_1/StatefulPartitionedCallStatefulPartitionedCallembedding_1_inputembedding_1_68881*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_embedding_1_layer_call_and_return_conditional_losses_68057[
embedding_1/NotEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
embedding_1/NotEqualNotEqualembedding_1_inputembedding_1/NotEqual/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¯
'bidirectional_1/StatefulPartitionedCallStatefulPartitionedCall,embedding_1/StatefulPartitionedCall:output:0embedding_1/NotEqual:z:0bidirectional_1_68886bidirectional_1_68888bidirectional_1_68890bidirectional_1_68892bidirectional_1_68894bidirectional_1_68896*
Tin

2
*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_bidirectional_1_layer_call_and_return_conditional_losses_68710
dense_2/StatefulPartitionedCallStatefulPartitionedCall0bidirectional_1/StatefulPartitionedCall:output:0dense_2_68899dense_2_68901*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_2_layer_call_and_return_conditional_losses_68354
dense_3/StatefulPartitionedCallStatefulPartitionedCall(dense_2/StatefulPartitionedCall:output:0dense_3_68904dense_3_68906*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_3_layer_call_and_return_conditional_losses_68370w
IdentityIdentity(dense_3/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÚ
NoOpNoOp(^bidirectional_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall$^embedding_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : 2R
'bidirectional_1/StatefulPartitionedCall'bidirectional_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2J
#embedding_1/StatefulPartitionedCall#embedding_1/StatefulPartitionedCall:c _
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
+
_user_specified_nameembedding_1_input
°
¾
4__inference_forward_simple_rnn_1_layer_call_fn_70709

inputs
unknown:@@
	unknown_0:@
	unknown_1:@@
identity¢StatefulPartitionedCallñ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *X
fSRQ
O__inference_forward_simple_rnn_1_layer_call_and_return_conditional_losses_67994o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:e a
=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ã5
 
P__inference_backward_simple_rnn_1_layer_call_and_return_conditional_losses_67314

inputs)
simple_rnn_cell_5_67239:@@%
simple_rnn_cell_5_67241:@)
simple_rnn_cell_5_67243:@@
identity¢)simple_rnn_cell_5/StatefulPartitionedCall¢while;
ShapeShapeinputs*
T0*
_output_shapes
:]
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
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
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
:ÿÿÿÿÿÿÿÿÿ@c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
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
valueB:Û
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒX
ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: }
	ReverseV2	ReverseV2transpose:y:0ReverseV2/axis:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   å
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensorReverseV2:output:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_maskã
)simple_rnn_cell_5/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0simple_rnn_cell_5_67239simple_rnn_cell_5_67241simple_rnn_cell_5_67243*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_simple_rnn_cell_5_layer_call_and_return_conditional_losses_67238n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0simple_rnn_cell_5_67239simple_rnn_cell_5_67241simple_rnn_cell_5_67243*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ@: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_67251*
condR
while_cond_67250*8
output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ@: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   Ë
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@z
NoOpNoOp*^simple_rnn_cell_5/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@: : : 2V
)simple_rnn_cell_5/StatefulPartitionedCall)simple_rnn_cell_5/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
ü
ç
L__inference_simple_rnn_cell_4_layer_call_and_return_conditional_losses_67064

inputs

states0
matmul_readvariableop_resource:@@-
biasadd_readvariableop_resource:@2
 matmul_1_readvariableop_resource:@@
identity

identity_1¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype0m
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@d
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@G
TanhTanhadd:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@W
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Y

Identity_1IdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_namestates
¤

G__inference_sequential_1_layer_call_and_return_conditional_losses_68794

inputs$
embedding_1_68765:	© @'
bidirectional_1_68770:@@#
bidirectional_1_68772:@'
bidirectional_1_68774:@@'
bidirectional_1_68776:@@#
bidirectional_1_68778:@'
bidirectional_1_68780:@@ 
dense_2_68783:	@
dense_2_68785:@
dense_3_68788:@
dense_3_68790:
identity¢'bidirectional_1/StatefulPartitionedCall¢dense_2/StatefulPartitionedCall¢dense_3/StatefulPartitionedCall¢#embedding_1/StatefulPartitionedCallñ
#embedding_1/StatefulPartitionedCallStatefulPartitionedCallinputsembedding_1_68765*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_embedding_1_layer_call_and_return_conditional_losses_68057[
embedding_1/NotEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
embedding_1/NotEqualNotEqualinputsembedding_1/NotEqual/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¯
'bidirectional_1/StatefulPartitionedCallStatefulPartitionedCall,embedding_1/StatefulPartitionedCall:output:0embedding_1/NotEqual:z:0bidirectional_1_68770bidirectional_1_68772bidirectional_1_68774bidirectional_1_68776bidirectional_1_68778bidirectional_1_68780*
Tin

2
*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_bidirectional_1_layer_call_and_return_conditional_losses_68710
dense_2/StatefulPartitionedCallStatefulPartitionedCall0bidirectional_1/StatefulPartitionedCall:output:0dense_2_68783dense_2_68785*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_2_layer_call_and_return_conditional_losses_68354
dense_3/StatefulPartitionedCallStatefulPartitionedCall(dense_2/StatefulPartitionedCall:output:0dense_3_68788dense_3_68790*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_3_layer_call_and_return_conditional_losses_68370w
IdentityIdentity(dense_3/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÚ
NoOpNoOp(^bidirectional_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall$^embedding_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : 2R
'bidirectional_1/StatefulPartitionedCall'bidirectional_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2J
#embedding_1/StatefulPartitionedCall#embedding_1/StatefulPartitionedCall:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ý=
Â
O__inference_forward_simple_rnn_1_layer_call_and_return_conditional_losses_67598

inputsB
0simple_rnn_cell_4_matmul_readvariableop_resource:@@?
1simple_rnn_cell_4_biasadd_readvariableop_resource:@D
2simple_rnn_cell_4_matmul_1_readvariableop_resource:@@
identity¢(simple_rnn_cell_4/BiasAdd/ReadVariableOp¢'simple_rnn_cell_4/MatMul/ReadVariableOp¢)simple_rnn_cell_4/MatMul_1/ReadVariableOp¢while;
ShapeShapeinputs*
T0*
_output_shapes
:]
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
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
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
:ÿÿÿÿÿÿÿÿÿ@c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
	transpose	Transposeinputstranspose/perm:output:0*
T0*=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
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
valueB:Û
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÿÿÿÿà
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ò
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask
'simple_rnn_cell_4/MatMul/ReadVariableOpReadVariableOp0simple_rnn_cell_4_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype0
simple_rnn_cell_4/MatMulMatMulstrided_slice_2:output:0/simple_rnn_cell_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
(simple_rnn_cell_4/BiasAdd/ReadVariableOpReadVariableOp1simple_rnn_cell_4_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0¬
simple_rnn_cell_4/BiasAddBiasAdd"simple_rnn_cell_4/MatMul:product:00simple_rnn_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
)simple_rnn_cell_4/MatMul_1/ReadVariableOpReadVariableOp2simple_rnn_cell_4_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype0
simple_rnn_cell_4/MatMul_1MatMulzeros:output:01simple_rnn_cell_4/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
simple_rnn_cell_4/addAddV2"simple_rnn_cell_4/BiasAdd:output:0$simple_rnn_cell_4/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@k
simple_rnn_cell_4/TanhTanhsimple_rnn_cell_4/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ö
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:00simple_rnn_cell_4_matmul_readvariableop_resource1simple_rnn_cell_4_biasadd_readvariableop_resource2simple_rnn_cell_4_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ@: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_67532*
condR
while_cond_67531*8
output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ@: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   Ë
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Ï
NoOpNoOp)^simple_rnn_cell_4/BiasAdd/ReadVariableOp(^simple_rnn_cell_4/MatMul/ReadVariableOp*^simple_rnn_cell_4/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2T
(simple_rnn_cell_4/BiasAdd/ReadVariableOp(simple_rnn_cell_4/BiasAdd/ReadVariableOp2R
'simple_rnn_cell_4/MatMul/ReadVariableOp'simple_rnn_cell_4/MatMul/ReadVariableOp2V
)simple_rnn_cell_4/MatMul_1/ReadVariableOp)simple_rnn_cell_4/MatMul_1/ReadVariableOp2
whilewhile:e a
=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ºÃ
È
J__inference_bidirectional_1_layer_call_and_return_conditional_losses_70359

inputs
mask
W
Eforward_simple_rnn_1_simple_rnn_cell_4_matmul_readvariableop_resource:@@T
Fforward_simple_rnn_1_simple_rnn_cell_4_biasadd_readvariableop_resource:@Y
Gforward_simple_rnn_1_simple_rnn_cell_4_matmul_1_readvariableop_resource:@@X
Fbackward_simple_rnn_1_simple_rnn_cell_5_matmul_readvariableop_resource:@@U
Gbackward_simple_rnn_1_simple_rnn_cell_5_biasadd_readvariableop_resource:@Z
Hbackward_simple_rnn_1_simple_rnn_cell_5_matmul_1_readvariableop_resource:@@
identity¢>backward_simple_rnn_1/simple_rnn_cell_5/BiasAdd/ReadVariableOp¢=backward_simple_rnn_1/simple_rnn_cell_5/MatMul/ReadVariableOp¢?backward_simple_rnn_1/simple_rnn_cell_5/MatMul_1/ReadVariableOp¢backward_simple_rnn_1/while¢=forward_simple_rnn_1/simple_rnn_cell_4/BiasAdd/ReadVariableOp¢<forward_simple_rnn_1/simple_rnn_cell_4/MatMul/ReadVariableOp¢>forward_simple_rnn_1/simple_rnn_cell_4/MatMul_1/ReadVariableOp¢forward_simple_rnn_1/whileP
forward_simple_rnn_1/ShapeShapeinputs*
T0*
_output_shapes
:r
(forward_simple_rnn_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: t
*forward_simple_rnn_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*forward_simple_rnn_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:º
"forward_simple_rnn_1/strided_sliceStridedSlice#forward_simple_rnn_1/Shape:output:01forward_simple_rnn_1/strided_slice/stack:output:03forward_simple_rnn_1/strided_slice/stack_1:output:03forward_simple_rnn_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maske
#forward_simple_rnn_1/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@²
!forward_simple_rnn_1/zeros/packedPack+forward_simple_rnn_1/strided_slice:output:0,forward_simple_rnn_1/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:e
 forward_simple_rnn_1/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    «
forward_simple_rnn_1/zerosFill*forward_simple_rnn_1/zeros/packed:output:0)forward_simple_rnn_1/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@x
#forward_simple_rnn_1/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"           
forward_simple_rnn_1/transpose	Transposeinputs,forward_simple_rnn_1/transpose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@n
forward_simple_rnn_1/Shape_1Shape"forward_simple_rnn_1/transpose:y:0*
T0*
_output_shapes
:t
*forward_simple_rnn_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,forward_simple_rnn_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,forward_simple_rnn_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ä
$forward_simple_rnn_1/strided_slice_1StridedSlice%forward_simple_rnn_1/Shape_1:output:03forward_simple_rnn_1/strided_slice_1/stack:output:05forward_simple_rnn_1/strided_slice_1/stack_1:output:05forward_simple_rnn_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
#forward_simple_rnn_1/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ 
forward_simple_rnn_1/ExpandDims
ExpandDimsmask,forward_simple_rnn_1/ExpandDims/dim:output:0*
T0
*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿz
%forward_simple_rnn_1/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Æ
 forward_simple_rnn_1/transpose_1	Transpose(forward_simple_rnn_1/ExpandDims:output:0.forward_simple_rnn_1/transpose_1/perm:output:0*
T0
*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ{
0forward_simple_rnn_1/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿó
"forward_simple_rnn_1/TensorArrayV2TensorListReserve9forward_simple_rnn_1/TensorArrayV2/element_shape:output:0-forward_simple_rnn_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
Jforward_simple_rnn_1/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   
<forward_simple_rnn_1/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor"forward_simple_rnn_1/transpose:y:0Sforward_simple_rnn_1/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒt
*forward_simple_rnn_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,forward_simple_rnn_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,forward_simple_rnn_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ò
$forward_simple_rnn_1/strided_slice_2StridedSlice"forward_simple_rnn_1/transpose:y:03forward_simple_rnn_1/strided_slice_2/stack:output:05forward_simple_rnn_1/strided_slice_2/stack_1:output:05forward_simple_rnn_1/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_maskÂ
<forward_simple_rnn_1/simple_rnn_cell_4/MatMul/ReadVariableOpReadVariableOpEforward_simple_rnn_1_simple_rnn_cell_4_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype0Þ
-forward_simple_rnn_1/simple_rnn_cell_4/MatMulMatMul-forward_simple_rnn_1/strided_slice_2:output:0Dforward_simple_rnn_1/simple_rnn_cell_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@À
=forward_simple_rnn_1/simple_rnn_cell_4/BiasAdd/ReadVariableOpReadVariableOpFforward_simple_rnn_1_simple_rnn_cell_4_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0ë
.forward_simple_rnn_1/simple_rnn_cell_4/BiasAddBiasAdd7forward_simple_rnn_1/simple_rnn_cell_4/MatMul:product:0Eforward_simple_rnn_1/simple_rnn_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Æ
>forward_simple_rnn_1/simple_rnn_cell_4/MatMul_1/ReadVariableOpReadVariableOpGforward_simple_rnn_1_simple_rnn_cell_4_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype0Ø
/forward_simple_rnn_1/simple_rnn_cell_4/MatMul_1MatMul#forward_simple_rnn_1/zeros:output:0Fforward_simple_rnn_1/simple_rnn_cell_4/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Ù
*forward_simple_rnn_1/simple_rnn_cell_4/addAddV27forward_simple_rnn_1/simple_rnn_cell_4/BiasAdd:output:09forward_simple_rnn_1/simple_rnn_cell_4/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
+forward_simple_rnn_1/simple_rnn_cell_4/TanhTanh.forward_simple_rnn_1/simple_rnn_cell_4/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
2forward_simple_rnn_1/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   ÷
$forward_simple_rnn_1/TensorArrayV2_1TensorListReserve;forward_simple_rnn_1/TensorArrayV2_1/element_shape:output:0-forward_simple_rnn_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ[
forward_simple_rnn_1/timeConst*
_output_shapes
: *
dtype0*
value	B : }
2forward_simple_rnn_1/TensorArrayV2_2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ÷
$forward_simple_rnn_1/TensorArrayV2_2TensorListReserve;forward_simple_rnn_1/TensorArrayV2_2/element_shape:output:0-forward_simple_rnn_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0
*

shape_type0:éèÈ
Lforward_simple_rnn_1/TensorArrayUnstack_1/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¥
>forward_simple_rnn_1/TensorArrayUnstack_1/TensorListFromTensorTensorListFromTensor$forward_simple_rnn_1/transpose_1:y:0Uforward_simple_rnn_1/TensorArrayUnstack_1/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0
*

shape_type0:éèÈ
forward_simple_rnn_1/zeros_like	ZerosLike/forward_simple_rnn_1/simple_rnn_cell_4/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@x
-forward_simple_rnn_1/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿi
'forward_simple_rnn_1/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 	
forward_simple_rnn_1/whileWhile0forward_simple_rnn_1/while/loop_counter:output:06forward_simple_rnn_1/while/maximum_iterations:output:0"forward_simple_rnn_1/time:output:0-forward_simple_rnn_1/TensorArrayV2_1:handle:0#forward_simple_rnn_1/zeros_like:y:0#forward_simple_rnn_1/zeros:output:0-forward_simple_rnn_1/strided_slice_1:output:0Lforward_simple_rnn_1/TensorArrayUnstack/TensorListFromTensor:output_handle:0Nforward_simple_rnn_1/TensorArrayUnstack_1/TensorListFromTensor:output_handle:0Eforward_simple_rnn_1_simple_rnn_cell_4_matmul_readvariableop_resourceFforward_simple_rnn_1_simple_rnn_cell_4_biasadd_readvariableop_resourceGforward_simple_rnn_1_simple_rnn_cell_4_matmul_1_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *1
body)R'
%forward_simple_rnn_1_while_body_70144*1
cond)R'
%forward_simple_rnn_1_while_cond_70143*M
output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : : *
parallel_iterations 
Eforward_simple_rnn_1/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   
7forward_simple_rnn_1/TensorArrayV2Stack/TensorListStackTensorListStack#forward_simple_rnn_1/while:output:3Nforward_simple_rnn_1/TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*
element_dtype0}
*forward_simple_rnn_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿv
,forward_simple_rnn_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: v
,forward_simple_rnn_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ð
$forward_simple_rnn_1/strided_slice_3StridedSlice@forward_simple_rnn_1/TensorArrayV2Stack/TensorListStack:tensor:03forward_simple_rnn_1/strided_slice_3/stack:output:05forward_simple_rnn_1/strided_slice_3/stack_1:output:05forward_simple_rnn_1/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_maskz
%forward_simple_rnn_1/transpose_2/permConst*
_output_shapes
:*
dtype0*!
valueB"          Þ
 forward_simple_rnn_1/transpose_2	Transpose@forward_simple_rnn_1/TensorArrayV2Stack/TensorListStack:tensor:0.forward_simple_rnn_1/transpose_2/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@Q
backward_simple_rnn_1/ShapeShapeinputs*
T0*
_output_shapes
:s
)backward_simple_rnn_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+backward_simple_rnn_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+backward_simple_rnn_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¿
#backward_simple_rnn_1/strided_sliceStridedSlice$backward_simple_rnn_1/Shape:output:02backward_simple_rnn_1/strided_slice/stack:output:04backward_simple_rnn_1/strided_slice/stack_1:output:04backward_simple_rnn_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
$backward_simple_rnn_1/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@µ
"backward_simple_rnn_1/zeros/packedPack,backward_simple_rnn_1/strided_slice:output:0-backward_simple_rnn_1/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:f
!backward_simple_rnn_1/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ®
backward_simple_rnn_1/zerosFill+backward_simple_rnn_1/zeros/packed:output:0*backward_simple_rnn_1/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@y
$backward_simple_rnn_1/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ¢
backward_simple_rnn_1/transpose	Transposeinputs-backward_simple_rnn_1/transpose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@p
backward_simple_rnn_1/Shape_1Shape#backward_simple_rnn_1/transpose:y:0*
T0*
_output_shapes
:u
+backward_simple_rnn_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-backward_simple_rnn_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-backward_simple_rnn_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:É
%backward_simple_rnn_1/strided_slice_1StridedSlice&backward_simple_rnn_1/Shape_1:output:04backward_simple_rnn_1/strided_slice_1/stack:output:06backward_simple_rnn_1/strided_slice_1/stack_1:output:06backward_simple_rnn_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$backward_simple_rnn_1/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ¢
 backward_simple_rnn_1/ExpandDims
ExpandDimsmask-backward_simple_rnn_1/ExpandDims/dim:output:0*
T0
*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ{
&backward_simple_rnn_1/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          É
!backward_simple_rnn_1/transpose_1	Transpose)backward_simple_rnn_1/ExpandDims:output:0/backward_simple_rnn_1/transpose_1/perm:output:0*
T0
*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ|
1backward_simple_rnn_1/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿö
#backward_simple_rnn_1/TensorArrayV2TensorListReserve:backward_simple_rnn_1/TensorArrayV2/element_shape:output:0.backward_simple_rnn_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒn
$backward_simple_rnn_1/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: ¿
backward_simple_rnn_1/ReverseV2	ReverseV2#backward_simple_rnn_1/transpose:y:0-backward_simple_rnn_1/ReverseV2/axis:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
Kbackward_simple_rnn_1/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   §
=backward_simple_rnn_1/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor(backward_simple_rnn_1/ReverseV2:output:0Tbackward_simple_rnn_1/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒu
+backward_simple_rnn_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-backward_simple_rnn_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-backward_simple_rnn_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:×
%backward_simple_rnn_1/strided_slice_2StridedSlice#backward_simple_rnn_1/transpose:y:04backward_simple_rnn_1/strided_slice_2/stack:output:06backward_simple_rnn_1/strided_slice_2/stack_1:output:06backward_simple_rnn_1/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_maskÄ
=backward_simple_rnn_1/simple_rnn_cell_5/MatMul/ReadVariableOpReadVariableOpFbackward_simple_rnn_1_simple_rnn_cell_5_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype0á
.backward_simple_rnn_1/simple_rnn_cell_5/MatMulMatMul.backward_simple_rnn_1/strided_slice_2:output:0Ebackward_simple_rnn_1/simple_rnn_cell_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Â
>backward_simple_rnn_1/simple_rnn_cell_5/BiasAdd/ReadVariableOpReadVariableOpGbackward_simple_rnn_1_simple_rnn_cell_5_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0î
/backward_simple_rnn_1/simple_rnn_cell_5/BiasAddBiasAdd8backward_simple_rnn_1/simple_rnn_cell_5/MatMul:product:0Fbackward_simple_rnn_1/simple_rnn_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@È
?backward_simple_rnn_1/simple_rnn_cell_5/MatMul_1/ReadVariableOpReadVariableOpHbackward_simple_rnn_1_simple_rnn_cell_5_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype0Û
0backward_simple_rnn_1/simple_rnn_cell_5/MatMul_1MatMul$backward_simple_rnn_1/zeros:output:0Gbackward_simple_rnn_1/simple_rnn_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Ü
+backward_simple_rnn_1/simple_rnn_cell_5/addAddV28backward_simple_rnn_1/simple_rnn_cell_5/BiasAdd:output:0:backward_simple_rnn_1/simple_rnn_cell_5/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
,backward_simple_rnn_1/simple_rnn_cell_5/TanhTanh/backward_simple_rnn_1/simple_rnn_cell_5/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
3backward_simple_rnn_1/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   ú
%backward_simple_rnn_1/TensorArrayV2_1TensorListReserve<backward_simple_rnn_1/TensorArrayV2_1/element_shape:output:0.backward_simple_rnn_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ\
backward_simple_rnn_1/timeConst*
_output_shapes
: *
dtype0*
value	B : p
&backward_simple_rnn_1/ReverseV2_1/axisConst*
_output_shapes
:*
dtype0*
valueB: Å
!backward_simple_rnn_1/ReverseV2_1	ReverseV2%backward_simple_rnn_1/transpose_1:y:0/backward_simple_rnn_1/ReverseV2_1/axis:output:0*
T0
*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ~
3backward_simple_rnn_1/TensorArrayV2_2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿú
%backward_simple_rnn_1/TensorArrayV2_2TensorListReserve<backward_simple_rnn_1/TensorArrayV2_2/element_shape:output:0.backward_simple_rnn_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0
*

shape_type0:éèÈ
Mbackward_simple_rnn_1/TensorArrayUnstack_1/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ­
?backward_simple_rnn_1/TensorArrayUnstack_1/TensorListFromTensorTensorListFromTensor*backward_simple_rnn_1/ReverseV2_1:output:0Vbackward_simple_rnn_1/TensorArrayUnstack_1/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0
*

shape_type0:éèÈ
 backward_simple_rnn_1/zeros_like	ZerosLike0backward_simple_rnn_1/simple_rnn_cell_5/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@y
.backward_simple_rnn_1/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿj
(backward_simple_rnn_1/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 	
backward_simple_rnn_1/whileWhile1backward_simple_rnn_1/while/loop_counter:output:07backward_simple_rnn_1/while/maximum_iterations:output:0#backward_simple_rnn_1/time:output:0.backward_simple_rnn_1/TensorArrayV2_1:handle:0$backward_simple_rnn_1/zeros_like:y:0$backward_simple_rnn_1/zeros:output:0.backward_simple_rnn_1/strided_slice_1:output:0Mbackward_simple_rnn_1/TensorArrayUnstack/TensorListFromTensor:output_handle:0Obackward_simple_rnn_1/TensorArrayUnstack_1/TensorListFromTensor:output_handle:0Fbackward_simple_rnn_1_simple_rnn_cell_5_matmul_readvariableop_resourceGbackward_simple_rnn_1_simple_rnn_cell_5_biasadd_readvariableop_resourceHbackward_simple_rnn_1_simple_rnn_cell_5_matmul_1_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *2
body*R(
&backward_simple_rnn_1_while_body_70276*2
cond*R(
&backward_simple_rnn_1_while_cond_70275*M
output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : : *
parallel_iterations 
Fbackward_simple_rnn_1/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   
8backward_simple_rnn_1/TensorArrayV2Stack/TensorListStackTensorListStack$backward_simple_rnn_1/while:output:3Obackward_simple_rnn_1/TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*
element_dtype0~
+backward_simple_rnn_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿw
-backward_simple_rnn_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: w
-backward_simple_rnn_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:õ
%backward_simple_rnn_1/strided_slice_3StridedSliceAbackward_simple_rnn_1/TensorArrayV2Stack/TensorListStack:tensor:04backward_simple_rnn_1/strided_slice_3/stack:output:06backward_simple_rnn_1/strided_slice_3/stack_1:output:06backward_simple_rnn_1/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_mask{
&backward_simple_rnn_1/transpose_2/permConst*
_output_shapes
:*
dtype0*!
valueB"          á
!backward_simple_rnn_1/transpose_2	TransposeAbackward_simple_rnn_1/TensorArrayV2Stack/TensorListStack:tensor:0/backward_simple_rnn_1/transpose_2/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :Ã
concatConcatV2-forward_simple_rnn_1/strided_slice_3:output:0.backward_simple_rnn_1/strided_slice_3:output:0concat/axis:output:0*
N*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_
IdentityIdentityconcat:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp?^backward_simple_rnn_1/simple_rnn_cell_5/BiasAdd/ReadVariableOp>^backward_simple_rnn_1/simple_rnn_cell_5/MatMul/ReadVariableOp@^backward_simple_rnn_1/simple_rnn_cell_5/MatMul_1/ReadVariableOp^backward_simple_rnn_1/while>^forward_simple_rnn_1/simple_rnn_cell_4/BiasAdd/ReadVariableOp=^forward_simple_rnn_1/simple_rnn_cell_4/MatMul/ReadVariableOp?^forward_simple_rnn_1/simple_rnn_cell_4/MatMul_1/ReadVariableOp^forward_simple_rnn_1/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : : : : 2
>backward_simple_rnn_1/simple_rnn_cell_5/BiasAdd/ReadVariableOp>backward_simple_rnn_1/simple_rnn_cell_5/BiasAdd/ReadVariableOp2~
=backward_simple_rnn_1/simple_rnn_cell_5/MatMul/ReadVariableOp=backward_simple_rnn_1/simple_rnn_cell_5/MatMul/ReadVariableOp2
?backward_simple_rnn_1/simple_rnn_cell_5/MatMul_1/ReadVariableOp?backward_simple_rnn_1/simple_rnn_cell_5/MatMul_1/ReadVariableOp2:
backward_simple_rnn_1/whilebackward_simple_rnn_1/while2~
=forward_simple_rnn_1/simple_rnn_cell_4/BiasAdd/ReadVariableOp=forward_simple_rnn_1/simple_rnn_cell_4/BiasAdd/ReadVariableOp2|
<forward_simple_rnn_1/simple_rnn_cell_4/MatMul/ReadVariableOp<forward_simple_rnn_1/simple_rnn_cell_4/MatMul/ReadVariableOp2
>forward_simple_rnn_1/simple_rnn_cell_4/MatMul_1/ReadVariableOp>forward_simple_rnn_1/simple_rnn_cell_4/MatMul_1/ReadVariableOp28
forward_simple_rnn_1/whileforward_simple_rnn_1/while:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs:VR
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

_user_specified_namemask
å 
Ê
while_body_67412
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_01
while_simple_rnn_cell_5_67434_0:@@-
while_simple_rnn_cell_5_67436_0:@1
while_simple_rnn_cell_5_67438_0:@@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor/
while_simple_rnn_cell_5_67434:@@+
while_simple_rnn_cell_5_67436:@/
while_simple_rnn_cell_5_67438:@@¢/while/simple_rnn_cell_5/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
element_dtype0
/while/simple_rnn_cell_5/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_simple_rnn_cell_5_67434_0while_simple_rnn_cell_5_67436_0while_simple_rnn_cell_5_67438_0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_simple_rnn_cell_5_layer_call_and_return_conditional_losses_67358á
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder8while/simple_rnn_cell_5/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:éèÒM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_4Identity8while/simple_rnn_cell_5/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@~

while/NoOpNoOp0^while/simple_rnn_cell_5/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"@
while_simple_rnn_cell_5_67434while_simple_rnn_cell_5_67434_0"@
while_simple_rnn_cell_5_67436while_simple_rnn_cell_5_67436_0"@
while_simple_rnn_cell_5_67438while_simple_rnn_cell_5_67438_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ@: : : : : 2b
/while/simple_rnn_cell_5/StatefulPartitionedCall/while/simple_rnn_cell_5/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
: 
®	

/__inference_bidirectional_1_layer_call_fn_69607
inputs_0
unknown:@@
	unknown_0:@
	unknown_1:@@
	unknown_2:@@
	unknown_3:@
	unknown_4:@@
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_bidirectional_1_layer_call_and_return_conditional_losses_67726p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:g c
=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
åh
ê
5bidirectional_1_forward_simple_rnn_1_while_body_69345f
bbidirectional_1_forward_simple_rnn_1_while_bidirectional_1_forward_simple_rnn_1_while_loop_counterl
hbidirectional_1_forward_simple_rnn_1_while_bidirectional_1_forward_simple_rnn_1_while_maximum_iterations:
6bidirectional_1_forward_simple_rnn_1_while_placeholder<
8bidirectional_1_forward_simple_rnn_1_while_placeholder_1<
8bidirectional_1_forward_simple_rnn_1_while_placeholder_2<
8bidirectional_1_forward_simple_rnn_1_while_placeholder_3e
abidirectional_1_forward_simple_rnn_1_while_bidirectional_1_forward_simple_rnn_1_strided_slice_1_0¢
bidirectional_1_forward_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_bidirectional_1_forward_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor_0¦
¡bidirectional_1_forward_simple_rnn_1_while_tensorarrayv2read_1_tensorlistgetitem_bidirectional_1_forward_simple_rnn_1_tensorarrayunstack_1_tensorlistfromtensor_0o
]bidirectional_1_forward_simple_rnn_1_while_simple_rnn_cell_4_matmul_readvariableop_resource_0:@@l
^bidirectional_1_forward_simple_rnn_1_while_simple_rnn_cell_4_biasadd_readvariableop_resource_0:@q
_bidirectional_1_forward_simple_rnn_1_while_simple_rnn_cell_4_matmul_1_readvariableop_resource_0:@@7
3bidirectional_1_forward_simple_rnn_1_while_identity9
5bidirectional_1_forward_simple_rnn_1_while_identity_19
5bidirectional_1_forward_simple_rnn_1_while_identity_29
5bidirectional_1_forward_simple_rnn_1_while_identity_39
5bidirectional_1_forward_simple_rnn_1_while_identity_49
5bidirectional_1_forward_simple_rnn_1_while_identity_5c
_bidirectional_1_forward_simple_rnn_1_while_bidirectional_1_forward_simple_rnn_1_strided_slice_1 
bidirectional_1_forward_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_bidirectional_1_forward_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor¤
bidirectional_1_forward_simple_rnn_1_while_tensorarrayv2read_1_tensorlistgetitem_bidirectional_1_forward_simple_rnn_1_tensorarrayunstack_1_tensorlistfromtensorm
[bidirectional_1_forward_simple_rnn_1_while_simple_rnn_cell_4_matmul_readvariableop_resource:@@j
\bidirectional_1_forward_simple_rnn_1_while_simple_rnn_cell_4_biasadd_readvariableop_resource:@o
]bidirectional_1_forward_simple_rnn_1_while_simple_rnn_cell_4_matmul_1_readvariableop_resource:@@¢Sbidirectional_1/forward_simple_rnn_1/while/simple_rnn_cell_4/BiasAdd/ReadVariableOp¢Rbidirectional_1/forward_simple_rnn_1/while/simple_rnn_cell_4/MatMul/ReadVariableOp¢Tbidirectional_1/forward_simple_rnn_1/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp­
\bidirectional_1/forward_simple_rnn_1/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   à
Nbidirectional_1/forward_simple_rnn_1/while/TensorArrayV2Read/TensorListGetItemTensorListGetItembidirectional_1_forward_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_bidirectional_1_forward_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor_06bidirectional_1_forward_simple_rnn_1_while_placeholderebidirectional_1/forward_simple_rnn_1/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
element_dtype0¯
^bidirectional_1/forward_simple_rnn_1/while/TensorArrayV2Read_1/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   è
Pbidirectional_1/forward_simple_rnn_1/while/TensorArrayV2Read_1/TensorListGetItemTensorListGetItem¡bidirectional_1_forward_simple_rnn_1_while_tensorarrayv2read_1_tensorlistgetitem_bidirectional_1_forward_simple_rnn_1_tensorarrayunstack_1_tensorlistfromtensor_06bidirectional_1_forward_simple_rnn_1_while_placeholdergbidirectional_1/forward_simple_rnn_1/while/TensorArrayV2Read_1/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0
ð
Rbidirectional_1/forward_simple_rnn_1/while/simple_rnn_cell_4/MatMul/ReadVariableOpReadVariableOp]bidirectional_1_forward_simple_rnn_1_while_simple_rnn_cell_4_matmul_readvariableop_resource_0*
_output_shapes

:@@*
dtype0²
Cbidirectional_1/forward_simple_rnn_1/while/simple_rnn_cell_4/MatMulMatMulUbidirectional_1/forward_simple_rnn_1/while/TensorArrayV2Read/TensorListGetItem:item:0Zbidirectional_1/forward_simple_rnn_1/while/simple_rnn_cell_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@î
Sbidirectional_1/forward_simple_rnn_1/while/simple_rnn_cell_4/BiasAdd/ReadVariableOpReadVariableOp^bidirectional_1_forward_simple_rnn_1_while_simple_rnn_cell_4_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype0­
Dbidirectional_1/forward_simple_rnn_1/while/simple_rnn_cell_4/BiasAddBiasAddMbidirectional_1/forward_simple_rnn_1/while/simple_rnn_cell_4/MatMul:product:0[bidirectional_1/forward_simple_rnn_1/while/simple_rnn_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@ô
Tbidirectional_1/forward_simple_rnn_1/while/simple_rnn_cell_4/MatMul_1/ReadVariableOpReadVariableOp_bidirectional_1_forward_simple_rnn_1_while_simple_rnn_cell_4_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype0
Ebidirectional_1/forward_simple_rnn_1/while/simple_rnn_cell_4/MatMul_1MatMul8bidirectional_1_forward_simple_rnn_1_while_placeholder_3\bidirectional_1/forward_simple_rnn_1/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
@bidirectional_1/forward_simple_rnn_1/while/simple_rnn_cell_4/addAddV2Mbidirectional_1/forward_simple_rnn_1/while/simple_rnn_cell_4/BiasAdd:output:0Obidirectional_1/forward_simple_rnn_1/while/simple_rnn_cell_4/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Á
Abidirectional_1/forward_simple_rnn_1/while/simple_rnn_cell_4/TanhTanhDbidirectional_1/forward_simple_rnn_1/while/simple_rnn_cell_4/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
9bidirectional_1/forward_simple_rnn_1/while/Tile/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      
/bidirectional_1/forward_simple_rnn_1/while/TileTileWbidirectional_1/forward_simple_rnn_1/while/TensorArrayV2Read_1/TensorListGetItem:item:0Bbidirectional_1/forward_simple_rnn_1/while/Tile/multiples:output:0*
T0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬
3bidirectional_1/forward_simple_rnn_1/while/SelectV2SelectV28bidirectional_1/forward_simple_rnn_1/while/Tile:output:0Ebidirectional_1/forward_simple_rnn_1/while/simple_rnn_cell_4/Tanh:y:08bidirectional_1_forward_simple_rnn_1_while_placeholder_2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
;bidirectional_1/forward_simple_rnn_1/while/Tile_1/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      
1bidirectional_1/forward_simple_rnn_1/while/Tile_1TileWbidirectional_1/forward_simple_rnn_1/while/TensorArrayV2Read_1/TensorListGetItem:item:0Dbidirectional_1/forward_simple_rnn_1/while/Tile_1/multiples:output:0*
T0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ°
5bidirectional_1/forward_simple_rnn_1/while/SelectV2_1SelectV2:bidirectional_1/forward_simple_rnn_1/while/Tile_1:output:0Ebidirectional_1/forward_simple_rnn_1/while/simple_rnn_cell_4/Tanh:y:08bidirectional_1_forward_simple_rnn_1_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Ô
Obidirectional_1/forward_simple_rnn_1/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem8bidirectional_1_forward_simple_rnn_1_while_placeholder_16bidirectional_1_forward_simple_rnn_1_while_placeholder<bidirectional_1/forward_simple_rnn_1/while/SelectV2:output:0*
_output_shapes
: *
element_dtype0:éèÒr
0bidirectional_1/forward_simple_rnn_1/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :Ë
.bidirectional_1/forward_simple_rnn_1/while/addAddV26bidirectional_1_forward_simple_rnn_1_while_placeholder9bidirectional_1/forward_simple_rnn_1/while/add/y:output:0*
T0*
_output_shapes
: t
2bidirectional_1/forward_simple_rnn_1/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :û
0bidirectional_1/forward_simple_rnn_1/while/add_1AddV2bbidirectional_1_forward_simple_rnn_1_while_bidirectional_1_forward_simple_rnn_1_while_loop_counter;bidirectional_1/forward_simple_rnn_1/while/add_1/y:output:0*
T0*
_output_shapes
: È
3bidirectional_1/forward_simple_rnn_1/while/IdentityIdentity4bidirectional_1/forward_simple_rnn_1/while/add_1:z:00^bidirectional_1/forward_simple_rnn_1/while/NoOp*
T0*
_output_shapes
: þ
5bidirectional_1/forward_simple_rnn_1/while/Identity_1Identityhbidirectional_1_forward_simple_rnn_1_while_bidirectional_1_forward_simple_rnn_1_while_maximum_iterations0^bidirectional_1/forward_simple_rnn_1/while/NoOp*
T0*
_output_shapes
: È
5bidirectional_1/forward_simple_rnn_1/while/Identity_2Identity2bidirectional_1/forward_simple_rnn_1/while/add:z:00^bidirectional_1/forward_simple_rnn_1/while/NoOp*
T0*
_output_shapes
: õ
5bidirectional_1/forward_simple_rnn_1/while/Identity_3Identity_bidirectional_1/forward_simple_rnn_1/while/TensorArrayV2Write/TensorListSetItem:output_handle:00^bidirectional_1/forward_simple_rnn_1/while/NoOp*
T0*
_output_shapes
: ã
5bidirectional_1/forward_simple_rnn_1/while/Identity_4Identity<bidirectional_1/forward_simple_rnn_1/while/SelectV2:output:00^bidirectional_1/forward_simple_rnn_1/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@å
5bidirectional_1/forward_simple_rnn_1/while/Identity_5Identity>bidirectional_1/forward_simple_rnn_1/while/SelectV2_1:output:00^bidirectional_1/forward_simple_rnn_1/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@ó
/bidirectional_1/forward_simple_rnn_1/while/NoOpNoOpT^bidirectional_1/forward_simple_rnn_1/while/simple_rnn_cell_4/BiasAdd/ReadVariableOpS^bidirectional_1/forward_simple_rnn_1/while/simple_rnn_cell_4/MatMul/ReadVariableOpU^bidirectional_1/forward_simple_rnn_1/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Ä
_bidirectional_1_forward_simple_rnn_1_while_bidirectional_1_forward_simple_rnn_1_strided_slice_1abidirectional_1_forward_simple_rnn_1_while_bidirectional_1_forward_simple_rnn_1_strided_slice_1_0"s
3bidirectional_1_forward_simple_rnn_1_while_identity<bidirectional_1/forward_simple_rnn_1/while/Identity:output:0"w
5bidirectional_1_forward_simple_rnn_1_while_identity_1>bidirectional_1/forward_simple_rnn_1/while/Identity_1:output:0"w
5bidirectional_1_forward_simple_rnn_1_while_identity_2>bidirectional_1/forward_simple_rnn_1/while/Identity_2:output:0"w
5bidirectional_1_forward_simple_rnn_1_while_identity_3>bidirectional_1/forward_simple_rnn_1/while/Identity_3:output:0"w
5bidirectional_1_forward_simple_rnn_1_while_identity_4>bidirectional_1/forward_simple_rnn_1/while/Identity_4:output:0"w
5bidirectional_1_forward_simple_rnn_1_while_identity_5>bidirectional_1/forward_simple_rnn_1/while/Identity_5:output:0"¾
\bidirectional_1_forward_simple_rnn_1_while_simple_rnn_cell_4_biasadd_readvariableop_resource^bidirectional_1_forward_simple_rnn_1_while_simple_rnn_cell_4_biasadd_readvariableop_resource_0"À
]bidirectional_1_forward_simple_rnn_1_while_simple_rnn_cell_4_matmul_1_readvariableop_resource_bidirectional_1_forward_simple_rnn_1_while_simple_rnn_cell_4_matmul_1_readvariableop_resource_0"¼
[bidirectional_1_forward_simple_rnn_1_while_simple_rnn_cell_4_matmul_readvariableop_resource]bidirectional_1_forward_simple_rnn_1_while_simple_rnn_cell_4_matmul_readvariableop_resource_0"Æ
bidirectional_1_forward_simple_rnn_1_while_tensorarrayv2read_1_tensorlistgetitem_bidirectional_1_forward_simple_rnn_1_tensorarrayunstack_1_tensorlistfromtensor¡bidirectional_1_forward_simple_rnn_1_while_tensorarrayv2read_1_tensorlistgetitem_bidirectional_1_forward_simple_rnn_1_tensorarrayunstack_1_tensorlistfromtensor_0"¾
bidirectional_1_forward_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_bidirectional_1_forward_simple_rnn_1_tensorarrayunstack_tensorlistfromtensorbidirectional_1_forward_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_bidirectional_1_forward_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : : 2ª
Sbidirectional_1/forward_simple_rnn_1/while/simple_rnn_cell_4/BiasAdd/ReadVariableOpSbidirectional_1/forward_simple_rnn_1/while/simple_rnn_cell_4/BiasAdd/ReadVariableOp2¨
Rbidirectional_1/forward_simple_rnn_1/while/simple_rnn_cell_4/MatMul/ReadVariableOpRbidirectional_1/forward_simple_rnn_1/while/simple_rnn_cell_4/MatMul/ReadVariableOp2¬
Tbidirectional_1/forward_simple_rnn_1/while/simple_rnn_cell_4/MatMul_1/ReadVariableOpTbidirectional_1/forward_simple_rnn_1/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 

Á
%forward_simple_rnn_1_while_cond_68494F
Bforward_simple_rnn_1_while_forward_simple_rnn_1_while_loop_counterL
Hforward_simple_rnn_1_while_forward_simple_rnn_1_while_maximum_iterations*
&forward_simple_rnn_1_while_placeholder,
(forward_simple_rnn_1_while_placeholder_1,
(forward_simple_rnn_1_while_placeholder_2,
(forward_simple_rnn_1_while_placeholder_3H
Dforward_simple_rnn_1_while_less_forward_simple_rnn_1_strided_slice_1]
Yforward_simple_rnn_1_while_forward_simple_rnn_1_while_cond_68494___redundant_placeholder0]
Yforward_simple_rnn_1_while_forward_simple_rnn_1_while_cond_68494___redundant_placeholder1]
Yforward_simple_rnn_1_while_forward_simple_rnn_1_while_cond_68494___redundant_placeholder2]
Yforward_simple_rnn_1_while_forward_simple_rnn_1_while_cond_68494___redundant_placeholder3]
Yforward_simple_rnn_1_while_forward_simple_rnn_1_while_cond_68494___redundant_placeholder4'
#forward_simple_rnn_1_while_identity
¶
forward_simple_rnn_1/while/LessLess&forward_simple_rnn_1_while_placeholderDforward_simple_rnn_1_while_less_forward_simple_rnn_1_strided_slice_1*
T0*
_output_shapes
: u
#forward_simple_rnn_1/while/IdentityIdentity#forward_simple_rnn_1/while/Less:z:0*
T0
*
_output_shapes
: "S
#forward_simple_rnn_1_while_identity,forward_simple_rnn_1/while/Identity:output:0*(
_construction_contextkEagerRuntime*W
_input_shapesF
D: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: :::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
::

_output_shapes
:
ºÃ
È
J__inference_bidirectional_1_layer_call_and_return_conditional_losses_70626

inputs
mask
W
Eforward_simple_rnn_1_simple_rnn_cell_4_matmul_readvariableop_resource:@@T
Fforward_simple_rnn_1_simple_rnn_cell_4_biasadd_readvariableop_resource:@Y
Gforward_simple_rnn_1_simple_rnn_cell_4_matmul_1_readvariableop_resource:@@X
Fbackward_simple_rnn_1_simple_rnn_cell_5_matmul_readvariableop_resource:@@U
Gbackward_simple_rnn_1_simple_rnn_cell_5_biasadd_readvariableop_resource:@Z
Hbackward_simple_rnn_1_simple_rnn_cell_5_matmul_1_readvariableop_resource:@@
identity¢>backward_simple_rnn_1/simple_rnn_cell_5/BiasAdd/ReadVariableOp¢=backward_simple_rnn_1/simple_rnn_cell_5/MatMul/ReadVariableOp¢?backward_simple_rnn_1/simple_rnn_cell_5/MatMul_1/ReadVariableOp¢backward_simple_rnn_1/while¢=forward_simple_rnn_1/simple_rnn_cell_4/BiasAdd/ReadVariableOp¢<forward_simple_rnn_1/simple_rnn_cell_4/MatMul/ReadVariableOp¢>forward_simple_rnn_1/simple_rnn_cell_4/MatMul_1/ReadVariableOp¢forward_simple_rnn_1/whileP
forward_simple_rnn_1/ShapeShapeinputs*
T0*
_output_shapes
:r
(forward_simple_rnn_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: t
*forward_simple_rnn_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*forward_simple_rnn_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:º
"forward_simple_rnn_1/strided_sliceStridedSlice#forward_simple_rnn_1/Shape:output:01forward_simple_rnn_1/strided_slice/stack:output:03forward_simple_rnn_1/strided_slice/stack_1:output:03forward_simple_rnn_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maske
#forward_simple_rnn_1/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@²
!forward_simple_rnn_1/zeros/packedPack+forward_simple_rnn_1/strided_slice:output:0,forward_simple_rnn_1/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:e
 forward_simple_rnn_1/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    «
forward_simple_rnn_1/zerosFill*forward_simple_rnn_1/zeros/packed:output:0)forward_simple_rnn_1/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@x
#forward_simple_rnn_1/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"           
forward_simple_rnn_1/transpose	Transposeinputs,forward_simple_rnn_1/transpose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@n
forward_simple_rnn_1/Shape_1Shape"forward_simple_rnn_1/transpose:y:0*
T0*
_output_shapes
:t
*forward_simple_rnn_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,forward_simple_rnn_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,forward_simple_rnn_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ä
$forward_simple_rnn_1/strided_slice_1StridedSlice%forward_simple_rnn_1/Shape_1:output:03forward_simple_rnn_1/strided_slice_1/stack:output:05forward_simple_rnn_1/strided_slice_1/stack_1:output:05forward_simple_rnn_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
#forward_simple_rnn_1/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ 
forward_simple_rnn_1/ExpandDims
ExpandDimsmask,forward_simple_rnn_1/ExpandDims/dim:output:0*
T0
*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿz
%forward_simple_rnn_1/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Æ
 forward_simple_rnn_1/transpose_1	Transpose(forward_simple_rnn_1/ExpandDims:output:0.forward_simple_rnn_1/transpose_1/perm:output:0*
T0
*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ{
0forward_simple_rnn_1/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿó
"forward_simple_rnn_1/TensorArrayV2TensorListReserve9forward_simple_rnn_1/TensorArrayV2/element_shape:output:0-forward_simple_rnn_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
Jforward_simple_rnn_1/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   
<forward_simple_rnn_1/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor"forward_simple_rnn_1/transpose:y:0Sforward_simple_rnn_1/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒt
*forward_simple_rnn_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,forward_simple_rnn_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,forward_simple_rnn_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ò
$forward_simple_rnn_1/strided_slice_2StridedSlice"forward_simple_rnn_1/transpose:y:03forward_simple_rnn_1/strided_slice_2/stack:output:05forward_simple_rnn_1/strided_slice_2/stack_1:output:05forward_simple_rnn_1/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_maskÂ
<forward_simple_rnn_1/simple_rnn_cell_4/MatMul/ReadVariableOpReadVariableOpEforward_simple_rnn_1_simple_rnn_cell_4_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype0Þ
-forward_simple_rnn_1/simple_rnn_cell_4/MatMulMatMul-forward_simple_rnn_1/strided_slice_2:output:0Dforward_simple_rnn_1/simple_rnn_cell_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@À
=forward_simple_rnn_1/simple_rnn_cell_4/BiasAdd/ReadVariableOpReadVariableOpFforward_simple_rnn_1_simple_rnn_cell_4_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0ë
.forward_simple_rnn_1/simple_rnn_cell_4/BiasAddBiasAdd7forward_simple_rnn_1/simple_rnn_cell_4/MatMul:product:0Eforward_simple_rnn_1/simple_rnn_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Æ
>forward_simple_rnn_1/simple_rnn_cell_4/MatMul_1/ReadVariableOpReadVariableOpGforward_simple_rnn_1_simple_rnn_cell_4_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype0Ø
/forward_simple_rnn_1/simple_rnn_cell_4/MatMul_1MatMul#forward_simple_rnn_1/zeros:output:0Fforward_simple_rnn_1/simple_rnn_cell_4/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Ù
*forward_simple_rnn_1/simple_rnn_cell_4/addAddV27forward_simple_rnn_1/simple_rnn_cell_4/BiasAdd:output:09forward_simple_rnn_1/simple_rnn_cell_4/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
+forward_simple_rnn_1/simple_rnn_cell_4/TanhTanh.forward_simple_rnn_1/simple_rnn_cell_4/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
2forward_simple_rnn_1/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   ÷
$forward_simple_rnn_1/TensorArrayV2_1TensorListReserve;forward_simple_rnn_1/TensorArrayV2_1/element_shape:output:0-forward_simple_rnn_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ[
forward_simple_rnn_1/timeConst*
_output_shapes
: *
dtype0*
value	B : }
2forward_simple_rnn_1/TensorArrayV2_2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ÷
$forward_simple_rnn_1/TensorArrayV2_2TensorListReserve;forward_simple_rnn_1/TensorArrayV2_2/element_shape:output:0-forward_simple_rnn_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0
*

shape_type0:éèÈ
Lforward_simple_rnn_1/TensorArrayUnstack_1/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¥
>forward_simple_rnn_1/TensorArrayUnstack_1/TensorListFromTensorTensorListFromTensor$forward_simple_rnn_1/transpose_1:y:0Uforward_simple_rnn_1/TensorArrayUnstack_1/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0
*

shape_type0:éèÈ
forward_simple_rnn_1/zeros_like	ZerosLike/forward_simple_rnn_1/simple_rnn_cell_4/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@x
-forward_simple_rnn_1/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿi
'forward_simple_rnn_1/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 	
forward_simple_rnn_1/whileWhile0forward_simple_rnn_1/while/loop_counter:output:06forward_simple_rnn_1/while/maximum_iterations:output:0"forward_simple_rnn_1/time:output:0-forward_simple_rnn_1/TensorArrayV2_1:handle:0#forward_simple_rnn_1/zeros_like:y:0#forward_simple_rnn_1/zeros:output:0-forward_simple_rnn_1/strided_slice_1:output:0Lforward_simple_rnn_1/TensorArrayUnstack/TensorListFromTensor:output_handle:0Nforward_simple_rnn_1/TensorArrayUnstack_1/TensorListFromTensor:output_handle:0Eforward_simple_rnn_1_simple_rnn_cell_4_matmul_readvariableop_resourceFforward_simple_rnn_1_simple_rnn_cell_4_biasadd_readvariableop_resourceGforward_simple_rnn_1_simple_rnn_cell_4_matmul_1_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *1
body)R'
%forward_simple_rnn_1_while_body_70411*1
cond)R'
%forward_simple_rnn_1_while_cond_70410*M
output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : : *
parallel_iterations 
Eforward_simple_rnn_1/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   
7forward_simple_rnn_1/TensorArrayV2Stack/TensorListStackTensorListStack#forward_simple_rnn_1/while:output:3Nforward_simple_rnn_1/TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*
element_dtype0}
*forward_simple_rnn_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿv
,forward_simple_rnn_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: v
,forward_simple_rnn_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ð
$forward_simple_rnn_1/strided_slice_3StridedSlice@forward_simple_rnn_1/TensorArrayV2Stack/TensorListStack:tensor:03forward_simple_rnn_1/strided_slice_3/stack:output:05forward_simple_rnn_1/strided_slice_3/stack_1:output:05forward_simple_rnn_1/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_maskz
%forward_simple_rnn_1/transpose_2/permConst*
_output_shapes
:*
dtype0*!
valueB"          Þ
 forward_simple_rnn_1/transpose_2	Transpose@forward_simple_rnn_1/TensorArrayV2Stack/TensorListStack:tensor:0.forward_simple_rnn_1/transpose_2/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@Q
backward_simple_rnn_1/ShapeShapeinputs*
T0*
_output_shapes
:s
)backward_simple_rnn_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+backward_simple_rnn_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+backward_simple_rnn_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¿
#backward_simple_rnn_1/strided_sliceStridedSlice$backward_simple_rnn_1/Shape:output:02backward_simple_rnn_1/strided_slice/stack:output:04backward_simple_rnn_1/strided_slice/stack_1:output:04backward_simple_rnn_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
$backward_simple_rnn_1/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@µ
"backward_simple_rnn_1/zeros/packedPack,backward_simple_rnn_1/strided_slice:output:0-backward_simple_rnn_1/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:f
!backward_simple_rnn_1/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ®
backward_simple_rnn_1/zerosFill+backward_simple_rnn_1/zeros/packed:output:0*backward_simple_rnn_1/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@y
$backward_simple_rnn_1/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ¢
backward_simple_rnn_1/transpose	Transposeinputs-backward_simple_rnn_1/transpose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@p
backward_simple_rnn_1/Shape_1Shape#backward_simple_rnn_1/transpose:y:0*
T0*
_output_shapes
:u
+backward_simple_rnn_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-backward_simple_rnn_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-backward_simple_rnn_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:É
%backward_simple_rnn_1/strided_slice_1StridedSlice&backward_simple_rnn_1/Shape_1:output:04backward_simple_rnn_1/strided_slice_1/stack:output:06backward_simple_rnn_1/strided_slice_1/stack_1:output:06backward_simple_rnn_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$backward_simple_rnn_1/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ¢
 backward_simple_rnn_1/ExpandDims
ExpandDimsmask-backward_simple_rnn_1/ExpandDims/dim:output:0*
T0
*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ{
&backward_simple_rnn_1/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          É
!backward_simple_rnn_1/transpose_1	Transpose)backward_simple_rnn_1/ExpandDims:output:0/backward_simple_rnn_1/transpose_1/perm:output:0*
T0
*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ|
1backward_simple_rnn_1/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿö
#backward_simple_rnn_1/TensorArrayV2TensorListReserve:backward_simple_rnn_1/TensorArrayV2/element_shape:output:0.backward_simple_rnn_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒn
$backward_simple_rnn_1/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: ¿
backward_simple_rnn_1/ReverseV2	ReverseV2#backward_simple_rnn_1/transpose:y:0-backward_simple_rnn_1/ReverseV2/axis:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
Kbackward_simple_rnn_1/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   §
=backward_simple_rnn_1/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor(backward_simple_rnn_1/ReverseV2:output:0Tbackward_simple_rnn_1/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒu
+backward_simple_rnn_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-backward_simple_rnn_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-backward_simple_rnn_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:×
%backward_simple_rnn_1/strided_slice_2StridedSlice#backward_simple_rnn_1/transpose:y:04backward_simple_rnn_1/strided_slice_2/stack:output:06backward_simple_rnn_1/strided_slice_2/stack_1:output:06backward_simple_rnn_1/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_maskÄ
=backward_simple_rnn_1/simple_rnn_cell_5/MatMul/ReadVariableOpReadVariableOpFbackward_simple_rnn_1_simple_rnn_cell_5_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype0á
.backward_simple_rnn_1/simple_rnn_cell_5/MatMulMatMul.backward_simple_rnn_1/strided_slice_2:output:0Ebackward_simple_rnn_1/simple_rnn_cell_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Â
>backward_simple_rnn_1/simple_rnn_cell_5/BiasAdd/ReadVariableOpReadVariableOpGbackward_simple_rnn_1_simple_rnn_cell_5_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0î
/backward_simple_rnn_1/simple_rnn_cell_5/BiasAddBiasAdd8backward_simple_rnn_1/simple_rnn_cell_5/MatMul:product:0Fbackward_simple_rnn_1/simple_rnn_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@È
?backward_simple_rnn_1/simple_rnn_cell_5/MatMul_1/ReadVariableOpReadVariableOpHbackward_simple_rnn_1_simple_rnn_cell_5_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype0Û
0backward_simple_rnn_1/simple_rnn_cell_5/MatMul_1MatMul$backward_simple_rnn_1/zeros:output:0Gbackward_simple_rnn_1/simple_rnn_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Ü
+backward_simple_rnn_1/simple_rnn_cell_5/addAddV28backward_simple_rnn_1/simple_rnn_cell_5/BiasAdd:output:0:backward_simple_rnn_1/simple_rnn_cell_5/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
,backward_simple_rnn_1/simple_rnn_cell_5/TanhTanh/backward_simple_rnn_1/simple_rnn_cell_5/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
3backward_simple_rnn_1/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   ú
%backward_simple_rnn_1/TensorArrayV2_1TensorListReserve<backward_simple_rnn_1/TensorArrayV2_1/element_shape:output:0.backward_simple_rnn_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ\
backward_simple_rnn_1/timeConst*
_output_shapes
: *
dtype0*
value	B : p
&backward_simple_rnn_1/ReverseV2_1/axisConst*
_output_shapes
:*
dtype0*
valueB: Å
!backward_simple_rnn_1/ReverseV2_1	ReverseV2%backward_simple_rnn_1/transpose_1:y:0/backward_simple_rnn_1/ReverseV2_1/axis:output:0*
T0
*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ~
3backward_simple_rnn_1/TensorArrayV2_2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿú
%backward_simple_rnn_1/TensorArrayV2_2TensorListReserve<backward_simple_rnn_1/TensorArrayV2_2/element_shape:output:0.backward_simple_rnn_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0
*

shape_type0:éèÈ
Mbackward_simple_rnn_1/TensorArrayUnstack_1/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ­
?backward_simple_rnn_1/TensorArrayUnstack_1/TensorListFromTensorTensorListFromTensor*backward_simple_rnn_1/ReverseV2_1:output:0Vbackward_simple_rnn_1/TensorArrayUnstack_1/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0
*

shape_type0:éèÈ
 backward_simple_rnn_1/zeros_like	ZerosLike0backward_simple_rnn_1/simple_rnn_cell_5/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@y
.backward_simple_rnn_1/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿj
(backward_simple_rnn_1/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 	
backward_simple_rnn_1/whileWhile1backward_simple_rnn_1/while/loop_counter:output:07backward_simple_rnn_1/while/maximum_iterations:output:0#backward_simple_rnn_1/time:output:0.backward_simple_rnn_1/TensorArrayV2_1:handle:0$backward_simple_rnn_1/zeros_like:y:0$backward_simple_rnn_1/zeros:output:0.backward_simple_rnn_1/strided_slice_1:output:0Mbackward_simple_rnn_1/TensorArrayUnstack/TensorListFromTensor:output_handle:0Obackward_simple_rnn_1/TensorArrayUnstack_1/TensorListFromTensor:output_handle:0Fbackward_simple_rnn_1_simple_rnn_cell_5_matmul_readvariableop_resourceGbackward_simple_rnn_1_simple_rnn_cell_5_biasadd_readvariableop_resourceHbackward_simple_rnn_1_simple_rnn_cell_5_matmul_1_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *2
body*R(
&backward_simple_rnn_1_while_body_70543*2
cond*R(
&backward_simple_rnn_1_while_cond_70542*M
output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : : *
parallel_iterations 
Fbackward_simple_rnn_1/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   
8backward_simple_rnn_1/TensorArrayV2Stack/TensorListStackTensorListStack$backward_simple_rnn_1/while:output:3Obackward_simple_rnn_1/TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*
element_dtype0~
+backward_simple_rnn_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿw
-backward_simple_rnn_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: w
-backward_simple_rnn_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:õ
%backward_simple_rnn_1/strided_slice_3StridedSliceAbackward_simple_rnn_1/TensorArrayV2Stack/TensorListStack:tensor:04backward_simple_rnn_1/strided_slice_3/stack:output:06backward_simple_rnn_1/strided_slice_3/stack_1:output:06backward_simple_rnn_1/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_mask{
&backward_simple_rnn_1/transpose_2/permConst*
_output_shapes
:*
dtype0*!
valueB"          á
!backward_simple_rnn_1/transpose_2	TransposeAbackward_simple_rnn_1/TensorArrayV2Stack/TensorListStack:tensor:0/backward_simple_rnn_1/transpose_2/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :Ã
concatConcatV2-forward_simple_rnn_1/strided_slice_3:output:0.backward_simple_rnn_1/strided_slice_3:output:0concat/axis:output:0*
N*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_
IdentityIdentityconcat:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp?^backward_simple_rnn_1/simple_rnn_cell_5/BiasAdd/ReadVariableOp>^backward_simple_rnn_1/simple_rnn_cell_5/MatMul/ReadVariableOp@^backward_simple_rnn_1/simple_rnn_cell_5/MatMul_1/ReadVariableOp^backward_simple_rnn_1/while>^forward_simple_rnn_1/simple_rnn_cell_4/BiasAdd/ReadVariableOp=^forward_simple_rnn_1/simple_rnn_cell_4/MatMul/ReadVariableOp?^forward_simple_rnn_1/simple_rnn_cell_4/MatMul_1/ReadVariableOp^forward_simple_rnn_1/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : : : : 2
>backward_simple_rnn_1/simple_rnn_cell_5/BiasAdd/ReadVariableOp>backward_simple_rnn_1/simple_rnn_cell_5/BiasAdd/ReadVariableOp2~
=backward_simple_rnn_1/simple_rnn_cell_5/MatMul/ReadVariableOp=backward_simple_rnn_1/simple_rnn_cell_5/MatMul/ReadVariableOp2
?backward_simple_rnn_1/simple_rnn_cell_5/MatMul_1/ReadVariableOp?backward_simple_rnn_1/simple_rnn_cell_5/MatMul_1/ReadVariableOp2:
backward_simple_rnn_1/whilebackward_simple_rnn_1/while2~
=forward_simple_rnn_1/simple_rnn_cell_4/BiasAdd/ReadVariableOp=forward_simple_rnn_1/simple_rnn_cell_4/BiasAdd/ReadVariableOp2|
<forward_simple_rnn_1/simple_rnn_cell_4/MatMul/ReadVariableOp<forward_simple_rnn_1/simple_rnn_cell_4/MatMul/ReadVariableOp2
>forward_simple_rnn_1/simple_rnn_cell_4/MatMul_1/ReadVariableOp>forward_simple_rnn_1/simple_rnn_cell_4/MatMul_1/ReadVariableOp28
forward_simple_rnn_1/whileforward_simple_rnn_1/while:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs:VR
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

_user_specified_namemask
Õ
¥
while_cond_66956
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_66956___redundant_placeholder03
/while_while_cond_66956___redundant_placeholder13
/while_while_cond_66956___redundant_placeholder23
/while_while_cond_66956___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :ÿÿÿÿÿÿÿÿÿ@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
:
U
¦
%forward_simple_rnn_1_while_body_70144F
Bforward_simple_rnn_1_while_forward_simple_rnn_1_while_loop_counterL
Hforward_simple_rnn_1_while_forward_simple_rnn_1_while_maximum_iterations*
&forward_simple_rnn_1_while_placeholder,
(forward_simple_rnn_1_while_placeholder_1,
(forward_simple_rnn_1_while_placeholder_2,
(forward_simple_rnn_1_while_placeholder_3E
Aforward_simple_rnn_1_while_forward_simple_rnn_1_strided_slice_1_0
}forward_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_forward_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor_0
forward_simple_rnn_1_while_tensorarrayv2read_1_tensorlistgetitem_forward_simple_rnn_1_tensorarrayunstack_1_tensorlistfromtensor_0_
Mforward_simple_rnn_1_while_simple_rnn_cell_4_matmul_readvariableop_resource_0:@@\
Nforward_simple_rnn_1_while_simple_rnn_cell_4_biasadd_readvariableop_resource_0:@a
Oforward_simple_rnn_1_while_simple_rnn_cell_4_matmul_1_readvariableop_resource_0:@@'
#forward_simple_rnn_1_while_identity)
%forward_simple_rnn_1_while_identity_1)
%forward_simple_rnn_1_while_identity_2)
%forward_simple_rnn_1_while_identity_3)
%forward_simple_rnn_1_while_identity_4)
%forward_simple_rnn_1_while_identity_5C
?forward_simple_rnn_1_while_forward_simple_rnn_1_strided_slice_1
{forward_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_forward_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor
forward_simple_rnn_1_while_tensorarrayv2read_1_tensorlistgetitem_forward_simple_rnn_1_tensorarrayunstack_1_tensorlistfromtensor]
Kforward_simple_rnn_1_while_simple_rnn_cell_4_matmul_readvariableop_resource:@@Z
Lforward_simple_rnn_1_while_simple_rnn_cell_4_biasadd_readvariableop_resource:@_
Mforward_simple_rnn_1_while_simple_rnn_cell_4_matmul_1_readvariableop_resource:@@¢Cforward_simple_rnn_1/while/simple_rnn_cell_4/BiasAdd/ReadVariableOp¢Bforward_simple_rnn_1/while/simple_rnn_cell_4/MatMul/ReadVariableOp¢Dforward_simple_rnn_1/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp
Lforward_simple_rnn_1/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   
>forward_simple_rnn_1/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem}forward_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_forward_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor_0&forward_simple_rnn_1_while_placeholderUforward_simple_rnn_1/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
element_dtype0
Nforward_simple_rnn_1/while/TensorArrayV2Read_1/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   
@forward_simple_rnn_1/while/TensorArrayV2Read_1/TensorListGetItemTensorListGetItemforward_simple_rnn_1_while_tensorarrayv2read_1_tensorlistgetitem_forward_simple_rnn_1_tensorarrayunstack_1_tensorlistfromtensor_0&forward_simple_rnn_1_while_placeholderWforward_simple_rnn_1/while/TensorArrayV2Read_1/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0
Ð
Bforward_simple_rnn_1/while/simple_rnn_cell_4/MatMul/ReadVariableOpReadVariableOpMforward_simple_rnn_1_while_simple_rnn_cell_4_matmul_readvariableop_resource_0*
_output_shapes

:@@*
dtype0
3forward_simple_rnn_1/while/simple_rnn_cell_4/MatMulMatMulEforward_simple_rnn_1/while/TensorArrayV2Read/TensorListGetItem:item:0Jforward_simple_rnn_1/while/simple_rnn_cell_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Î
Cforward_simple_rnn_1/while/simple_rnn_cell_4/BiasAdd/ReadVariableOpReadVariableOpNforward_simple_rnn_1_while_simple_rnn_cell_4_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype0ý
4forward_simple_rnn_1/while/simple_rnn_cell_4/BiasAddBiasAdd=forward_simple_rnn_1/while/simple_rnn_cell_4/MatMul:product:0Kforward_simple_rnn_1/while/simple_rnn_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Ô
Dforward_simple_rnn_1/while/simple_rnn_cell_4/MatMul_1/ReadVariableOpReadVariableOpOforward_simple_rnn_1_while_simple_rnn_cell_4_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype0é
5forward_simple_rnn_1/while/simple_rnn_cell_4/MatMul_1MatMul(forward_simple_rnn_1_while_placeholder_3Lforward_simple_rnn_1/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@ë
0forward_simple_rnn_1/while/simple_rnn_cell_4/addAddV2=forward_simple_rnn_1/while/simple_rnn_cell_4/BiasAdd:output:0?forward_simple_rnn_1/while/simple_rnn_cell_4/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¡
1forward_simple_rnn_1/while/simple_rnn_cell_4/TanhTanh4forward_simple_rnn_1/while/simple_rnn_cell_4/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@z
)forward_simple_rnn_1/while/Tile/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      Ö
forward_simple_rnn_1/while/TileTileGforward_simple_rnn_1/while/TensorArrayV2Read_1/TensorListGetItem:item:02forward_simple_rnn_1/while/Tile/multiples:output:0*
T0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿì
#forward_simple_rnn_1/while/SelectV2SelectV2(forward_simple_rnn_1/while/Tile:output:05forward_simple_rnn_1/while/simple_rnn_cell_4/Tanh:y:0(forward_simple_rnn_1_while_placeholder_2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@|
+forward_simple_rnn_1/while/Tile_1/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      Ú
!forward_simple_rnn_1/while/Tile_1TileGforward_simple_rnn_1/while/TensorArrayV2Read_1/TensorListGetItem:item:04forward_simple_rnn_1/while/Tile_1/multiples:output:0*
T0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿð
%forward_simple_rnn_1/while/SelectV2_1SelectV2*forward_simple_rnn_1/while/Tile_1:output:05forward_simple_rnn_1/while/simple_rnn_cell_4/Tanh:y:0(forward_simple_rnn_1_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
?forward_simple_rnn_1/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem(forward_simple_rnn_1_while_placeholder_1&forward_simple_rnn_1_while_placeholder,forward_simple_rnn_1/while/SelectV2:output:0*
_output_shapes
: *
element_dtype0:éèÒb
 forward_simple_rnn_1/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :
forward_simple_rnn_1/while/addAddV2&forward_simple_rnn_1_while_placeholder)forward_simple_rnn_1/while/add/y:output:0*
T0*
_output_shapes
: d
"forward_simple_rnn_1/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :»
 forward_simple_rnn_1/while/add_1AddV2Bforward_simple_rnn_1_while_forward_simple_rnn_1_while_loop_counter+forward_simple_rnn_1/while/add_1/y:output:0*
T0*
_output_shapes
: 
#forward_simple_rnn_1/while/IdentityIdentity$forward_simple_rnn_1/while/add_1:z:0 ^forward_simple_rnn_1/while/NoOp*
T0*
_output_shapes
: ¾
%forward_simple_rnn_1/while/Identity_1IdentityHforward_simple_rnn_1_while_forward_simple_rnn_1_while_maximum_iterations ^forward_simple_rnn_1/while/NoOp*
T0*
_output_shapes
: 
%forward_simple_rnn_1/while/Identity_2Identity"forward_simple_rnn_1/while/add:z:0 ^forward_simple_rnn_1/while/NoOp*
T0*
_output_shapes
: Å
%forward_simple_rnn_1/while/Identity_3IdentityOforward_simple_rnn_1/while/TensorArrayV2Write/TensorListSetItem:output_handle:0 ^forward_simple_rnn_1/while/NoOp*
T0*
_output_shapes
: ³
%forward_simple_rnn_1/while/Identity_4Identity,forward_simple_rnn_1/while/SelectV2:output:0 ^forward_simple_rnn_1/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@µ
%forward_simple_rnn_1/while/Identity_5Identity.forward_simple_rnn_1/while/SelectV2_1:output:0 ^forward_simple_rnn_1/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@³
forward_simple_rnn_1/while/NoOpNoOpD^forward_simple_rnn_1/while/simple_rnn_cell_4/BiasAdd/ReadVariableOpC^forward_simple_rnn_1/while/simple_rnn_cell_4/MatMul/ReadVariableOpE^forward_simple_rnn_1/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
?forward_simple_rnn_1_while_forward_simple_rnn_1_strided_slice_1Aforward_simple_rnn_1_while_forward_simple_rnn_1_strided_slice_1_0"S
#forward_simple_rnn_1_while_identity,forward_simple_rnn_1/while/Identity:output:0"W
%forward_simple_rnn_1_while_identity_1.forward_simple_rnn_1/while/Identity_1:output:0"W
%forward_simple_rnn_1_while_identity_2.forward_simple_rnn_1/while/Identity_2:output:0"W
%forward_simple_rnn_1_while_identity_3.forward_simple_rnn_1/while/Identity_3:output:0"W
%forward_simple_rnn_1_while_identity_4.forward_simple_rnn_1/while/Identity_4:output:0"W
%forward_simple_rnn_1_while_identity_5.forward_simple_rnn_1/while/Identity_5:output:0"
Lforward_simple_rnn_1_while_simple_rnn_cell_4_biasadd_readvariableop_resourceNforward_simple_rnn_1_while_simple_rnn_cell_4_biasadd_readvariableop_resource_0" 
Mforward_simple_rnn_1_while_simple_rnn_cell_4_matmul_1_readvariableop_resourceOforward_simple_rnn_1_while_simple_rnn_cell_4_matmul_1_readvariableop_resource_0"
Kforward_simple_rnn_1_while_simple_rnn_cell_4_matmul_readvariableop_resourceMforward_simple_rnn_1_while_simple_rnn_cell_4_matmul_readvariableop_resource_0"
forward_simple_rnn_1_while_tensorarrayv2read_1_tensorlistgetitem_forward_simple_rnn_1_tensorarrayunstack_1_tensorlistfromtensorforward_simple_rnn_1_while_tensorarrayv2read_1_tensorlistgetitem_forward_simple_rnn_1_tensorarrayunstack_1_tensorlistfromtensor_0"ü
{forward_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_forward_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor}forward_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_forward_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : : 2
Cforward_simple_rnn_1/while/simple_rnn_cell_4/BiasAdd/ReadVariableOpCforward_simple_rnn_1/while/simple_rnn_cell_4/BiasAdd/ReadVariableOp2
Bforward_simple_rnn_1/while/simple_rnn_cell_4/MatMul/ReadVariableOpBforward_simple_rnn_1/while/simple_rnn_cell_4/MatMul/ReadVariableOp2
Dforward_simple_rnn_1/while/simple_rnn_cell_4/MatMul_1/ReadVariableOpDforward_simple_rnn_1/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
¤
À
4__inference_forward_simple_rnn_1_layer_call_fn_70687
inputs_0
unknown:@@
	unknown_0:@
	unknown_1:@@
identity¢StatefulPartitionedCalló
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *X
fSRQ
O__inference_forward_simple_rnn_1_layer_call_and_return_conditional_losses_67179o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
"
_user_specified_name
inputs/0
²
¿
5__inference_backward_simple_rnn_1_layer_call_fn_71174

inputs
unknown:@@
	unknown_0:@
	unknown_1:@@
identity¢StatefulPartitionedCallò
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Y
fTRR
P__inference_backward_simple_rnn_1_layer_call_and_return_conditional_losses_67715o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:e a
=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
²
¿
5__inference_backward_simple_rnn_1_layer_call_fn_71185

inputs
unknown:@@
	unknown_0:@
	unknown_1:@@
identity¢StatefulPartitionedCallò
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Y
fTRR
P__inference_backward_simple_rnn_1_layer_call_and_return_conditional_losses_67864o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:e a
=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Õ
¥
while_cond_71074
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_71074___redundant_placeholder03
/while_while_cond_71074___redundant_placeholder13
/while_while_cond_71074___redundant_placeholder23
/while_while_cond_71074___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :ÿÿÿÿÿÿÿÿÿ@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
:
æ?
Ã
P__inference_backward_simple_rnn_1_layer_call_and_return_conditional_losses_67715

inputsB
0simple_rnn_cell_5_matmul_readvariableop_resource:@@?
1simple_rnn_cell_5_biasadd_readvariableop_resource:@D
2simple_rnn_cell_5_matmul_1_readvariableop_resource:@@
identity¢(simple_rnn_cell_5/BiasAdd/ReadVariableOp¢'simple_rnn_cell_5/MatMul/ReadVariableOp¢)simple_rnn_cell_5/MatMul_1/ReadVariableOp¢while;
ShapeShapeinputs*
T0*
_output_shapes
:]
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
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
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
:ÿÿÿÿÿÿÿÿÿ@c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
	transpose	Transposeinputstranspose/perm:output:0*
T0*=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
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
valueB:Û
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒX
ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: 
	ReverseV2	ReverseV2transpose:y:0ReverseV2/axis:output:0*
T0*=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÿÿÿÿå
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensorReverseV2:output:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ò
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask
'simple_rnn_cell_5/MatMul/ReadVariableOpReadVariableOp0simple_rnn_cell_5_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype0
simple_rnn_cell_5/MatMulMatMulstrided_slice_2:output:0/simple_rnn_cell_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
(simple_rnn_cell_5/BiasAdd/ReadVariableOpReadVariableOp1simple_rnn_cell_5_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0¬
simple_rnn_cell_5/BiasAddBiasAdd"simple_rnn_cell_5/MatMul:product:00simple_rnn_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
)simple_rnn_cell_5/MatMul_1/ReadVariableOpReadVariableOp2simple_rnn_cell_5_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype0
simple_rnn_cell_5/MatMul_1MatMulzeros:output:01simple_rnn_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
simple_rnn_cell_5/addAddV2"simple_rnn_cell_5/BiasAdd:output:0$simple_rnn_cell_5/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@k
simple_rnn_cell_5/TanhTanhsimple_rnn_cell_5/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ö
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:00simple_rnn_cell_5_matmul_readvariableop_resource1simple_rnn_cell_5_biasadd_readvariableop_resource2simple_rnn_cell_5_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ@: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_67649*
condR
while_cond_67648*8
output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ@: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   Ë
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Ï
NoOpNoOp)^simple_rnn_cell_5/BiasAdd/ReadVariableOp(^simple_rnn_cell_5/MatMul/ReadVariableOp*^simple_rnn_cell_5/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2T
(simple_rnn_cell_5/BiasAdd/ReadVariableOp(simple_rnn_cell_5/BiasAdd/ReadVariableOp2R
'simple_rnn_cell_5/MatMul/ReadVariableOp'simple_rnn_cell_5/MatMul/ReadVariableOp2V
)simple_rnn_cell_5/MatMul_1/ReadVariableOp)simple_rnn_cell_5/MatMul_1/ReadVariableOp2
whilewhile:e a
=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¨
Ç
&backward_simple_rnn_1_while_cond_70023H
Dbackward_simple_rnn_1_while_backward_simple_rnn_1_while_loop_counterN
Jbackward_simple_rnn_1_while_backward_simple_rnn_1_while_maximum_iterations+
'backward_simple_rnn_1_while_placeholder-
)backward_simple_rnn_1_while_placeholder_1-
)backward_simple_rnn_1_while_placeholder_2J
Fbackward_simple_rnn_1_while_less_backward_simple_rnn_1_strided_slice_1_
[backward_simple_rnn_1_while_backward_simple_rnn_1_while_cond_70023___redundant_placeholder0_
[backward_simple_rnn_1_while_backward_simple_rnn_1_while_cond_70023___redundant_placeholder1_
[backward_simple_rnn_1_while_backward_simple_rnn_1_while_cond_70023___redundant_placeholder2_
[backward_simple_rnn_1_while_backward_simple_rnn_1_while_cond_70023___redundant_placeholder3(
$backward_simple_rnn_1_while_identity
º
 backward_simple_rnn_1/while/LessLess'backward_simple_rnn_1_while_placeholderFbackward_simple_rnn_1_while_less_backward_simple_rnn_1_strided_slice_1*
T0*
_output_shapes
: w
$backward_simple_rnn_1/while/IdentityIdentity$backward_simple_rnn_1/while/Less:z:0*
T0
*
_output_shapes
: "U
$backward_simple_rnn_1_while_identity-backward_simple_rnn_1/while/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :ÿÿÿÿÿÿÿÿÿ@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
:
Á
×
J__inference_bidirectional_1_layer_call_and_return_conditional_losses_67726

inputs,
forward_simple_rnn_1_67599:@@(
forward_simple_rnn_1_67601:@,
forward_simple_rnn_1_67603:@@-
backward_simple_rnn_1_67716:@@)
backward_simple_rnn_1_67718:@-
backward_simple_rnn_1_67720:@@
identity¢-backward_simple_rnn_1/StatefulPartitionedCall¢,forward_simple_rnn_1/StatefulPartitionedCall»
,forward_simple_rnn_1/StatefulPartitionedCallStatefulPartitionedCallinputsforward_simple_rnn_1_67599forward_simple_rnn_1_67601forward_simple_rnn_1_67603*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *X
fSRQ
O__inference_forward_simple_rnn_1_layer_call_and_return_conditional_losses_67598À
-backward_simple_rnn_1/StatefulPartitionedCallStatefulPartitionedCallinputsbackward_simple_rnn_1_67716backward_simple_rnn_1_67718backward_simple_rnn_1_67720*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Y
fTRR
P__inference_backward_simple_rnn_1_layer_call_and_return_conditional_losses_67715M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :Ó
concatConcatV25forward_simple_rnn_1/StatefulPartitionedCall:output:06backward_simple_rnn_1/StatefulPartitionedCall:output:0concat/axis:output:0*
N*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_
IdentityIdentityconcat:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¥
NoOpNoOp.^backward_simple_rnn_1/StatefulPartitionedCall-^forward_simple_rnn_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : : : : 2^
-backward_simple_rnn_1/StatefulPartitionedCall-backward_simple_rnn_1/StatefulPartitionedCall2\
,forward_simple_rnn_1/StatefulPartitionedCall,forward_simple_rnn_1/StatefulPartitionedCall:e a
=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Õ
¥
while_cond_71338
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_71338___redundant_placeholder03
/while_while_cond_71338___redundant_placeholder13
/while_while_cond_71338___redundant_placeholder23
/while_while_cond_71338___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :ÿÿÿÿÿÿÿÿÿ@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
:
ü
ç
L__inference_simple_rnn_cell_5_layer_call_and_return_conditional_losses_67358

inputs

states0
matmul_readvariableop_resource:@@-
biasadd_readvariableop_resource:@2
 matmul_1_readvariableop_resource:@@
identity

identity_1¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype0m
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@d
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@G
TanhTanhadd:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@W
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Y

Identity_1IdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_namestates

é
L__inference_simple_rnn_cell_5_layer_call_and_return_conditional_losses_71732

inputs
states_00
matmul_readvariableop_resource:@@-
biasadd_readvariableop_resource:@2
 matmul_1_readvariableop_resource:@@
identity

identity_1¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype0o
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@d
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@G
TanhTanhadd:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@W
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Y

Identity_1IdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
"
_user_specified_name
states/0
¨
Ç
&backward_simple_rnn_1_while_cond_69807H
Dbackward_simple_rnn_1_while_backward_simple_rnn_1_while_loop_counterN
Jbackward_simple_rnn_1_while_backward_simple_rnn_1_while_maximum_iterations+
'backward_simple_rnn_1_while_placeholder-
)backward_simple_rnn_1_while_placeholder_1-
)backward_simple_rnn_1_while_placeholder_2J
Fbackward_simple_rnn_1_while_less_backward_simple_rnn_1_strided_slice_1_
[backward_simple_rnn_1_while_backward_simple_rnn_1_while_cond_69807___redundant_placeholder0_
[backward_simple_rnn_1_while_backward_simple_rnn_1_while_cond_69807___redundant_placeholder1_
[backward_simple_rnn_1_while_backward_simple_rnn_1_while_cond_69807___redundant_placeholder2_
[backward_simple_rnn_1_while_backward_simple_rnn_1_while_cond_69807___redundant_placeholder3(
$backward_simple_rnn_1_while_identity
º
 backward_simple_rnn_1/while/LessLess'backward_simple_rnn_1_while_placeholderFbackward_simple_rnn_1_while_less_backward_simple_rnn_1_strided_slice_1*
T0*
_output_shapes
: w
$backward_simple_rnn_1/while/IdentityIdentity$backward_simple_rnn_1/while/Less:z:0*
T0
*
_output_shapes
: "U
$backward_simple_rnn_1_while_identity-backward_simple_rnn_1/while/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :ÿÿÿÿÿÿÿÿÿ@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
:
ºV
Ì
&backward_simple_rnn_1_while_body_70543H
Dbackward_simple_rnn_1_while_backward_simple_rnn_1_while_loop_counterN
Jbackward_simple_rnn_1_while_backward_simple_rnn_1_while_maximum_iterations+
'backward_simple_rnn_1_while_placeholder-
)backward_simple_rnn_1_while_placeholder_1-
)backward_simple_rnn_1_while_placeholder_2-
)backward_simple_rnn_1_while_placeholder_3G
Cbackward_simple_rnn_1_while_backward_simple_rnn_1_strided_slice_1_0
backward_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_backward_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor_0
backward_simple_rnn_1_while_tensorarrayv2read_1_tensorlistgetitem_backward_simple_rnn_1_tensorarrayunstack_1_tensorlistfromtensor_0`
Nbackward_simple_rnn_1_while_simple_rnn_cell_5_matmul_readvariableop_resource_0:@@]
Obackward_simple_rnn_1_while_simple_rnn_cell_5_biasadd_readvariableop_resource_0:@b
Pbackward_simple_rnn_1_while_simple_rnn_cell_5_matmul_1_readvariableop_resource_0:@@(
$backward_simple_rnn_1_while_identity*
&backward_simple_rnn_1_while_identity_1*
&backward_simple_rnn_1_while_identity_2*
&backward_simple_rnn_1_while_identity_3*
&backward_simple_rnn_1_while_identity_4*
&backward_simple_rnn_1_while_identity_5E
Abackward_simple_rnn_1_while_backward_simple_rnn_1_strided_slice_1
}backward_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_backward_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor
backward_simple_rnn_1_while_tensorarrayv2read_1_tensorlistgetitem_backward_simple_rnn_1_tensorarrayunstack_1_tensorlistfromtensor^
Lbackward_simple_rnn_1_while_simple_rnn_cell_5_matmul_readvariableop_resource:@@[
Mbackward_simple_rnn_1_while_simple_rnn_cell_5_biasadd_readvariableop_resource:@`
Nbackward_simple_rnn_1_while_simple_rnn_cell_5_matmul_1_readvariableop_resource:@@¢Dbackward_simple_rnn_1/while/simple_rnn_cell_5/BiasAdd/ReadVariableOp¢Cbackward_simple_rnn_1/while/simple_rnn_cell_5/MatMul/ReadVariableOp¢Ebackward_simple_rnn_1/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp
Mbackward_simple_rnn_1/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   
?backward_simple_rnn_1/while/TensorArrayV2Read/TensorListGetItemTensorListGetItembackward_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_backward_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor_0'backward_simple_rnn_1_while_placeholderVbackward_simple_rnn_1/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
element_dtype0 
Obackward_simple_rnn_1/while/TensorArrayV2Read_1/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   
Abackward_simple_rnn_1/while/TensorArrayV2Read_1/TensorListGetItemTensorListGetItembackward_simple_rnn_1_while_tensorarrayv2read_1_tensorlistgetitem_backward_simple_rnn_1_tensorarrayunstack_1_tensorlistfromtensor_0'backward_simple_rnn_1_while_placeholderXbackward_simple_rnn_1/while/TensorArrayV2Read_1/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0
Ò
Cbackward_simple_rnn_1/while/simple_rnn_cell_5/MatMul/ReadVariableOpReadVariableOpNbackward_simple_rnn_1_while_simple_rnn_cell_5_matmul_readvariableop_resource_0*
_output_shapes

:@@*
dtype0
4backward_simple_rnn_1/while/simple_rnn_cell_5/MatMulMatMulFbackward_simple_rnn_1/while/TensorArrayV2Read/TensorListGetItem:item:0Kbackward_simple_rnn_1/while/simple_rnn_cell_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Ð
Dbackward_simple_rnn_1/while/simple_rnn_cell_5/BiasAdd/ReadVariableOpReadVariableOpObackward_simple_rnn_1_while_simple_rnn_cell_5_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype0
5backward_simple_rnn_1/while/simple_rnn_cell_5/BiasAddBiasAdd>backward_simple_rnn_1/while/simple_rnn_cell_5/MatMul:product:0Lbackward_simple_rnn_1/while/simple_rnn_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Ö
Ebackward_simple_rnn_1/while/simple_rnn_cell_5/MatMul_1/ReadVariableOpReadVariableOpPbackward_simple_rnn_1_while_simple_rnn_cell_5_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype0ì
6backward_simple_rnn_1/while/simple_rnn_cell_5/MatMul_1MatMul)backward_simple_rnn_1_while_placeholder_3Mbackward_simple_rnn_1/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@î
1backward_simple_rnn_1/while/simple_rnn_cell_5/addAddV2>backward_simple_rnn_1/while/simple_rnn_cell_5/BiasAdd:output:0@backward_simple_rnn_1/while/simple_rnn_cell_5/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@£
2backward_simple_rnn_1/while/simple_rnn_cell_5/TanhTanh5backward_simple_rnn_1/while/simple_rnn_cell_5/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@{
*backward_simple_rnn_1/while/Tile/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      Ù
 backward_simple_rnn_1/while/TileTileHbackward_simple_rnn_1/while/TensorArrayV2Read_1/TensorListGetItem:item:03backward_simple_rnn_1/while/Tile/multiples:output:0*
T0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿð
$backward_simple_rnn_1/while/SelectV2SelectV2)backward_simple_rnn_1/while/Tile:output:06backward_simple_rnn_1/while/simple_rnn_cell_5/Tanh:y:0)backward_simple_rnn_1_while_placeholder_2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@}
,backward_simple_rnn_1/while/Tile_1/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      Ý
"backward_simple_rnn_1/while/Tile_1TileHbackward_simple_rnn_1/while/TensorArrayV2Read_1/TensorListGetItem:item:05backward_simple_rnn_1/while/Tile_1/multiples:output:0*
T0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿô
&backward_simple_rnn_1/while/SelectV2_1SelectV2+backward_simple_rnn_1/while/Tile_1:output:06backward_simple_rnn_1/while/simple_rnn_cell_5/Tanh:y:0)backward_simple_rnn_1_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
@backward_simple_rnn_1/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem)backward_simple_rnn_1_while_placeholder_1'backward_simple_rnn_1_while_placeholder-backward_simple_rnn_1/while/SelectV2:output:0*
_output_shapes
: *
element_dtype0:éèÒc
!backward_simple_rnn_1/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :
backward_simple_rnn_1/while/addAddV2'backward_simple_rnn_1_while_placeholder*backward_simple_rnn_1/while/add/y:output:0*
T0*
_output_shapes
: e
#backward_simple_rnn_1/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :¿
!backward_simple_rnn_1/while/add_1AddV2Dbackward_simple_rnn_1_while_backward_simple_rnn_1_while_loop_counter,backward_simple_rnn_1/while/add_1/y:output:0*
T0*
_output_shapes
: 
$backward_simple_rnn_1/while/IdentityIdentity%backward_simple_rnn_1/while/add_1:z:0!^backward_simple_rnn_1/while/NoOp*
T0*
_output_shapes
: Â
&backward_simple_rnn_1/while/Identity_1IdentityJbackward_simple_rnn_1_while_backward_simple_rnn_1_while_maximum_iterations!^backward_simple_rnn_1/while/NoOp*
T0*
_output_shapes
: 
&backward_simple_rnn_1/while/Identity_2Identity#backward_simple_rnn_1/while/add:z:0!^backward_simple_rnn_1/while/NoOp*
T0*
_output_shapes
: È
&backward_simple_rnn_1/while/Identity_3IdentityPbackward_simple_rnn_1/while/TensorArrayV2Write/TensorListSetItem:output_handle:0!^backward_simple_rnn_1/while/NoOp*
T0*
_output_shapes
: ¶
&backward_simple_rnn_1/while/Identity_4Identity-backward_simple_rnn_1/while/SelectV2:output:0!^backward_simple_rnn_1/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¸
&backward_simple_rnn_1/while/Identity_5Identity/backward_simple_rnn_1/while/SelectV2_1:output:0!^backward_simple_rnn_1/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@·
 backward_simple_rnn_1/while/NoOpNoOpE^backward_simple_rnn_1/while/simple_rnn_cell_5/BiasAdd/ReadVariableOpD^backward_simple_rnn_1/while/simple_rnn_cell_5/MatMul/ReadVariableOpF^backward_simple_rnn_1/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
Abackward_simple_rnn_1_while_backward_simple_rnn_1_strided_slice_1Cbackward_simple_rnn_1_while_backward_simple_rnn_1_strided_slice_1_0"U
$backward_simple_rnn_1_while_identity-backward_simple_rnn_1/while/Identity:output:0"Y
&backward_simple_rnn_1_while_identity_1/backward_simple_rnn_1/while/Identity_1:output:0"Y
&backward_simple_rnn_1_while_identity_2/backward_simple_rnn_1/while/Identity_2:output:0"Y
&backward_simple_rnn_1_while_identity_3/backward_simple_rnn_1/while/Identity_3:output:0"Y
&backward_simple_rnn_1_while_identity_4/backward_simple_rnn_1/while/Identity_4:output:0"Y
&backward_simple_rnn_1_while_identity_5/backward_simple_rnn_1/while/Identity_5:output:0" 
Mbackward_simple_rnn_1_while_simple_rnn_cell_5_biasadd_readvariableop_resourceObackward_simple_rnn_1_while_simple_rnn_cell_5_biasadd_readvariableop_resource_0"¢
Nbackward_simple_rnn_1_while_simple_rnn_cell_5_matmul_1_readvariableop_resourcePbackward_simple_rnn_1_while_simple_rnn_cell_5_matmul_1_readvariableop_resource_0"
Lbackward_simple_rnn_1_while_simple_rnn_cell_5_matmul_readvariableop_resourceNbackward_simple_rnn_1_while_simple_rnn_cell_5_matmul_readvariableop_resource_0"
backward_simple_rnn_1_while_tensorarrayv2read_1_tensorlistgetitem_backward_simple_rnn_1_tensorarrayunstack_1_tensorlistfromtensorbackward_simple_rnn_1_while_tensorarrayv2read_1_tensorlistgetitem_backward_simple_rnn_1_tensorarrayunstack_1_tensorlistfromtensor_0"
}backward_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_backward_simple_rnn_1_tensorarrayunstack_tensorlistfromtensorbackward_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_backward_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : : 2
Dbackward_simple_rnn_1/while/simple_rnn_cell_5/BiasAdd/ReadVariableOpDbackward_simple_rnn_1/while/simple_rnn_cell_5/BiasAdd/ReadVariableOp2
Cbackward_simple_rnn_1/while/simple_rnn_cell_5/MatMul/ReadVariableOpCbackward_simple_rnn_1/while/simple_rnn_cell_5/MatMul/ReadVariableOp2
Ebackward_simple_rnn_1/while/simple_rnn_cell_5/MatMul_1/ReadVariableOpEbackward_simple_rnn_1/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
°
¾
4__inference_forward_simple_rnn_1_layer_call_fn_70698

inputs
unknown:@@
	unknown_0:@
	unknown_1:@@
identity¢StatefulPartitionedCallñ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *X
fSRQ
O__inference_forward_simple_rnn_1_layer_call_and_return_conditional_losses_67598o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:e a
=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

é
L__inference_simple_rnn_cell_4_layer_call_and_return_conditional_losses_71670

inputs
states_00
matmul_readvariableop_resource:@@-
biasadd_readvariableop_resource:@2
 matmul_1_readvariableop_resource:@@
identity

identity_1¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype0o
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@d
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@G
TanhTanhadd:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@W
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Y

Identity_1IdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
"
_user_specified_name
states/0
¦
Á
5__inference_backward_simple_rnn_1_layer_call_fn_71163
inputs_0
unknown:@@
	unknown_0:@
	unknown_1:@@
identity¢StatefulPartitionedCallô
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Y
fTRR
P__inference_backward_simple_rnn_1_layer_call_and_return_conditional_losses_67475o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
"
_user_specified_name
inputs/0
Õ
¥
while_cond_67797
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_67797___redundant_placeholder03
/while_while_cond_67797___redundant_placeholder13
/while_while_cond_67797___redundant_placeholder23
/while_while_cond_67797___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :ÿÿÿÿÿÿÿÿÿ@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
:
j

6bidirectional_1_backward_simple_rnn_1_while_body_69477h
dbidirectional_1_backward_simple_rnn_1_while_bidirectional_1_backward_simple_rnn_1_while_loop_countern
jbidirectional_1_backward_simple_rnn_1_while_bidirectional_1_backward_simple_rnn_1_while_maximum_iterations;
7bidirectional_1_backward_simple_rnn_1_while_placeholder=
9bidirectional_1_backward_simple_rnn_1_while_placeholder_1=
9bidirectional_1_backward_simple_rnn_1_while_placeholder_2=
9bidirectional_1_backward_simple_rnn_1_while_placeholder_3g
cbidirectional_1_backward_simple_rnn_1_while_bidirectional_1_backward_simple_rnn_1_strided_slice_1_0¤
bidirectional_1_backward_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_bidirectional_1_backward_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor_0¨
£bidirectional_1_backward_simple_rnn_1_while_tensorarrayv2read_1_tensorlistgetitem_bidirectional_1_backward_simple_rnn_1_tensorarrayunstack_1_tensorlistfromtensor_0p
^bidirectional_1_backward_simple_rnn_1_while_simple_rnn_cell_5_matmul_readvariableop_resource_0:@@m
_bidirectional_1_backward_simple_rnn_1_while_simple_rnn_cell_5_biasadd_readvariableop_resource_0:@r
`bidirectional_1_backward_simple_rnn_1_while_simple_rnn_cell_5_matmul_1_readvariableop_resource_0:@@8
4bidirectional_1_backward_simple_rnn_1_while_identity:
6bidirectional_1_backward_simple_rnn_1_while_identity_1:
6bidirectional_1_backward_simple_rnn_1_while_identity_2:
6bidirectional_1_backward_simple_rnn_1_while_identity_3:
6bidirectional_1_backward_simple_rnn_1_while_identity_4:
6bidirectional_1_backward_simple_rnn_1_while_identity_5e
abidirectional_1_backward_simple_rnn_1_while_bidirectional_1_backward_simple_rnn_1_strided_slice_1¢
bidirectional_1_backward_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_bidirectional_1_backward_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor¦
¡bidirectional_1_backward_simple_rnn_1_while_tensorarrayv2read_1_tensorlistgetitem_bidirectional_1_backward_simple_rnn_1_tensorarrayunstack_1_tensorlistfromtensorn
\bidirectional_1_backward_simple_rnn_1_while_simple_rnn_cell_5_matmul_readvariableop_resource:@@k
]bidirectional_1_backward_simple_rnn_1_while_simple_rnn_cell_5_biasadd_readvariableop_resource:@p
^bidirectional_1_backward_simple_rnn_1_while_simple_rnn_cell_5_matmul_1_readvariableop_resource:@@¢Tbidirectional_1/backward_simple_rnn_1/while/simple_rnn_cell_5/BiasAdd/ReadVariableOp¢Sbidirectional_1/backward_simple_rnn_1/while/simple_rnn_cell_5/MatMul/ReadVariableOp¢Ubidirectional_1/backward_simple_rnn_1/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp®
]bidirectional_1/backward_simple_rnn_1/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   å
Obidirectional_1/backward_simple_rnn_1/while/TensorArrayV2Read/TensorListGetItemTensorListGetItembidirectional_1_backward_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_bidirectional_1_backward_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor_07bidirectional_1_backward_simple_rnn_1_while_placeholderfbidirectional_1/backward_simple_rnn_1/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
element_dtype0°
_bidirectional_1/backward_simple_rnn_1/while/TensorArrayV2Read_1/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   í
Qbidirectional_1/backward_simple_rnn_1/while/TensorArrayV2Read_1/TensorListGetItemTensorListGetItem£bidirectional_1_backward_simple_rnn_1_while_tensorarrayv2read_1_tensorlistgetitem_bidirectional_1_backward_simple_rnn_1_tensorarrayunstack_1_tensorlistfromtensor_07bidirectional_1_backward_simple_rnn_1_while_placeholderhbidirectional_1/backward_simple_rnn_1/while/TensorArrayV2Read_1/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0
ò
Sbidirectional_1/backward_simple_rnn_1/while/simple_rnn_cell_5/MatMul/ReadVariableOpReadVariableOp^bidirectional_1_backward_simple_rnn_1_while_simple_rnn_cell_5_matmul_readvariableop_resource_0*
_output_shapes

:@@*
dtype0µ
Dbidirectional_1/backward_simple_rnn_1/while/simple_rnn_cell_5/MatMulMatMulVbidirectional_1/backward_simple_rnn_1/while/TensorArrayV2Read/TensorListGetItem:item:0[bidirectional_1/backward_simple_rnn_1/while/simple_rnn_cell_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@ð
Tbidirectional_1/backward_simple_rnn_1/while/simple_rnn_cell_5/BiasAdd/ReadVariableOpReadVariableOp_bidirectional_1_backward_simple_rnn_1_while_simple_rnn_cell_5_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype0°
Ebidirectional_1/backward_simple_rnn_1/while/simple_rnn_cell_5/BiasAddBiasAddNbidirectional_1/backward_simple_rnn_1/while/simple_rnn_cell_5/MatMul:product:0\bidirectional_1/backward_simple_rnn_1/while/simple_rnn_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@ö
Ubidirectional_1/backward_simple_rnn_1/while/simple_rnn_cell_5/MatMul_1/ReadVariableOpReadVariableOp`bidirectional_1_backward_simple_rnn_1_while_simple_rnn_cell_5_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype0
Fbidirectional_1/backward_simple_rnn_1/while/simple_rnn_cell_5/MatMul_1MatMul9bidirectional_1_backward_simple_rnn_1_while_placeholder_3]bidirectional_1/backward_simple_rnn_1/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
Abidirectional_1/backward_simple_rnn_1/while/simple_rnn_cell_5/addAddV2Nbidirectional_1/backward_simple_rnn_1/while/simple_rnn_cell_5/BiasAdd:output:0Pbidirectional_1/backward_simple_rnn_1/while/simple_rnn_cell_5/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Ã
Bbidirectional_1/backward_simple_rnn_1/while/simple_rnn_cell_5/TanhTanhEbidirectional_1/backward_simple_rnn_1/while/simple_rnn_cell_5/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
:bidirectional_1/backward_simple_rnn_1/while/Tile/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      
0bidirectional_1/backward_simple_rnn_1/while/TileTileXbidirectional_1/backward_simple_rnn_1/while/TensorArrayV2Read_1/TensorListGetItem:item:0Cbidirectional_1/backward_simple_rnn_1/while/Tile/multiples:output:0*
T0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ°
4bidirectional_1/backward_simple_rnn_1/while/SelectV2SelectV29bidirectional_1/backward_simple_rnn_1/while/Tile:output:0Fbidirectional_1/backward_simple_rnn_1/while/simple_rnn_cell_5/Tanh:y:09bidirectional_1_backward_simple_rnn_1_while_placeholder_2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
<bidirectional_1/backward_simple_rnn_1/while/Tile_1/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      
2bidirectional_1/backward_simple_rnn_1/while/Tile_1TileXbidirectional_1/backward_simple_rnn_1/while/TensorArrayV2Read_1/TensorListGetItem:item:0Ebidirectional_1/backward_simple_rnn_1/while/Tile_1/multiples:output:0*
T0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´
6bidirectional_1/backward_simple_rnn_1/while/SelectV2_1SelectV2;bidirectional_1/backward_simple_rnn_1/while/Tile_1:output:0Fbidirectional_1/backward_simple_rnn_1/while/simple_rnn_cell_5/Tanh:y:09bidirectional_1_backward_simple_rnn_1_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Ø
Pbidirectional_1/backward_simple_rnn_1/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem9bidirectional_1_backward_simple_rnn_1_while_placeholder_17bidirectional_1_backward_simple_rnn_1_while_placeholder=bidirectional_1/backward_simple_rnn_1/while/SelectV2:output:0*
_output_shapes
: *
element_dtype0:éèÒs
1bidirectional_1/backward_simple_rnn_1/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :Î
/bidirectional_1/backward_simple_rnn_1/while/addAddV27bidirectional_1_backward_simple_rnn_1_while_placeholder:bidirectional_1/backward_simple_rnn_1/while/add/y:output:0*
T0*
_output_shapes
: u
3bidirectional_1/backward_simple_rnn_1/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :ÿ
1bidirectional_1/backward_simple_rnn_1/while/add_1AddV2dbidirectional_1_backward_simple_rnn_1_while_bidirectional_1_backward_simple_rnn_1_while_loop_counter<bidirectional_1/backward_simple_rnn_1/while/add_1/y:output:0*
T0*
_output_shapes
: Ë
4bidirectional_1/backward_simple_rnn_1/while/IdentityIdentity5bidirectional_1/backward_simple_rnn_1/while/add_1:z:01^bidirectional_1/backward_simple_rnn_1/while/NoOp*
T0*
_output_shapes
: 
6bidirectional_1/backward_simple_rnn_1/while/Identity_1Identityjbidirectional_1_backward_simple_rnn_1_while_bidirectional_1_backward_simple_rnn_1_while_maximum_iterations1^bidirectional_1/backward_simple_rnn_1/while/NoOp*
T0*
_output_shapes
: Ë
6bidirectional_1/backward_simple_rnn_1/while/Identity_2Identity3bidirectional_1/backward_simple_rnn_1/while/add:z:01^bidirectional_1/backward_simple_rnn_1/while/NoOp*
T0*
_output_shapes
: ø
6bidirectional_1/backward_simple_rnn_1/while/Identity_3Identity`bidirectional_1/backward_simple_rnn_1/while/TensorArrayV2Write/TensorListSetItem:output_handle:01^bidirectional_1/backward_simple_rnn_1/while/NoOp*
T0*
_output_shapes
: æ
6bidirectional_1/backward_simple_rnn_1/while/Identity_4Identity=bidirectional_1/backward_simple_rnn_1/while/SelectV2:output:01^bidirectional_1/backward_simple_rnn_1/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@è
6bidirectional_1/backward_simple_rnn_1/while/Identity_5Identity?bidirectional_1/backward_simple_rnn_1/while/SelectV2_1:output:01^bidirectional_1/backward_simple_rnn_1/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@÷
0bidirectional_1/backward_simple_rnn_1/while/NoOpNoOpU^bidirectional_1/backward_simple_rnn_1/while/simple_rnn_cell_5/BiasAdd/ReadVariableOpT^bidirectional_1/backward_simple_rnn_1/while/simple_rnn_cell_5/MatMul/ReadVariableOpV^bidirectional_1/backward_simple_rnn_1/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "È
abidirectional_1_backward_simple_rnn_1_while_bidirectional_1_backward_simple_rnn_1_strided_slice_1cbidirectional_1_backward_simple_rnn_1_while_bidirectional_1_backward_simple_rnn_1_strided_slice_1_0"u
4bidirectional_1_backward_simple_rnn_1_while_identity=bidirectional_1/backward_simple_rnn_1/while/Identity:output:0"y
6bidirectional_1_backward_simple_rnn_1_while_identity_1?bidirectional_1/backward_simple_rnn_1/while/Identity_1:output:0"y
6bidirectional_1_backward_simple_rnn_1_while_identity_2?bidirectional_1/backward_simple_rnn_1/while/Identity_2:output:0"y
6bidirectional_1_backward_simple_rnn_1_while_identity_3?bidirectional_1/backward_simple_rnn_1/while/Identity_3:output:0"y
6bidirectional_1_backward_simple_rnn_1_while_identity_4?bidirectional_1/backward_simple_rnn_1/while/Identity_4:output:0"y
6bidirectional_1_backward_simple_rnn_1_while_identity_5?bidirectional_1/backward_simple_rnn_1/while/Identity_5:output:0"À
]bidirectional_1_backward_simple_rnn_1_while_simple_rnn_cell_5_biasadd_readvariableop_resource_bidirectional_1_backward_simple_rnn_1_while_simple_rnn_cell_5_biasadd_readvariableop_resource_0"Â
^bidirectional_1_backward_simple_rnn_1_while_simple_rnn_cell_5_matmul_1_readvariableop_resource`bidirectional_1_backward_simple_rnn_1_while_simple_rnn_cell_5_matmul_1_readvariableop_resource_0"¾
\bidirectional_1_backward_simple_rnn_1_while_simple_rnn_cell_5_matmul_readvariableop_resource^bidirectional_1_backward_simple_rnn_1_while_simple_rnn_cell_5_matmul_readvariableop_resource_0"Ê
¡bidirectional_1_backward_simple_rnn_1_while_tensorarrayv2read_1_tensorlistgetitem_bidirectional_1_backward_simple_rnn_1_tensorarrayunstack_1_tensorlistfromtensor£bidirectional_1_backward_simple_rnn_1_while_tensorarrayv2read_1_tensorlistgetitem_bidirectional_1_backward_simple_rnn_1_tensorarrayunstack_1_tensorlistfromtensor_0"Â
bidirectional_1_backward_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_bidirectional_1_backward_simple_rnn_1_tensorarrayunstack_tensorlistfromtensorbidirectional_1_backward_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_bidirectional_1_backward_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : : 2¬
Tbidirectional_1/backward_simple_rnn_1/while/simple_rnn_cell_5/BiasAdd/ReadVariableOpTbidirectional_1/backward_simple_rnn_1/while/simple_rnn_cell_5/BiasAdd/ReadVariableOp2ª
Sbidirectional_1/backward_simple_rnn_1/while/simple_rnn_cell_5/MatMul/ReadVariableOpSbidirectional_1/backward_simple_rnn_1/while/simple_rnn_cell_5/MatMul/ReadVariableOp2®
Ubidirectional_1/backward_simple_rnn_1/while/simple_rnn_cell_5/MatMul_1/ReadVariableOpUbidirectional_1/backward_simple_rnn_1/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
²,
Ç
while_body_67798
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0J
8while_simple_rnn_cell_5_matmul_readvariableop_resource_0:@@G
9while_simple_rnn_cell_5_biasadd_readvariableop_resource_0:@L
:while_simple_rnn_cell_5_matmul_1_readvariableop_resource_0:@@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorH
6while_simple_rnn_cell_5_matmul_readvariableop_resource:@@E
7while_simple_rnn_cell_5_biasadd_readvariableop_resource:@J
8while_simple_rnn_cell_5_matmul_1_readvariableop_resource:@@¢.while/simple_rnn_cell_5/BiasAdd/ReadVariableOp¢-while/simple_rnn_cell_5/MatMul/ReadVariableOp¢/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÿÿÿÿ¯
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
element_dtype0¦
-while/simple_rnn_cell_5/MatMul/ReadVariableOpReadVariableOp8while_simple_rnn_cell_5_matmul_readvariableop_resource_0*
_output_shapes

:@@*
dtype0Ã
while/simple_rnn_cell_5/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:05while/simple_rnn_cell_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¤
.while/simple_rnn_cell_5/BiasAdd/ReadVariableOpReadVariableOp9while_simple_rnn_cell_5_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype0¾
while/simple_rnn_cell_5/BiasAddBiasAdd(while/simple_rnn_cell_5/MatMul:product:06while/simple_rnn_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@ª
/while/simple_rnn_cell_5/MatMul_1/ReadVariableOpReadVariableOp:while_simple_rnn_cell_5_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype0ª
 while/simple_rnn_cell_5/MatMul_1MatMulwhile_placeholder_27while/simple_rnn_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¬
while/simple_rnn_cell_5/addAddV2(while/simple_rnn_cell_5/BiasAdd:output:0*while/simple_rnn_cell_5/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@w
while/simple_rnn_cell_5/TanhTanhwhile/simple_rnn_cell_5/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@É
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder while/simple_rnn_cell_5/Tanh:y:0*
_output_shapes
: *
element_dtype0:éèÒM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: }
while/Identity_4Identity while/simple_rnn_cell_5/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@ß

while/NoOpNoOp/^while/simple_rnn_cell_5/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_5/MatMul/ReadVariableOp0^while/simple_rnn_cell_5/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"t
7while_simple_rnn_cell_5_biasadd_readvariableop_resource9while_simple_rnn_cell_5_biasadd_readvariableop_resource_0"v
8while_simple_rnn_cell_5_matmul_1_readvariableop_resource:while_simple_rnn_cell_5_matmul_1_readvariableop_resource_0"r
6while_simple_rnn_cell_5_matmul_readvariableop_resource8while_simple_rnn_cell_5_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ@: : : : : 2`
.while/simple_rnn_cell_5/BiasAdd/ReadVariableOp.while/simple_rnn_cell_5/BiasAdd/ReadVariableOp2^
-while/simple_rnn_cell_5/MatMul/ReadVariableOp-while/simple_rnn_cell_5/MatMul/ReadVariableOp2b
/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
: 
Á

'__inference_dense_2_layer_call_fn_70635

inputs
unknown:	@
	unknown_0:@
identity¢StatefulPartitionedCall×
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_2_layer_call_and_return_conditional_losses_68354o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Õ
¥
while_cond_70750
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_70750___redundant_placeholder03
/while_while_cond_70750___redundant_placeholder13
/while_while_cond_70750___redundant_placeholder23
/while_while_cond_70750___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :ÿÿÿÿÿÿÿÿÿ@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
:
ºÃ
È
J__inference_bidirectional_1_layer_call_and_return_conditional_losses_68710

inputs
mask
W
Eforward_simple_rnn_1_simple_rnn_cell_4_matmul_readvariableop_resource:@@T
Fforward_simple_rnn_1_simple_rnn_cell_4_biasadd_readvariableop_resource:@Y
Gforward_simple_rnn_1_simple_rnn_cell_4_matmul_1_readvariableop_resource:@@X
Fbackward_simple_rnn_1_simple_rnn_cell_5_matmul_readvariableop_resource:@@U
Gbackward_simple_rnn_1_simple_rnn_cell_5_biasadd_readvariableop_resource:@Z
Hbackward_simple_rnn_1_simple_rnn_cell_5_matmul_1_readvariableop_resource:@@
identity¢>backward_simple_rnn_1/simple_rnn_cell_5/BiasAdd/ReadVariableOp¢=backward_simple_rnn_1/simple_rnn_cell_5/MatMul/ReadVariableOp¢?backward_simple_rnn_1/simple_rnn_cell_5/MatMul_1/ReadVariableOp¢backward_simple_rnn_1/while¢=forward_simple_rnn_1/simple_rnn_cell_4/BiasAdd/ReadVariableOp¢<forward_simple_rnn_1/simple_rnn_cell_4/MatMul/ReadVariableOp¢>forward_simple_rnn_1/simple_rnn_cell_4/MatMul_1/ReadVariableOp¢forward_simple_rnn_1/whileP
forward_simple_rnn_1/ShapeShapeinputs*
T0*
_output_shapes
:r
(forward_simple_rnn_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: t
*forward_simple_rnn_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*forward_simple_rnn_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:º
"forward_simple_rnn_1/strided_sliceStridedSlice#forward_simple_rnn_1/Shape:output:01forward_simple_rnn_1/strided_slice/stack:output:03forward_simple_rnn_1/strided_slice/stack_1:output:03forward_simple_rnn_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maske
#forward_simple_rnn_1/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@²
!forward_simple_rnn_1/zeros/packedPack+forward_simple_rnn_1/strided_slice:output:0,forward_simple_rnn_1/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:e
 forward_simple_rnn_1/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    «
forward_simple_rnn_1/zerosFill*forward_simple_rnn_1/zeros/packed:output:0)forward_simple_rnn_1/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@x
#forward_simple_rnn_1/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"           
forward_simple_rnn_1/transpose	Transposeinputs,forward_simple_rnn_1/transpose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@n
forward_simple_rnn_1/Shape_1Shape"forward_simple_rnn_1/transpose:y:0*
T0*
_output_shapes
:t
*forward_simple_rnn_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,forward_simple_rnn_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,forward_simple_rnn_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ä
$forward_simple_rnn_1/strided_slice_1StridedSlice%forward_simple_rnn_1/Shape_1:output:03forward_simple_rnn_1/strided_slice_1/stack:output:05forward_simple_rnn_1/strided_slice_1/stack_1:output:05forward_simple_rnn_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
#forward_simple_rnn_1/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ 
forward_simple_rnn_1/ExpandDims
ExpandDimsmask,forward_simple_rnn_1/ExpandDims/dim:output:0*
T0
*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿz
%forward_simple_rnn_1/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Æ
 forward_simple_rnn_1/transpose_1	Transpose(forward_simple_rnn_1/ExpandDims:output:0.forward_simple_rnn_1/transpose_1/perm:output:0*
T0
*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ{
0forward_simple_rnn_1/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿó
"forward_simple_rnn_1/TensorArrayV2TensorListReserve9forward_simple_rnn_1/TensorArrayV2/element_shape:output:0-forward_simple_rnn_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
Jforward_simple_rnn_1/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   
<forward_simple_rnn_1/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor"forward_simple_rnn_1/transpose:y:0Sforward_simple_rnn_1/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒt
*forward_simple_rnn_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,forward_simple_rnn_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,forward_simple_rnn_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ò
$forward_simple_rnn_1/strided_slice_2StridedSlice"forward_simple_rnn_1/transpose:y:03forward_simple_rnn_1/strided_slice_2/stack:output:05forward_simple_rnn_1/strided_slice_2/stack_1:output:05forward_simple_rnn_1/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_maskÂ
<forward_simple_rnn_1/simple_rnn_cell_4/MatMul/ReadVariableOpReadVariableOpEforward_simple_rnn_1_simple_rnn_cell_4_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype0Þ
-forward_simple_rnn_1/simple_rnn_cell_4/MatMulMatMul-forward_simple_rnn_1/strided_slice_2:output:0Dforward_simple_rnn_1/simple_rnn_cell_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@À
=forward_simple_rnn_1/simple_rnn_cell_4/BiasAdd/ReadVariableOpReadVariableOpFforward_simple_rnn_1_simple_rnn_cell_4_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0ë
.forward_simple_rnn_1/simple_rnn_cell_4/BiasAddBiasAdd7forward_simple_rnn_1/simple_rnn_cell_4/MatMul:product:0Eforward_simple_rnn_1/simple_rnn_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Æ
>forward_simple_rnn_1/simple_rnn_cell_4/MatMul_1/ReadVariableOpReadVariableOpGforward_simple_rnn_1_simple_rnn_cell_4_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype0Ø
/forward_simple_rnn_1/simple_rnn_cell_4/MatMul_1MatMul#forward_simple_rnn_1/zeros:output:0Fforward_simple_rnn_1/simple_rnn_cell_4/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Ù
*forward_simple_rnn_1/simple_rnn_cell_4/addAddV27forward_simple_rnn_1/simple_rnn_cell_4/BiasAdd:output:09forward_simple_rnn_1/simple_rnn_cell_4/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
+forward_simple_rnn_1/simple_rnn_cell_4/TanhTanh.forward_simple_rnn_1/simple_rnn_cell_4/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
2forward_simple_rnn_1/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   ÷
$forward_simple_rnn_1/TensorArrayV2_1TensorListReserve;forward_simple_rnn_1/TensorArrayV2_1/element_shape:output:0-forward_simple_rnn_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ[
forward_simple_rnn_1/timeConst*
_output_shapes
: *
dtype0*
value	B : }
2forward_simple_rnn_1/TensorArrayV2_2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ÷
$forward_simple_rnn_1/TensorArrayV2_2TensorListReserve;forward_simple_rnn_1/TensorArrayV2_2/element_shape:output:0-forward_simple_rnn_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0
*

shape_type0:éèÈ
Lforward_simple_rnn_1/TensorArrayUnstack_1/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¥
>forward_simple_rnn_1/TensorArrayUnstack_1/TensorListFromTensorTensorListFromTensor$forward_simple_rnn_1/transpose_1:y:0Uforward_simple_rnn_1/TensorArrayUnstack_1/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0
*

shape_type0:éèÈ
forward_simple_rnn_1/zeros_like	ZerosLike/forward_simple_rnn_1/simple_rnn_cell_4/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@x
-forward_simple_rnn_1/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿi
'forward_simple_rnn_1/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 	
forward_simple_rnn_1/whileWhile0forward_simple_rnn_1/while/loop_counter:output:06forward_simple_rnn_1/while/maximum_iterations:output:0"forward_simple_rnn_1/time:output:0-forward_simple_rnn_1/TensorArrayV2_1:handle:0#forward_simple_rnn_1/zeros_like:y:0#forward_simple_rnn_1/zeros:output:0-forward_simple_rnn_1/strided_slice_1:output:0Lforward_simple_rnn_1/TensorArrayUnstack/TensorListFromTensor:output_handle:0Nforward_simple_rnn_1/TensorArrayUnstack_1/TensorListFromTensor:output_handle:0Eforward_simple_rnn_1_simple_rnn_cell_4_matmul_readvariableop_resourceFforward_simple_rnn_1_simple_rnn_cell_4_biasadd_readvariableop_resourceGforward_simple_rnn_1_simple_rnn_cell_4_matmul_1_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *1
body)R'
%forward_simple_rnn_1_while_body_68495*1
cond)R'
%forward_simple_rnn_1_while_cond_68494*M
output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : : *
parallel_iterations 
Eforward_simple_rnn_1/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   
7forward_simple_rnn_1/TensorArrayV2Stack/TensorListStackTensorListStack#forward_simple_rnn_1/while:output:3Nforward_simple_rnn_1/TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*
element_dtype0}
*forward_simple_rnn_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿv
,forward_simple_rnn_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: v
,forward_simple_rnn_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ð
$forward_simple_rnn_1/strided_slice_3StridedSlice@forward_simple_rnn_1/TensorArrayV2Stack/TensorListStack:tensor:03forward_simple_rnn_1/strided_slice_3/stack:output:05forward_simple_rnn_1/strided_slice_3/stack_1:output:05forward_simple_rnn_1/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_maskz
%forward_simple_rnn_1/transpose_2/permConst*
_output_shapes
:*
dtype0*!
valueB"          Þ
 forward_simple_rnn_1/transpose_2	Transpose@forward_simple_rnn_1/TensorArrayV2Stack/TensorListStack:tensor:0.forward_simple_rnn_1/transpose_2/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@Q
backward_simple_rnn_1/ShapeShapeinputs*
T0*
_output_shapes
:s
)backward_simple_rnn_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+backward_simple_rnn_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+backward_simple_rnn_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¿
#backward_simple_rnn_1/strided_sliceStridedSlice$backward_simple_rnn_1/Shape:output:02backward_simple_rnn_1/strided_slice/stack:output:04backward_simple_rnn_1/strided_slice/stack_1:output:04backward_simple_rnn_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
$backward_simple_rnn_1/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@µ
"backward_simple_rnn_1/zeros/packedPack,backward_simple_rnn_1/strided_slice:output:0-backward_simple_rnn_1/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:f
!backward_simple_rnn_1/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ®
backward_simple_rnn_1/zerosFill+backward_simple_rnn_1/zeros/packed:output:0*backward_simple_rnn_1/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@y
$backward_simple_rnn_1/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ¢
backward_simple_rnn_1/transpose	Transposeinputs-backward_simple_rnn_1/transpose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@p
backward_simple_rnn_1/Shape_1Shape#backward_simple_rnn_1/transpose:y:0*
T0*
_output_shapes
:u
+backward_simple_rnn_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-backward_simple_rnn_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-backward_simple_rnn_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:É
%backward_simple_rnn_1/strided_slice_1StridedSlice&backward_simple_rnn_1/Shape_1:output:04backward_simple_rnn_1/strided_slice_1/stack:output:06backward_simple_rnn_1/strided_slice_1/stack_1:output:06backward_simple_rnn_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$backward_simple_rnn_1/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ¢
 backward_simple_rnn_1/ExpandDims
ExpandDimsmask-backward_simple_rnn_1/ExpandDims/dim:output:0*
T0
*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ{
&backward_simple_rnn_1/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          É
!backward_simple_rnn_1/transpose_1	Transpose)backward_simple_rnn_1/ExpandDims:output:0/backward_simple_rnn_1/transpose_1/perm:output:0*
T0
*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ|
1backward_simple_rnn_1/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿö
#backward_simple_rnn_1/TensorArrayV2TensorListReserve:backward_simple_rnn_1/TensorArrayV2/element_shape:output:0.backward_simple_rnn_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒn
$backward_simple_rnn_1/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: ¿
backward_simple_rnn_1/ReverseV2	ReverseV2#backward_simple_rnn_1/transpose:y:0-backward_simple_rnn_1/ReverseV2/axis:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
Kbackward_simple_rnn_1/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   §
=backward_simple_rnn_1/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor(backward_simple_rnn_1/ReverseV2:output:0Tbackward_simple_rnn_1/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒu
+backward_simple_rnn_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-backward_simple_rnn_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-backward_simple_rnn_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:×
%backward_simple_rnn_1/strided_slice_2StridedSlice#backward_simple_rnn_1/transpose:y:04backward_simple_rnn_1/strided_slice_2/stack:output:06backward_simple_rnn_1/strided_slice_2/stack_1:output:06backward_simple_rnn_1/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_maskÄ
=backward_simple_rnn_1/simple_rnn_cell_5/MatMul/ReadVariableOpReadVariableOpFbackward_simple_rnn_1_simple_rnn_cell_5_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype0á
.backward_simple_rnn_1/simple_rnn_cell_5/MatMulMatMul.backward_simple_rnn_1/strided_slice_2:output:0Ebackward_simple_rnn_1/simple_rnn_cell_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Â
>backward_simple_rnn_1/simple_rnn_cell_5/BiasAdd/ReadVariableOpReadVariableOpGbackward_simple_rnn_1_simple_rnn_cell_5_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0î
/backward_simple_rnn_1/simple_rnn_cell_5/BiasAddBiasAdd8backward_simple_rnn_1/simple_rnn_cell_5/MatMul:product:0Fbackward_simple_rnn_1/simple_rnn_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@È
?backward_simple_rnn_1/simple_rnn_cell_5/MatMul_1/ReadVariableOpReadVariableOpHbackward_simple_rnn_1_simple_rnn_cell_5_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype0Û
0backward_simple_rnn_1/simple_rnn_cell_5/MatMul_1MatMul$backward_simple_rnn_1/zeros:output:0Gbackward_simple_rnn_1/simple_rnn_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Ü
+backward_simple_rnn_1/simple_rnn_cell_5/addAddV28backward_simple_rnn_1/simple_rnn_cell_5/BiasAdd:output:0:backward_simple_rnn_1/simple_rnn_cell_5/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
,backward_simple_rnn_1/simple_rnn_cell_5/TanhTanh/backward_simple_rnn_1/simple_rnn_cell_5/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
3backward_simple_rnn_1/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   ú
%backward_simple_rnn_1/TensorArrayV2_1TensorListReserve<backward_simple_rnn_1/TensorArrayV2_1/element_shape:output:0.backward_simple_rnn_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ\
backward_simple_rnn_1/timeConst*
_output_shapes
: *
dtype0*
value	B : p
&backward_simple_rnn_1/ReverseV2_1/axisConst*
_output_shapes
:*
dtype0*
valueB: Å
!backward_simple_rnn_1/ReverseV2_1	ReverseV2%backward_simple_rnn_1/transpose_1:y:0/backward_simple_rnn_1/ReverseV2_1/axis:output:0*
T0
*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ~
3backward_simple_rnn_1/TensorArrayV2_2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿú
%backward_simple_rnn_1/TensorArrayV2_2TensorListReserve<backward_simple_rnn_1/TensorArrayV2_2/element_shape:output:0.backward_simple_rnn_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0
*

shape_type0:éèÈ
Mbackward_simple_rnn_1/TensorArrayUnstack_1/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ­
?backward_simple_rnn_1/TensorArrayUnstack_1/TensorListFromTensorTensorListFromTensor*backward_simple_rnn_1/ReverseV2_1:output:0Vbackward_simple_rnn_1/TensorArrayUnstack_1/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0
*

shape_type0:éèÈ
 backward_simple_rnn_1/zeros_like	ZerosLike0backward_simple_rnn_1/simple_rnn_cell_5/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@y
.backward_simple_rnn_1/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿj
(backward_simple_rnn_1/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 	
backward_simple_rnn_1/whileWhile1backward_simple_rnn_1/while/loop_counter:output:07backward_simple_rnn_1/while/maximum_iterations:output:0#backward_simple_rnn_1/time:output:0.backward_simple_rnn_1/TensorArrayV2_1:handle:0$backward_simple_rnn_1/zeros_like:y:0$backward_simple_rnn_1/zeros:output:0.backward_simple_rnn_1/strided_slice_1:output:0Mbackward_simple_rnn_1/TensorArrayUnstack/TensorListFromTensor:output_handle:0Obackward_simple_rnn_1/TensorArrayUnstack_1/TensorListFromTensor:output_handle:0Fbackward_simple_rnn_1_simple_rnn_cell_5_matmul_readvariableop_resourceGbackward_simple_rnn_1_simple_rnn_cell_5_biasadd_readvariableop_resourceHbackward_simple_rnn_1_simple_rnn_cell_5_matmul_1_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *2
body*R(
&backward_simple_rnn_1_while_body_68627*2
cond*R(
&backward_simple_rnn_1_while_cond_68626*M
output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : : *
parallel_iterations 
Fbackward_simple_rnn_1/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   
8backward_simple_rnn_1/TensorArrayV2Stack/TensorListStackTensorListStack$backward_simple_rnn_1/while:output:3Obackward_simple_rnn_1/TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*
element_dtype0~
+backward_simple_rnn_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿw
-backward_simple_rnn_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: w
-backward_simple_rnn_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:õ
%backward_simple_rnn_1/strided_slice_3StridedSliceAbackward_simple_rnn_1/TensorArrayV2Stack/TensorListStack:tensor:04backward_simple_rnn_1/strided_slice_3/stack:output:06backward_simple_rnn_1/strided_slice_3/stack_1:output:06backward_simple_rnn_1/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_mask{
&backward_simple_rnn_1/transpose_2/permConst*
_output_shapes
:*
dtype0*!
valueB"          á
!backward_simple_rnn_1/transpose_2	TransposeAbackward_simple_rnn_1/TensorArrayV2Stack/TensorListStack:tensor:0/backward_simple_rnn_1/transpose_2/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :Ã
concatConcatV2-forward_simple_rnn_1/strided_slice_3:output:0.backward_simple_rnn_1/strided_slice_3:output:0concat/axis:output:0*
N*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_
IdentityIdentityconcat:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp?^backward_simple_rnn_1/simple_rnn_cell_5/BiasAdd/ReadVariableOp>^backward_simple_rnn_1/simple_rnn_cell_5/MatMul/ReadVariableOp@^backward_simple_rnn_1/simple_rnn_cell_5/MatMul_1/ReadVariableOp^backward_simple_rnn_1/while>^forward_simple_rnn_1/simple_rnn_cell_4/BiasAdd/ReadVariableOp=^forward_simple_rnn_1/simple_rnn_cell_4/MatMul/ReadVariableOp?^forward_simple_rnn_1/simple_rnn_cell_4/MatMul_1/ReadVariableOp^forward_simple_rnn_1/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : : : : 2
>backward_simple_rnn_1/simple_rnn_cell_5/BiasAdd/ReadVariableOp>backward_simple_rnn_1/simple_rnn_cell_5/BiasAdd/ReadVariableOp2~
=backward_simple_rnn_1/simple_rnn_cell_5/MatMul/ReadVariableOp=backward_simple_rnn_1/simple_rnn_cell_5/MatMul/ReadVariableOp2
?backward_simple_rnn_1/simple_rnn_cell_5/MatMul_1/ReadVariableOp?backward_simple_rnn_1/simple_rnn_cell_5/MatMul_1/ReadVariableOp2:
backward_simple_rnn_1/whilebackward_simple_rnn_1/while2~
=forward_simple_rnn_1/simple_rnn_cell_4/BiasAdd/ReadVariableOp=forward_simple_rnn_1/simple_rnn_cell_4/BiasAdd/ReadVariableOp2|
<forward_simple_rnn_1/simple_rnn_cell_4/MatMul/ReadVariableOp<forward_simple_rnn_1/simple_rnn_cell_4/MatMul/ReadVariableOp2
>forward_simple_rnn_1/simple_rnn_cell_4/MatMul_1/ReadVariableOp>forward_simple_rnn_1/simple_rnn_cell_4/MatMul_1/ReadVariableOp28
forward_simple_rnn_1/whileforward_simple_rnn_1/while:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs:VR
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

_user_specified_namemask
²,
Ç
while_body_71559
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0J
8while_simple_rnn_cell_5_matmul_readvariableop_resource_0:@@G
9while_simple_rnn_cell_5_biasadd_readvariableop_resource_0:@L
:while_simple_rnn_cell_5_matmul_1_readvariableop_resource_0:@@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorH
6while_simple_rnn_cell_5_matmul_readvariableop_resource:@@E
7while_simple_rnn_cell_5_biasadd_readvariableop_resource:@J
8while_simple_rnn_cell_5_matmul_1_readvariableop_resource:@@¢.while/simple_rnn_cell_5/BiasAdd/ReadVariableOp¢-while/simple_rnn_cell_5/MatMul/ReadVariableOp¢/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÿÿÿÿ¯
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
element_dtype0¦
-while/simple_rnn_cell_5/MatMul/ReadVariableOpReadVariableOp8while_simple_rnn_cell_5_matmul_readvariableop_resource_0*
_output_shapes

:@@*
dtype0Ã
while/simple_rnn_cell_5/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:05while/simple_rnn_cell_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¤
.while/simple_rnn_cell_5/BiasAdd/ReadVariableOpReadVariableOp9while_simple_rnn_cell_5_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype0¾
while/simple_rnn_cell_5/BiasAddBiasAdd(while/simple_rnn_cell_5/MatMul:product:06while/simple_rnn_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@ª
/while/simple_rnn_cell_5/MatMul_1/ReadVariableOpReadVariableOp:while_simple_rnn_cell_5_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype0ª
 while/simple_rnn_cell_5/MatMul_1MatMulwhile_placeholder_27while/simple_rnn_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¬
while/simple_rnn_cell_5/addAddV2(while/simple_rnn_cell_5/BiasAdd:output:0*while/simple_rnn_cell_5/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@w
while/simple_rnn_cell_5/TanhTanhwhile/simple_rnn_cell_5/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@É
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder while/simple_rnn_cell_5/Tanh:y:0*
_output_shapes
: *
element_dtype0:éèÒM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: }
while/Identity_4Identity while/simple_rnn_cell_5/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@ß

while/NoOpNoOp/^while/simple_rnn_cell_5/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_5/MatMul/ReadVariableOp0^while/simple_rnn_cell_5/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"t
7while_simple_rnn_cell_5_biasadd_readvariableop_resource9while_simple_rnn_cell_5_biasadd_readvariableop_resource_0"v
8while_simple_rnn_cell_5_matmul_1_readvariableop_resource:while_simple_rnn_cell_5_matmul_1_readvariableop_resource_0"r
6while_simple_rnn_cell_5_matmul_readvariableop_resource8while_simple_rnn_cell_5_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ@: : : : : 2`
.while/simple_rnn_cell_5/BiasAdd/ReadVariableOp.while/simple_rnn_cell_5/BiasAdd/ReadVariableOp2^
-while/simple_rnn_cell_5/MatMul/ReadVariableOp-while/simple_rnn_cell_5/MatMul/ReadVariableOp2b
/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
: 
@
¾
%forward_simple_rnn_1_while_body_69918F
Bforward_simple_rnn_1_while_forward_simple_rnn_1_while_loop_counterL
Hforward_simple_rnn_1_while_forward_simple_rnn_1_while_maximum_iterations*
&forward_simple_rnn_1_while_placeholder,
(forward_simple_rnn_1_while_placeholder_1,
(forward_simple_rnn_1_while_placeholder_2E
Aforward_simple_rnn_1_while_forward_simple_rnn_1_strided_slice_1_0
}forward_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_forward_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor_0_
Mforward_simple_rnn_1_while_simple_rnn_cell_4_matmul_readvariableop_resource_0:@@\
Nforward_simple_rnn_1_while_simple_rnn_cell_4_biasadd_readvariableop_resource_0:@a
Oforward_simple_rnn_1_while_simple_rnn_cell_4_matmul_1_readvariableop_resource_0:@@'
#forward_simple_rnn_1_while_identity)
%forward_simple_rnn_1_while_identity_1)
%forward_simple_rnn_1_while_identity_2)
%forward_simple_rnn_1_while_identity_3)
%forward_simple_rnn_1_while_identity_4C
?forward_simple_rnn_1_while_forward_simple_rnn_1_strided_slice_1
{forward_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_forward_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor]
Kforward_simple_rnn_1_while_simple_rnn_cell_4_matmul_readvariableop_resource:@@Z
Lforward_simple_rnn_1_while_simple_rnn_cell_4_biasadd_readvariableop_resource:@_
Mforward_simple_rnn_1_while_simple_rnn_cell_4_matmul_1_readvariableop_resource:@@¢Cforward_simple_rnn_1/while/simple_rnn_cell_4/BiasAdd/ReadVariableOp¢Bforward_simple_rnn_1/while/simple_rnn_cell_4/MatMul/ReadVariableOp¢Dforward_simple_rnn_1/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp
Lforward_simple_rnn_1/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÿÿÿÿ
>forward_simple_rnn_1/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem}forward_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_forward_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor_0&forward_simple_rnn_1_while_placeholderUforward_simple_rnn_1/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
element_dtype0Ð
Bforward_simple_rnn_1/while/simple_rnn_cell_4/MatMul/ReadVariableOpReadVariableOpMforward_simple_rnn_1_while_simple_rnn_cell_4_matmul_readvariableop_resource_0*
_output_shapes

:@@*
dtype0
3forward_simple_rnn_1/while/simple_rnn_cell_4/MatMulMatMulEforward_simple_rnn_1/while/TensorArrayV2Read/TensorListGetItem:item:0Jforward_simple_rnn_1/while/simple_rnn_cell_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Î
Cforward_simple_rnn_1/while/simple_rnn_cell_4/BiasAdd/ReadVariableOpReadVariableOpNforward_simple_rnn_1_while_simple_rnn_cell_4_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype0ý
4forward_simple_rnn_1/while/simple_rnn_cell_4/BiasAddBiasAdd=forward_simple_rnn_1/while/simple_rnn_cell_4/MatMul:product:0Kforward_simple_rnn_1/while/simple_rnn_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Ô
Dforward_simple_rnn_1/while/simple_rnn_cell_4/MatMul_1/ReadVariableOpReadVariableOpOforward_simple_rnn_1_while_simple_rnn_cell_4_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype0é
5forward_simple_rnn_1/while/simple_rnn_cell_4/MatMul_1MatMul(forward_simple_rnn_1_while_placeholder_2Lforward_simple_rnn_1/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@ë
0forward_simple_rnn_1/while/simple_rnn_cell_4/addAddV2=forward_simple_rnn_1/while/simple_rnn_cell_4/BiasAdd:output:0?forward_simple_rnn_1/while/simple_rnn_cell_4/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¡
1forward_simple_rnn_1/while/simple_rnn_cell_4/TanhTanh4forward_simple_rnn_1/while/simple_rnn_cell_4/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
?forward_simple_rnn_1/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem(forward_simple_rnn_1_while_placeholder_1&forward_simple_rnn_1_while_placeholder5forward_simple_rnn_1/while/simple_rnn_cell_4/Tanh:y:0*
_output_shapes
: *
element_dtype0:éèÒb
 forward_simple_rnn_1/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :
forward_simple_rnn_1/while/addAddV2&forward_simple_rnn_1_while_placeholder)forward_simple_rnn_1/while/add/y:output:0*
T0*
_output_shapes
: d
"forward_simple_rnn_1/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :»
 forward_simple_rnn_1/while/add_1AddV2Bforward_simple_rnn_1_while_forward_simple_rnn_1_while_loop_counter+forward_simple_rnn_1/while/add_1/y:output:0*
T0*
_output_shapes
: 
#forward_simple_rnn_1/while/IdentityIdentity$forward_simple_rnn_1/while/add_1:z:0 ^forward_simple_rnn_1/while/NoOp*
T0*
_output_shapes
: ¾
%forward_simple_rnn_1/while/Identity_1IdentityHforward_simple_rnn_1_while_forward_simple_rnn_1_while_maximum_iterations ^forward_simple_rnn_1/while/NoOp*
T0*
_output_shapes
: 
%forward_simple_rnn_1/while/Identity_2Identity"forward_simple_rnn_1/while/add:z:0 ^forward_simple_rnn_1/while/NoOp*
T0*
_output_shapes
: Å
%forward_simple_rnn_1/while/Identity_3IdentityOforward_simple_rnn_1/while/TensorArrayV2Write/TensorListSetItem:output_handle:0 ^forward_simple_rnn_1/while/NoOp*
T0*
_output_shapes
: ¼
%forward_simple_rnn_1/while/Identity_4Identity5forward_simple_rnn_1/while/simple_rnn_cell_4/Tanh:y:0 ^forward_simple_rnn_1/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@³
forward_simple_rnn_1/while/NoOpNoOpD^forward_simple_rnn_1/while/simple_rnn_cell_4/BiasAdd/ReadVariableOpC^forward_simple_rnn_1/while/simple_rnn_cell_4/MatMul/ReadVariableOpE^forward_simple_rnn_1/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
?forward_simple_rnn_1_while_forward_simple_rnn_1_strided_slice_1Aforward_simple_rnn_1_while_forward_simple_rnn_1_strided_slice_1_0"S
#forward_simple_rnn_1_while_identity,forward_simple_rnn_1/while/Identity:output:0"W
%forward_simple_rnn_1_while_identity_1.forward_simple_rnn_1/while/Identity_1:output:0"W
%forward_simple_rnn_1_while_identity_2.forward_simple_rnn_1/while/Identity_2:output:0"W
%forward_simple_rnn_1_while_identity_3.forward_simple_rnn_1/while/Identity_3:output:0"W
%forward_simple_rnn_1_while_identity_4.forward_simple_rnn_1/while/Identity_4:output:0"
Lforward_simple_rnn_1_while_simple_rnn_cell_4_biasadd_readvariableop_resourceNforward_simple_rnn_1_while_simple_rnn_cell_4_biasadd_readvariableop_resource_0" 
Mforward_simple_rnn_1_while_simple_rnn_cell_4_matmul_1_readvariableop_resourceOforward_simple_rnn_1_while_simple_rnn_cell_4_matmul_1_readvariableop_resource_0"
Kforward_simple_rnn_1_while_simple_rnn_cell_4_matmul_readvariableop_resourceMforward_simple_rnn_1_while_simple_rnn_cell_4_matmul_readvariableop_resource_0"ü
{forward_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_forward_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor}forward_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_forward_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ@: : : : : 2
Cforward_simple_rnn_1/while/simple_rnn_cell_4/BiasAdd/ReadVariableOpCforward_simple_rnn_1/while/simple_rnn_cell_4/BiasAdd/ReadVariableOp2
Bforward_simple_rnn_1/while/simple_rnn_cell_4/MatMul/ReadVariableOpBforward_simple_rnn_1/while/simple_rnn_cell_4/MatMul/ReadVariableOp2
Dforward_simple_rnn_1/while/simple_rnn_cell_4/MatMul_1/ReadVariableOpDforward_simple_rnn_1/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
: 

é
L__inference_simple_rnn_cell_5_layer_call_and_return_conditional_losses_71749

inputs
states_00
matmul_readvariableop_resource:@@-
biasadd_readvariableop_resource:@2
 matmul_1_readvariableop_resource:@@
identity

identity_1¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype0o
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@d
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@G
TanhTanhadd:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@W
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Y

Identity_1IdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
"
_user_specified_name
states/0
ý=
Â
O__inference_forward_simple_rnn_1_layer_call_and_return_conditional_losses_71033

inputsB
0simple_rnn_cell_4_matmul_readvariableop_resource:@@?
1simple_rnn_cell_4_biasadd_readvariableop_resource:@D
2simple_rnn_cell_4_matmul_1_readvariableop_resource:@@
identity¢(simple_rnn_cell_4/BiasAdd/ReadVariableOp¢'simple_rnn_cell_4/MatMul/ReadVariableOp¢)simple_rnn_cell_4/MatMul_1/ReadVariableOp¢while;
ShapeShapeinputs*
T0*
_output_shapes
:]
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
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
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
:ÿÿÿÿÿÿÿÿÿ@c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
	transpose	Transposeinputstranspose/perm:output:0*
T0*=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
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
valueB:Û
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÿÿÿÿà
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ò
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask
'simple_rnn_cell_4/MatMul/ReadVariableOpReadVariableOp0simple_rnn_cell_4_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype0
simple_rnn_cell_4/MatMulMatMulstrided_slice_2:output:0/simple_rnn_cell_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
(simple_rnn_cell_4/BiasAdd/ReadVariableOpReadVariableOp1simple_rnn_cell_4_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0¬
simple_rnn_cell_4/BiasAddBiasAdd"simple_rnn_cell_4/MatMul:product:00simple_rnn_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
)simple_rnn_cell_4/MatMul_1/ReadVariableOpReadVariableOp2simple_rnn_cell_4_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype0
simple_rnn_cell_4/MatMul_1MatMulzeros:output:01simple_rnn_cell_4/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
simple_rnn_cell_4/addAddV2"simple_rnn_cell_4/BiasAdd:output:0$simple_rnn_cell_4/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@k
simple_rnn_cell_4/TanhTanhsimple_rnn_cell_4/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ö
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:00simple_rnn_cell_4_matmul_readvariableop_resource1simple_rnn_cell_4_biasadd_readvariableop_resource2simple_rnn_cell_4_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ@: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_70967*
condR
while_cond_70966*8
output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ@: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   Ë
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Ï
NoOpNoOp)^simple_rnn_cell_4/BiasAdd/ReadVariableOp(^simple_rnn_cell_4/MatMul/ReadVariableOp*^simple_rnn_cell_4/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2T
(simple_rnn_cell_4/BiasAdd/ReadVariableOp(simple_rnn_cell_4/BiasAdd/ReadVariableOp2R
'simple_rnn_cell_4/MatMul/ReadVariableOp'simple_rnn_cell_4/MatMul/ReadVariableOp2V
)simple_rnn_cell_4/MatMul_1/ReadVariableOp)simple_rnn_cell_4/MatMul_1/ReadVariableOp2
whilewhile:e a
=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
À?
Å
P__inference_backward_simple_rnn_1_layer_call_and_return_conditional_losses_71295
inputs_0B
0simple_rnn_cell_5_matmul_readvariableop_resource:@@?
1simple_rnn_cell_5_biasadd_readvariableop_resource:@D
2simple_rnn_cell_5_matmul_1_readvariableop_resource:@@
identity¢(simple_rnn_cell_5/BiasAdd/ReadVariableOp¢'simple_rnn_cell_5/MatMul/ReadVariableOp¢)simple_rnn_cell_5/MatMul_1/ReadVariableOp¢while=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
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
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
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
:ÿÿÿÿÿÿÿÿÿ@c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
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
valueB:Û
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒX
ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: }
	ReverseV2	ReverseV2transpose:y:0ReverseV2/axis:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   å
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensorReverseV2:output:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_mask
'simple_rnn_cell_5/MatMul/ReadVariableOpReadVariableOp0simple_rnn_cell_5_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype0
simple_rnn_cell_5/MatMulMatMulstrided_slice_2:output:0/simple_rnn_cell_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
(simple_rnn_cell_5/BiasAdd/ReadVariableOpReadVariableOp1simple_rnn_cell_5_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0¬
simple_rnn_cell_5/BiasAddBiasAdd"simple_rnn_cell_5/MatMul:product:00simple_rnn_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
)simple_rnn_cell_5/MatMul_1/ReadVariableOpReadVariableOp2simple_rnn_cell_5_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype0
simple_rnn_cell_5/MatMul_1MatMulzeros:output:01simple_rnn_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
simple_rnn_cell_5/addAddV2"simple_rnn_cell_5/BiasAdd:output:0$simple_rnn_cell_5/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@k
simple_rnn_cell_5/TanhTanhsimple_rnn_cell_5/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ö
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:00simple_rnn_cell_5_matmul_readvariableop_resource1simple_rnn_cell_5_biasadd_readvariableop_resource2simple_rnn_cell_5_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ@: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_71229*
condR
while_cond_71228*8
output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ@: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   Ë
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Ï
NoOpNoOp)^simple_rnn_cell_5/BiasAdd/ReadVariableOp(^simple_rnn_cell_5/MatMul/ReadVariableOp*^simple_rnn_cell_5/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@: : : 2T
(simple_rnn_cell_5/BiasAdd/ReadVariableOp(simple_rnn_cell_5/BiasAdd/ReadVariableOp2R
'simple_rnn_cell_5/MatMul/ReadVariableOp'simple_rnn_cell_5/MatMul/ReadVariableOp2V
)simple_rnn_cell_5/MatMul_1/ReadVariableOp)simple_rnn_cell_5/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
"
_user_specified_name
inputs/0
ª
Ö
G__inference_sequential_1_layer_call_and_return_conditional_losses_69286

inputs5
"embedding_1_embedding_lookup_69003:	© @g
Ubidirectional_1_forward_simple_rnn_1_simple_rnn_cell_4_matmul_readvariableop_resource:@@d
Vbidirectional_1_forward_simple_rnn_1_simple_rnn_cell_4_biasadd_readvariableop_resource:@i
Wbidirectional_1_forward_simple_rnn_1_simple_rnn_cell_4_matmul_1_readvariableop_resource:@@h
Vbidirectional_1_backward_simple_rnn_1_simple_rnn_cell_5_matmul_readvariableop_resource:@@e
Wbidirectional_1_backward_simple_rnn_1_simple_rnn_cell_5_biasadd_readvariableop_resource:@j
Xbidirectional_1_backward_simple_rnn_1_simple_rnn_cell_5_matmul_1_readvariableop_resource:@@9
&dense_2_matmul_readvariableop_resource:	@5
'dense_2_biasadd_readvariableop_resource:@8
&dense_3_matmul_readvariableop_resource:@5
'dense_3_biasadd_readvariableop_resource:
identity¢Nbidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/BiasAdd/ReadVariableOp¢Mbidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/MatMul/ReadVariableOp¢Obidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/MatMul_1/ReadVariableOp¢+bidirectional_1/backward_simple_rnn_1/while¢Mbidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/BiasAdd/ReadVariableOp¢Lbidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/MatMul/ReadVariableOp¢Nbidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/MatMul_1/ReadVariableOp¢*bidirectional_1/forward_simple_rnn_1/while¢dense_2/BiasAdd/ReadVariableOp¢dense_2/MatMul/ReadVariableOp¢dense_3/BiasAdd/ReadVariableOp¢dense_3/MatMul/ReadVariableOp¢embedding_1/embedding_lookupj
embedding_1/CastCastinputs*

DstT0*

SrcT0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿò
embedding_1/embedding_lookupResourceGather"embedding_1_embedding_lookup_69003embedding_1/Cast:y:0*
Tindices0*5
_class+
)'loc:@embedding_1/embedding_lookup/69003*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*
dtype0Î
%embedding_1/embedding_lookup/IdentityIdentity%embedding_1/embedding_lookup:output:0*
T0*5
_class+
)'loc:@embedding_1/embedding_lookup/69003*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@¢
'embedding_1/embedding_lookup/Identity_1Identity.embedding_1/embedding_lookup/Identity:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@[
embedding_1/NotEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
embedding_1/NotEqualNotEqualinputsembedding_1/NotEqual/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
*bidirectional_1/forward_simple_rnn_1/ShapeShape0embedding_1/embedding_lookup/Identity_1:output:0*
T0*
_output_shapes
:
8bidirectional_1/forward_simple_rnn_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
:bidirectional_1/forward_simple_rnn_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
:bidirectional_1/forward_simple_rnn_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
2bidirectional_1/forward_simple_rnn_1/strided_sliceStridedSlice3bidirectional_1/forward_simple_rnn_1/Shape:output:0Abidirectional_1/forward_simple_rnn_1/strided_slice/stack:output:0Cbidirectional_1/forward_simple_rnn_1/strided_slice/stack_1:output:0Cbidirectional_1/forward_simple_rnn_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masku
3bidirectional_1/forward_simple_rnn_1/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@â
1bidirectional_1/forward_simple_rnn_1/zeros/packedPack;bidirectional_1/forward_simple_rnn_1/strided_slice:output:0<bidirectional_1/forward_simple_rnn_1/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:u
0bidirectional_1/forward_simple_rnn_1/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Û
*bidirectional_1/forward_simple_rnn_1/zerosFill:bidirectional_1/forward_simple_rnn_1/zeros/packed:output:09bidirectional_1/forward_simple_rnn_1/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
3bidirectional_1/forward_simple_rnn_1/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ê
.bidirectional_1/forward_simple_rnn_1/transpose	Transpose0embedding_1/embedding_lookup/Identity_1:output:0<bidirectional_1/forward_simple_rnn_1/transpose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
,bidirectional_1/forward_simple_rnn_1/Shape_1Shape2bidirectional_1/forward_simple_rnn_1/transpose:y:0*
T0*
_output_shapes
:
:bidirectional_1/forward_simple_rnn_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 
<bidirectional_1/forward_simple_rnn_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
<bidirectional_1/forward_simple_rnn_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
4bidirectional_1/forward_simple_rnn_1/strided_slice_1StridedSlice5bidirectional_1/forward_simple_rnn_1/Shape_1:output:0Cbidirectional_1/forward_simple_rnn_1/strided_slice_1/stack:output:0Ebidirectional_1/forward_simple_rnn_1/strided_slice_1/stack_1:output:0Ebidirectional_1/forward_simple_rnn_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3bidirectional_1/forward_simple_rnn_1/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿÔ
/bidirectional_1/forward_simple_rnn_1/ExpandDims
ExpandDimsembedding_1/NotEqual:z:0<bidirectional_1/forward_simple_rnn_1/ExpandDims/dim:output:0*
T0
*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
5bidirectional_1/forward_simple_rnn_1/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ö
0bidirectional_1/forward_simple_rnn_1/transpose_1	Transpose8bidirectional_1/forward_simple_rnn_1/ExpandDims:output:0>bidirectional_1/forward_simple_rnn_1/transpose_1/perm:output:0*
T0
*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
@bidirectional_1/forward_simple_rnn_1/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ£
2bidirectional_1/forward_simple_rnn_1/TensorArrayV2TensorListReserveIbidirectional_1/forward_simple_rnn_1/TensorArrayV2/element_shape:output:0=bidirectional_1/forward_simple_rnn_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ«
Zbidirectional_1/forward_simple_rnn_1/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   Ï
Lbidirectional_1/forward_simple_rnn_1/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor2bidirectional_1/forward_simple_rnn_1/transpose:y:0cbidirectional_1/forward_simple_rnn_1/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
:bidirectional_1/forward_simple_rnn_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 
<bidirectional_1/forward_simple_rnn_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
<bidirectional_1/forward_simple_rnn_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¢
4bidirectional_1/forward_simple_rnn_1/strided_slice_2StridedSlice2bidirectional_1/forward_simple_rnn_1/transpose:y:0Cbidirectional_1/forward_simple_rnn_1/strided_slice_2/stack:output:0Ebidirectional_1/forward_simple_rnn_1/strided_slice_2/stack_1:output:0Ebidirectional_1/forward_simple_rnn_1/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_maskâ
Lbidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/MatMul/ReadVariableOpReadVariableOpUbidirectional_1_forward_simple_rnn_1_simple_rnn_cell_4_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype0
=bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/MatMulMatMul=bidirectional_1/forward_simple_rnn_1/strided_slice_2:output:0Tbidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@à
Mbidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/BiasAdd/ReadVariableOpReadVariableOpVbidirectional_1_forward_simple_rnn_1_simple_rnn_cell_4_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
>bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/BiasAddBiasAddGbidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/MatMul:product:0Ubidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@æ
Nbidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/MatMul_1/ReadVariableOpReadVariableOpWbidirectional_1_forward_simple_rnn_1_simple_rnn_cell_4_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype0
?bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/MatMul_1MatMul3bidirectional_1/forward_simple_rnn_1/zeros:output:0Vbidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
:bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/addAddV2Gbidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/BiasAdd:output:0Ibidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@µ
;bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/TanhTanh>bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
Bbidirectional_1/forward_simple_rnn_1/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   §
4bidirectional_1/forward_simple_rnn_1/TensorArrayV2_1TensorListReserveKbidirectional_1/forward_simple_rnn_1/TensorArrayV2_1/element_shape:output:0=bidirectional_1/forward_simple_rnn_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒk
)bidirectional_1/forward_simple_rnn_1/timeConst*
_output_shapes
: *
dtype0*
value	B : 
Bbidirectional_1/forward_simple_rnn_1/TensorArrayV2_2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ§
4bidirectional_1/forward_simple_rnn_1/TensorArrayV2_2TensorListReserveKbidirectional_1/forward_simple_rnn_1/TensorArrayV2_2/element_shape:output:0=bidirectional_1/forward_simple_rnn_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0
*

shape_type0:éèÈ­
\bidirectional_1/forward_simple_rnn_1/TensorArrayUnstack_1/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   Õ
Nbidirectional_1/forward_simple_rnn_1/TensorArrayUnstack_1/TensorListFromTensorTensorListFromTensor4bidirectional_1/forward_simple_rnn_1/transpose_1:y:0ebidirectional_1/forward_simple_rnn_1/TensorArrayUnstack_1/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0
*

shape_type0:éèÈ¯
/bidirectional_1/forward_simple_rnn_1/zeros_like	ZerosLike?bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
=bidirectional_1/forward_simple_rnn_1/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿy
7bidirectional_1/forward_simple_rnn_1/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ø

*bidirectional_1/forward_simple_rnn_1/whileWhile@bidirectional_1/forward_simple_rnn_1/while/loop_counter:output:0Fbidirectional_1/forward_simple_rnn_1/while/maximum_iterations:output:02bidirectional_1/forward_simple_rnn_1/time:output:0=bidirectional_1/forward_simple_rnn_1/TensorArrayV2_1:handle:03bidirectional_1/forward_simple_rnn_1/zeros_like:y:03bidirectional_1/forward_simple_rnn_1/zeros:output:0=bidirectional_1/forward_simple_rnn_1/strided_slice_1:output:0\bidirectional_1/forward_simple_rnn_1/TensorArrayUnstack/TensorListFromTensor:output_handle:0^bidirectional_1/forward_simple_rnn_1/TensorArrayUnstack_1/TensorListFromTensor:output_handle:0Ubidirectional_1_forward_simple_rnn_1_simple_rnn_cell_4_matmul_readvariableop_resourceVbidirectional_1_forward_simple_rnn_1_simple_rnn_cell_4_biasadd_readvariableop_resourceWbidirectional_1_forward_simple_rnn_1_simple_rnn_cell_4_matmul_1_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *A
body9R7
5bidirectional_1_forward_simple_rnn_1_while_body_69058*A
cond9R7
5bidirectional_1_forward_simple_rnn_1_while_cond_69057*M
output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : : *
parallel_iterations ¦
Ubidirectional_1/forward_simple_rnn_1/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   º
Gbidirectional_1/forward_simple_rnn_1/TensorArrayV2Stack/TensorListStackTensorListStack3bidirectional_1/forward_simple_rnn_1/while:output:3^bidirectional_1/forward_simple_rnn_1/TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*
element_dtype0
:bidirectional_1/forward_simple_rnn_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ
<bidirectional_1/forward_simple_rnn_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 
<bidirectional_1/forward_simple_rnn_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:À
4bidirectional_1/forward_simple_rnn_1/strided_slice_3StridedSlicePbidirectional_1/forward_simple_rnn_1/TensorArrayV2Stack/TensorListStack:tensor:0Cbidirectional_1/forward_simple_rnn_1/strided_slice_3/stack:output:0Ebidirectional_1/forward_simple_rnn_1/strided_slice_3/stack_1:output:0Ebidirectional_1/forward_simple_rnn_1/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_mask
5bidirectional_1/forward_simple_rnn_1/transpose_2/permConst*
_output_shapes
:*
dtype0*!
valueB"          
0bidirectional_1/forward_simple_rnn_1/transpose_2	TransposePbidirectional_1/forward_simple_rnn_1/TensorArrayV2Stack/TensorListStack:tensor:0>bidirectional_1/forward_simple_rnn_1/transpose_2/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
+bidirectional_1/backward_simple_rnn_1/ShapeShape0embedding_1/embedding_lookup/Identity_1:output:0*
T0*
_output_shapes
:
9bidirectional_1/backward_simple_rnn_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
;bidirectional_1/backward_simple_rnn_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
;bidirectional_1/backward_simple_rnn_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
3bidirectional_1/backward_simple_rnn_1/strided_sliceStridedSlice4bidirectional_1/backward_simple_rnn_1/Shape:output:0Bbidirectional_1/backward_simple_rnn_1/strided_slice/stack:output:0Dbidirectional_1/backward_simple_rnn_1/strided_slice/stack_1:output:0Dbidirectional_1/backward_simple_rnn_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskv
4bidirectional_1/backward_simple_rnn_1/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@å
2bidirectional_1/backward_simple_rnn_1/zeros/packedPack<bidirectional_1/backward_simple_rnn_1/strided_slice:output:0=bidirectional_1/backward_simple_rnn_1/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:v
1bidirectional_1/backward_simple_rnn_1/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Þ
+bidirectional_1/backward_simple_rnn_1/zerosFill;bidirectional_1/backward_simple_rnn_1/zeros/packed:output:0:bidirectional_1/backward_simple_rnn_1/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
4bidirectional_1/backward_simple_rnn_1/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ì
/bidirectional_1/backward_simple_rnn_1/transpose	Transpose0embedding_1/embedding_lookup/Identity_1:output:0=bidirectional_1/backward_simple_rnn_1/transpose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
-bidirectional_1/backward_simple_rnn_1/Shape_1Shape3bidirectional_1/backward_simple_rnn_1/transpose:y:0*
T0*
_output_shapes
:
;bidirectional_1/backward_simple_rnn_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 
=bidirectional_1/backward_simple_rnn_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
=bidirectional_1/backward_simple_rnn_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
5bidirectional_1/backward_simple_rnn_1/strided_slice_1StridedSlice6bidirectional_1/backward_simple_rnn_1/Shape_1:output:0Dbidirectional_1/backward_simple_rnn_1/strided_slice_1/stack:output:0Fbidirectional_1/backward_simple_rnn_1/strided_slice_1/stack_1:output:0Fbidirectional_1/backward_simple_rnn_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
4bidirectional_1/backward_simple_rnn_1/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿÖ
0bidirectional_1/backward_simple_rnn_1/ExpandDims
ExpandDimsembedding_1/NotEqual:z:0=bidirectional_1/backward_simple_rnn_1/ExpandDims/dim:output:0*
T0
*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
6bidirectional_1/backward_simple_rnn_1/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ù
1bidirectional_1/backward_simple_rnn_1/transpose_1	Transpose9bidirectional_1/backward_simple_rnn_1/ExpandDims:output:0?bidirectional_1/backward_simple_rnn_1/transpose_1/perm:output:0*
T0
*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
Abidirectional_1/backward_simple_rnn_1/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ¦
3bidirectional_1/backward_simple_rnn_1/TensorArrayV2TensorListReserveJbidirectional_1/backward_simple_rnn_1/TensorArrayV2/element_shape:output:0>bidirectional_1/backward_simple_rnn_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ~
4bidirectional_1/backward_simple_rnn_1/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: ï
/bidirectional_1/backward_simple_rnn_1/ReverseV2	ReverseV23bidirectional_1/backward_simple_rnn_1/transpose:y:0=bidirectional_1/backward_simple_rnn_1/ReverseV2/axis:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@¬
[bidirectional_1/backward_simple_rnn_1/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   ×
Mbidirectional_1/backward_simple_rnn_1/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor8bidirectional_1/backward_simple_rnn_1/ReverseV2:output:0dbidirectional_1/backward_simple_rnn_1/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
;bidirectional_1/backward_simple_rnn_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 
=bidirectional_1/backward_simple_rnn_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
=bidirectional_1/backward_simple_rnn_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:§
5bidirectional_1/backward_simple_rnn_1/strided_slice_2StridedSlice3bidirectional_1/backward_simple_rnn_1/transpose:y:0Dbidirectional_1/backward_simple_rnn_1/strided_slice_2/stack:output:0Fbidirectional_1/backward_simple_rnn_1/strided_slice_2/stack_1:output:0Fbidirectional_1/backward_simple_rnn_1/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_maskä
Mbidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/MatMul/ReadVariableOpReadVariableOpVbidirectional_1_backward_simple_rnn_1_simple_rnn_cell_5_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype0
>bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/MatMulMatMul>bidirectional_1/backward_simple_rnn_1/strided_slice_2:output:0Ubidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@â
Nbidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/BiasAdd/ReadVariableOpReadVariableOpWbidirectional_1_backward_simple_rnn_1_simple_rnn_cell_5_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
?bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/BiasAddBiasAddHbidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/MatMul:product:0Vbidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@è
Obidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/MatMul_1/ReadVariableOpReadVariableOpXbidirectional_1_backward_simple_rnn_1_simple_rnn_cell_5_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype0
@bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/MatMul_1MatMul4bidirectional_1/backward_simple_rnn_1/zeros:output:0Wbidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
;bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/addAddV2Hbidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/BiasAdd:output:0Jbidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@·
<bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/TanhTanh?bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
Cbidirectional_1/backward_simple_rnn_1/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   ª
5bidirectional_1/backward_simple_rnn_1/TensorArrayV2_1TensorListReserveLbidirectional_1/backward_simple_rnn_1/TensorArrayV2_1/element_shape:output:0>bidirectional_1/backward_simple_rnn_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒl
*bidirectional_1/backward_simple_rnn_1/timeConst*
_output_shapes
: *
dtype0*
value	B : 
6bidirectional_1/backward_simple_rnn_1/ReverseV2_1/axisConst*
_output_shapes
:*
dtype0*
valueB: õ
1bidirectional_1/backward_simple_rnn_1/ReverseV2_1	ReverseV25bidirectional_1/backward_simple_rnn_1/transpose_1:y:0?bidirectional_1/backward_simple_rnn_1/ReverseV2_1/axis:output:0*
T0
*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
Cbidirectional_1/backward_simple_rnn_1/TensorArrayV2_2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿª
5bidirectional_1/backward_simple_rnn_1/TensorArrayV2_2TensorListReserveLbidirectional_1/backward_simple_rnn_1/TensorArrayV2_2/element_shape:output:0>bidirectional_1/backward_simple_rnn_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0
*

shape_type0:éèÈ®
]bidirectional_1/backward_simple_rnn_1/TensorArrayUnstack_1/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   Ý
Obidirectional_1/backward_simple_rnn_1/TensorArrayUnstack_1/TensorListFromTensorTensorListFromTensor:bidirectional_1/backward_simple_rnn_1/ReverseV2_1:output:0fbidirectional_1/backward_simple_rnn_1/TensorArrayUnstack_1/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0
*

shape_type0:éèÈ±
0bidirectional_1/backward_simple_rnn_1/zeros_like	ZerosLike@bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
>bidirectional_1/backward_simple_rnn_1/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿz
8bidirectional_1/backward_simple_rnn_1/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
+bidirectional_1/backward_simple_rnn_1/whileWhileAbidirectional_1/backward_simple_rnn_1/while/loop_counter:output:0Gbidirectional_1/backward_simple_rnn_1/while/maximum_iterations:output:03bidirectional_1/backward_simple_rnn_1/time:output:0>bidirectional_1/backward_simple_rnn_1/TensorArrayV2_1:handle:04bidirectional_1/backward_simple_rnn_1/zeros_like:y:04bidirectional_1/backward_simple_rnn_1/zeros:output:0>bidirectional_1/backward_simple_rnn_1/strided_slice_1:output:0]bidirectional_1/backward_simple_rnn_1/TensorArrayUnstack/TensorListFromTensor:output_handle:0_bidirectional_1/backward_simple_rnn_1/TensorArrayUnstack_1/TensorListFromTensor:output_handle:0Vbidirectional_1_backward_simple_rnn_1_simple_rnn_cell_5_matmul_readvariableop_resourceWbidirectional_1_backward_simple_rnn_1_simple_rnn_cell_5_biasadd_readvariableop_resourceXbidirectional_1_backward_simple_rnn_1_simple_rnn_cell_5_matmul_1_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *B
body:R8
6bidirectional_1_backward_simple_rnn_1_while_body_69190*B
cond:R8
6bidirectional_1_backward_simple_rnn_1_while_cond_69189*M
output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : : *
parallel_iterations §
Vbidirectional_1/backward_simple_rnn_1/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   ½
Hbidirectional_1/backward_simple_rnn_1/TensorArrayV2Stack/TensorListStackTensorListStack4bidirectional_1/backward_simple_rnn_1/while:output:3_bidirectional_1/backward_simple_rnn_1/TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*
element_dtype0
;bidirectional_1/backward_simple_rnn_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ
=bidirectional_1/backward_simple_rnn_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 
=bidirectional_1/backward_simple_rnn_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Å
5bidirectional_1/backward_simple_rnn_1/strided_slice_3StridedSliceQbidirectional_1/backward_simple_rnn_1/TensorArrayV2Stack/TensorListStack:tensor:0Dbidirectional_1/backward_simple_rnn_1/strided_slice_3/stack:output:0Fbidirectional_1/backward_simple_rnn_1/strided_slice_3/stack_1:output:0Fbidirectional_1/backward_simple_rnn_1/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_mask
6bidirectional_1/backward_simple_rnn_1/transpose_2/permConst*
_output_shapes
:*
dtype0*!
valueB"          
1bidirectional_1/backward_simple_rnn_1/transpose_2	TransposeQbidirectional_1/backward_simple_rnn_1/TensorArrayV2Stack/TensorListStack:tensor:0?bidirectional_1/backward_simple_rnn_1/transpose_2/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@]
bidirectional_1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :
bidirectional_1/concatConcatV2=bidirectional_1/forward_simple_rnn_1/strided_slice_3:output:0>bidirectional_1/backward_simple_rnn_1/strided_slice_3:output:0$bidirectional_1/concat/axis:output:0*
N*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes
:	@*
dtype0
dense_2/MatMulMatMulbidirectional_1/concat:output:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@`
dense_2/ReluReludense_2/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
dense_3/MatMul/ReadVariableOpReadVariableOp&dense_3_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0
dense_3/MatMulMatMuldense_2/Relu:activations:0%dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_3/BiasAddBiasAdddense_3/MatMul:product:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿg
IdentityIdentitydense_3/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¥
NoOpNoOpO^bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/BiasAdd/ReadVariableOpN^bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/MatMul/ReadVariableOpP^bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/MatMul_1/ReadVariableOp,^bidirectional_1/backward_simple_rnn_1/whileN^bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/BiasAdd/ReadVariableOpM^bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/MatMul/ReadVariableOpO^bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/MatMul_1/ReadVariableOp+^bidirectional_1/forward_simple_rnn_1/while^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp^embedding_1/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : 2 
Nbidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/BiasAdd/ReadVariableOpNbidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/BiasAdd/ReadVariableOp2
Mbidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/MatMul/ReadVariableOpMbidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/MatMul/ReadVariableOp2¢
Obidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/MatMul_1/ReadVariableOpObidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/MatMul_1/ReadVariableOp2Z
+bidirectional_1/backward_simple_rnn_1/while+bidirectional_1/backward_simple_rnn_1/while2
Mbidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/BiasAdd/ReadVariableOpMbidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/BiasAdd/ReadVariableOp2
Lbidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/MatMul/ReadVariableOpLbidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/MatMul/ReadVariableOp2 
Nbidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/MatMul_1/ReadVariableOpNbidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/MatMul_1/ReadVariableOp2X
*bidirectional_1/forward_simple_rnn_1/while*bidirectional_1/forward_simple_rnn_1/while2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2>
dense_3/MatMul/ReadVariableOpdense_3/MatMul/ReadVariableOp2<
embedding_1/embedding_lookupembedding_1/embedding_lookup:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
á
¡

5bidirectional_1_forward_simple_rnn_1_while_cond_69057f
bbidirectional_1_forward_simple_rnn_1_while_bidirectional_1_forward_simple_rnn_1_while_loop_counterl
hbidirectional_1_forward_simple_rnn_1_while_bidirectional_1_forward_simple_rnn_1_while_maximum_iterations:
6bidirectional_1_forward_simple_rnn_1_while_placeholder<
8bidirectional_1_forward_simple_rnn_1_while_placeholder_1<
8bidirectional_1_forward_simple_rnn_1_while_placeholder_2<
8bidirectional_1_forward_simple_rnn_1_while_placeholder_3h
dbidirectional_1_forward_simple_rnn_1_while_less_bidirectional_1_forward_simple_rnn_1_strided_slice_1}
ybidirectional_1_forward_simple_rnn_1_while_bidirectional_1_forward_simple_rnn_1_while_cond_69057___redundant_placeholder0}
ybidirectional_1_forward_simple_rnn_1_while_bidirectional_1_forward_simple_rnn_1_while_cond_69057___redundant_placeholder1}
ybidirectional_1_forward_simple_rnn_1_while_bidirectional_1_forward_simple_rnn_1_while_cond_69057___redundant_placeholder2}
ybidirectional_1_forward_simple_rnn_1_while_bidirectional_1_forward_simple_rnn_1_while_cond_69057___redundant_placeholder3}
ybidirectional_1_forward_simple_rnn_1_while_bidirectional_1_forward_simple_rnn_1_while_cond_69057___redundant_placeholder47
3bidirectional_1_forward_simple_rnn_1_while_identity
ö
/bidirectional_1/forward_simple_rnn_1/while/LessLess6bidirectional_1_forward_simple_rnn_1_while_placeholderdbidirectional_1_forward_simple_rnn_1_while_less_bidirectional_1_forward_simple_rnn_1_strided_slice_1*
T0*
_output_shapes
: 
3bidirectional_1/forward_simple_rnn_1/while/IdentityIdentity3bidirectional_1/forward_simple_rnn_1/while/Less:z:0*
T0
*
_output_shapes
: "s
3bidirectional_1_forward_simple_rnn_1_while_identity<bidirectional_1/forward_simple_rnn_1/while/Identity:output:0*(
_construction_contextkEagerRuntime*W
_input_shapesF
D: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: :::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
::

_output_shapes
:
ä³
¸ 
!__inference__traced_restore_72034
file_prefix:
'assignvariableop_embedding_1_embeddings:	© @4
!assignvariableop_1_dense_2_kernel:	@-
assignvariableop_2_dense_2_bias:@3
!assignvariableop_3_dense_3_kernel:@-
assignvariableop_4_dense_3_bias:&
assignvariableop_5_adam_iter:	 (
assignvariableop_6_adam_beta_1: (
assignvariableop_7_adam_beta_2: '
assignvariableop_8_adam_decay: /
%assignvariableop_9_adam_learning_rate: c
Qassignvariableop_10_bidirectional_1_forward_simple_rnn_1_simple_rnn_cell_4_kernel:@@m
[assignvariableop_11_bidirectional_1_forward_simple_rnn_1_simple_rnn_cell_4_recurrent_kernel:@@]
Oassignvariableop_12_bidirectional_1_forward_simple_rnn_1_simple_rnn_cell_4_bias:@d
Rassignvariableop_13_bidirectional_1_backward_simple_rnn_1_simple_rnn_cell_5_kernel:@@n
\assignvariableop_14_bidirectional_1_backward_simple_rnn_1_simple_rnn_cell_5_recurrent_kernel:@@^
Passignvariableop_15_bidirectional_1_backward_simple_rnn_1_simple_rnn_cell_5_bias:@#
assignvariableop_16_total: #
assignvariableop_17_count: %
assignvariableop_18_total_1: %
assignvariableop_19_count_1: D
1assignvariableop_20_adam_embedding_1_embeddings_m:	© @<
)assignvariableop_21_adam_dense_2_kernel_m:	@5
'assignvariableop_22_adam_dense_2_bias_m:@;
)assignvariableop_23_adam_dense_3_kernel_m:@5
'assignvariableop_24_adam_dense_3_bias_m:j
Xassignvariableop_25_adam_bidirectional_1_forward_simple_rnn_1_simple_rnn_cell_4_kernel_m:@@t
bassignvariableop_26_adam_bidirectional_1_forward_simple_rnn_1_simple_rnn_cell_4_recurrent_kernel_m:@@d
Vassignvariableop_27_adam_bidirectional_1_forward_simple_rnn_1_simple_rnn_cell_4_bias_m:@k
Yassignvariableop_28_adam_bidirectional_1_backward_simple_rnn_1_simple_rnn_cell_5_kernel_m:@@u
cassignvariableop_29_adam_bidirectional_1_backward_simple_rnn_1_simple_rnn_cell_5_recurrent_kernel_m:@@e
Wassignvariableop_30_adam_bidirectional_1_backward_simple_rnn_1_simple_rnn_cell_5_bias_m:@D
1assignvariableop_31_adam_embedding_1_embeddings_v:	© @<
)assignvariableop_32_adam_dense_2_kernel_v:	@5
'assignvariableop_33_adam_dense_2_bias_v:@;
)assignvariableop_34_adam_dense_3_kernel_v:@5
'assignvariableop_35_adam_dense_3_bias_v:j
Xassignvariableop_36_adam_bidirectional_1_forward_simple_rnn_1_simple_rnn_cell_4_kernel_v:@@t
bassignvariableop_37_adam_bidirectional_1_forward_simple_rnn_1_simple_rnn_cell_4_recurrent_kernel_v:@@d
Vassignvariableop_38_adam_bidirectional_1_forward_simple_rnn_1_simple_rnn_cell_4_bias_v:@k
Yassignvariableop_39_adam_bidirectional_1_backward_simple_rnn_1_simple_rnn_cell_5_kernel_v:@@u
cassignvariableop_40_adam_bidirectional_1_backward_simple_rnn_1_simple_rnn_cell_5_recurrent_kernel_v:@@e
Wassignvariableop_41_adam_bidirectional_1_backward_simple_rnn_1_simple_rnn_cell_5_bias_v:@
identity_43¢AssignVariableOp¢AssignVariableOp_1¢AssignVariableOp_10¢AssignVariableOp_11¢AssignVariableOp_12¢AssignVariableOp_13¢AssignVariableOp_14¢AssignVariableOp_15¢AssignVariableOp_16¢AssignVariableOp_17¢AssignVariableOp_18¢AssignVariableOp_19¢AssignVariableOp_2¢AssignVariableOp_20¢AssignVariableOp_21¢AssignVariableOp_22¢AssignVariableOp_23¢AssignVariableOp_24¢AssignVariableOp_25¢AssignVariableOp_26¢AssignVariableOp_27¢AssignVariableOp_28¢AssignVariableOp_29¢AssignVariableOp_3¢AssignVariableOp_30¢AssignVariableOp_31¢AssignVariableOp_32¢AssignVariableOp_33¢AssignVariableOp_34¢AssignVariableOp_35¢AssignVariableOp_36¢AssignVariableOp_37¢AssignVariableOp_38¢AssignVariableOp_39¢AssignVariableOp_4¢AssignVariableOp_40¢AssignVariableOp_41¢AssignVariableOp_5¢AssignVariableOp_6¢AssignVariableOp_7¢AssignVariableOp_8¢AssignVariableOp_9Ê
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:+*
dtype0*ð
valueæBã+B:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHÆ
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:+*
dtype0*i
value`B^+B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ø
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*Â
_output_shapes¯
¬:::::::::::::::::::::::::::::::::::::::::::*9
dtypes/
-2+	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOpAssignVariableOp'assignvariableop_embedding_1_embeddingsIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_2_kernelIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_2AssignVariableOpassignvariableop_2_dense_2_biasIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_3AssignVariableOp!assignvariableop_3_dense_3_kernelIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_4AssignVariableOpassignvariableop_4_dense_3_biasIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0	*
_output_shapes
:
AssignVariableOp_5AssignVariableOpassignvariableop_5_adam_iterIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_6AssignVariableOpassignvariableop_6_adam_beta_1Identity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_7AssignVariableOpassignvariableop_7_adam_beta_2Identity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_8AssignVariableOpassignvariableop_8_adam_decayIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_9AssignVariableOp%assignvariableop_9_adam_learning_rateIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:Â
AssignVariableOp_10AssignVariableOpQassignvariableop_10_bidirectional_1_forward_simple_rnn_1_simple_rnn_cell_4_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:Ì
AssignVariableOp_11AssignVariableOp[assignvariableop_11_bidirectional_1_forward_simple_rnn_1_simple_rnn_cell_4_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:À
AssignVariableOp_12AssignVariableOpOassignvariableop_12_bidirectional_1_forward_simple_rnn_1_simple_rnn_cell_4_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:Ã
AssignVariableOp_13AssignVariableOpRassignvariableop_13_bidirectional_1_backward_simple_rnn_1_simple_rnn_cell_5_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:Í
AssignVariableOp_14AssignVariableOp\assignvariableop_14_bidirectional_1_backward_simple_rnn_1_simple_rnn_cell_5_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:Á
AssignVariableOp_15AssignVariableOpPassignvariableop_15_bidirectional_1_backward_simple_rnn_1_simple_rnn_cell_5_biasIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_16AssignVariableOpassignvariableop_16_totalIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_17AssignVariableOpassignvariableop_17_countIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_18AssignVariableOpassignvariableop_18_total_1Identity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_19AssignVariableOpassignvariableop_19_count_1Identity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:¢
AssignVariableOp_20AssignVariableOp1assignvariableop_20_adam_embedding_1_embeddings_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_21AssignVariableOp)assignvariableop_21_adam_dense_2_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_22AssignVariableOp'assignvariableop_22_adam_dense_2_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_23AssignVariableOp)assignvariableop_23_adam_dense_3_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_24AssignVariableOp'assignvariableop_24_adam_dense_3_bias_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:É
AssignVariableOp_25AssignVariableOpXassignvariableop_25_adam_bidirectional_1_forward_simple_rnn_1_simple_rnn_cell_4_kernel_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:Ó
AssignVariableOp_26AssignVariableOpbassignvariableop_26_adam_bidirectional_1_forward_simple_rnn_1_simple_rnn_cell_4_recurrent_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:Ç
AssignVariableOp_27AssignVariableOpVassignvariableop_27_adam_bidirectional_1_forward_simple_rnn_1_simple_rnn_cell_4_bias_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:Ê
AssignVariableOp_28AssignVariableOpYassignvariableop_28_adam_bidirectional_1_backward_simple_rnn_1_simple_rnn_cell_5_kernel_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:Ô
AssignVariableOp_29AssignVariableOpcassignvariableop_29_adam_bidirectional_1_backward_simple_rnn_1_simple_rnn_cell_5_recurrent_kernel_mIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:È
AssignVariableOp_30AssignVariableOpWassignvariableop_30_adam_bidirectional_1_backward_simple_rnn_1_simple_rnn_cell_5_bias_mIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:¢
AssignVariableOp_31AssignVariableOp1assignvariableop_31_adam_embedding_1_embeddings_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_32AssignVariableOp)assignvariableop_32_adam_dense_2_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_33AssignVariableOp'assignvariableop_33_adam_dense_2_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_34AssignVariableOp)assignvariableop_34_adam_dense_3_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_35AssignVariableOp'assignvariableop_35_adam_dense_3_bias_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:É
AssignVariableOp_36AssignVariableOpXassignvariableop_36_adam_bidirectional_1_forward_simple_rnn_1_simple_rnn_cell_4_kernel_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:Ó
AssignVariableOp_37AssignVariableOpbassignvariableop_37_adam_bidirectional_1_forward_simple_rnn_1_simple_rnn_cell_4_recurrent_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:Ç
AssignVariableOp_38AssignVariableOpVassignvariableop_38_adam_bidirectional_1_forward_simple_rnn_1_simple_rnn_cell_4_bias_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:Ê
AssignVariableOp_39AssignVariableOpYassignvariableop_39_adam_bidirectional_1_backward_simple_rnn_1_simple_rnn_cell_5_kernel_vIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:Ô
AssignVariableOp_40AssignVariableOpcassignvariableop_40_adam_bidirectional_1_backward_simple_rnn_1_simple_rnn_cell_5_recurrent_kernel_vIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:È
AssignVariableOp_41AssignVariableOpWassignvariableop_41_adam_bidirectional_1_backward_simple_rnn_1_simple_rnn_cell_5_bias_vIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ë
Identity_42Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_43IdentityIdentity_42:output:0^NoOp_1*
T0*
_output_shapes
: Ø
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_43Identity_43:output:0*i
_input_shapesX
V: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_41AssignVariableOp_412(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
Í


#__inference_signature_wrapper_68945
embedding_1_input
unknown:	© @
	unknown_0:@@
	unknown_1:@
	unknown_2:@@
	unknown_3:@@
	unknown_4:@
	unknown_5:@@
	unknown_6:	@
	unknown_7:@
	unknown_8:@
	unknown_9:
identity¢StatefulPartitionedCallµ
StatefulPartitionedCallStatefulPartitionedCallembedding_1_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *)
f$R"
 __inference__wrapped_model_66896o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:c _
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
+
_user_specified_nameembedding_1_input
Ü


,__inference_sequential_1_layer_call_fn_68972

inputs
unknown:	© @
	unknown_0:@@
	unknown_1:@
	unknown_2:@@
	unknown_3:@@
	unknown_4:@
	unknown_5:@@
	unknown_6:	@
	unknown_7:@
	unknown_8:@
	unknown_9:
identity¢StatefulPartitionedCallÑ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_sequential_1_layer_call_and_return_conditional_losses_68377o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ý


,__inference_sequential_1_layer_call_fn_68402
embedding_1_input
unknown:	© @
	unknown_0:@@
	unknown_1:@
	unknown_2:@@
	unknown_3:@@
	unknown_4:@
	unknown_5:@@
	unknown_6:	@
	unknown_7:@
	unknown_8:@
	unknown_9:
identity¢StatefulPartitionedCallÜ
StatefulPartitionedCallStatefulPartitionedCallembedding_1_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_sequential_1_layer_call_and_return_conditional_losses_68377o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:c _
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
+
_user_specified_nameembedding_1_input


ô
B__inference_dense_2_layer_call_and_return_conditional_losses_70646

inputs1
matmul_readvariableop_resource:	@-
biasadd_readvariableop_resource:@
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Å	
ó
B__inference_dense_3_layer_call_and_return_conditional_losses_68370

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
²,
Ç
while_body_67532
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0J
8while_simple_rnn_cell_4_matmul_readvariableop_resource_0:@@G
9while_simple_rnn_cell_4_biasadd_readvariableop_resource_0:@L
:while_simple_rnn_cell_4_matmul_1_readvariableop_resource_0:@@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorH
6while_simple_rnn_cell_4_matmul_readvariableop_resource:@@E
7while_simple_rnn_cell_4_biasadd_readvariableop_resource:@J
8while_simple_rnn_cell_4_matmul_1_readvariableop_resource:@@¢.while/simple_rnn_cell_4/BiasAdd/ReadVariableOp¢-while/simple_rnn_cell_4/MatMul/ReadVariableOp¢/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÿÿÿÿ¯
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
element_dtype0¦
-while/simple_rnn_cell_4/MatMul/ReadVariableOpReadVariableOp8while_simple_rnn_cell_4_matmul_readvariableop_resource_0*
_output_shapes

:@@*
dtype0Ã
while/simple_rnn_cell_4/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:05while/simple_rnn_cell_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¤
.while/simple_rnn_cell_4/BiasAdd/ReadVariableOpReadVariableOp9while_simple_rnn_cell_4_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype0¾
while/simple_rnn_cell_4/BiasAddBiasAdd(while/simple_rnn_cell_4/MatMul:product:06while/simple_rnn_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@ª
/while/simple_rnn_cell_4/MatMul_1/ReadVariableOpReadVariableOp:while_simple_rnn_cell_4_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype0ª
 while/simple_rnn_cell_4/MatMul_1MatMulwhile_placeholder_27while/simple_rnn_cell_4/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¬
while/simple_rnn_cell_4/addAddV2(while/simple_rnn_cell_4/BiasAdd:output:0*while/simple_rnn_cell_4/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@w
while/simple_rnn_cell_4/TanhTanhwhile/simple_rnn_cell_4/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@É
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder while/simple_rnn_cell_4/Tanh:y:0*
_output_shapes
: *
element_dtype0:éèÒM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: }
while/Identity_4Identity while/simple_rnn_cell_4/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@ß

while/NoOpNoOp/^while/simple_rnn_cell_4/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_4/MatMul/ReadVariableOp0^while/simple_rnn_cell_4/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"t
7while_simple_rnn_cell_4_biasadd_readvariableop_resource9while_simple_rnn_cell_4_biasadd_readvariableop_resource_0"v
8while_simple_rnn_cell_4_matmul_1_readvariableop_resource:while_simple_rnn_cell_4_matmul_1_readvariableop_resource_0"r
6while_simple_rnn_cell_4_matmul_readvariableop_resource8while_simple_rnn_cell_4_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ@: : : : : 2`
.while/simple_rnn_cell_4/BiasAdd/ReadVariableOp.while/simple_rnn_cell_4/BiasAdd/ReadVariableOp2^
-while/simple_rnn_cell_4/MatMul/ReadVariableOp-while/simple_rnn_cell_4/MatMul/ReadVariableOp2b
/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
: 
á
¡

5bidirectional_1_forward_simple_rnn_1_while_cond_69344f
bbidirectional_1_forward_simple_rnn_1_while_bidirectional_1_forward_simple_rnn_1_while_loop_counterl
hbidirectional_1_forward_simple_rnn_1_while_bidirectional_1_forward_simple_rnn_1_while_maximum_iterations:
6bidirectional_1_forward_simple_rnn_1_while_placeholder<
8bidirectional_1_forward_simple_rnn_1_while_placeholder_1<
8bidirectional_1_forward_simple_rnn_1_while_placeholder_2<
8bidirectional_1_forward_simple_rnn_1_while_placeholder_3h
dbidirectional_1_forward_simple_rnn_1_while_less_bidirectional_1_forward_simple_rnn_1_strided_slice_1}
ybidirectional_1_forward_simple_rnn_1_while_bidirectional_1_forward_simple_rnn_1_while_cond_69344___redundant_placeholder0}
ybidirectional_1_forward_simple_rnn_1_while_bidirectional_1_forward_simple_rnn_1_while_cond_69344___redundant_placeholder1}
ybidirectional_1_forward_simple_rnn_1_while_bidirectional_1_forward_simple_rnn_1_while_cond_69344___redundant_placeholder2}
ybidirectional_1_forward_simple_rnn_1_while_bidirectional_1_forward_simple_rnn_1_while_cond_69344___redundant_placeholder3}
ybidirectional_1_forward_simple_rnn_1_while_bidirectional_1_forward_simple_rnn_1_while_cond_69344___redundant_placeholder47
3bidirectional_1_forward_simple_rnn_1_while_identity
ö
/bidirectional_1/forward_simple_rnn_1/while/LessLess6bidirectional_1_forward_simple_rnn_1_while_placeholderdbidirectional_1_forward_simple_rnn_1_while_less_bidirectional_1_forward_simple_rnn_1_strided_slice_1*
T0*
_output_shapes
: 
3bidirectional_1/forward_simple_rnn_1/while/IdentityIdentity3bidirectional_1/forward_simple_rnn_1/while/Less:z:0*
T0
*
_output_shapes
: "s
3bidirectional_1_forward_simple_rnn_1_while_identity<bidirectional_1/forward_simple_rnn_1/while/Identity:output:0*(
_construction_contextkEagerRuntime*W
_input_shapesF
D: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: :::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
::

_output_shapes
:
²,
Ç
while_body_70967
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0J
8while_simple_rnn_cell_4_matmul_readvariableop_resource_0:@@G
9while_simple_rnn_cell_4_biasadd_readvariableop_resource_0:@L
:while_simple_rnn_cell_4_matmul_1_readvariableop_resource_0:@@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorH
6while_simple_rnn_cell_4_matmul_readvariableop_resource:@@E
7while_simple_rnn_cell_4_biasadd_readvariableop_resource:@J
8while_simple_rnn_cell_4_matmul_1_readvariableop_resource:@@¢.while/simple_rnn_cell_4/BiasAdd/ReadVariableOp¢-while/simple_rnn_cell_4/MatMul/ReadVariableOp¢/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÿÿÿÿ¯
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
element_dtype0¦
-while/simple_rnn_cell_4/MatMul/ReadVariableOpReadVariableOp8while_simple_rnn_cell_4_matmul_readvariableop_resource_0*
_output_shapes

:@@*
dtype0Ã
while/simple_rnn_cell_4/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:05while/simple_rnn_cell_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¤
.while/simple_rnn_cell_4/BiasAdd/ReadVariableOpReadVariableOp9while_simple_rnn_cell_4_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype0¾
while/simple_rnn_cell_4/BiasAddBiasAdd(while/simple_rnn_cell_4/MatMul:product:06while/simple_rnn_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@ª
/while/simple_rnn_cell_4/MatMul_1/ReadVariableOpReadVariableOp:while_simple_rnn_cell_4_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype0ª
 while/simple_rnn_cell_4/MatMul_1MatMulwhile_placeholder_27while/simple_rnn_cell_4/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¬
while/simple_rnn_cell_4/addAddV2(while/simple_rnn_cell_4/BiasAdd:output:0*while/simple_rnn_cell_4/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@w
while/simple_rnn_cell_4/TanhTanhwhile/simple_rnn_cell_4/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@É
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder while/simple_rnn_cell_4/Tanh:y:0*
_output_shapes
: *
element_dtype0:éèÒM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: }
while/Identity_4Identity while/simple_rnn_cell_4/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@ß

while/NoOpNoOp/^while/simple_rnn_cell_4/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_4/MatMul/ReadVariableOp0^while/simple_rnn_cell_4/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"t
7while_simple_rnn_cell_4_biasadd_readvariableop_resource9while_simple_rnn_cell_4_biasadd_readvariableop_resource_0"v
8while_simple_rnn_cell_4_matmul_1_readvariableop_resource:while_simple_rnn_cell_4_matmul_1_readvariableop_resource_0"r
6while_simple_rnn_cell_4_matmul_readvariableop_resource8while_simple_rnn_cell_4_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ@: : : : : 2`
.while/simple_rnn_cell_4/BiasAdd/ReadVariableOp.while/simple_rnn_cell_4/BiasAdd/ReadVariableOp2^
-while/simple_rnn_cell_4/MatMul/ReadVariableOp-while/simple_rnn_cell_4/MatMul/ReadVariableOp2b
/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
: 
ü@
Ý
&backward_simple_rnn_1_while_body_69808H
Dbackward_simple_rnn_1_while_backward_simple_rnn_1_while_loop_counterN
Jbackward_simple_rnn_1_while_backward_simple_rnn_1_while_maximum_iterations+
'backward_simple_rnn_1_while_placeholder-
)backward_simple_rnn_1_while_placeholder_1-
)backward_simple_rnn_1_while_placeholder_2G
Cbackward_simple_rnn_1_while_backward_simple_rnn_1_strided_slice_1_0
backward_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_backward_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor_0`
Nbackward_simple_rnn_1_while_simple_rnn_cell_5_matmul_readvariableop_resource_0:@@]
Obackward_simple_rnn_1_while_simple_rnn_cell_5_biasadd_readvariableop_resource_0:@b
Pbackward_simple_rnn_1_while_simple_rnn_cell_5_matmul_1_readvariableop_resource_0:@@(
$backward_simple_rnn_1_while_identity*
&backward_simple_rnn_1_while_identity_1*
&backward_simple_rnn_1_while_identity_2*
&backward_simple_rnn_1_while_identity_3*
&backward_simple_rnn_1_while_identity_4E
Abackward_simple_rnn_1_while_backward_simple_rnn_1_strided_slice_1
}backward_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_backward_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor^
Lbackward_simple_rnn_1_while_simple_rnn_cell_5_matmul_readvariableop_resource:@@[
Mbackward_simple_rnn_1_while_simple_rnn_cell_5_biasadd_readvariableop_resource:@`
Nbackward_simple_rnn_1_while_simple_rnn_cell_5_matmul_1_readvariableop_resource:@@¢Dbackward_simple_rnn_1/while/simple_rnn_cell_5/BiasAdd/ReadVariableOp¢Cbackward_simple_rnn_1/while/simple_rnn_cell_5/MatMul/ReadVariableOp¢Ebackward_simple_rnn_1/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp
Mbackward_simple_rnn_1/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÿÿÿÿ
?backward_simple_rnn_1/while/TensorArrayV2Read/TensorListGetItemTensorListGetItembackward_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_backward_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor_0'backward_simple_rnn_1_while_placeholderVbackward_simple_rnn_1/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
element_dtype0Ò
Cbackward_simple_rnn_1/while/simple_rnn_cell_5/MatMul/ReadVariableOpReadVariableOpNbackward_simple_rnn_1_while_simple_rnn_cell_5_matmul_readvariableop_resource_0*
_output_shapes

:@@*
dtype0
4backward_simple_rnn_1/while/simple_rnn_cell_5/MatMulMatMulFbackward_simple_rnn_1/while/TensorArrayV2Read/TensorListGetItem:item:0Kbackward_simple_rnn_1/while/simple_rnn_cell_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Ð
Dbackward_simple_rnn_1/while/simple_rnn_cell_5/BiasAdd/ReadVariableOpReadVariableOpObackward_simple_rnn_1_while_simple_rnn_cell_5_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype0
5backward_simple_rnn_1/while/simple_rnn_cell_5/BiasAddBiasAdd>backward_simple_rnn_1/while/simple_rnn_cell_5/MatMul:product:0Lbackward_simple_rnn_1/while/simple_rnn_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Ö
Ebackward_simple_rnn_1/while/simple_rnn_cell_5/MatMul_1/ReadVariableOpReadVariableOpPbackward_simple_rnn_1_while_simple_rnn_cell_5_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype0ì
6backward_simple_rnn_1/while/simple_rnn_cell_5/MatMul_1MatMul)backward_simple_rnn_1_while_placeholder_2Mbackward_simple_rnn_1/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@î
1backward_simple_rnn_1/while/simple_rnn_cell_5/addAddV2>backward_simple_rnn_1/while/simple_rnn_cell_5/BiasAdd:output:0@backward_simple_rnn_1/while/simple_rnn_cell_5/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@£
2backward_simple_rnn_1/while/simple_rnn_cell_5/TanhTanh5backward_simple_rnn_1/while/simple_rnn_cell_5/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¡
@backward_simple_rnn_1/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem)backward_simple_rnn_1_while_placeholder_1'backward_simple_rnn_1_while_placeholder6backward_simple_rnn_1/while/simple_rnn_cell_5/Tanh:y:0*
_output_shapes
: *
element_dtype0:éèÒc
!backward_simple_rnn_1/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :
backward_simple_rnn_1/while/addAddV2'backward_simple_rnn_1_while_placeholder*backward_simple_rnn_1/while/add/y:output:0*
T0*
_output_shapes
: e
#backward_simple_rnn_1/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :¿
!backward_simple_rnn_1/while/add_1AddV2Dbackward_simple_rnn_1_while_backward_simple_rnn_1_while_loop_counter,backward_simple_rnn_1/while/add_1/y:output:0*
T0*
_output_shapes
: 
$backward_simple_rnn_1/while/IdentityIdentity%backward_simple_rnn_1/while/add_1:z:0!^backward_simple_rnn_1/while/NoOp*
T0*
_output_shapes
: Â
&backward_simple_rnn_1/while/Identity_1IdentityJbackward_simple_rnn_1_while_backward_simple_rnn_1_while_maximum_iterations!^backward_simple_rnn_1/while/NoOp*
T0*
_output_shapes
: 
&backward_simple_rnn_1/while/Identity_2Identity#backward_simple_rnn_1/while/add:z:0!^backward_simple_rnn_1/while/NoOp*
T0*
_output_shapes
: È
&backward_simple_rnn_1/while/Identity_3IdentityPbackward_simple_rnn_1/while/TensorArrayV2Write/TensorListSetItem:output_handle:0!^backward_simple_rnn_1/while/NoOp*
T0*
_output_shapes
: ¿
&backward_simple_rnn_1/while/Identity_4Identity6backward_simple_rnn_1/while/simple_rnn_cell_5/Tanh:y:0!^backward_simple_rnn_1/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@·
 backward_simple_rnn_1/while/NoOpNoOpE^backward_simple_rnn_1/while/simple_rnn_cell_5/BiasAdd/ReadVariableOpD^backward_simple_rnn_1/while/simple_rnn_cell_5/MatMul/ReadVariableOpF^backward_simple_rnn_1/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
Abackward_simple_rnn_1_while_backward_simple_rnn_1_strided_slice_1Cbackward_simple_rnn_1_while_backward_simple_rnn_1_strided_slice_1_0"U
$backward_simple_rnn_1_while_identity-backward_simple_rnn_1/while/Identity:output:0"Y
&backward_simple_rnn_1_while_identity_1/backward_simple_rnn_1/while/Identity_1:output:0"Y
&backward_simple_rnn_1_while_identity_2/backward_simple_rnn_1/while/Identity_2:output:0"Y
&backward_simple_rnn_1_while_identity_3/backward_simple_rnn_1/while/Identity_3:output:0"Y
&backward_simple_rnn_1_while_identity_4/backward_simple_rnn_1/while/Identity_4:output:0" 
Mbackward_simple_rnn_1_while_simple_rnn_cell_5_biasadd_readvariableop_resourceObackward_simple_rnn_1_while_simple_rnn_cell_5_biasadd_readvariableop_resource_0"¢
Nbackward_simple_rnn_1_while_simple_rnn_cell_5_matmul_1_readvariableop_resourcePbackward_simple_rnn_1_while_simple_rnn_cell_5_matmul_1_readvariableop_resource_0"
Lbackward_simple_rnn_1_while_simple_rnn_cell_5_matmul_readvariableop_resourceNbackward_simple_rnn_1_while_simple_rnn_cell_5_matmul_readvariableop_resource_0"
}backward_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_backward_simple_rnn_1_tensorarrayunstack_tensorlistfromtensorbackward_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_backward_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ@: : : : : 2
Dbackward_simple_rnn_1/while/simple_rnn_cell_5/BiasAdd/ReadVariableOpDbackward_simple_rnn_1/while/simple_rnn_cell_5/BiasAdd/ReadVariableOp2
Cbackward_simple_rnn_1/while/simple_rnn_cell_5/MatMul/ReadVariableOpCbackward_simple_rnn_1/while/simple_rnn_cell_5/MatMul/ReadVariableOp2
Ebackward_simple_rnn_1/while/simple_rnn_cell_5/MatMul_1/ReadVariableOpEbackward_simple_rnn_1/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
: 
á=
Ä
O__inference_forward_simple_rnn_1_layer_call_and_return_conditional_losses_70817
inputs_0B
0simple_rnn_cell_4_matmul_readvariableop_resource:@@?
1simple_rnn_cell_4_biasadd_readvariableop_resource:@D
2simple_rnn_cell_4_matmul_1_readvariableop_resource:@@
identity¢(simple_rnn_cell_4/BiasAdd/ReadVariableOp¢'simple_rnn_cell_4/MatMul/ReadVariableOp¢)simple_rnn_cell_4/MatMul_1/ReadVariableOp¢while=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
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
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
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
:ÿÿÿÿÿÿÿÿÿ@c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
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
valueB:Û
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_mask
'simple_rnn_cell_4/MatMul/ReadVariableOpReadVariableOp0simple_rnn_cell_4_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype0
simple_rnn_cell_4/MatMulMatMulstrided_slice_2:output:0/simple_rnn_cell_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
(simple_rnn_cell_4/BiasAdd/ReadVariableOpReadVariableOp1simple_rnn_cell_4_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0¬
simple_rnn_cell_4/BiasAddBiasAdd"simple_rnn_cell_4/MatMul:product:00simple_rnn_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
)simple_rnn_cell_4/MatMul_1/ReadVariableOpReadVariableOp2simple_rnn_cell_4_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype0
simple_rnn_cell_4/MatMul_1MatMulzeros:output:01simple_rnn_cell_4/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
simple_rnn_cell_4/addAddV2"simple_rnn_cell_4/BiasAdd:output:0$simple_rnn_cell_4/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@k
simple_rnn_cell_4/TanhTanhsimple_rnn_cell_4/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ö
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:00simple_rnn_cell_4_matmul_readvariableop_resource1simple_rnn_cell_4_biasadd_readvariableop_resource2simple_rnn_cell_4_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ@: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_70751*
condR
while_cond_70750*8
output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ@: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   Ë
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Ï
NoOpNoOp)^simple_rnn_cell_4/BiasAdd/ReadVariableOp(^simple_rnn_cell_4/MatMul/ReadVariableOp*^simple_rnn_cell_4/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@: : : 2T
(simple_rnn_cell_4/BiasAdd/ReadVariableOp(simple_rnn_cell_4/BiasAdd/ReadVariableOp2R
'simple_rnn_cell_4/MatMul/ReadVariableOp'simple_rnn_cell_4/MatMul/ReadVariableOp2V
)simple_rnn_cell_4/MatMul_1/ReadVariableOp)simple_rnn_cell_4/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
"
_user_specified_name
inputs/0
Õ
¥
while_cond_67250
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_67250___redundant_placeholder03
/while_while_cond_67250___redundant_placeholder13
/while_while_cond_67250___redundant_placeholder23
/while_while_cond_67250___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :ÿÿÿÿÿÿÿÿÿ@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
:

Á
%forward_simple_rnn_1_while_cond_70143F
Bforward_simple_rnn_1_while_forward_simple_rnn_1_while_loop_counterL
Hforward_simple_rnn_1_while_forward_simple_rnn_1_while_maximum_iterations*
&forward_simple_rnn_1_while_placeholder,
(forward_simple_rnn_1_while_placeholder_1,
(forward_simple_rnn_1_while_placeholder_2,
(forward_simple_rnn_1_while_placeholder_3H
Dforward_simple_rnn_1_while_less_forward_simple_rnn_1_strided_slice_1]
Yforward_simple_rnn_1_while_forward_simple_rnn_1_while_cond_70143___redundant_placeholder0]
Yforward_simple_rnn_1_while_forward_simple_rnn_1_while_cond_70143___redundant_placeholder1]
Yforward_simple_rnn_1_while_forward_simple_rnn_1_while_cond_70143___redundant_placeholder2]
Yforward_simple_rnn_1_while_forward_simple_rnn_1_while_cond_70143___redundant_placeholder3]
Yforward_simple_rnn_1_while_forward_simple_rnn_1_while_cond_70143___redundant_placeholder4'
#forward_simple_rnn_1_while_identity
¶
forward_simple_rnn_1/while/LessLess&forward_simple_rnn_1_while_placeholderDforward_simple_rnn_1_while_less_forward_simple_rnn_1_strided_slice_1*
T0*
_output_shapes
: u
#forward_simple_rnn_1/while/IdentityIdentity#forward_simple_rnn_1/while/Less:z:0*
T0
*
_output_shapes
: "S
#forward_simple_rnn_1_while_identity,forward_simple_rnn_1/while/Identity:output:0*(
_construction_contextkEagerRuntime*W
_input_shapesF
D: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: :::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
::

_output_shapes
:
Õ
¥
while_cond_71448
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_71448___redundant_placeholder03
/while_while_cond_71448___redundant_placeholder13
/while_while_cond_71448___redundant_placeholder23
/while_while_cond_71448___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :ÿÿÿÿÿÿÿÿÿ@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
:
Õ
¥
while_cond_71558
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_71558___redundant_placeholder03
/while_while_cond_71558___redundant_placeholder13
/while_while_cond_71558___redundant_placeholder23
/while_while_cond_71558___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :ÿÿÿÿÿÿÿÿÿ@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
:

´
%forward_simple_rnn_1_while_cond_69917F
Bforward_simple_rnn_1_while_forward_simple_rnn_1_while_loop_counterL
Hforward_simple_rnn_1_while_forward_simple_rnn_1_while_maximum_iterations*
&forward_simple_rnn_1_while_placeholder,
(forward_simple_rnn_1_while_placeholder_1,
(forward_simple_rnn_1_while_placeholder_2H
Dforward_simple_rnn_1_while_less_forward_simple_rnn_1_strided_slice_1]
Yforward_simple_rnn_1_while_forward_simple_rnn_1_while_cond_69917___redundant_placeholder0]
Yforward_simple_rnn_1_while_forward_simple_rnn_1_while_cond_69917___redundant_placeholder1]
Yforward_simple_rnn_1_while_forward_simple_rnn_1_while_cond_69917___redundant_placeholder2]
Yforward_simple_rnn_1_while_forward_simple_rnn_1_while_cond_69917___redundant_placeholder3'
#forward_simple_rnn_1_while_identity
¶
forward_simple_rnn_1/while/LessLess&forward_simple_rnn_1_while_placeholderDforward_simple_rnn_1_while_less_forward_simple_rnn_1_strided_slice_1*
T0*
_output_shapes
: u
#forward_simple_rnn_1/while/IdentityIdentity#forward_simple_rnn_1/while/Less:z:0*
T0
*
_output_shapes
: "S
#forward_simple_rnn_1_while_identity,forward_simple_rnn_1/while/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :ÿÿÿÿÿÿÿÿÿ@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
:
Ü


,__inference_sequential_1_layer_call_fn_68999

inputs
unknown:	© @
	unknown_0:@@
	unknown_1:@
	unknown_2:@@
	unknown_3:@@
	unknown_4:@
	unknown_5:@@
	unknown_6:	@
	unknown_7:@
	unknown_8:@
	unknown_9:
identity¢StatefulPartitionedCallÑ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_sequential_1_layer_call_and_return_conditional_losses_68794o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
·

Ù
1__inference_simple_rnn_cell_4_layer_call_fn_71639

inputs
states_0
unknown:@@
	unknown_0:@
	unknown_1:@@
identity

identity_1¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0unknown	unknown_0	unknown_1*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_simple_rnn_cell_4_layer_call_and_return_conditional_losses_66944o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
"
_user_specified_name
states/0

Á
%forward_simple_rnn_1_while_cond_70410F
Bforward_simple_rnn_1_while_forward_simple_rnn_1_while_loop_counterL
Hforward_simple_rnn_1_while_forward_simple_rnn_1_while_maximum_iterations*
&forward_simple_rnn_1_while_placeholder,
(forward_simple_rnn_1_while_placeholder_1,
(forward_simple_rnn_1_while_placeholder_2,
(forward_simple_rnn_1_while_placeholder_3H
Dforward_simple_rnn_1_while_less_forward_simple_rnn_1_strided_slice_1]
Yforward_simple_rnn_1_while_forward_simple_rnn_1_while_cond_70410___redundant_placeholder0]
Yforward_simple_rnn_1_while_forward_simple_rnn_1_while_cond_70410___redundant_placeholder1]
Yforward_simple_rnn_1_while_forward_simple_rnn_1_while_cond_70410___redundant_placeholder2]
Yforward_simple_rnn_1_while_forward_simple_rnn_1_while_cond_70410___redundant_placeholder3]
Yforward_simple_rnn_1_while_forward_simple_rnn_1_while_cond_70410___redundant_placeholder4'
#forward_simple_rnn_1_while_identity
¶
forward_simple_rnn_1/while/LessLess&forward_simple_rnn_1_while_placeholderDforward_simple_rnn_1_while_less_forward_simple_rnn_1_strided_slice_1*
T0*
_output_shapes
: u
#forward_simple_rnn_1/while/IdentityIdentity#forward_simple_rnn_1/while/Less:z:0*
T0
*
_output_shapes
: "S
#forward_simple_rnn_1_while_identity,forward_simple_rnn_1/while/Identity:output:0*(
_construction_contextkEagerRuntime*W
_input_shapesF
D: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: :::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
::

_output_shapes
:
å 
Ê
while_body_66957
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_01
while_simple_rnn_cell_4_66979_0:@@-
while_simple_rnn_cell_4_66981_0:@1
while_simple_rnn_cell_4_66983_0:@@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor/
while_simple_rnn_cell_4_66979:@@+
while_simple_rnn_cell_4_66981:@/
while_simple_rnn_cell_4_66983:@@¢/while/simple_rnn_cell_4/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
element_dtype0
/while/simple_rnn_cell_4/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_simple_rnn_cell_4_66979_0while_simple_rnn_cell_4_66981_0while_simple_rnn_cell_4_66983_0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_simple_rnn_cell_4_layer_call_and_return_conditional_losses_66944á
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder8while/simple_rnn_cell_4/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:éèÒM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_4Identity8while/simple_rnn_cell_4/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@~

while/NoOpNoOp0^while/simple_rnn_cell_4/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"@
while_simple_rnn_cell_4_66979while_simple_rnn_cell_4_66979_0"@
while_simple_rnn_cell_4_66981while_simple_rnn_cell_4_66981_0"@
while_simple_rnn_cell_4_66983while_simple_rnn_cell_4_66983_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ@: : : : : 2b
/while/simple_rnn_cell_4/StatefulPartitionedCall/while/simple_rnn_cell_4/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
: 
ü@
Ý
&backward_simple_rnn_1_while_body_70024H
Dbackward_simple_rnn_1_while_backward_simple_rnn_1_while_loop_counterN
Jbackward_simple_rnn_1_while_backward_simple_rnn_1_while_maximum_iterations+
'backward_simple_rnn_1_while_placeholder-
)backward_simple_rnn_1_while_placeholder_1-
)backward_simple_rnn_1_while_placeholder_2G
Cbackward_simple_rnn_1_while_backward_simple_rnn_1_strided_slice_1_0
backward_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_backward_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor_0`
Nbackward_simple_rnn_1_while_simple_rnn_cell_5_matmul_readvariableop_resource_0:@@]
Obackward_simple_rnn_1_while_simple_rnn_cell_5_biasadd_readvariableop_resource_0:@b
Pbackward_simple_rnn_1_while_simple_rnn_cell_5_matmul_1_readvariableop_resource_0:@@(
$backward_simple_rnn_1_while_identity*
&backward_simple_rnn_1_while_identity_1*
&backward_simple_rnn_1_while_identity_2*
&backward_simple_rnn_1_while_identity_3*
&backward_simple_rnn_1_while_identity_4E
Abackward_simple_rnn_1_while_backward_simple_rnn_1_strided_slice_1
}backward_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_backward_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor^
Lbackward_simple_rnn_1_while_simple_rnn_cell_5_matmul_readvariableop_resource:@@[
Mbackward_simple_rnn_1_while_simple_rnn_cell_5_biasadd_readvariableop_resource:@`
Nbackward_simple_rnn_1_while_simple_rnn_cell_5_matmul_1_readvariableop_resource:@@¢Dbackward_simple_rnn_1/while/simple_rnn_cell_5/BiasAdd/ReadVariableOp¢Cbackward_simple_rnn_1/while/simple_rnn_cell_5/MatMul/ReadVariableOp¢Ebackward_simple_rnn_1/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp
Mbackward_simple_rnn_1/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÿÿÿÿ
?backward_simple_rnn_1/while/TensorArrayV2Read/TensorListGetItemTensorListGetItembackward_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_backward_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor_0'backward_simple_rnn_1_while_placeholderVbackward_simple_rnn_1/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
element_dtype0Ò
Cbackward_simple_rnn_1/while/simple_rnn_cell_5/MatMul/ReadVariableOpReadVariableOpNbackward_simple_rnn_1_while_simple_rnn_cell_5_matmul_readvariableop_resource_0*
_output_shapes

:@@*
dtype0
4backward_simple_rnn_1/while/simple_rnn_cell_5/MatMulMatMulFbackward_simple_rnn_1/while/TensorArrayV2Read/TensorListGetItem:item:0Kbackward_simple_rnn_1/while/simple_rnn_cell_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Ð
Dbackward_simple_rnn_1/while/simple_rnn_cell_5/BiasAdd/ReadVariableOpReadVariableOpObackward_simple_rnn_1_while_simple_rnn_cell_5_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype0
5backward_simple_rnn_1/while/simple_rnn_cell_5/BiasAddBiasAdd>backward_simple_rnn_1/while/simple_rnn_cell_5/MatMul:product:0Lbackward_simple_rnn_1/while/simple_rnn_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Ö
Ebackward_simple_rnn_1/while/simple_rnn_cell_5/MatMul_1/ReadVariableOpReadVariableOpPbackward_simple_rnn_1_while_simple_rnn_cell_5_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype0ì
6backward_simple_rnn_1/while/simple_rnn_cell_5/MatMul_1MatMul)backward_simple_rnn_1_while_placeholder_2Mbackward_simple_rnn_1/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@î
1backward_simple_rnn_1/while/simple_rnn_cell_5/addAddV2>backward_simple_rnn_1/while/simple_rnn_cell_5/BiasAdd:output:0@backward_simple_rnn_1/while/simple_rnn_cell_5/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@£
2backward_simple_rnn_1/while/simple_rnn_cell_5/TanhTanh5backward_simple_rnn_1/while/simple_rnn_cell_5/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¡
@backward_simple_rnn_1/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem)backward_simple_rnn_1_while_placeholder_1'backward_simple_rnn_1_while_placeholder6backward_simple_rnn_1/while/simple_rnn_cell_5/Tanh:y:0*
_output_shapes
: *
element_dtype0:éèÒc
!backward_simple_rnn_1/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :
backward_simple_rnn_1/while/addAddV2'backward_simple_rnn_1_while_placeholder*backward_simple_rnn_1/while/add/y:output:0*
T0*
_output_shapes
: e
#backward_simple_rnn_1/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :¿
!backward_simple_rnn_1/while/add_1AddV2Dbackward_simple_rnn_1_while_backward_simple_rnn_1_while_loop_counter,backward_simple_rnn_1/while/add_1/y:output:0*
T0*
_output_shapes
: 
$backward_simple_rnn_1/while/IdentityIdentity%backward_simple_rnn_1/while/add_1:z:0!^backward_simple_rnn_1/while/NoOp*
T0*
_output_shapes
: Â
&backward_simple_rnn_1/while/Identity_1IdentityJbackward_simple_rnn_1_while_backward_simple_rnn_1_while_maximum_iterations!^backward_simple_rnn_1/while/NoOp*
T0*
_output_shapes
: 
&backward_simple_rnn_1/while/Identity_2Identity#backward_simple_rnn_1/while/add:z:0!^backward_simple_rnn_1/while/NoOp*
T0*
_output_shapes
: È
&backward_simple_rnn_1/while/Identity_3IdentityPbackward_simple_rnn_1/while/TensorArrayV2Write/TensorListSetItem:output_handle:0!^backward_simple_rnn_1/while/NoOp*
T0*
_output_shapes
: ¿
&backward_simple_rnn_1/while/Identity_4Identity6backward_simple_rnn_1/while/simple_rnn_cell_5/Tanh:y:0!^backward_simple_rnn_1/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@·
 backward_simple_rnn_1/while/NoOpNoOpE^backward_simple_rnn_1/while/simple_rnn_cell_5/BiasAdd/ReadVariableOpD^backward_simple_rnn_1/while/simple_rnn_cell_5/MatMul/ReadVariableOpF^backward_simple_rnn_1/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
Abackward_simple_rnn_1_while_backward_simple_rnn_1_strided_slice_1Cbackward_simple_rnn_1_while_backward_simple_rnn_1_strided_slice_1_0"U
$backward_simple_rnn_1_while_identity-backward_simple_rnn_1/while/Identity:output:0"Y
&backward_simple_rnn_1_while_identity_1/backward_simple_rnn_1/while/Identity_1:output:0"Y
&backward_simple_rnn_1_while_identity_2/backward_simple_rnn_1/while/Identity_2:output:0"Y
&backward_simple_rnn_1_while_identity_3/backward_simple_rnn_1/while/Identity_3:output:0"Y
&backward_simple_rnn_1_while_identity_4/backward_simple_rnn_1/while/Identity_4:output:0" 
Mbackward_simple_rnn_1_while_simple_rnn_cell_5_biasadd_readvariableop_resourceObackward_simple_rnn_1_while_simple_rnn_cell_5_biasadd_readvariableop_resource_0"¢
Nbackward_simple_rnn_1_while_simple_rnn_cell_5_matmul_1_readvariableop_resourcePbackward_simple_rnn_1_while_simple_rnn_cell_5_matmul_1_readvariableop_resource_0"
Lbackward_simple_rnn_1_while_simple_rnn_cell_5_matmul_readvariableop_resourceNbackward_simple_rnn_1_while_simple_rnn_cell_5_matmul_readvariableop_resource_0"
}backward_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_backward_simple_rnn_1_tensorarrayunstack_tensorlistfromtensorbackward_simple_rnn_1_while_tensorarrayv2read_tensorlistgetitem_backward_simple_rnn_1_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ@: : : : : 2
Dbackward_simple_rnn_1/while/simple_rnn_cell_5/BiasAdd/ReadVariableOpDbackward_simple_rnn_1/while/simple_rnn_cell_5/BiasAdd/ReadVariableOp2
Cbackward_simple_rnn_1/while/simple_rnn_cell_5/MatMul/ReadVariableOpCbackward_simple_rnn_1/while/simple_rnn_cell_5/MatMul/ReadVariableOp2
Ebackward_simple_rnn_1/while/simple_rnn_cell_5/MatMul_1/ReadVariableOpEbackward_simple_rnn_1/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
: 
b
£
__inference__traced_save_71898
file_prefix5
1savev2_embedding_1_embeddings_read_readvariableop-
)savev2_dense_2_kernel_read_readvariableop+
'savev2_dense_2_bias_read_readvariableop-
)savev2_dense_3_kernel_read_readvariableop+
'savev2_dense_3_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop\
Xsavev2_bidirectional_1_forward_simple_rnn_1_simple_rnn_cell_4_kernel_read_readvariableopf
bsavev2_bidirectional_1_forward_simple_rnn_1_simple_rnn_cell_4_recurrent_kernel_read_readvariableopZ
Vsavev2_bidirectional_1_forward_simple_rnn_1_simple_rnn_cell_4_bias_read_readvariableop]
Ysavev2_bidirectional_1_backward_simple_rnn_1_simple_rnn_cell_5_kernel_read_readvariableopg
csavev2_bidirectional_1_backward_simple_rnn_1_simple_rnn_cell_5_recurrent_kernel_read_readvariableop[
Wsavev2_bidirectional_1_backward_simple_rnn_1_simple_rnn_cell_5_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop<
8savev2_adam_embedding_1_embeddings_m_read_readvariableop4
0savev2_adam_dense_2_kernel_m_read_readvariableop2
.savev2_adam_dense_2_bias_m_read_readvariableop4
0savev2_adam_dense_3_kernel_m_read_readvariableop2
.savev2_adam_dense_3_bias_m_read_readvariableopc
_savev2_adam_bidirectional_1_forward_simple_rnn_1_simple_rnn_cell_4_kernel_m_read_readvariableopm
isavev2_adam_bidirectional_1_forward_simple_rnn_1_simple_rnn_cell_4_recurrent_kernel_m_read_readvariableopa
]savev2_adam_bidirectional_1_forward_simple_rnn_1_simple_rnn_cell_4_bias_m_read_readvariableopd
`savev2_adam_bidirectional_1_backward_simple_rnn_1_simple_rnn_cell_5_kernel_m_read_readvariableopn
jsavev2_adam_bidirectional_1_backward_simple_rnn_1_simple_rnn_cell_5_recurrent_kernel_m_read_readvariableopb
^savev2_adam_bidirectional_1_backward_simple_rnn_1_simple_rnn_cell_5_bias_m_read_readvariableop<
8savev2_adam_embedding_1_embeddings_v_read_readvariableop4
0savev2_adam_dense_2_kernel_v_read_readvariableop2
.savev2_adam_dense_2_bias_v_read_readvariableop4
0savev2_adam_dense_3_kernel_v_read_readvariableop2
.savev2_adam_dense_3_bias_v_read_readvariableopc
_savev2_adam_bidirectional_1_forward_simple_rnn_1_simple_rnn_cell_4_kernel_v_read_readvariableopm
isavev2_adam_bidirectional_1_forward_simple_rnn_1_simple_rnn_cell_4_recurrent_kernel_v_read_readvariableopa
]savev2_adam_bidirectional_1_forward_simple_rnn_1_simple_rnn_cell_4_bias_v_read_readvariableopd
`savev2_adam_bidirectional_1_backward_simple_rnn_1_simple_rnn_cell_5_kernel_v_read_readvariableopn
jsavev2_adam_bidirectional_1_backward_simple_rnn_1_simple_rnn_cell_5_recurrent_kernel_v_read_readvariableopb
^savev2_adam_bidirectional_1_backward_simple_rnn_1_simple_rnn_cell_5_bias_v_read_readvariableop
savev2_const

identity_1¢MergeV2Checkpointsw
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
: Ç
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:+*
dtype0*ð
valueæBã+B:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHÃ
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:+*
dtype0*i
value`B^+B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ê
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:01savev2_embedding_1_embeddings_read_readvariableop)savev2_dense_2_kernel_read_readvariableop'savev2_dense_2_bias_read_readvariableop)savev2_dense_3_kernel_read_readvariableop'savev2_dense_3_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableopXsavev2_bidirectional_1_forward_simple_rnn_1_simple_rnn_cell_4_kernel_read_readvariableopbsavev2_bidirectional_1_forward_simple_rnn_1_simple_rnn_cell_4_recurrent_kernel_read_readvariableopVsavev2_bidirectional_1_forward_simple_rnn_1_simple_rnn_cell_4_bias_read_readvariableopYsavev2_bidirectional_1_backward_simple_rnn_1_simple_rnn_cell_5_kernel_read_readvariableopcsavev2_bidirectional_1_backward_simple_rnn_1_simple_rnn_cell_5_recurrent_kernel_read_readvariableopWsavev2_bidirectional_1_backward_simple_rnn_1_simple_rnn_cell_5_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop8savev2_adam_embedding_1_embeddings_m_read_readvariableop0savev2_adam_dense_2_kernel_m_read_readvariableop.savev2_adam_dense_2_bias_m_read_readvariableop0savev2_adam_dense_3_kernel_m_read_readvariableop.savev2_adam_dense_3_bias_m_read_readvariableop_savev2_adam_bidirectional_1_forward_simple_rnn_1_simple_rnn_cell_4_kernel_m_read_readvariableopisavev2_adam_bidirectional_1_forward_simple_rnn_1_simple_rnn_cell_4_recurrent_kernel_m_read_readvariableop]savev2_adam_bidirectional_1_forward_simple_rnn_1_simple_rnn_cell_4_bias_m_read_readvariableop`savev2_adam_bidirectional_1_backward_simple_rnn_1_simple_rnn_cell_5_kernel_m_read_readvariableopjsavev2_adam_bidirectional_1_backward_simple_rnn_1_simple_rnn_cell_5_recurrent_kernel_m_read_readvariableop^savev2_adam_bidirectional_1_backward_simple_rnn_1_simple_rnn_cell_5_bias_m_read_readvariableop8savev2_adam_embedding_1_embeddings_v_read_readvariableop0savev2_adam_dense_2_kernel_v_read_readvariableop.savev2_adam_dense_2_bias_v_read_readvariableop0savev2_adam_dense_3_kernel_v_read_readvariableop.savev2_adam_dense_3_bias_v_read_readvariableop_savev2_adam_bidirectional_1_forward_simple_rnn_1_simple_rnn_cell_4_kernel_v_read_readvariableopisavev2_adam_bidirectional_1_forward_simple_rnn_1_simple_rnn_cell_4_recurrent_kernel_v_read_readvariableop]savev2_adam_bidirectional_1_forward_simple_rnn_1_simple_rnn_cell_4_bias_v_read_readvariableop`savev2_adam_bidirectional_1_backward_simple_rnn_1_simple_rnn_cell_5_kernel_v_read_readvariableopjsavev2_adam_bidirectional_1_backward_simple_rnn_1_simple_rnn_cell_5_recurrent_kernel_v_read_readvariableop^savev2_adam_bidirectional_1_backward_simple_rnn_1_simple_rnn_cell_5_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *9
dtypes/
-2+	
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

identity_1Identity_1:output:0*Ë
_input_shapes¹
¶: :	© @:	@:@:@:: : : : : :@@:@@:@:@@:@@:@: : : : :	© @:	@:@:@::@@:@@:@:@@:@@:@:	© @:	@:@:@::@@:@@:@:@@:@@:@: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:%!

_output_shapes
:	© @:%!

_output_shapes
:	@: 

_output_shapes
:@:$ 

_output_shapes

:@: 

_output_shapes
::
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
: :$ 

_output_shapes

:@@:$ 

_output_shapes

:@@: 

_output_shapes
:@:$ 

_output_shapes

:@@:$ 

_output_shapes

:@@: 

_output_shapes
:@:
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
: :%!

_output_shapes
:	© @:%!

_output_shapes
:	@: 

_output_shapes
:@:$ 

_output_shapes

:@: 

_output_shapes
::$ 

_output_shapes

:@@:$ 

_output_shapes

:@@: 

_output_shapes
:@:$ 

_output_shapes

:@@:$ 

_output_shapes

:@@: 

_output_shapes
:@:% !

_output_shapes
:	© @:%!!

_output_shapes
:	@: "

_output_shapes
:@:$# 

_output_shapes

:@: $

_output_shapes
::$% 

_output_shapes

:@@:$& 

_output_shapes

:@@: '

_output_shapes
:@:$( 

_output_shapes

:@@:$) 

_output_shapes

:@@: *

_output_shapes
:@:+

_output_shapes
: 

´
%forward_simple_rnn_1_while_cond_69701F
Bforward_simple_rnn_1_while_forward_simple_rnn_1_while_loop_counterL
Hforward_simple_rnn_1_while_forward_simple_rnn_1_while_maximum_iterations*
&forward_simple_rnn_1_while_placeholder,
(forward_simple_rnn_1_while_placeholder_1,
(forward_simple_rnn_1_while_placeholder_2H
Dforward_simple_rnn_1_while_less_forward_simple_rnn_1_strided_slice_1]
Yforward_simple_rnn_1_while_forward_simple_rnn_1_while_cond_69701___redundant_placeholder0]
Yforward_simple_rnn_1_while_forward_simple_rnn_1_while_cond_69701___redundant_placeholder1]
Yforward_simple_rnn_1_while_forward_simple_rnn_1_while_cond_69701___redundant_placeholder2]
Yforward_simple_rnn_1_while_forward_simple_rnn_1_while_cond_69701___redundant_placeholder3'
#forward_simple_rnn_1_while_identity
¶
forward_simple_rnn_1/while/LessLess&forward_simple_rnn_1_while_placeholderDforward_simple_rnn_1_while_less_forward_simple_rnn_1_strided_slice_1*
T0*
_output_shapes
: u
#forward_simple_rnn_1/while/IdentityIdentity#forward_simple_rnn_1/while/Less:z:0*
T0
*
_output_shapes
: "S
#forward_simple_rnn_1_while_identity,forward_simple_rnn_1/while/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :ÿÿÿÿÿÿÿÿÿ@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
:
å 
Ê
while_body_67251
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_01
while_simple_rnn_cell_5_67273_0:@@-
while_simple_rnn_cell_5_67275_0:@1
while_simple_rnn_cell_5_67277_0:@@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor/
while_simple_rnn_cell_5_67273:@@+
while_simple_rnn_cell_5_67275:@/
while_simple_rnn_cell_5_67277:@@¢/while/simple_rnn_cell_5/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
element_dtype0
/while/simple_rnn_cell_5/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_simple_rnn_cell_5_67273_0while_simple_rnn_cell_5_67275_0while_simple_rnn_cell_5_67277_0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_simple_rnn_cell_5_layer_call_and_return_conditional_losses_67238á
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder8while/simple_rnn_cell_5/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:éèÒM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_4Identity8while/simple_rnn_cell_5/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@~

while/NoOpNoOp0^while/simple_rnn_cell_5/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"@
while_simple_rnn_cell_5_67273while_simple_rnn_cell_5_67273_0"@
while_simple_rnn_cell_5_67275while_simple_rnn_cell_5_67275_0"@
while_simple_rnn_cell_5_67277while_simple_rnn_cell_5_67277_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ@: : : : : 2b
/while/simple_rnn_cell_5/StatefulPartitionedCall/while/simple_rnn_cell_5/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
: 
Å	
ó
B__inference_dense_3_layer_call_and_return_conditional_losses_70665

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
©,
Ç
while_body_71229
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0J
8while_simple_rnn_cell_5_matmul_readvariableop_resource_0:@@G
9while_simple_rnn_cell_5_biasadd_readvariableop_resource_0:@L
:while_simple_rnn_cell_5_matmul_1_readvariableop_resource_0:@@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorH
6while_simple_rnn_cell_5_matmul_readvariableop_resource:@@E
7while_simple_rnn_cell_5_biasadd_readvariableop_resource:@J
8while_simple_rnn_cell_5_matmul_1_readvariableop_resource:@@¢.while/simple_rnn_cell_5/BiasAdd/ReadVariableOp¢-while/simple_rnn_cell_5/MatMul/ReadVariableOp¢/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
element_dtype0¦
-while/simple_rnn_cell_5/MatMul/ReadVariableOpReadVariableOp8while_simple_rnn_cell_5_matmul_readvariableop_resource_0*
_output_shapes

:@@*
dtype0Ã
while/simple_rnn_cell_5/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:05while/simple_rnn_cell_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¤
.while/simple_rnn_cell_5/BiasAdd/ReadVariableOpReadVariableOp9while_simple_rnn_cell_5_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype0¾
while/simple_rnn_cell_5/BiasAddBiasAdd(while/simple_rnn_cell_5/MatMul:product:06while/simple_rnn_cell_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@ª
/while/simple_rnn_cell_5/MatMul_1/ReadVariableOpReadVariableOp:while_simple_rnn_cell_5_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype0ª
 while/simple_rnn_cell_5/MatMul_1MatMulwhile_placeholder_27while/simple_rnn_cell_5/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¬
while/simple_rnn_cell_5/addAddV2(while/simple_rnn_cell_5/BiasAdd:output:0*while/simple_rnn_cell_5/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@w
while/simple_rnn_cell_5/TanhTanhwhile/simple_rnn_cell_5/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@É
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder while/simple_rnn_cell_5/Tanh:y:0*
_output_shapes
: *
element_dtype0:éèÒM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: }
while/Identity_4Identity while/simple_rnn_cell_5/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@ß

while/NoOpNoOp/^while/simple_rnn_cell_5/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_5/MatMul/ReadVariableOp0^while/simple_rnn_cell_5/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"t
7while_simple_rnn_cell_5_biasadd_readvariableop_resource9while_simple_rnn_cell_5_biasadd_readvariableop_resource_0"v
8while_simple_rnn_cell_5_matmul_1_readvariableop_resource:while_simple_rnn_cell_5_matmul_1_readvariableop_resource_0"r
6while_simple_rnn_cell_5_matmul_readvariableop_resource8while_simple_rnn_cell_5_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ@: : : : : 2`
.while/simple_rnn_cell_5/BiasAdd/ReadVariableOp.while/simple_rnn_cell_5/BiasAdd/ReadVariableOp2^
-while/simple_rnn_cell_5/MatMul/ReadVariableOp-while/simple_rnn_cell_5/MatMul/ReadVariableOp2b
/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp/while/simple_rnn_cell_5/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
: 
Õ
¥
while_cond_67927
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_13
/while_while_cond_67927___redundant_placeholder03
/while_while_cond_67927___redundant_placeholder13
/while_while_cond_67927___redundant_placeholder23
/while_while_cond_67927___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :ÿÿÿÿÿÿÿÿÿ@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
:"L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*Ç
serving_default³
X
embedding_1_inputC
#serving_default_embedding_1_input:0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ;
dense_30
StatefulPartitionedCall:0ÿÿÿÿÿÿÿÿÿtensorflow/serving/predict:´Ö

layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
layer_with_weights-3
layer-3
	optimizer
	variables
trainable_variables
regularization_losses
		keras_api


signatures
__call__
+&call_and_return_all_conditional_losses
_default_save_signature"
_tf_keras_sequential
·

embeddings
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
Î
forward_layer
backward_layer
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
½

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
½

kernel
bias
	variables
trainable_variables
 regularization_losses
!	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
ª
"iter

#beta_1

$beta_2
	%decay
&learning_ratem{m|m}m~m'm(m)m*m+m,mvvvvv'v(v)v*v+v,v"
	optimizer
n
0
'1
(2
)3
*4
+5
,6
7
8
9
10"
trackable_list_wrapper
n
0
'1
(2
)3
*4
+5
,6
7
8
9
10"
trackable_list_wrapper
 "
trackable_list_wrapper
Î
-non_trainable_variables

.layers
/metrics
0layer_regularization_losses
1layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
-
serving_default"
signature_map
):'	© @2embedding_1/embeddings
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
°
2non_trainable_variables

3layers
4metrics
5layer_regularization_losses
6layer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
Å
7cell
8
state_spec
9	variables
:trainable_variables
;regularization_losses
<	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_rnn_layer
Å
=cell
>
state_spec
?	variables
@trainable_variables
Aregularization_losses
B	keras_api
__call__
+ &call_and_return_all_conditional_losses"
_tf_keras_rnn_layer
J
'0
(1
)2
*3
+4
,5"
trackable_list_wrapper
J
'0
(1
)2
*3
+4
,5"
trackable_list_wrapper
 "
trackable_list_wrapper
°
Cnon_trainable_variables

Dlayers
Emetrics
Flayer_regularization_losses
Glayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
!:	@2dense_2/kernel
:@2dense_2/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
°
Hnon_trainable_variables

Ilayers
Jmetrics
Klayer_regularization_losses
Llayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
 :@2dense_3/kernel
:2dense_3/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
°
Mnon_trainable_variables

Nlayers
Ometrics
Player_regularization_losses
Qlayer_metrics
	variables
trainable_variables
 regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
O:M@@2=bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/kernel
Y:W@@2Gbidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/recurrent_kernel
I:G@2;bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/bias
P:N@@2>bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/kernel
Z:X@@2Hbidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/recurrent_kernel
J:H@2<bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/bias
 "
trackable_list_wrapper
<
0
1
2
3"
trackable_list_wrapper
.
R0
S1"
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
Ó

'kernel
(recurrent_kernel
)bias
T	variables
Utrainable_variables
Vregularization_losses
W	keras_api
¡__call__
+¢&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
5
'0
(1
)2"
trackable_list_wrapper
5
'0
(1
)2"
trackable_list_wrapper
 "
trackable_list_wrapper
¼

Xstates
Ynon_trainable_variables

Zlayers
[metrics
\layer_regularization_losses
]layer_metrics
9	variables
:trainable_variables
;regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
Ó

*kernel
+recurrent_kernel
,bias
^	variables
_trainable_variables
`regularization_losses
a	keras_api
£__call__
+¤&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
5
*0
+1
,2"
trackable_list_wrapper
5
*0
+1
,2"
trackable_list_wrapper
 "
trackable_list_wrapper
¼

bstates
cnon_trainable_variables

dlayers
emetrics
flayer_regularization_losses
glayer_metrics
?	variables
@trainable_variables
Aregularization_losses
__call__
+ &call_and_return_all_conditional_losses
' "call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
.
0
1"
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
N
	htotal
	icount
j	variables
k	keras_api"
_tf_keras_metric
^
	ltotal
	mcount
n
_fn_kwargs
o	variables
p	keras_api"
_tf_keras_metric
5
'0
(1
)2"
trackable_list_wrapper
5
'0
(1
)2"
trackable_list_wrapper
 "
trackable_list_wrapper
°
qnon_trainable_variables

rlayers
smetrics
tlayer_regularization_losses
ulayer_metrics
T	variables
Utrainable_variables
Vregularization_losses
¡__call__
+¢&call_and_return_all_conditional_losses
'¢"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
70"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
5
*0
+1
,2"
trackable_list_wrapper
5
*0
+1
,2"
trackable_list_wrapper
 "
trackable_list_wrapper
°
vnon_trainable_variables

wlayers
xmetrics
ylayer_regularization_losses
zlayer_metrics
^	variables
_trainable_variables
`regularization_losses
£__call__
+¤&call_and_return_all_conditional_losses
'¤"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
=0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
:  (2total
:  (2count
.
h0
i1"
trackable_list_wrapper
-
j	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
l0
m1"
trackable_list_wrapper
-
o	variables"
_generic_user_object
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
.:,	© @2Adam/embedding_1/embeddings/m
&:$	@2Adam/dense_2/kernel/m
:@2Adam/dense_2/bias/m
%:#@2Adam/dense_3/kernel/m
:2Adam/dense_3/bias/m
T:R@@2DAdam/bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/kernel/m
^:\@@2NAdam/bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/recurrent_kernel/m
N:L@2BAdam/bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/bias/m
U:S@@2EAdam/bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/kernel/m
_:]@@2OAdam/bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/recurrent_kernel/m
O:M@2CAdam/bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/bias/m
.:,	© @2Adam/embedding_1/embeddings/v
&:$	@2Adam/dense_2/kernel/v
:@2Adam/dense_2/bias/v
%:#@2Adam/dense_3/kernel/v
:2Adam/dense_3/bias/v
T:R@@2DAdam/bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/kernel/v
^:\@@2NAdam/bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/recurrent_kernel/v
N:L@2BAdam/bidirectional_1/forward_simple_rnn_1/simple_rnn_cell_4/bias/v
U:S@@2EAdam/bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/kernel/v
_:]@@2OAdam/bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/recurrent_kernel/v
O:M@2CAdam/bidirectional_1/backward_simple_rnn_1/simple_rnn_cell_5/bias/v
þ2û
,__inference_sequential_1_layer_call_fn_68402
,__inference_sequential_1_layer_call_fn_68972
,__inference_sequential_1_layer_call_fn_68999
,__inference_sequential_1_layer_call_fn_68846À
·²³
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

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
ê2ç
G__inference_sequential_1_layer_call_and_return_conditional_losses_69286
G__inference_sequential_1_layer_call_and_return_conditional_losses_69573
G__inference_sequential_1_layer_call_and_return_conditional_losses_68878
G__inference_sequential_1_layer_call_and_return_conditional_losses_68910À
·²³
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

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
ÕBÒ
 __inference__wrapped_model_66896embedding_1_input"
²
FullArgSpec
args 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Õ2Ò
+__inference_embedding_1_layer_call_fn_69580¢
²
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
annotationsª *
 
ð2í
F__inference_embedding_1_layer_call_and_return_conditional_losses_69590¢
²
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
annotationsª *
 
°2­
/__inference_bidirectional_1_layer_call_fn_69607
/__inference_bidirectional_1_layer_call_fn_69624
/__inference_bidirectional_1_layer_call_fn_69642
/__inference_bidirectional_1_layer_call_fn_69660æ
Ý²Ù
FullArgSpecO
argsGD
jself
jinputs

jtraining
jmask
jinitial_state
j	constants
varargs
 
varkw
 
defaults
p 

 

 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
2
J__inference_bidirectional_1_layer_call_and_return_conditional_losses_69876
J__inference_bidirectional_1_layer_call_and_return_conditional_losses_70092
J__inference_bidirectional_1_layer_call_and_return_conditional_losses_70359
J__inference_bidirectional_1_layer_call_and_return_conditional_losses_70626æ
Ý²Ù
FullArgSpecO
argsGD
jself
jinputs

jtraining
jmask
jinitial_state
j	constants
varargs
 
varkw
 
defaults
p 

 

 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
Ñ2Î
'__inference_dense_2_layer_call_fn_70635¢
²
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
annotationsª *
 
ì2é
B__inference_dense_2_layer_call_and_return_conditional_losses_70646¢
²
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
annotationsª *
 
Ñ2Î
'__inference_dense_3_layer_call_fn_70655¢
²
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
annotationsª *
 
ì2é
B__inference_dense_3_layer_call_and_return_conditional_losses_70665¢
²
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
annotationsª *
 
ÔBÑ
#__inference_signature_wrapper_68945embedding_1_input"
²
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
annotationsª *
 
³2°
4__inference_forward_simple_rnn_1_layer_call_fn_70676
4__inference_forward_simple_rnn_1_layer_call_fn_70687
4__inference_forward_simple_rnn_1_layer_call_fn_70698
4__inference_forward_simple_rnn_1_layer_call_fn_70709Õ
Ì²È
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
2
O__inference_forward_simple_rnn_1_layer_call_and_return_conditional_losses_70817
O__inference_forward_simple_rnn_1_layer_call_and_return_conditional_losses_70925
O__inference_forward_simple_rnn_1_layer_call_and_return_conditional_losses_71033
O__inference_forward_simple_rnn_1_layer_call_and_return_conditional_losses_71141Õ
Ì²È
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
·2´
5__inference_backward_simple_rnn_1_layer_call_fn_71152
5__inference_backward_simple_rnn_1_layer_call_fn_71163
5__inference_backward_simple_rnn_1_layer_call_fn_71174
5__inference_backward_simple_rnn_1_layer_call_fn_71185Õ
Ì²È
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
£2 
P__inference_backward_simple_rnn_1_layer_call_and_return_conditional_losses_71295
P__inference_backward_simple_rnn_1_layer_call_and_return_conditional_losses_71405
P__inference_backward_simple_rnn_1_layer_call_and_return_conditional_losses_71515
P__inference_backward_simple_rnn_1_layer_call_and_return_conditional_losses_71625Õ
Ì²È
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
ª2§
1__inference_simple_rnn_cell_4_layer_call_fn_71639
1__inference_simple_rnn_cell_4_layer_call_fn_71653¾
µ²±
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
à2Ý
L__inference_simple_rnn_cell_4_layer_call_and_return_conditional_losses_71670
L__inference_simple_rnn_cell_4_layer_call_and_return_conditional_losses_71687¾
µ²±
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
ª2§
1__inference_simple_rnn_cell_5_layer_call_fn_71701
1__inference_simple_rnn_cell_5_layer_call_fn_71715¾
µ²±
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
à2Ý
L__inference_simple_rnn_cell_5_layer_call_and_return_conditional_losses_71732
L__inference_simple_rnn_cell_5_layer_call_and_return_conditional_losses_71749¾
µ²±
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 ª
 __inference__wrapped_model_66896')(*,+C¢@
9¢6
41
embedding_1_inputÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "1ª.
,
dense_3!
dense_3ÿÿÿÿÿÿÿÿÿÑ
P__inference_backward_simple_rnn_1_layer_call_and_return_conditional_losses_71295}*,+O¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@

 
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ@
 Ñ
P__inference_backward_simple_rnn_1_layer_call_and_return_conditional_losses_71405}*,+O¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@

 
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ@
 Ó
P__inference_backward_simple_rnn_1_layer_call_and_return_conditional_losses_71515*,+Q¢N
G¢D
63
inputs'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ@
 Ó
P__inference_backward_simple_rnn_1_layer_call_and_return_conditional_losses_71625*,+Q¢N
G¢D
63
inputs'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ@
 ©
5__inference_backward_simple_rnn_1_layer_call_fn_71152p*,+O¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@

 
p 

 
ª "ÿÿÿÿÿÿÿÿÿ@©
5__inference_backward_simple_rnn_1_layer_call_fn_71163p*,+O¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@

 
p

 
ª "ÿÿÿÿÿÿÿÿÿ@«
5__inference_backward_simple_rnn_1_layer_call_fn_71174r*,+Q¢N
G¢D
63
inputs'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p 

 
ª "ÿÿÿÿÿÿÿÿÿ@«
5__inference_backward_simple_rnn_1_layer_call_fn_71185r*,+Q¢N
G¢D
63
inputs'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p

 
ª "ÿÿÿÿÿÿÿÿÿ@Ý
J__inference_bidirectional_1_layer_call_and_return_conditional_losses_69876')(*,+\¢Y
R¢O
=:
85
inputs/0'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p 

 

 

 
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 Ý
J__inference_bidirectional_1_layer_call_and_return_conditional_losses_70092')(*,+\¢Y
R¢O
=:
85
inputs/0'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p

 

 

 
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 ò
J__inference_bidirectional_1_layer_call_and_return_conditional_losses_70359£')(*,+q¢n
g¢d
-*
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
p 
'$
maskÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ


 

 
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 ò
J__inference_bidirectional_1_layer_call_and_return_conditional_losses_70626£')(*,+q¢n
g¢d
-*
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
p
'$
maskÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ


 

 
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 µ
/__inference_bidirectional_1_layer_call_fn_69607')(*,+\¢Y
R¢O
=:
85
inputs/0'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p 

 

 

 
ª "ÿÿÿÿÿÿÿÿÿµ
/__inference_bidirectional_1_layer_call_fn_69624')(*,+\¢Y
R¢O
=:
85
inputs/0'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p

 

 

 
ª "ÿÿÿÿÿÿÿÿÿÊ
/__inference_bidirectional_1_layer_call_fn_69642')(*,+q¢n
g¢d
-*
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
p 
'$
maskÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ


 

 
ª "ÿÿÿÿÿÿÿÿÿÊ
/__inference_bidirectional_1_layer_call_fn_69660')(*,+q¢n
g¢d
-*
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
p
'$
maskÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ


 

 
ª "ÿÿÿÿÿÿÿÿÿ£
B__inference_dense_2_layer_call_and_return_conditional_losses_70646]0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ@
 {
'__inference_dense_2_layer_call_fn_70635P0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ@¢
B__inference_dense_3_layer_call_and_return_conditional_losses_70665\/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ@
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 z
'__inference_dense_3_layer_call_fn_70655O/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ@
ª "ÿÿÿÿÿÿÿÿÿ»
F__inference_embedding_1_layer_call_and_return_conditional_losses_69590q8¢5
.¢+
)&
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "2¢/
(%
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 
+__inference_embedding_1_layer_call_fn_69580d8¢5
.¢+
)&
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "%"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@Ð
O__inference_forward_simple_rnn_1_layer_call_and_return_conditional_losses_70817}')(O¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@

 
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ@
 Ð
O__inference_forward_simple_rnn_1_layer_call_and_return_conditional_losses_70925}')(O¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@

 
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ@
 Ò
O__inference_forward_simple_rnn_1_layer_call_and_return_conditional_losses_71033')(Q¢N
G¢D
63
inputs'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ@
 Ò
O__inference_forward_simple_rnn_1_layer_call_and_return_conditional_losses_71141')(Q¢N
G¢D
63
inputs'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ@
 ¨
4__inference_forward_simple_rnn_1_layer_call_fn_70676p')(O¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@

 
p 

 
ª "ÿÿÿÿÿÿÿÿÿ@¨
4__inference_forward_simple_rnn_1_layer_call_fn_70687p')(O¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@

 
p

 
ª "ÿÿÿÿÿÿÿÿÿ@ª
4__inference_forward_simple_rnn_1_layer_call_fn_70698r')(Q¢N
G¢D
63
inputs'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p 

 
ª "ÿÿÿÿÿÿÿÿÿ@ª
4__inference_forward_simple_rnn_1_layer_call_fn_70709r')(Q¢N
G¢D
63
inputs'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p

 
ª "ÿÿÿÿÿÿÿÿÿ@Í
G__inference_sequential_1_layer_call_and_return_conditional_losses_68878')(*,+K¢H
A¢>
41
embedding_1_inputÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 Í
G__inference_sequential_1_layer_call_and_return_conditional_losses_68910')(*,+K¢H
A¢>
41
embedding_1_inputÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 Á
G__inference_sequential_1_layer_call_and_return_conditional_losses_69286v')(*,+@¢=
6¢3
)&
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 Á
G__inference_sequential_1_layer_call_and_return_conditional_losses_69573v')(*,+@¢=
6¢3
)&
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ¤
,__inference_sequential_1_layer_call_fn_68402t')(*,+K¢H
A¢>
41
embedding_1_inputÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿ¤
,__inference_sequential_1_layer_call_fn_68846t')(*,+K¢H
A¢>
41
embedding_1_inputÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿ
,__inference_sequential_1_layer_call_fn_68972i')(*,+@¢=
6¢3
)&
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
,__inference_sequential_1_layer_call_fn_68999i')(*,+@¢=
6¢3
)&
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿÂ
#__inference_signature_wrapper_68945')(*,+X¢U
¢ 
NªK
I
embedding_1_input41
embedding_1_inputÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"1ª.
,
dense_3!
dense_3ÿÿÿÿÿÿÿÿÿ
L__inference_simple_rnn_cell_4_layer_call_and_return_conditional_losses_71670·')(\¢Y
R¢O
 
inputsÿÿÿÿÿÿÿÿÿ@
'¢$
"
states/0ÿÿÿÿÿÿÿÿÿ@
p 
ª "R¢O
H¢E

0/0ÿÿÿÿÿÿÿÿÿ@
$!

0/1/0ÿÿÿÿÿÿÿÿÿ@
 
L__inference_simple_rnn_cell_4_layer_call_and_return_conditional_losses_71687·')(\¢Y
R¢O
 
inputsÿÿÿÿÿÿÿÿÿ@
'¢$
"
states/0ÿÿÿÿÿÿÿÿÿ@
p
ª "R¢O
H¢E

0/0ÿÿÿÿÿÿÿÿÿ@
$!

0/1/0ÿÿÿÿÿÿÿÿÿ@
 ß
1__inference_simple_rnn_cell_4_layer_call_fn_71639©')(\¢Y
R¢O
 
inputsÿÿÿÿÿÿÿÿÿ@
'¢$
"
states/0ÿÿÿÿÿÿÿÿÿ@
p 
ª "D¢A

0ÿÿÿÿÿÿÿÿÿ@
"

1/0ÿÿÿÿÿÿÿÿÿ@ß
1__inference_simple_rnn_cell_4_layer_call_fn_71653©')(\¢Y
R¢O
 
inputsÿÿÿÿÿÿÿÿÿ@
'¢$
"
states/0ÿÿÿÿÿÿÿÿÿ@
p
ª "D¢A

0ÿÿÿÿÿÿÿÿÿ@
"

1/0ÿÿÿÿÿÿÿÿÿ@
L__inference_simple_rnn_cell_5_layer_call_and_return_conditional_losses_71732·*,+\¢Y
R¢O
 
inputsÿÿÿÿÿÿÿÿÿ@
'¢$
"
states/0ÿÿÿÿÿÿÿÿÿ@
p 
ª "R¢O
H¢E

0/0ÿÿÿÿÿÿÿÿÿ@
$!

0/1/0ÿÿÿÿÿÿÿÿÿ@
 
L__inference_simple_rnn_cell_5_layer_call_and_return_conditional_losses_71749·*,+\¢Y
R¢O
 
inputsÿÿÿÿÿÿÿÿÿ@
'¢$
"
states/0ÿÿÿÿÿÿÿÿÿ@
p
ª "R¢O
H¢E

0/0ÿÿÿÿÿÿÿÿÿ@
$!

0/1/0ÿÿÿÿÿÿÿÿÿ@
 ß
1__inference_simple_rnn_cell_5_layer_call_fn_71701©*,+\¢Y
R¢O
 
inputsÿÿÿÿÿÿÿÿÿ@
'¢$
"
states/0ÿÿÿÿÿÿÿÿÿ@
p 
ª "D¢A

0ÿÿÿÿÿÿÿÿÿ@
"

1/0ÿÿÿÿÿÿÿÿÿ@ß
1__inference_simple_rnn_cell_5_layer_call_fn_71715©*,+\¢Y
R¢O
 
inputsÿÿÿÿÿÿÿÿÿ@
'¢$
"
states/0ÿÿÿÿÿÿÿÿÿ@
p
ª "D¢A

0ÿÿÿÿÿÿÿÿÿ@
"

1/0ÿÿÿÿÿÿÿÿÿ@