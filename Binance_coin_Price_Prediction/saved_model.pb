рЦ5
∞€
D
AddV2
x"T
y"T
z"T"
Ttype:
2	АР
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( И
А
BiasAdd

value"T	
bias"T
output"T""
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
$
DisableCopyOnRead
resourceИ
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
Ж
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( И
?
Mul
x"T
y"T
z"T"
Ttype:
2	Р
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
dtypetypeИ
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
list(type)(0И
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
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
output"out_typeКнout_type"	
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
[
Split
	split_dim

value"T
output"T*	num_split"
	num_splitint(0"	
Ttype
-
Sqrt
x"T
y"T"
Ttype:

2
Ѕ
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
executor_typestring И®
@
StaticRegexFullMatch	
input

output
"
patternstring
ч
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
∞
TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type/
output_handleКйиelement_dtype"
element_dtypetype"

shape_typetype:
2	
Я
TensorListReserve
element_shape"
shape_type
num_elements(
handleКйиelement_dtype"
element_dtypetype"

shape_typetype:
2	
И
TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsint€€€€€€€€€
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
Ц
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 И
Ф
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
И"serve*2.12.02v2.12.0-rc1-12-g0db597d0d758Юа1
b
ConstConst*"
_output_shapes
:*
dtype0*!
valueB*roG
d
Const_1Const*"
_output_shapes
:*
dtype0*!
valueB*ѕ;C
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
В
Adamax/u/dense_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdamax/u/dense_2/bias
{
)Adamax/u/dense_2/bias/Read/ReadVariableOpReadVariableOpAdamax/u/dense_2/bias*
_output_shapes
:*
dtype0
В
Adamax/m/dense_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdamax/m/dense_2/bias
{
)Adamax/m/dense_2/bias/Read/ReadVariableOpReadVariableOpAdamax/m/dense_2/bias*
_output_shapes
:*
dtype0
К
Adamax/u/dense_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdamax/u/dense_2/kernel
Г
+Adamax/u/dense_2/kernel/Read/ReadVariableOpReadVariableOpAdamax/u/dense_2/kernel*
_output_shapes

:
*
dtype0
К
Adamax/m/dense_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdamax/m/dense_2/kernel
Г
+Adamax/m/dense_2/kernel/Read/ReadVariableOpReadVariableOpAdamax/m/dense_2/kernel*
_output_shapes

:
*
dtype0
Ъ
!Adamax/u/lstm_8/lstm_cell_14/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*2
shared_name#!Adamax/u/lstm_8/lstm_cell_14/bias
У
5Adamax/u/lstm_8/lstm_cell_14/bias/Read/ReadVariableOpReadVariableOp!Adamax/u/lstm_8/lstm_cell_14/bias*
_output_shapes
:(*
dtype0
Ъ
!Adamax/m/lstm_8/lstm_cell_14/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*2
shared_name#!Adamax/m/lstm_8/lstm_cell_14/bias
У
5Adamax/m/lstm_8/lstm_cell_14/bias/Read/ReadVariableOpReadVariableOp!Adamax/m/lstm_8/lstm_cell_14/bias*
_output_shapes
:(*
dtype0
ґ
-Adamax/u/lstm_8/lstm_cell_14/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*>
shared_name/-Adamax/u/lstm_8/lstm_cell_14/recurrent_kernel
ѓ
AAdamax/u/lstm_8/lstm_cell_14/recurrent_kernel/Read/ReadVariableOpReadVariableOp-Adamax/u/lstm_8/lstm_cell_14/recurrent_kernel*
_output_shapes

:
(*
dtype0
ґ
-Adamax/m/lstm_8/lstm_cell_14/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*>
shared_name/-Adamax/m/lstm_8/lstm_cell_14/recurrent_kernel
ѓ
AAdamax/m/lstm_8/lstm_cell_14/recurrent_kernel/Read/ReadVariableOpReadVariableOp-Adamax/m/lstm_8/lstm_cell_14/recurrent_kernel*
_output_shapes

:
(*
dtype0
Ґ
#Adamax/u/lstm_8/lstm_cell_14/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*4
shared_name%#Adamax/u/lstm_8/lstm_cell_14/kernel
Ы
7Adamax/u/lstm_8/lstm_cell_14/kernel/Read/ReadVariableOpReadVariableOp#Adamax/u/lstm_8/lstm_cell_14/kernel*
_output_shapes

:2(*
dtype0
Ґ
#Adamax/m/lstm_8/lstm_cell_14/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*4
shared_name%#Adamax/m/lstm_8/lstm_cell_14/kernel
Ы
7Adamax/m/lstm_8/lstm_cell_14/kernel/Read/ReadVariableOpReadVariableOp#Adamax/m/lstm_8/lstm_cell_14/kernel*
_output_shapes

:2(*
dtype0
Ы
!Adamax/u/lstm_7/lstm_cell_13/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:»*2
shared_name#!Adamax/u/lstm_7/lstm_cell_13/bias
Ф
5Adamax/u/lstm_7/lstm_cell_13/bias/Read/ReadVariableOpReadVariableOp!Adamax/u/lstm_7/lstm_cell_13/bias*
_output_shapes	
:»*
dtype0
Ы
!Adamax/m/lstm_7/lstm_cell_13/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:»*2
shared_name#!Adamax/m/lstm_7/lstm_cell_13/bias
Ф
5Adamax/m/lstm_7/lstm_cell_13/bias/Read/ReadVariableOpReadVariableOp!Adamax/m/lstm_7/lstm_cell_13/bias*
_output_shapes	
:»*
dtype0
Ј
-Adamax/u/lstm_7/lstm_cell_13/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2»*>
shared_name/-Adamax/u/lstm_7/lstm_cell_13/recurrent_kernel
∞
AAdamax/u/lstm_7/lstm_cell_13/recurrent_kernel/Read/ReadVariableOpReadVariableOp-Adamax/u/lstm_7/lstm_cell_13/recurrent_kernel*
_output_shapes
:	2»*
dtype0
Ј
-Adamax/m/lstm_7/lstm_cell_13/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2»*>
shared_name/-Adamax/m/lstm_7/lstm_cell_13/recurrent_kernel
∞
AAdamax/m/lstm_7/lstm_cell_13/recurrent_kernel/Read/ReadVariableOpReadVariableOp-Adamax/m/lstm_7/lstm_cell_13/recurrent_kernel*
_output_shapes
:	2»*
dtype0
£
#Adamax/u/lstm_7/lstm_cell_13/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d»*4
shared_name%#Adamax/u/lstm_7/lstm_cell_13/kernel
Ь
7Adamax/u/lstm_7/lstm_cell_13/kernel/Read/ReadVariableOpReadVariableOp#Adamax/u/lstm_7/lstm_cell_13/kernel*
_output_shapes
:	d»*
dtype0
£
#Adamax/m/lstm_7/lstm_cell_13/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d»*4
shared_name%#Adamax/m/lstm_7/lstm_cell_13/kernel
Ь
7Adamax/m/lstm_7/lstm_cell_13/kernel/Read/ReadVariableOpReadVariableOp#Adamax/m/lstm_7/lstm_cell_13/kernel*
_output_shapes
:	d»*
dtype0
Ы
!Adamax/u/lstm_6/lstm_cell_12/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:Р*2
shared_name#!Adamax/u/lstm_6/lstm_cell_12/bias
Ф
5Adamax/u/lstm_6/lstm_cell_12/bias/Read/ReadVariableOpReadVariableOp!Adamax/u/lstm_6/lstm_cell_12/bias*
_output_shapes	
:Р*
dtype0
Ы
!Adamax/m/lstm_6/lstm_cell_12/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:Р*2
shared_name#!Adamax/m/lstm_6/lstm_cell_12/bias
Ф
5Adamax/m/lstm_6/lstm_cell_12/bias/Read/ReadVariableOpReadVariableOp!Adamax/m/lstm_6/lstm_cell_12/bias*
_output_shapes	
:Р*
dtype0
Ј
-Adamax/u/lstm_6/lstm_cell_12/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	dР*>
shared_name/-Adamax/u/lstm_6/lstm_cell_12/recurrent_kernel
∞
AAdamax/u/lstm_6/lstm_cell_12/recurrent_kernel/Read/ReadVariableOpReadVariableOp-Adamax/u/lstm_6/lstm_cell_12/recurrent_kernel*
_output_shapes
:	dР*
dtype0
Ј
-Adamax/m/lstm_6/lstm_cell_12/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	dР*>
shared_name/-Adamax/m/lstm_6/lstm_cell_12/recurrent_kernel
∞
AAdamax/m/lstm_6/lstm_cell_12/recurrent_kernel/Read/ReadVariableOpReadVariableOp-Adamax/m/lstm_6/lstm_cell_12/recurrent_kernel*
_output_shapes
:	dР*
dtype0
£
#Adamax/u/lstm_6/lstm_cell_12/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	Р*4
shared_name%#Adamax/u/lstm_6/lstm_cell_12/kernel
Ь
7Adamax/u/lstm_6/lstm_cell_12/kernel/Read/ReadVariableOpReadVariableOp#Adamax/u/lstm_6/lstm_cell_12/kernel*
_output_shapes
:	Р*
dtype0
£
#Adamax/m/lstm_6/lstm_cell_12/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	Р*4
shared_name%#Adamax/m/lstm_6/lstm_cell_12/kernel
Ь
7Adamax/m/lstm_6/lstm_cell_12/kernel/Read/ReadVariableOpReadVariableOp#Adamax/m/lstm_6/lstm_cell_12/kernel*
_output_shapes
:	Р*
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
И
lstm_8/lstm_cell_14/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*)
shared_namelstm_8/lstm_cell_14/bias
Б
,lstm_8/lstm_cell_14/bias/Read/ReadVariableOpReadVariableOplstm_8/lstm_cell_14/bias*
_output_shapes
:(*
dtype0
§
$lstm_8/lstm_cell_14/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*5
shared_name&$lstm_8/lstm_cell_14/recurrent_kernel
Э
8lstm_8/lstm_cell_14/recurrent_kernel/Read/ReadVariableOpReadVariableOp$lstm_8/lstm_cell_14/recurrent_kernel*
_output_shapes

:
(*
dtype0
Р
lstm_8/lstm_cell_14/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*+
shared_namelstm_8/lstm_cell_14/kernel
Й
.lstm_8/lstm_cell_14/kernel/Read/ReadVariableOpReadVariableOplstm_8/lstm_cell_14/kernel*
_output_shapes

:2(*
dtype0
Й
lstm_7/lstm_cell_13/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:»*)
shared_namelstm_7/lstm_cell_13/bias
В
,lstm_7/lstm_cell_13/bias/Read/ReadVariableOpReadVariableOplstm_7/lstm_cell_13/bias*
_output_shapes	
:»*
dtype0
•
$lstm_7/lstm_cell_13/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2»*5
shared_name&$lstm_7/lstm_cell_13/recurrent_kernel
Ю
8lstm_7/lstm_cell_13/recurrent_kernel/Read/ReadVariableOpReadVariableOp$lstm_7/lstm_cell_13/recurrent_kernel*
_output_shapes
:	2»*
dtype0
С
lstm_7/lstm_cell_13/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d»*+
shared_namelstm_7/lstm_cell_13/kernel
К
.lstm_7/lstm_cell_13/kernel/Read/ReadVariableOpReadVariableOplstm_7/lstm_cell_13/kernel*
_output_shapes
:	d»*
dtype0
Й
lstm_6/lstm_cell_12/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:Р*)
shared_namelstm_6/lstm_cell_12/bias
В
,lstm_6/lstm_cell_12/bias/Read/ReadVariableOpReadVariableOplstm_6/lstm_cell_12/bias*
_output_shapes	
:Р*
dtype0
•
$lstm_6/lstm_cell_12/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	dР*5
shared_name&$lstm_6/lstm_cell_12/recurrent_kernel
Ю
8lstm_6/lstm_cell_12/recurrent_kernel/Read/ReadVariableOpReadVariableOp$lstm_6/lstm_cell_12/recurrent_kernel*
_output_shapes
:	dР*
dtype0
С
lstm_6/lstm_cell_12/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	Р*+
shared_namelstm_6/lstm_cell_12/kernel
К
.lstm_6/lstm_cell_12/kernel/Read/ReadVariableOpReadVariableOplstm_6/lstm_cell_12/kernel*
_output_shapes
:	Р*
dtype0
p
dense_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_2/bias
i
 dense_2/bias/Read/ReadVariableOpReadVariableOpdense_2/bias*
_output_shapes
:*
dtype0
x
dense_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*
shared_namedense_2/kernel
q
"dense_2/kernel/Read/ReadVariableOpReadVariableOpdense_2/kernel*
_output_shapes

:
*
dtype0
~
normalization_2/countVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *&
shared_namenormalization_2/count
w
)normalization_2/count/Read/ReadVariableOpReadVariableOpnormalization_2/count*
_output_shapes
: *
dtype0	
И
normalization_2/varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_namenormalization_2/variance
Б
,normalization_2/variance/Read/ReadVariableOpReadVariableOpnormalization_2/variance*
_output_shapes
:*
dtype0
А
normalization_2/meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_namenormalization_2/mean
y
(normalization_2/mean/Read/ReadVariableOpReadVariableOpnormalization_2/mean*
_output_shapes
:*
dtype0
В
serving_default_input_3Placeholder*+
_output_shapes
:€€€€€€€€€*
dtype0* 
shape:€€€€€€€€€
Л
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_3Const_1Constlstm_6/lstm_cell_12/kernel$lstm_6/lstm_cell_12/recurrent_kernellstm_6/lstm_cell_12/biaslstm_7/lstm_cell_13/kernel$lstm_7/lstm_cell_13/recurrent_kernellstm_7/lstm_cell_13/biaslstm_8/lstm_cell_14/kernel$lstm_8/lstm_cell_14/recurrent_kernellstm_8/lstm_cell_14/biasdense_2/kerneldense_2/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *,
f'R%
#__inference_signature_wrapper_77880

NoOpNoOp
ќi
Const_2Const"/device:CPU:0*
_output_shapes
: *
dtype0*Зi
valueэhBъh Bуh
ґ
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer-2
layer_with_weights-2
layer-3
layer-4
layer_with_weights-3
layer-5
layer-6
layer_with_weights-4
layer-7
		variables

trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures*
Њ
	keras_api

_keep_axis
_reduce_axis
_reduce_axis_mask
_broadcast_shape
mean

adapt_mean
variance
adapt_variance
	count
_adapt_function*
Ѕ
	variables
trainable_variables
regularization_losses
	keras_api
__call__
* &call_and_return_all_conditional_losses
!_random_generator
"cell
#
state_spec*
•
$	variables
%trainable_variables
&regularization_losses
'	keras_api
(__call__
*)&call_and_return_all_conditional_losses
*_random_generator* 
Ѕ
+	variables
,trainable_variables
-regularization_losses
.	keras_api
/__call__
*0&call_and_return_all_conditional_losses
1_random_generator
2cell
3
state_spec*
•
4	variables
5trainable_variables
6regularization_losses
7	keras_api
8__call__
*9&call_and_return_all_conditional_losses
:_random_generator* 
Ѕ
;	variables
<trainable_variables
=regularization_losses
>	keras_api
?__call__
*@&call_and_return_all_conditional_losses
A_random_generator
Bcell
C
state_spec*
•
D	variables
Etrainable_variables
Fregularization_losses
G	keras_api
H__call__
*I&call_and_return_all_conditional_losses
J_random_generator* 
¶
K	variables
Ltrainable_variables
Mregularization_losses
N	keras_api
O__call__
*P&call_and_return_all_conditional_losses

Qkernel
Rbias*
j
0
1
2
S3
T4
U5
V6
W7
X8
Y9
Z10
[11
Q12
R13*
R
S0
T1
U2
V3
W4
X5
Y6
Z7
[8
Q9
R10*
* 
∞
\non_trainable_variables

]layers
^metrics
_layer_regularization_losses
`layer_metrics
		variables

trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
atrace_0
btrace_1
ctrace_2
dtrace_3* 
6
etrace_0
ftrace_1
gtrace_2
htrace_3* 
 
i	capture_0
j	capture_1* 
p
k
_variables
l_iterations
m_learning_rate
n_index_dict
o_m
p_u
q_update_step_xla*

rserving_default* 
* 
* 
* 
* 
* 
b\
VARIABLE_VALUEnormalization_2/mean4layer_with_weights-0/mean/.ATTRIBUTES/VARIABLE_VALUE*
jd
VARIABLE_VALUEnormalization_2/variance8layer_with_weights-0/variance/.ATTRIBUTES/VARIABLE_VALUE*
d^
VARIABLE_VALUEnormalization_2/count5layer_with_weights-0/count/.ATTRIBUTES/VARIABLE_VALUE*

strace_0* 

S0
T1
U2*

S0
T1
U2*
* 
Я

tstates
unon_trainable_variables

vlayers
wmetrics
xlayer_regularization_losses
ylayer_metrics
	variables
trainable_variables
regularization_losses
__call__
* &call_and_return_all_conditional_losses
& "call_and_return_conditional_losses*
6
ztrace_0
{trace_1
|trace_2
}trace_3* 
8
~trace_0
trace_1
Аtrace_2
Бtrace_3* 
* 
л
В	variables
Гtrainable_variables
Дregularization_losses
Е	keras_api
Ж__call__
+З&call_and_return_all_conditional_losses
И_random_generator
Й
state_size

Skernel
Trecurrent_kernel
Ubias*
* 
* 
* 
* 
Ц
Кnon_trainable_variables
Лlayers
Мmetrics
 Нlayer_regularization_losses
Оlayer_metrics
$	variables
%trainable_variables
&regularization_losses
(__call__
*)&call_and_return_all_conditional_losses
&)"call_and_return_conditional_losses* 

Пtrace_0
Рtrace_1* 

Сtrace_0
Тtrace_1* 
* 

V0
W1
X2*

V0
W1
X2*
* 
•
Уstates
Фnon_trainable_variables
Хlayers
Цmetrics
 Чlayer_regularization_losses
Шlayer_metrics
+	variables
,trainable_variables
-regularization_losses
/__call__
*0&call_and_return_all_conditional_losses
&0"call_and_return_conditional_losses*
:
Щtrace_0
Ъtrace_1
Ыtrace_2
Ьtrace_3* 
:
Эtrace_0
Юtrace_1
Яtrace_2
†trace_3* 
* 
л
°	variables
Ґtrainable_variables
£regularization_losses
§	keras_api
•__call__
+¶&call_and_return_all_conditional_losses
І_random_generator
®
state_size

Vkernel
Wrecurrent_kernel
Xbias*
* 
* 
* 
* 
Ц
©non_trainable_variables
™layers
Ђmetrics
 ђlayer_regularization_losses
≠layer_metrics
4	variables
5trainable_variables
6regularization_losses
8__call__
*9&call_and_return_all_conditional_losses
&9"call_and_return_conditional_losses* 

Ѓtrace_0
ѓtrace_1* 

∞trace_0
±trace_1* 
* 

Y0
Z1
[2*

Y0
Z1
[2*
* 
•
≤states
≥non_trainable_variables
іlayers
µmetrics
 ґlayer_regularization_losses
Јlayer_metrics
;	variables
<trainable_variables
=regularization_losses
?__call__
*@&call_and_return_all_conditional_losses
&@"call_and_return_conditional_losses*
:
Єtrace_0
єtrace_1
Їtrace_2
їtrace_3* 
:
Љtrace_0
љtrace_1
Њtrace_2
њtrace_3* 
* 
л
ј	variables
Ѕtrainable_variables
¬regularization_losses
√	keras_api
ƒ__call__
+≈&call_and_return_all_conditional_losses
∆_random_generator
«
state_size

Ykernel
Zrecurrent_kernel
[bias*
* 
* 
* 
* 
Ц
»non_trainable_variables
…layers
 metrics
 Ћlayer_regularization_losses
ћlayer_metrics
D	variables
Etrainable_variables
Fregularization_losses
H__call__
*I&call_and_return_all_conditional_losses
&I"call_and_return_conditional_losses* 

Ќtrace_0
ќtrace_1* 

ѕtrace_0
–trace_1* 
* 

Q0
R1*

Q0
R1*
* 
Ш
—non_trainable_variables
“layers
”metrics
 ‘layer_regularization_losses
’layer_metrics
K	variables
Ltrainable_variables
Mregularization_losses
O__call__
*P&call_and_return_all_conditional_losses
&P"call_and_return_conditional_losses*

÷trace_0* 

„trace_0* 
^X
VARIABLE_VALUEdense_2/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_2/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUElstm_6/lstm_cell_12/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE*
d^
VARIABLE_VALUE$lstm_6/lstm_cell_12/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUElstm_6/lstm_cell_12/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUElstm_7/lstm_cell_13/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE*
d^
VARIABLE_VALUE$lstm_7/lstm_cell_13/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUElstm_7/lstm_cell_13/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUElstm_8/lstm_cell_14/kernel&variables/9/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUE$lstm_8/lstm_cell_14/recurrent_kernel'variables/10/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUElstm_8/lstm_cell_14/bias'variables/11/.ATTRIBUTES/VARIABLE_VALUE*

0
1
2*
<
0
1
2
3
4
5
6
7*

Ў0
ў1*
* 
* 
 
i	capture_0
j	capture_1* 
 
i	capture_0
j	capture_1* 
 
i	capture_0
j	capture_1* 
 
i	capture_0
j	capture_1* 
 
i	capture_0
j	capture_1* 
 
i	capture_0
j	capture_1* 
 
i	capture_0
j	capture_1* 
 
i	capture_0
j	capture_1* 
* 
* 
»
l0
Џ1
џ2
№3
Ё4
ё5
я6
а7
б8
в9
г10
д11
е12
ж13
з14
и15
й16
к17
л18
м19
н20
о21
п22*
SM
VARIABLE_VALUE	iteration0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUElearning_rate3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
]
Џ0
№1
ё2
а3
в4
д5
ж6
и7
к8
м9
о10*
]
џ0
Ё1
я2
б3
г4
е5
з6
й7
л8
н9
п10*
* 
 
i	capture_0
j	capture_1* 
* 
* 
* 

"0*
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

S0
T1
U2*

S0
T1
U2*
* 
Ю
рnon_trainable_variables
сlayers
тmetrics
 уlayer_regularization_losses
фlayer_metrics
В	variables
Гtrainable_variables
Дregularization_losses
Ж__call__
+З&call_and_return_all_conditional_losses
'З"call_and_return_conditional_losses*

хtrace_0
цtrace_1* 

чtrace_0
шtrace_1* 
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

20*
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

V0
W1
X2*

V0
W1
X2*
* 
Ю
щnon_trainable_variables
ъlayers
ыmetrics
 ьlayer_regularization_losses
эlayer_metrics
°	variables
Ґtrainable_variables
£regularization_losses
•__call__
+¶&call_and_return_all_conditional_losses
'¶"call_and_return_conditional_losses*

юtrace_0
€trace_1* 

Аtrace_0
Бtrace_1* 
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

B0*
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

Y0
Z1
[2*

Y0
Z1
[2*
* 
Ю
Вnon_trainable_variables
Гlayers
Дmetrics
 Еlayer_regularization_losses
Жlayer_metrics
ј	variables
Ѕtrainable_variables
¬regularization_losses
ƒ__call__
+≈&call_and_return_all_conditional_losses
'≈"call_and_return_conditional_losses*

Зtrace_0
Иtrace_1* 

Йtrace_0
Кtrace_1* 
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
<
Л	variables
М	keras_api

Нtotal

Оcount*
M
П	variables
Р	keras_api

Сtotal

Тcount
У
_fn_kwargs*
nh
VARIABLE_VALUE#Adamax/m/lstm_6/lstm_cell_12/kernel1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE#Adamax/u/lstm_6/lstm_cell_12/kernel1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUE-Adamax/m/lstm_6/lstm_cell_12/recurrent_kernel1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUE-Adamax/u/lstm_6/lstm_cell_12/recurrent_kernel1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUE*
lf
VARIABLE_VALUE!Adamax/m/lstm_6/lstm_cell_12/bias1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUE*
lf
VARIABLE_VALUE!Adamax/u/lstm_6/lstm_cell_12/bias1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE#Adamax/m/lstm_7/lstm_cell_13/kernel1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE#Adamax/u/lstm_7/lstm_cell_13/kernel1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUE-Adamax/m/lstm_7/lstm_cell_13/recurrent_kernel1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUE*
ys
VARIABLE_VALUE-Adamax/u/lstm_7/lstm_cell_13/recurrent_kernel2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUE!Adamax/m/lstm_7/lstm_cell_13/bias2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUE!Adamax/u/lstm_7/lstm_cell_13/bias2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUE#Adamax/m/lstm_8/lstm_cell_14/kernel2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUE#Adamax/u/lstm_8/lstm_cell_14/kernel2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUE*
ys
VARIABLE_VALUE-Adamax/m/lstm_8/lstm_cell_14/recurrent_kernel2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUE*
ys
VARIABLE_VALUE-Adamax/u/lstm_8/lstm_cell_14/recurrent_kernel2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUE!Adamax/m/lstm_8/lstm_cell_14/bias2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUE!Adamax/u/lstm_8/lstm_cell_14/bias2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUEAdamax/m/dense_2/kernel2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUEAdamax/u/dense_2/kernel2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdamax/m/dense_2/bias2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdamax/u/dense_2/bias2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUE*
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

Н0
О1*

Л	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

С0
Т1*

П	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
£
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenamenormalization_2/meannormalization_2/variancenormalization_2/countdense_2/kerneldense_2/biaslstm_6/lstm_cell_12/kernel$lstm_6/lstm_cell_12/recurrent_kernellstm_6/lstm_cell_12/biaslstm_7/lstm_cell_13/kernel$lstm_7/lstm_cell_13/recurrent_kernellstm_7/lstm_cell_13/biaslstm_8/lstm_cell_14/kernel$lstm_8/lstm_cell_14/recurrent_kernellstm_8/lstm_cell_14/bias	iterationlearning_rate#Adamax/m/lstm_6/lstm_cell_12/kernel#Adamax/u/lstm_6/lstm_cell_12/kernel-Adamax/m/lstm_6/lstm_cell_12/recurrent_kernel-Adamax/u/lstm_6/lstm_cell_12/recurrent_kernel!Adamax/m/lstm_6/lstm_cell_12/bias!Adamax/u/lstm_6/lstm_cell_12/bias#Adamax/m/lstm_7/lstm_cell_13/kernel#Adamax/u/lstm_7/lstm_cell_13/kernel-Adamax/m/lstm_7/lstm_cell_13/recurrent_kernel-Adamax/u/lstm_7/lstm_cell_13/recurrent_kernel!Adamax/m/lstm_7/lstm_cell_13/bias!Adamax/u/lstm_7/lstm_cell_13/bias#Adamax/m/lstm_8/lstm_cell_14/kernel#Adamax/u/lstm_8/lstm_cell_14/kernel-Adamax/m/lstm_8/lstm_cell_14/recurrent_kernel-Adamax/u/lstm_8/lstm_cell_14/recurrent_kernel!Adamax/m/lstm_8/lstm_cell_14/bias!Adamax/u/lstm_8/lstm_cell_14/biasAdamax/m/dense_2/kernelAdamax/u/dense_2/kernelAdamax/m/dense_2/biasAdamax/u/dense_2/biastotal_1count_1totalcountConst_2*7
Tin0
.2,*
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
GPU 2J 8В *'
f"R 
__inference__traced_save_81413
Ь
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamenormalization_2/meannormalization_2/variancenormalization_2/countdense_2/kerneldense_2/biaslstm_6/lstm_cell_12/kernel$lstm_6/lstm_cell_12/recurrent_kernellstm_6/lstm_cell_12/biaslstm_7/lstm_cell_13/kernel$lstm_7/lstm_cell_13/recurrent_kernellstm_7/lstm_cell_13/biaslstm_8/lstm_cell_14/kernel$lstm_8/lstm_cell_14/recurrent_kernellstm_8/lstm_cell_14/bias	iterationlearning_rate#Adamax/m/lstm_6/lstm_cell_12/kernel#Adamax/u/lstm_6/lstm_cell_12/kernel-Adamax/m/lstm_6/lstm_cell_12/recurrent_kernel-Adamax/u/lstm_6/lstm_cell_12/recurrent_kernel!Adamax/m/lstm_6/lstm_cell_12/bias!Adamax/u/lstm_6/lstm_cell_12/bias#Adamax/m/lstm_7/lstm_cell_13/kernel#Adamax/u/lstm_7/lstm_cell_13/kernel-Adamax/m/lstm_7/lstm_cell_13/recurrent_kernel-Adamax/u/lstm_7/lstm_cell_13/recurrent_kernel!Adamax/m/lstm_7/lstm_cell_13/bias!Adamax/u/lstm_7/lstm_cell_13/bias#Adamax/m/lstm_8/lstm_cell_14/kernel#Adamax/u/lstm_8/lstm_cell_14/kernel-Adamax/m/lstm_8/lstm_cell_14/recurrent_kernel-Adamax/u/lstm_8/lstm_cell_14/recurrent_kernel!Adamax/m/lstm_8/lstm_cell_14/bias!Adamax/u/lstm_8/lstm_cell_14/biasAdamax/m/dense_2/kernelAdamax/u/dense_2/kernelAdamax/m/dense_2/biasAdamax/u/dense_2/biastotal_1count_1totalcount*6
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
GPU 2J 8В **
f%R#
!__inference__traced_restore_81549иц/
їJ
Щ
A__inference_lstm_6_layer_call_and_return_conditional_losses_76676

inputs>
+lstm_cell_12_matmul_readvariableop_resource:	Р@
-lstm_cell_12_matmul_1_readvariableop_resource:	dР;
,lstm_cell_12_biasadd_readvariableop_resource:	Р
identityИҐ#lstm_cell_12/BiasAdd/ReadVariableOpҐ"lstm_cell_12/MatMul/ReadVariableOpҐ$lstm_cell_12/MatMul_1/ReadVariableOpҐwhileI
ShapeShapeinputs*
T0*
_output_shapes
::нѕ]
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
valueB:—
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
value	B :ds
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
:€€€€€€€€€dR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€dc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::нѕ_
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
valueB:џ
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
€€€€€€€€€і
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   а
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“_
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
valueB:й
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_maskП
"lstm_cell_12/MatMul/ReadVariableOpReadVariableOp+lstm_cell_12_matmul_readvariableop_resource*
_output_shapes
:	Р*
dtype0Ц
lstm_cell_12/MatMulMatMulstrided_slice_2:output:0*lstm_cell_12/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€РУ
$lstm_cell_12/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_12_matmul_1_readvariableop_resource*
_output_shapes
:	dР*
dtype0Р
lstm_cell_12/MatMul_1MatMulzeros:output:0,lstm_cell_12/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€РМ
lstm_cell_12/addAddV2lstm_cell_12/MatMul:product:0lstm_cell_12/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€РН
#lstm_cell_12/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_12_biasadd_readvariableop_resource*
_output_shapes	
:Р*
dtype0Х
lstm_cell_12/BiasAddBiasAddlstm_cell_12/add:z:0+lstm_cell_12/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Р^
lstm_cell_12/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ё
lstm_cell_12/splitSplit%lstm_cell_12/split/split_dim:output:0lstm_cell_12/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€d:€€€€€€€€€d:€€€€€€€€€d:€€€€€€€€€d*
	num_splitn
lstm_cell_12/SigmoidSigmoidlstm_cell_12/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€dp
lstm_cell_12/Sigmoid_1Sigmoidlstm_cell_12/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€dw
lstm_cell_12/mulMullstm_cell_12/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€dh
lstm_cell_12/ReluRelulstm_cell_12/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€dЖ
lstm_cell_12/mul_1Mullstm_cell_12/Sigmoid:y:0lstm_cell_12/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€d{
lstm_cell_12/add_1AddV2lstm_cell_12/mul:z:0lstm_cell_12/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€dp
lstm_cell_12/Sigmoid_2Sigmoidlstm_cell_12/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€de
lstm_cell_12/Relu_1Relulstm_cell_12/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€dК
lstm_cell_12/mul_2Mullstm_cell_12/Sigmoid_2:y:0!lstm_cell_12/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€dn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€d   Є
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“F
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
€€€€€€€€€T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : А
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_12_matmul_readvariableop_resource-lstm_cell_12_matmul_1_readvariableop_resource,lstm_cell_12_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€d:€€€€€€€€€d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_76592*
condR
while_cond_76591*K
output_shapes:
8: : : : :€€€€€€€€€d:€€€€€€€€€d: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€d   ¬
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:€€€€€€€€€d*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€d*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ц
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€dј
NoOpNoOp$^lstm_cell_12/BiasAdd/ReadVariableOp#^lstm_cell_12/MatMul/ReadVariableOp%^lstm_cell_12/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€: : : 2J
#lstm_cell_12/BiasAdd/ReadVariableOp#lstm_cell_12/BiasAdd/ReadVariableOp2H
"lstm_cell_12/MatMul/ReadVariableOp"lstm_cell_12/MatMul/ReadVariableOp2L
$lstm_cell_12/MatMul_1/ReadVariableOp$lstm_cell_12/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
Цґ
З
!__inference__traced_restore_81549
file_prefix3
%assignvariableop_normalization_2_mean:9
+assignvariableop_1_normalization_2_variance:2
(assignvariableop_2_normalization_2_count:	 3
!assignvariableop_3_dense_2_kernel:
-
assignvariableop_4_dense_2_bias:@
-assignvariableop_5_lstm_6_lstm_cell_12_kernel:	РJ
7assignvariableop_6_lstm_6_lstm_cell_12_recurrent_kernel:	dР:
+assignvariableop_7_lstm_6_lstm_cell_12_bias:	Р@
-assignvariableop_8_lstm_7_lstm_cell_13_kernel:	d»J
7assignvariableop_9_lstm_7_lstm_cell_13_recurrent_kernel:	2»;
,assignvariableop_10_lstm_7_lstm_cell_13_bias:	»@
.assignvariableop_11_lstm_8_lstm_cell_14_kernel:2(J
8assignvariableop_12_lstm_8_lstm_cell_14_recurrent_kernel:
(:
,assignvariableop_13_lstm_8_lstm_cell_14_bias:('
assignvariableop_14_iteration:	 +
!assignvariableop_15_learning_rate: J
7assignvariableop_16_adamax_m_lstm_6_lstm_cell_12_kernel:	РJ
7assignvariableop_17_adamax_u_lstm_6_lstm_cell_12_kernel:	РT
Aassignvariableop_18_adamax_m_lstm_6_lstm_cell_12_recurrent_kernel:	dРT
Aassignvariableop_19_adamax_u_lstm_6_lstm_cell_12_recurrent_kernel:	dРD
5assignvariableop_20_adamax_m_lstm_6_lstm_cell_12_bias:	РD
5assignvariableop_21_adamax_u_lstm_6_lstm_cell_12_bias:	РJ
7assignvariableop_22_adamax_m_lstm_7_lstm_cell_13_kernel:	d»J
7assignvariableop_23_adamax_u_lstm_7_lstm_cell_13_kernel:	d»T
Aassignvariableop_24_adamax_m_lstm_7_lstm_cell_13_recurrent_kernel:	2»T
Aassignvariableop_25_adamax_u_lstm_7_lstm_cell_13_recurrent_kernel:	2»D
5assignvariableop_26_adamax_m_lstm_7_lstm_cell_13_bias:	»D
5assignvariableop_27_adamax_u_lstm_7_lstm_cell_13_bias:	»I
7assignvariableop_28_adamax_m_lstm_8_lstm_cell_14_kernel:2(I
7assignvariableop_29_adamax_u_lstm_8_lstm_cell_14_kernel:2(S
Aassignvariableop_30_adamax_m_lstm_8_lstm_cell_14_recurrent_kernel:
(S
Aassignvariableop_31_adamax_u_lstm_8_lstm_cell_14_recurrent_kernel:
(C
5assignvariableop_32_adamax_m_lstm_8_lstm_cell_14_bias:(C
5assignvariableop_33_adamax_u_lstm_8_lstm_cell_14_bias:(=
+assignvariableop_34_adamax_m_dense_2_kernel:
=
+assignvariableop_35_adamax_u_dense_2_kernel:
7
)assignvariableop_36_adamax_m_dense_2_bias:7
)assignvariableop_37_adamax_u_dense_2_bias:%
assignvariableop_38_total_1: %
assignvariableop_39_count_1: #
assignvariableop_40_total: #
assignvariableop_41_count: 
identity_43ИҐAssignVariableOpҐAssignVariableOp_1ҐAssignVariableOp_10ҐAssignVariableOp_11ҐAssignVariableOp_12ҐAssignVariableOp_13ҐAssignVariableOp_14ҐAssignVariableOp_15ҐAssignVariableOp_16ҐAssignVariableOp_17ҐAssignVariableOp_18ҐAssignVariableOp_19ҐAssignVariableOp_2ҐAssignVariableOp_20ҐAssignVariableOp_21ҐAssignVariableOp_22ҐAssignVariableOp_23ҐAssignVariableOp_24ҐAssignVariableOp_25ҐAssignVariableOp_26ҐAssignVariableOp_27ҐAssignVariableOp_28ҐAssignVariableOp_29ҐAssignVariableOp_3ҐAssignVariableOp_30ҐAssignVariableOp_31ҐAssignVariableOp_32ҐAssignVariableOp_33ҐAssignVariableOp_34ҐAssignVariableOp_35ҐAssignVariableOp_36ҐAssignVariableOp_37ҐAssignVariableOp_38ҐAssignVariableOp_39ҐAssignVariableOp_4ҐAssignVariableOp_40ҐAssignVariableOp_41ҐAssignVariableOp_5ҐAssignVariableOp_6ҐAssignVariableOp_7ҐAssignVariableOp_8ҐAssignVariableOp_9Ї
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:+*
dtype0*а
value÷B”+B4layer_with_weights-0/mean/.ATTRIBUTES/VARIABLE_VALUEB8layer_with_weights-0/variance/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-0/count/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH∆
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:+*
dtype0*i
value`B^+B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ш
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*¬
_output_shapesѓ
ђ:::::::::::::::::::::::::::::::::::::::::::*9
dtypes/
-2+		[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:Є
AssignVariableOpAssignVariableOp%assignvariableop_normalization_2_meanIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:¬
AssignVariableOp_1AssignVariableOp+assignvariableop_1_normalization_2_varianceIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0	*
_output_shapes
:њ
AssignVariableOp_2AssignVariableOp(assignvariableop_2_normalization_2_countIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:Є
AssignVariableOp_3AssignVariableOp!assignvariableop_3_dense_2_kernelIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:ґ
AssignVariableOp_4AssignVariableOpassignvariableop_4_dense_2_biasIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:ƒ
AssignVariableOp_5AssignVariableOp-assignvariableop_5_lstm_6_lstm_cell_12_kernelIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:ќ
AssignVariableOp_6AssignVariableOp7assignvariableop_6_lstm_6_lstm_cell_12_recurrent_kernelIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:¬
AssignVariableOp_7AssignVariableOp+assignvariableop_7_lstm_6_lstm_cell_12_biasIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:ƒ
AssignVariableOp_8AssignVariableOp-assignvariableop_8_lstm_7_lstm_cell_13_kernelIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:ќ
AssignVariableOp_9AssignVariableOp7assignvariableop_9_lstm_7_lstm_cell_13_recurrent_kernelIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:≈
AssignVariableOp_10AssignVariableOp,assignvariableop_10_lstm_7_lstm_cell_13_biasIdentity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:«
AssignVariableOp_11AssignVariableOp.assignvariableop_11_lstm_8_lstm_cell_14_kernelIdentity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:—
AssignVariableOp_12AssignVariableOp8assignvariableop_12_lstm_8_lstm_cell_14_recurrent_kernelIdentity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:≈
AssignVariableOp_13AssignVariableOp,assignvariableop_13_lstm_8_lstm_cell_14_biasIdentity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0	*
_output_shapes
:ґ
AssignVariableOp_14AssignVariableOpassignvariableop_14_iterationIdentity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:Ї
AssignVariableOp_15AssignVariableOp!assignvariableop_15_learning_rateIdentity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:–
AssignVariableOp_16AssignVariableOp7assignvariableop_16_adamax_m_lstm_6_lstm_cell_12_kernelIdentity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:–
AssignVariableOp_17AssignVariableOp7assignvariableop_17_adamax_u_lstm_6_lstm_cell_12_kernelIdentity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:Џ
AssignVariableOp_18AssignVariableOpAassignvariableop_18_adamax_m_lstm_6_lstm_cell_12_recurrent_kernelIdentity_18:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:Џ
AssignVariableOp_19AssignVariableOpAassignvariableop_19_adamax_u_lstm_6_lstm_cell_12_recurrent_kernelIdentity_19:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:ќ
AssignVariableOp_20AssignVariableOp5assignvariableop_20_adamax_m_lstm_6_lstm_cell_12_biasIdentity_20:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:ќ
AssignVariableOp_21AssignVariableOp5assignvariableop_21_adamax_u_lstm_6_lstm_cell_12_biasIdentity_21:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:–
AssignVariableOp_22AssignVariableOp7assignvariableop_22_adamax_m_lstm_7_lstm_cell_13_kernelIdentity_22:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:–
AssignVariableOp_23AssignVariableOp7assignvariableop_23_adamax_u_lstm_7_lstm_cell_13_kernelIdentity_23:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:Џ
AssignVariableOp_24AssignVariableOpAassignvariableop_24_adamax_m_lstm_7_lstm_cell_13_recurrent_kernelIdentity_24:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:Џ
AssignVariableOp_25AssignVariableOpAassignvariableop_25_adamax_u_lstm_7_lstm_cell_13_recurrent_kernelIdentity_25:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:ќ
AssignVariableOp_26AssignVariableOp5assignvariableop_26_adamax_m_lstm_7_lstm_cell_13_biasIdentity_26:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:ќ
AssignVariableOp_27AssignVariableOp5assignvariableop_27_adamax_u_lstm_7_lstm_cell_13_biasIdentity_27:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:–
AssignVariableOp_28AssignVariableOp7assignvariableop_28_adamax_m_lstm_8_lstm_cell_14_kernelIdentity_28:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:–
AssignVariableOp_29AssignVariableOp7assignvariableop_29_adamax_u_lstm_8_lstm_cell_14_kernelIdentity_29:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:Џ
AssignVariableOp_30AssignVariableOpAassignvariableop_30_adamax_m_lstm_8_lstm_cell_14_recurrent_kernelIdentity_30:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:Џ
AssignVariableOp_31AssignVariableOpAassignvariableop_31_adamax_u_lstm_8_lstm_cell_14_recurrent_kernelIdentity_31:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:ќ
AssignVariableOp_32AssignVariableOp5assignvariableop_32_adamax_m_lstm_8_lstm_cell_14_biasIdentity_32:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:ќ
AssignVariableOp_33AssignVariableOp5assignvariableop_33_adamax_u_lstm_8_lstm_cell_14_biasIdentity_33:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:ƒ
AssignVariableOp_34AssignVariableOp+assignvariableop_34_adamax_m_dense_2_kernelIdentity_34:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:ƒ
AssignVariableOp_35AssignVariableOp+assignvariableop_35_adamax_u_dense_2_kernelIdentity_35:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:¬
AssignVariableOp_36AssignVariableOp)assignvariableop_36_adamax_m_dense_2_biasIdentity_36:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:¬
AssignVariableOp_37AssignVariableOp)assignvariableop_37_adamax_u_dense_2_biasIdentity_37:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:і
AssignVariableOp_38AssignVariableOpassignvariableop_38_total_1Identity_38:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:і
AssignVariableOp_39AssignVariableOpassignvariableop_39_count_1Identity_39:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:≤
AssignVariableOp_40AssignVariableOpassignvariableop_40_totalIdentity_40:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:≤
AssignVariableOp_41AssignVariableOpassignvariableop_41_countIdentity_41:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 л
Identity_42Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_43IdentityIdentity_42:output:0^NoOp_1*
T0*
_output_shapes
: Ў
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
Т	
Њ
while_cond_80565
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_80565___redundant_placeholder03
/while_while_cond_80565___redundant_placeholder13
/while_while_cond_80565___redundant_placeholder23
/while_while_cond_80565___redundant_placeholder3
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
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :€€€€€€€€€
:€€€€€€€€€
: :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€
:-)
'
_output_shapes
:€€€€€€€€€
:

_output_shapes
: :

_output_shapes
:
н8
ѕ
while_body_80061
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_13_matmul_readvariableop_resource_0:	d»H
5while_lstm_cell_13_matmul_1_readvariableop_resource_0:	2»C
4while_lstm_cell_13_biasadd_readvariableop_resource_0:	»
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_13_matmul_readvariableop_resource:	d»F
3while_lstm_cell_13_matmul_1_readvariableop_resource:	2»A
2while_lstm_cell_13_biasadd_readvariableop_resource:	»ИҐ)while/lstm_cell_13/BiasAdd/ReadVariableOpҐ(while/lstm_cell_13/MatMul/ReadVariableOpҐ*while/lstm_cell_13/MatMul_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€d   ¶
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€d*
element_dtype0Э
(while/lstm_cell_13/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_13_matmul_readvariableop_resource_0*
_output_shapes
:	d»*
dtype0Ї
while/lstm_cell_13/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_13/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€»°
*while/lstm_cell_13/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_13_matmul_1_readvariableop_resource_0*
_output_shapes
:	2»*
dtype0°
while/lstm_cell_13/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_13/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€»Ю
while/lstm_cell_13/addAddV2#while/lstm_cell_13/MatMul:product:0%while/lstm_cell_13/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€»Ы
)while/lstm_cell_13/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_13_biasadd_readvariableop_resource_0*
_output_shapes	
:»*
dtype0І
while/lstm_cell_13/BiasAddBiasAddwhile/lstm_cell_13/add:z:01while/lstm_cell_13/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€»d
"while/lstm_cell_13/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :п
while/lstm_cell_13/splitSplit+while/lstm_cell_13/split/split_dim:output:0#while/lstm_cell_13/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€2:€€€€€€€€€2:€€€€€€€€€2:€€€€€€€€€2*
	num_splitz
while/lstm_cell_13/SigmoidSigmoid!while/lstm_cell_13/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€2|
while/lstm_cell_13/Sigmoid_1Sigmoid!while/lstm_cell_13/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€2Ж
while/lstm_cell_13/mulMul while/lstm_cell_13/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€2t
while/lstm_cell_13/ReluRelu!while/lstm_cell_13/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€2Ш
while/lstm_cell_13/mul_1Mulwhile/lstm_cell_13/Sigmoid:y:0%while/lstm_cell_13/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€2Н
while/lstm_cell_13/add_1AddV2while/lstm_cell_13/mul:z:0while/lstm_cell_13/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€2|
while/lstm_cell_13/Sigmoid_2Sigmoid!while/lstm_cell_13/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€2q
while/lstm_cell_13/Relu_1Reluwhile/lstm_cell_13/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€2Ь
while/lstm_cell_13/mul_2Mul while/lstm_cell_13/Sigmoid_2:y:0'while/lstm_cell_13/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€2≈
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_13/mul_2:z:0*
_output_shapes
: *
element_dtype0:йи“M
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
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_13/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€2y
while/Identity_5Identitywhile/lstm_cell_13/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€2–

while/NoOpNoOp*^while/lstm_cell_13/BiasAdd/ReadVariableOp)^while/lstm_cell_13/MatMul/ReadVariableOp+^while/lstm_cell_13/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_13_biasadd_readvariableop_resource4while_lstm_cell_13_biasadd_readvariableop_resource_0"l
3while_lstm_cell_13_matmul_1_readvariableop_resource5while_lstm_cell_13_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_13_matmul_readvariableop_resource3while_lstm_cell_13_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :€€€€€€€€€2:€€€€€€€€€2: : : : : 2V
)while/lstm_cell_13/BiasAdd/ReadVariableOp)while/lstm_cell_13/BiasAdd/ReadVariableOp2T
(while/lstm_cell_13/MatMul/ReadVariableOp(while/lstm_cell_13/MatMul/ReadVariableOp2X
*while/lstm_cell_13/MatMul_1/ReadVariableOp*while/lstm_cell_13/MatMul_1/ReadVariableOp:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€2:-)
'
_output_shapes
:€€€€€€€€€2:

_output_shapes
: :

_output_shapes
: 
їJ
Щ
A__inference_lstm_7_layer_call_and_return_conditional_losses_77353

inputs>
+lstm_cell_13_matmul_readvariableop_resource:	d»@
-lstm_cell_13_matmul_1_readvariableop_resource:	2»;
,lstm_cell_13_biasadd_readvariableop_resource:	»
identityИҐ#lstm_cell_13/BiasAdd/ReadVariableOpҐ"lstm_cell_13/MatMul/ReadVariableOpҐ$lstm_cell_13/MatMul_1/ReadVariableOpҐwhileI
ShapeShapeinputs*
T0*
_output_shapes
::нѕ]
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
valueB:—
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
value	B :2s
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
:€€€€€€€€€2R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€dR
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::нѕ_
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
valueB:џ
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
€€€€€€€€€і
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€d   а
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“_
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
valueB:й
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€d*
shrink_axis_maskП
"lstm_cell_13/MatMul/ReadVariableOpReadVariableOp+lstm_cell_13_matmul_readvariableop_resource*
_output_shapes
:	d»*
dtype0Ц
lstm_cell_13/MatMulMatMulstrided_slice_2:output:0*lstm_cell_13/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€»У
$lstm_cell_13/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_13_matmul_1_readvariableop_resource*
_output_shapes
:	2»*
dtype0Р
lstm_cell_13/MatMul_1MatMulzeros:output:0,lstm_cell_13/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€»М
lstm_cell_13/addAddV2lstm_cell_13/MatMul:product:0lstm_cell_13/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€»Н
#lstm_cell_13/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_13_biasadd_readvariableop_resource*
_output_shapes	
:»*
dtype0Х
lstm_cell_13/BiasAddBiasAddlstm_cell_13/add:z:0+lstm_cell_13/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€»^
lstm_cell_13/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ё
lstm_cell_13/splitSplit%lstm_cell_13/split/split_dim:output:0lstm_cell_13/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€2:€€€€€€€€€2:€€€€€€€€€2:€€€€€€€€€2*
	num_splitn
lstm_cell_13/SigmoidSigmoidlstm_cell_13/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€2p
lstm_cell_13/Sigmoid_1Sigmoidlstm_cell_13/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€2w
lstm_cell_13/mulMullstm_cell_13/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€2h
lstm_cell_13/ReluRelulstm_cell_13/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€2Ж
lstm_cell_13/mul_1Mullstm_cell_13/Sigmoid:y:0lstm_cell_13/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€2{
lstm_cell_13/add_1AddV2lstm_cell_13/mul:z:0lstm_cell_13/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€2p
lstm_cell_13/Sigmoid_2Sigmoidlstm_cell_13/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€2e
lstm_cell_13/Relu_1Relulstm_cell_13/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€2К
lstm_cell_13/mul_2Mullstm_cell_13/Sigmoid_2:y:0!lstm_cell_13/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€2n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€2   Є
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“F
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
€€€€€€€€€T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : А
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_13_matmul_readvariableop_resource-lstm_cell_13_matmul_1_readvariableop_resource,lstm_cell_13_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€2:€€€€€€€€€2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_77269*
condR
while_cond_77268*K
output_shapes:
8: : : : :€€€€€€€€€2:€€€€€€€€€2: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€2   ¬
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:€€€€€€€€€2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ц
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€2[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€2ј
NoOpNoOp$^lstm_cell_13/BiasAdd/ReadVariableOp#^lstm_cell_13/MatMul/ReadVariableOp%^lstm_cell_13/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€d: : : 2J
#lstm_cell_13/BiasAdd/ReadVariableOp#lstm_cell_13/BiasAdd/ReadVariableOp2H
"lstm_cell_13/MatMul/ReadVariableOp"lstm_cell_13/MatMul/ReadVariableOp2L
$lstm_cell_13/MatMul_1/ReadVariableOp$lstm_cell_13/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:€€€€€€€€€d
 
_user_specified_nameinputs
ь9
…
while_body_77426
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_14_matmul_readvariableop_resource_0:2(G
5while_lstm_cell_14_matmul_1_readvariableop_resource_0:
(B
4while_lstm_cell_14_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_14_matmul_readvariableop_resource:2(E
3while_lstm_cell_14_matmul_1_readvariableop_resource:
(@
2while_lstm_cell_14_biasadd_readvariableop_resource:(ИҐ)while/lstm_cell_14/BiasAdd/ReadVariableOpҐ(while/lstm_cell_14/MatMul/ReadVariableOpҐ*while/lstm_cell_14/MatMul_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€2   ¶
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€2*
element_dtype0Ь
(while/lstm_cell_14/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_14_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0є
while/lstm_cell_14/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_14/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€(†
*while/lstm_cell_14/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_14_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0†
while/lstm_cell_14/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_14/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€(Э
while/lstm_cell_14/addAddV2#while/lstm_cell_14/MatMul:product:0%while/lstm_cell_14/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€(Ъ
)while/lstm_cell_14/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_14_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0¶
while/lstm_cell_14/BiasAddBiasAddwhile/lstm_cell_14/add:z:01while/lstm_cell_14/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€(d
"while/lstm_cell_14/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :п
while/lstm_cell_14/splitSplit+while/lstm_cell_14/split/split_dim:output:0#while/lstm_cell_14/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€
:€€€€€€€€€
:€€€€€€€€€
:€€€€€€€€€
*
	num_splitz
while/lstm_cell_14/SigmoidSigmoid!while/lstm_cell_14/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€
|
while/lstm_cell_14/Sigmoid_1Sigmoid!while/lstm_cell_14/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€
Ж
while/lstm_cell_14/mulMul while/lstm_cell_14/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€
t
while/lstm_cell_14/ReluRelu!while/lstm_cell_14/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€
Ш
while/lstm_cell_14/mul_1Mulwhile/lstm_cell_14/Sigmoid:y:0%while/lstm_cell_14/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€
Н
while/lstm_cell_14/add_1AddV2while/lstm_cell_14/mul:z:0while/lstm_cell_14/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€
|
while/lstm_cell_14/Sigmoid_2Sigmoid!while/lstm_cell_14/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€
q
while/lstm_cell_14/Relu_1Reluwhile/lstm_cell_14/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€
Ь
while/lstm_cell_14/mul_2Mul while/lstm_cell_14/Sigmoid_2:y:0'while/lstm_cell_14/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€
r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : н
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell_14/mul_2:z:0*
_output_shapes
: *
element_dtype0:йи“M
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
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_14/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€
y
while/Identity_5Identitywhile/lstm_cell_14/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€
–

while/NoOpNoOp*^while/lstm_cell_14/BiasAdd/ReadVariableOp)^while/lstm_cell_14/MatMul/ReadVariableOp+^while/lstm_cell_14/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_14_biasadd_readvariableop_resource4while_lstm_cell_14_biasadd_readvariableop_resource_0"l
3while_lstm_cell_14_matmul_1_readvariableop_resource5while_lstm_cell_14_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_14_matmul_readvariableop_resource3while_lstm_cell_14_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :€€€€€€€€€
:€€€€€€€€€
: : : : : 2V
)while/lstm_cell_14/BiasAdd/ReadVariableOp)while/lstm_cell_14/BiasAdd/ReadVariableOp2T
(while/lstm_cell_14/MatMul/ReadVariableOp(while/lstm_cell_14/MatMul/ReadVariableOp2X
*while/lstm_cell_14/MatMul_1/ReadVariableOp*while/lstm_cell_14/MatMul_1/ReadVariableOp:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€
:-)
'
_output_shapes
:€€€€€€€€€
:

_output_shapes
: :

_output_shapes
: 
н8
ѕ
while_body_76756
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_13_matmul_readvariableop_resource_0:	d»H
5while_lstm_cell_13_matmul_1_readvariableop_resource_0:	2»C
4while_lstm_cell_13_biasadd_readvariableop_resource_0:	»
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_13_matmul_readvariableop_resource:	d»F
3while_lstm_cell_13_matmul_1_readvariableop_resource:	2»A
2while_lstm_cell_13_biasadd_readvariableop_resource:	»ИҐ)while/lstm_cell_13/BiasAdd/ReadVariableOpҐ(while/lstm_cell_13/MatMul/ReadVariableOpҐ*while/lstm_cell_13/MatMul_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€d   ¶
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€d*
element_dtype0Э
(while/lstm_cell_13/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_13_matmul_readvariableop_resource_0*
_output_shapes
:	d»*
dtype0Ї
while/lstm_cell_13/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_13/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€»°
*while/lstm_cell_13/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_13_matmul_1_readvariableop_resource_0*
_output_shapes
:	2»*
dtype0°
while/lstm_cell_13/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_13/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€»Ю
while/lstm_cell_13/addAddV2#while/lstm_cell_13/MatMul:product:0%while/lstm_cell_13/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€»Ы
)while/lstm_cell_13/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_13_biasadd_readvariableop_resource_0*
_output_shapes	
:»*
dtype0І
while/lstm_cell_13/BiasAddBiasAddwhile/lstm_cell_13/add:z:01while/lstm_cell_13/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€»d
"while/lstm_cell_13/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :п
while/lstm_cell_13/splitSplit+while/lstm_cell_13/split/split_dim:output:0#while/lstm_cell_13/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€2:€€€€€€€€€2:€€€€€€€€€2:€€€€€€€€€2*
	num_splitz
while/lstm_cell_13/SigmoidSigmoid!while/lstm_cell_13/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€2|
while/lstm_cell_13/Sigmoid_1Sigmoid!while/lstm_cell_13/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€2Ж
while/lstm_cell_13/mulMul while/lstm_cell_13/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€2t
while/lstm_cell_13/ReluRelu!while/lstm_cell_13/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€2Ш
while/lstm_cell_13/mul_1Mulwhile/lstm_cell_13/Sigmoid:y:0%while/lstm_cell_13/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€2Н
while/lstm_cell_13/add_1AddV2while/lstm_cell_13/mul:z:0while/lstm_cell_13/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€2|
while/lstm_cell_13/Sigmoid_2Sigmoid!while/lstm_cell_13/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€2q
while/lstm_cell_13/Relu_1Reluwhile/lstm_cell_13/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€2Ь
while/lstm_cell_13/mul_2Mul while/lstm_cell_13/Sigmoid_2:y:0'while/lstm_cell_13/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€2≈
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_13/mul_2:z:0*
_output_shapes
: *
element_dtype0:йи“M
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
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_13/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€2y
while/Identity_5Identitywhile/lstm_cell_13/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€2–

while/NoOpNoOp*^while/lstm_cell_13/BiasAdd/ReadVariableOp)^while/lstm_cell_13/MatMul/ReadVariableOp+^while/lstm_cell_13/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_13_biasadd_readvariableop_resource4while_lstm_cell_13_biasadd_readvariableop_resource_0"l
3while_lstm_cell_13_matmul_1_readvariableop_resource5while_lstm_cell_13_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_13_matmul_readvariableop_resource3while_lstm_cell_13_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :€€€€€€€€€2:€€€€€€€€€2: : : : : 2V
)while/lstm_cell_13/BiasAdd/ReadVariableOp)while/lstm_cell_13/BiasAdd/ReadVariableOp2T
(while/lstm_cell_13/MatMul/ReadVariableOp(while/lstm_cell_13/MatMul/ReadVariableOp2X
*while/lstm_cell_13/MatMul_1/ReadVariableOp*while/lstm_cell_13/MatMul_1/ReadVariableOp:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€2:-)
'
_output_shapes
:€€€€€€€€€2:

_output_shapes
: :

_output_shapes
: 
з
b
D__inference_dropout_6_layer_call_and_return_conditional_losses_79529

inputs

identity_1R
IdentityIdentityinputs*
T0*+
_output_shapes
:€€€€€€€€€d_

Identity_1IdentityIdentity:output:0*
T0*+
_output_shapes
:€€€€€€€€€d"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€d:S O
+
_output_shapes
:€€€€€€€€€d
 
_user_specified_nameinputs
і

c
D__inference_dropout_6_layer_call_and_return_conditional_losses_79524

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nџґ?h
dropout/MulMulinputsdropout/Const:output:0*
T0*+
_output_shapes
:€€€€€€€€€dQ
dropout/ShapeShapeinputs*
T0*
_output_shapes
::нѕР
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*+
_output_shapes
:€€€€€€€€€d*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЪЩЩ>™
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:€€€€€€€€€dT
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Ч
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*+
_output_shapes
:€€€€€€€€€de
IdentityIdentitydropout/SelectV2:output:0*
T0*+
_output_shapes
:€€€€€€€€€d"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€d:S O
+
_output_shapes
:€€€€€€€€€d
 
_user_specified_nameinputs
№
Е
G__inference_lstm_cell_13_layer_call_and_return_conditional_losses_81038

inputs
states_0
states_11
matmul_readvariableop_resource:	d»3
 matmul_1_readvariableop_resource:	2».
biasadd_readvariableop_resource:	»
identity

identity_1

identity_2ИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpҐMatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	d»*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€»y
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	2»*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€»e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€»s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:»*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€»Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ґ
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€2:€€€€€€€€€2:€€€€€€€€€2:€€€€€€€€€2*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:€€€€€€€€€2V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:€€€€€€€€€2U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:€€€€€€€€€2N
ReluRelusplit:output:2*
T0*'
_output_shapes
:€€€€€€€€€2_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€2T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€2V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:€€€€€€€€€2K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€2c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€2X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€2Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€2Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€2С
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:€€€€€€€€€d:€€€€€€€€€2:€€€€€€€€€2: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€d
 
_user_specified_nameinputs:QM
'
_output_shapes
:€€€€€€€€€2
"
_user_specified_name
states_0:QM
'
_output_shapes
:€€€€€€€€€2
"
_user_specified_name
states_1
ЈK
Ц
A__inference_lstm_8_layer_call_and_return_conditional_losses_77511

inputs=
+lstm_cell_14_matmul_readvariableop_resource:2(?
-lstm_cell_14_matmul_1_readvariableop_resource:
(:
,lstm_cell_14_biasadd_readvariableop_resource:(
identityИҐ#lstm_cell_14/BiasAdd/ReadVariableOpҐ"lstm_cell_14/MatMul/ReadVariableOpҐ$lstm_cell_14/MatMul_1/ReadVariableOpҐwhileI
ShapeShapeinputs*
T0*
_output_shapes
::нѕ]
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
valueB:—
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
value	B :
s
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
:€€€€€€€€€
R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€
c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€2R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::нѕ_
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
valueB:џ
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
€€€€€€€€€і
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€2   а
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“_
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
valueB:й
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€2*
shrink_axis_maskО
"lstm_cell_14/MatMul/ReadVariableOpReadVariableOp+lstm_cell_14_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0Х
lstm_cell_14/MatMulMatMulstrided_slice_2:output:0*lstm_cell_14/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€(Т
$lstm_cell_14/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_14_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0П
lstm_cell_14/MatMul_1MatMulzeros:output:0,lstm_cell_14/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€(Л
lstm_cell_14/addAddV2lstm_cell_14/MatMul:product:0lstm_cell_14/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€(М
#lstm_cell_14/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_14_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0Ф
lstm_cell_14/BiasAddBiasAddlstm_cell_14/add:z:0+lstm_cell_14/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€(^
lstm_cell_14/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ё
lstm_cell_14/splitSplit%lstm_cell_14/split/split_dim:output:0lstm_cell_14/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€
:€€€€€€€€€
:€€€€€€€€€
:€€€€€€€€€
*
	num_splitn
lstm_cell_14/SigmoidSigmoidlstm_cell_14/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€
p
lstm_cell_14/Sigmoid_1Sigmoidlstm_cell_14/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€
w
lstm_cell_14/mulMullstm_cell_14/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€
h
lstm_cell_14/ReluRelulstm_cell_14/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€
Ж
lstm_cell_14/mul_1Mullstm_cell_14/Sigmoid:y:0lstm_cell_14/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€
{
lstm_cell_14/add_1AddV2lstm_cell_14/mul:z:0lstm_cell_14/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€
p
lstm_cell_14/Sigmoid_2Sigmoidlstm_cell_14/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€
e
lstm_cell_14/Relu_1Relulstm_cell_14/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€
К
lstm_cell_14/mul_2Mullstm_cell_14/Sigmoid_2:y:0!lstm_cell_14/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€
n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€
   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :≈
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“F
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
€€€€€€€€€T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : А
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_14_matmul_readvariableop_resource-lstm_cell_14_matmul_1_readvariableop_resource,lstm_cell_14_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€
:€€€€€€€€€
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_77426*
condR
while_cond_77425*K
output_shapes:
8: : : : :€€€€€€€€€
:€€€€€€€€€
: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€
   ÷
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:€€€€€€€€€
*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€
*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ц
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€
[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€
ј
NoOpNoOp$^lstm_cell_14/BiasAdd/ReadVariableOp#^lstm_cell_14/MatMul/ReadVariableOp%^lstm_cell_14/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€2: : : 2J
#lstm_cell_14/BiasAdd/ReadVariableOp#lstm_cell_14/BiasAdd/ReadVariableOp2H
"lstm_cell_14/MatMul/ReadVariableOp"lstm_cell_14/MatMul/ReadVariableOp2L
$lstm_cell_14/MatMul_1/ReadVariableOp$lstm_cell_14/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:€€€€€€€€€2
 
_user_specified_nameinputs
їJ
Щ
A__inference_lstm_7_layer_call_and_return_conditional_losses_76840

inputs>
+lstm_cell_13_matmul_readvariableop_resource:	d»@
-lstm_cell_13_matmul_1_readvariableop_resource:	2»;
,lstm_cell_13_biasadd_readvariableop_resource:	»
identityИҐ#lstm_cell_13/BiasAdd/ReadVariableOpҐ"lstm_cell_13/MatMul/ReadVariableOpҐ$lstm_cell_13/MatMul_1/ReadVariableOpҐwhileI
ShapeShapeinputs*
T0*
_output_shapes
::нѕ]
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
valueB:—
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
value	B :2s
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
:€€€€€€€€€2R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€dR
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::нѕ_
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
valueB:џ
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
€€€€€€€€€і
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€d   а
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“_
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
valueB:й
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€d*
shrink_axis_maskП
"lstm_cell_13/MatMul/ReadVariableOpReadVariableOp+lstm_cell_13_matmul_readvariableop_resource*
_output_shapes
:	d»*
dtype0Ц
lstm_cell_13/MatMulMatMulstrided_slice_2:output:0*lstm_cell_13/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€»У
$lstm_cell_13/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_13_matmul_1_readvariableop_resource*
_output_shapes
:	2»*
dtype0Р
lstm_cell_13/MatMul_1MatMulzeros:output:0,lstm_cell_13/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€»М
lstm_cell_13/addAddV2lstm_cell_13/MatMul:product:0lstm_cell_13/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€»Н
#lstm_cell_13/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_13_biasadd_readvariableop_resource*
_output_shapes	
:»*
dtype0Х
lstm_cell_13/BiasAddBiasAddlstm_cell_13/add:z:0+lstm_cell_13/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€»^
lstm_cell_13/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ё
lstm_cell_13/splitSplit%lstm_cell_13/split/split_dim:output:0lstm_cell_13/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€2:€€€€€€€€€2:€€€€€€€€€2:€€€€€€€€€2*
	num_splitn
lstm_cell_13/SigmoidSigmoidlstm_cell_13/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€2p
lstm_cell_13/Sigmoid_1Sigmoidlstm_cell_13/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€2w
lstm_cell_13/mulMullstm_cell_13/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€2h
lstm_cell_13/ReluRelulstm_cell_13/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€2Ж
lstm_cell_13/mul_1Mullstm_cell_13/Sigmoid:y:0lstm_cell_13/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€2{
lstm_cell_13/add_1AddV2lstm_cell_13/mul:z:0lstm_cell_13/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€2p
lstm_cell_13/Sigmoid_2Sigmoidlstm_cell_13/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€2e
lstm_cell_13/Relu_1Relulstm_cell_13/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€2К
lstm_cell_13/mul_2Mullstm_cell_13/Sigmoid_2:y:0!lstm_cell_13/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€2n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€2   Є
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“F
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
€€€€€€€€€T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : А
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_13_matmul_readvariableop_resource-lstm_cell_13_matmul_1_readvariableop_resource,lstm_cell_13_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€2:€€€€€€€€€2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_76756*
condR
while_cond_76755*K
output_shapes:
8: : : : :€€€€€€€€€2:€€€€€€€€€2: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€2   ¬
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:€€€€€€€€€2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ц
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€2[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€2ј
NoOpNoOp$^lstm_cell_13/BiasAdd/ReadVariableOp#^lstm_cell_13/MatMul/ReadVariableOp%^lstm_cell_13/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€d: : : 2J
#lstm_cell_13/BiasAdd/ReadVariableOp#lstm_cell_13/BiasAdd/ReadVariableOp2H
"lstm_cell_13/MatMul/ReadVariableOp"lstm_cell_13/MatMul/ReadVariableOp2L
$lstm_cell_13/MatMul_1/ReadVariableOp$lstm_cell_13/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:€€€€€€€€€d
 
_user_specified_nameinputs
Т	
Њ
while_cond_79774
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_79774___redundant_placeholder03
/while_while_cond_79774___redundant_placeholder13
/while_while_cond_79774___redundant_placeholder23
/while_while_cond_79774___redundant_placeholder3
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
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :€€€€€€€€€2:€€€€€€€€€2: :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€2:-)
'
_output_shapes
:€€€€€€€€€2:

_output_shapes
: :

_output_shapes
:
д

 
lstm_8_while_cond_78347*
&lstm_8_while_lstm_8_while_loop_counter0
,lstm_8_while_lstm_8_while_maximum_iterations
lstm_8_while_placeholder
lstm_8_while_placeholder_1
lstm_8_while_placeholder_2
lstm_8_while_placeholder_3,
(lstm_8_while_less_lstm_8_strided_slice_1A
=lstm_8_while_lstm_8_while_cond_78347___redundant_placeholder0A
=lstm_8_while_lstm_8_while_cond_78347___redundant_placeholder1A
=lstm_8_while_lstm_8_while_cond_78347___redundant_placeholder2A
=lstm_8_while_lstm_8_while_cond_78347___redundant_placeholder3
lstm_8_while_identity
~
lstm_8/while/LessLesslstm_8_while_placeholder(lstm_8_while_less_lstm_8_strided_slice_1*
T0*
_output_shapes
: Y
lstm_8/while/IdentityIdentitylstm_8/while/Less:z:0*
T0
*
_output_shapes
: "7
lstm_8_while_identitylstm_8/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :€€€€€€€€€
:€€€€€€€€€
: :::::Q M

_output_shapes
: 
3
_user_specified_namelstm_8/while/loop_counter:WS

_output_shapes
: 
9
_user_specified_name!lstm_8/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€
:-)
'
_output_shapes
:€€€€€€€€€
:

_output_shapes
: :

_output_shapes
:
і

c
D__inference_dropout_6_layer_call_and_return_conditional_losses_76696

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nџґ?h
dropout/MulMulinputsdropout/Const:output:0*
T0*+
_output_shapes
:€€€€€€€€€dQ
dropout/ShapeShapeinputs*
T0*
_output_shapes
::нѕР
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*+
_output_shapes
:€€€€€€€€€d*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЪЩЩ>™
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:€€€€€€€€€dT
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Ч
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*+
_output_shapes
:€€€€€€€€€de
IdentityIdentitydropout/SelectV2:output:0*
T0*+
_output_shapes
:€€€€€€€€€d"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€d:S O
+
_output_shapes
:€€€€€€€€€d
 
_user_specified_nameinputs
“
В
G__inference_lstm_cell_14_layer_call_and_return_conditional_losses_81136

inputs
states_0
states_10
matmul_readvariableop_resource:2(2
 matmul_1_readvariableop_resource:
(-
biasadd_readvariableop_resource:(
identity

identity_1

identity_2ИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpҐMatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2(*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€(x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0o
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€(d
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€(r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:(*
dtype0m
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€(Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ґ
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€
:€€€€€€€€€
:€€€€€€€€€
:€€€€€€€€€
*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:€€€€€€€€€
V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:€€€€€€€€€
U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:€€€€€€€€€
N
ReluRelusplit:output:2*
T0*'
_output_shapes
:€€€€€€€€€
_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€
T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€
V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:€€€€€€€€€
K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€
c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€
X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€
Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€
Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€
С
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:€€€€€€€€€2:€€€€€€€€€
:€€€€€€€€€
: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€2
 
_user_specified_nameinputs:QM
'
_output_shapes
:€€€€€€€€€

"
_user_specified_name
states_0:QM
'
_output_shapes
:€€€€€€€€€

"
_user_specified_name
states_1
л
ќ
$sequential_2_lstm_6_while_cond_75095D
@sequential_2_lstm_6_while_sequential_2_lstm_6_while_loop_counterJ
Fsequential_2_lstm_6_while_sequential_2_lstm_6_while_maximum_iterations)
%sequential_2_lstm_6_while_placeholder+
'sequential_2_lstm_6_while_placeholder_1+
'sequential_2_lstm_6_while_placeholder_2+
'sequential_2_lstm_6_while_placeholder_3F
Bsequential_2_lstm_6_while_less_sequential_2_lstm_6_strided_slice_1[
Wsequential_2_lstm_6_while_sequential_2_lstm_6_while_cond_75095___redundant_placeholder0[
Wsequential_2_lstm_6_while_sequential_2_lstm_6_while_cond_75095___redundant_placeholder1[
Wsequential_2_lstm_6_while_sequential_2_lstm_6_while_cond_75095___redundant_placeholder2[
Wsequential_2_lstm_6_while_sequential_2_lstm_6_while_cond_75095___redundant_placeholder3&
"sequential_2_lstm_6_while_identity
≤
sequential_2/lstm_6/while/LessLess%sequential_2_lstm_6_while_placeholderBsequential_2_lstm_6_while_less_sequential_2_lstm_6_strided_slice_1*
T0*
_output_shapes
: s
"sequential_2/lstm_6/while/IdentityIdentity"sequential_2/lstm_6/while/Less:z:0*
T0
*
_output_shapes
: "Q
"sequential_2_lstm_6_while_identity+sequential_2/lstm_6/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :€€€€€€€€€d:€€€€€€€€€d: :::::^ Z

_output_shapes
: 
@
_user_specified_name(&sequential_2/lstm_6/while/loop_counter:d`

_output_shapes
: 
F
_user_specified_name.,sequential_2/lstm_6/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€d:-)
'
_output_shapes
:€€€€€€€€€d:

_output_shapes
: :

_output_shapes
:
Ш

c
D__inference_dropout_8_layer_call_and_return_conditional_losses_77026

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  †?d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€
Q
dropout/ShapeShapeinputs*
T0*
_output_shapes
::нѕМ
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€
*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЌћL>¶
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€
T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    У
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€
a
IdentityIdentitydropout/SelectV2:output:0*
T0*'
_output_shapes
:€€€€€€€€€
"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€
:O K
'
_output_shapes
:€€€€€€€€€

 
_user_specified_nameinputs
Т	
Њ
while_cond_80060
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_80060___redundant_placeholder03
/while_while_cond_80060___redundant_placeholder13
/while_while_cond_80060___redundant_placeholder23
/while_while_cond_80060___redundant_placeholder3
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
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :€€€€€€€€€2:€€€€€€€€€2: :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€2:-)
'
_output_shapes
:€€€€€€€€€2:

_output_shapes
: :

_output_shapes
:
з
b
D__inference_dropout_7_layer_call_and_return_conditional_losses_80172

inputs

identity_1R
IdentityIdentityinputs*
T0*+
_output_shapes
:€€€€€€€€€2_

Identity_1IdentityIdentity:output:0*
T0*+
_output_shapes
:€€€€€€€€€2"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€2:S O
+
_output_shapes
:€€€€€€€€€2
 
_user_specified_nameinputs
≈	
у
B__inference_dense_2_layer_call_and_return_conditional_losses_77038

inputs0
matmul_readvariableop_resource:
-
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:
*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€
: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€

 
_user_specified_nameinputs
Г
є
,__inference_sequential_2_layer_call_fn_77674
input_3
unknown
	unknown_0
	unknown_1:	Р
	unknown_2:	dР
	unknown_3:	Р
	unknown_4:	d»
	unknown_5:	2»
	unknown_6:	»
	unknown_7:2(
	unknown_8:
(
	unknown_9:(

unknown_10:


unknown_11:
identityИҐStatefulPartitionedCallм
StatefulPartitionedCallStatefulPartitionedCallinput_3unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_sequential_2_layer_call_and_return_conditional_losses_77645o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*\
_input_shapesK
I:€€€€€€€€€::: : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
+
_output_shapes
:€€€€€€€€€
!
_user_specified_name	input_3:($
"
_output_shapes
::($
"
_output_shapes
:
Ќ$
÷
while_body_76248
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0,
while_lstm_cell_14_76272_0:2(,
while_lstm_cell_14_76274_0:
((
while_lstm_cell_14_76276_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor*
while_lstm_cell_14_76272:2(*
while_lstm_cell_14_76274:
(&
while_lstm_cell_14_76276:(ИҐ*while/lstm_cell_14/StatefulPartitionedCallИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€2   ¶
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€2*
element_dtype0ѓ
*while/lstm_cell_14/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_14_76272_0while_lstm_cell_14_76274_0while_lstm_cell_14_76276_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:€€€€€€€€€
:€€€€€€€€€
:€€€€€€€€€
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_lstm_cell_14_layer_call_and_return_conditional_losses_76233r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : Д
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:03while/lstm_cell_14/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:йи“M
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
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: Р
while/Identity_4Identity3while/lstm_cell_14/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€
Р
while/Identity_5Identity3while/lstm_cell_14/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€
y

while/NoOpNoOp+^while/lstm_cell_14/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"6
while_lstm_cell_14_76272while_lstm_cell_14_76272_0"6
while_lstm_cell_14_76274while_lstm_cell_14_76274_0"6
while_lstm_cell_14_76276while_lstm_cell_14_76276_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :€€€€€€€€€
:€€€€€€€€€
: : : : : 2X
*while/lstm_cell_14/StatefulPartitionedCall*while/lstm_cell_14/StatefulPartitionedCall:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€
:-)
'
_output_shapes
:€€€€€€€€€
:

_output_shapes
: :

_output_shapes
: 
ЭA
ѓ

lstm_7_while_body_78653*
&lstm_7_while_lstm_7_while_loop_counter0
,lstm_7_while_lstm_7_while_maximum_iterations
lstm_7_while_placeholder
lstm_7_while_placeholder_1
lstm_7_while_placeholder_2
lstm_7_while_placeholder_3)
%lstm_7_while_lstm_7_strided_slice_1_0e
alstm_7_while_tensorarrayv2read_tensorlistgetitem_lstm_7_tensorarrayunstack_tensorlistfromtensor_0M
:lstm_7_while_lstm_cell_13_matmul_readvariableop_resource_0:	d»O
<lstm_7_while_lstm_cell_13_matmul_1_readvariableop_resource_0:	2»J
;lstm_7_while_lstm_cell_13_biasadd_readvariableop_resource_0:	»
lstm_7_while_identity
lstm_7_while_identity_1
lstm_7_while_identity_2
lstm_7_while_identity_3
lstm_7_while_identity_4
lstm_7_while_identity_5'
#lstm_7_while_lstm_7_strided_slice_1c
_lstm_7_while_tensorarrayv2read_tensorlistgetitem_lstm_7_tensorarrayunstack_tensorlistfromtensorK
8lstm_7_while_lstm_cell_13_matmul_readvariableop_resource:	d»M
:lstm_7_while_lstm_cell_13_matmul_1_readvariableop_resource:	2»H
9lstm_7_while_lstm_cell_13_biasadd_readvariableop_resource:	»ИҐ0lstm_7/while/lstm_cell_13/BiasAdd/ReadVariableOpҐ/lstm_7/while/lstm_cell_13/MatMul/ReadVariableOpҐ1lstm_7/while/lstm_cell_13/MatMul_1/ReadVariableOpП
>lstm_7/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€d   …
0lstm_7/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemalstm_7_while_tensorarrayv2read_tensorlistgetitem_lstm_7_tensorarrayunstack_tensorlistfromtensor_0lstm_7_while_placeholderGlstm_7/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€d*
element_dtype0Ђ
/lstm_7/while/lstm_cell_13/MatMul/ReadVariableOpReadVariableOp:lstm_7_while_lstm_cell_13_matmul_readvariableop_resource_0*
_output_shapes
:	d»*
dtype0ѕ
 lstm_7/while/lstm_cell_13/MatMulMatMul7lstm_7/while/TensorArrayV2Read/TensorListGetItem:item:07lstm_7/while/lstm_cell_13/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€»ѓ
1lstm_7/while/lstm_cell_13/MatMul_1/ReadVariableOpReadVariableOp<lstm_7_while_lstm_cell_13_matmul_1_readvariableop_resource_0*
_output_shapes
:	2»*
dtype0ґ
"lstm_7/while/lstm_cell_13/MatMul_1MatMullstm_7_while_placeholder_29lstm_7/while/lstm_cell_13/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€»≥
lstm_7/while/lstm_cell_13/addAddV2*lstm_7/while/lstm_cell_13/MatMul:product:0,lstm_7/while/lstm_cell_13/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€»©
0lstm_7/while/lstm_cell_13/BiasAdd/ReadVariableOpReadVariableOp;lstm_7_while_lstm_cell_13_biasadd_readvariableop_resource_0*
_output_shapes	
:»*
dtype0Љ
!lstm_7/while/lstm_cell_13/BiasAddBiasAdd!lstm_7/while/lstm_cell_13/add:z:08lstm_7/while/lstm_cell_13/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€»k
)lstm_7/while/lstm_cell_13/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Д
lstm_7/while/lstm_cell_13/splitSplit2lstm_7/while/lstm_cell_13/split/split_dim:output:0*lstm_7/while/lstm_cell_13/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€2:€€€€€€€€€2:€€€€€€€€€2:€€€€€€€€€2*
	num_splitИ
!lstm_7/while/lstm_cell_13/SigmoidSigmoid(lstm_7/while/lstm_cell_13/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€2К
#lstm_7/while/lstm_cell_13/Sigmoid_1Sigmoid(lstm_7/while/lstm_cell_13/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€2Ы
lstm_7/while/lstm_cell_13/mulMul'lstm_7/while/lstm_cell_13/Sigmoid_1:y:0lstm_7_while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€2В
lstm_7/while/lstm_cell_13/ReluRelu(lstm_7/while/lstm_cell_13/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€2≠
lstm_7/while/lstm_cell_13/mul_1Mul%lstm_7/while/lstm_cell_13/Sigmoid:y:0,lstm_7/while/lstm_cell_13/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€2Ґ
lstm_7/while/lstm_cell_13/add_1AddV2!lstm_7/while/lstm_cell_13/mul:z:0#lstm_7/while/lstm_cell_13/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€2К
#lstm_7/while/lstm_cell_13/Sigmoid_2Sigmoid(lstm_7/while/lstm_cell_13/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€2
 lstm_7/while/lstm_cell_13/Relu_1Relu#lstm_7/while/lstm_cell_13/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€2±
lstm_7/while/lstm_cell_13/mul_2Mul'lstm_7/while/lstm_cell_13/Sigmoid_2:y:0.lstm_7/while/lstm_cell_13/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€2б
1lstm_7/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_7_while_placeholder_1lstm_7_while_placeholder#lstm_7/while/lstm_cell_13/mul_2:z:0*
_output_shapes
: *
element_dtype0:йи“T
lstm_7/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :q
lstm_7/while/addAddV2lstm_7_while_placeholderlstm_7/while/add/y:output:0*
T0*
_output_shapes
: V
lstm_7/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :Г
lstm_7/while/add_1AddV2&lstm_7_while_lstm_7_while_loop_counterlstm_7/while/add_1/y:output:0*
T0*
_output_shapes
: n
lstm_7/while/IdentityIdentitylstm_7/while/add_1:z:0^lstm_7/while/NoOp*
T0*
_output_shapes
: Ж
lstm_7/while/Identity_1Identity,lstm_7_while_lstm_7_while_maximum_iterations^lstm_7/while/NoOp*
T0*
_output_shapes
: n
lstm_7/while/Identity_2Identitylstm_7/while/add:z:0^lstm_7/while/NoOp*
T0*
_output_shapes
: Ы
lstm_7/while/Identity_3IdentityAlstm_7/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_7/while/NoOp*
T0*
_output_shapes
: О
lstm_7/while/Identity_4Identity#lstm_7/while/lstm_cell_13/mul_2:z:0^lstm_7/while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€2О
lstm_7/while/Identity_5Identity#lstm_7/while/lstm_cell_13/add_1:z:0^lstm_7/while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€2м
lstm_7/while/NoOpNoOp1^lstm_7/while/lstm_cell_13/BiasAdd/ReadVariableOp0^lstm_7/while/lstm_cell_13/MatMul/ReadVariableOp2^lstm_7/while/lstm_cell_13/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "7
lstm_7_while_identitylstm_7/while/Identity:output:0";
lstm_7_while_identity_1 lstm_7/while/Identity_1:output:0";
lstm_7_while_identity_2 lstm_7/while/Identity_2:output:0";
lstm_7_while_identity_3 lstm_7/while/Identity_3:output:0";
lstm_7_while_identity_4 lstm_7/while/Identity_4:output:0";
lstm_7_while_identity_5 lstm_7/while/Identity_5:output:0"L
#lstm_7_while_lstm_7_strided_slice_1%lstm_7_while_lstm_7_strided_slice_1_0"x
9lstm_7_while_lstm_cell_13_biasadd_readvariableop_resource;lstm_7_while_lstm_cell_13_biasadd_readvariableop_resource_0"z
:lstm_7_while_lstm_cell_13_matmul_1_readvariableop_resource<lstm_7_while_lstm_cell_13_matmul_1_readvariableop_resource_0"v
8lstm_7_while_lstm_cell_13_matmul_readvariableop_resource:lstm_7_while_lstm_cell_13_matmul_readvariableop_resource_0"ƒ
_lstm_7_while_tensorarrayv2read_tensorlistgetitem_lstm_7_tensorarrayunstack_tensorlistfromtensoralstm_7_while_tensorarrayv2read_tensorlistgetitem_lstm_7_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :€€€€€€€€€2:€€€€€€€€€2: : : : : 2d
0lstm_7/while/lstm_cell_13/BiasAdd/ReadVariableOp0lstm_7/while/lstm_cell_13/BiasAdd/ReadVariableOp2b
/lstm_7/while/lstm_cell_13/MatMul/ReadVariableOp/lstm_7/while/lstm_cell_13/MatMul/ReadVariableOp2f
1lstm_7/while/lstm_cell_13/MatMul_1/ReadVariableOp1lstm_7/while/lstm_cell_13/MatMul_1/ReadVariableOp:Q M

_output_shapes
: 
3
_user_specified_namelstm_7/while/loop_counter:WS

_output_shapes
: 
9
_user_specified_name!lstm_7/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€2:-)
'
_output_shapes
:€€€€€€€€€2:

_output_shapes
: :

_output_shapes
: 
Э
E
)__inference_dropout_8_layer_call_fn_80806

inputs
identityѓ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€
* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dropout_8_layer_call_and_return_conditional_losses_77523`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:€€€€€€€€€
"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€
:O K
'
_output_shapes
:€€€€€€€€€

 
_user_specified_nameinputs
Т	
Њ
while_cond_77425
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_77425___redundant_placeholder03
/while_while_cond_77425___redundant_placeholder13
/while_while_cond_77425___redundant_placeholder23
/while_while_cond_77425___redundant_placeholder3
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
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :€€€€€€€€€
:€€€€€€€€€
: :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€
:-)
'
_output_shapes
:€€€€€€€€€
:

_output_shapes
: :

_output_shapes
:
п
b
)__inference_dropout_8_layer_call_fn_80801

inputs
identityИҐStatefulPartitionedCallњ
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€
* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dropout_8_layer_call_and_return_conditional_losses_77026o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€
22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€

 
_user_specified_nameinputs
†8
А
A__inference_lstm_7_layer_call_and_return_conditional_losses_76111

inputs%
lstm_cell_13_76029:	d»%
lstm_cell_13_76031:	2»!
lstm_cell_13_76033:	»
identityИҐ$lstm_cell_13/StatefulPartitionedCallҐwhileI
ShapeShapeinputs*
T0*
_output_shapes
::нѕ]
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
valueB:—
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
value	B :2s
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
:€€€€€€€€€2R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€dR
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::нѕ_
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
valueB:џ
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
€€€€€€€€€і
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€d   а
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“_
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
valueB:й
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€d*
shrink_axis_maskс
$lstm_cell_13/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_13_76029lstm_cell_13_76031lstm_cell_13_76033*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:€€€€€€€€€2:€€€€€€€€€2:€€€€€€€€€2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_lstm_cell_13_layer_call_and_return_conditional_losses_76028n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€2   Є
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“F
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
€€€€€€€€€T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ≤
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_13_76029lstm_cell_13_76031lstm_cell_13_76033*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€2:€€€€€€€€€2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_76042*
condR
while_cond_76041*K
output_shapes:
8: : : : :€€€€€€€€€2:€€€€€€€€€2: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€2   Ћ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Я
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€2[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€2u
NoOpNoOp%^lstm_cell_13/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€€€€€€€€€€d: : : 2L
$lstm_cell_13/StatefulPartitionedCall$lstm_cell_13/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€d
 
_user_specified_nameinputs
й
х
,__inference_lstm_cell_12_layer_call_fn_80859

inputs
states_0
states_1
unknown:	Р
	unknown_0:	dР
	unknown_1:	Р
identity

identity_1

identity_2ИҐStatefulPartitionedCallІ
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:€€€€€€€€€d:€€€€€€€€€d:€€€€€€€€€d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_lstm_cell_12_layer_call_and_return_conditional_losses_75533o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€dq

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:€€€€€€€€€dq

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:€€€€€€€€€d`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:€€€€€€€€€:€€€€€€€€€d:€€€€€€€€€d: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:QM
'
_output_shapes
:€€€€€€€€€d
"
_user_specified_name
states_0:QM
'
_output_shapes
:€€€€€€€€€d
"
_user_specified_name
states_1
ь9
…
while_body_80566
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_14_matmul_readvariableop_resource_0:2(G
5while_lstm_cell_14_matmul_1_readvariableop_resource_0:
(B
4while_lstm_cell_14_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_14_matmul_readvariableop_resource:2(E
3while_lstm_cell_14_matmul_1_readvariableop_resource:
(@
2while_lstm_cell_14_biasadd_readvariableop_resource:(ИҐ)while/lstm_cell_14/BiasAdd/ReadVariableOpҐ(while/lstm_cell_14/MatMul/ReadVariableOpҐ*while/lstm_cell_14/MatMul_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€2   ¶
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€2*
element_dtype0Ь
(while/lstm_cell_14/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_14_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0є
while/lstm_cell_14/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_14/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€(†
*while/lstm_cell_14/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_14_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0†
while/lstm_cell_14/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_14/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€(Э
while/lstm_cell_14/addAddV2#while/lstm_cell_14/MatMul:product:0%while/lstm_cell_14/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€(Ъ
)while/lstm_cell_14/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_14_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0¶
while/lstm_cell_14/BiasAddBiasAddwhile/lstm_cell_14/add:z:01while/lstm_cell_14/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€(d
"while/lstm_cell_14/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :п
while/lstm_cell_14/splitSplit+while/lstm_cell_14/split/split_dim:output:0#while/lstm_cell_14/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€
:€€€€€€€€€
:€€€€€€€€€
:€€€€€€€€€
*
	num_splitz
while/lstm_cell_14/SigmoidSigmoid!while/lstm_cell_14/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€
|
while/lstm_cell_14/Sigmoid_1Sigmoid!while/lstm_cell_14/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€
Ж
while/lstm_cell_14/mulMul while/lstm_cell_14/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€
t
while/lstm_cell_14/ReluRelu!while/lstm_cell_14/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€
Ш
while/lstm_cell_14/mul_1Mulwhile/lstm_cell_14/Sigmoid:y:0%while/lstm_cell_14/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€
Н
while/lstm_cell_14/add_1AddV2while/lstm_cell_14/mul:z:0while/lstm_cell_14/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€
|
while/lstm_cell_14/Sigmoid_2Sigmoid!while/lstm_cell_14/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€
q
while/lstm_cell_14/Relu_1Reluwhile/lstm_cell_14/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€
Ь
while/lstm_cell_14/mul_2Mul while/lstm_cell_14/Sigmoid_2:y:0'while/lstm_cell_14/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€
r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : н
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell_14/mul_2:z:0*
_output_shapes
: *
element_dtype0:йи“M
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
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_14/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€
y
while/Identity_5Identitywhile/lstm_cell_14/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€
–

while/NoOpNoOp*^while/lstm_cell_14/BiasAdd/ReadVariableOp)^while/lstm_cell_14/MatMul/ReadVariableOp+^while/lstm_cell_14/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_14_biasadd_readvariableop_resource4while_lstm_cell_14_biasadd_readvariableop_resource_0"l
3while_lstm_cell_14_matmul_1_readvariableop_resource5while_lstm_cell_14_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_14_matmul_readvariableop_resource3while_lstm_cell_14_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :€€€€€€€€€
:€€€€€€€€€
: : : : : 2V
)while/lstm_cell_14/BiasAdd/ReadVariableOp)while/lstm_cell_14/BiasAdd/ReadVariableOp2T
(while/lstm_cell_14/MatMul/ReadVariableOp(while/lstm_cell_14/MatMul/ReadVariableOp2X
*while/lstm_cell_14/MatMul_1/ReadVariableOp*while/lstm_cell_14/MatMul_1/ReadVariableOp:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€
:-)
'
_output_shapes
:€€€€€€€€€
:

_output_shapes
: :

_output_shapes
: 
ЏK
Ш
A__inference_lstm_8_layer_call_and_return_conditional_losses_80506
inputs_0=
+lstm_cell_14_matmul_readvariableop_resource:2(?
-lstm_cell_14_matmul_1_readvariableop_resource:
(:
,lstm_cell_14_biasadd_readvariableop_resource:(
identityИҐ#lstm_cell_14/BiasAdd/ReadVariableOpҐ"lstm_cell_14/MatMul/ReadVariableOpҐ$lstm_cell_14/MatMul_1/ReadVariableOpҐwhileK
ShapeShapeinputs_0*
T0*
_output_shapes
::нѕ]
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
valueB:—
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
value	B :
s
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
:€€€€€€€€€
R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€
c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€2R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::нѕ_
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
valueB:џ
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
€€€€€€€€€і
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€2   а
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“_
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
valueB:й
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€2*
shrink_axis_maskО
"lstm_cell_14/MatMul/ReadVariableOpReadVariableOp+lstm_cell_14_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0Х
lstm_cell_14/MatMulMatMulstrided_slice_2:output:0*lstm_cell_14/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€(Т
$lstm_cell_14/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_14_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0П
lstm_cell_14/MatMul_1MatMulzeros:output:0,lstm_cell_14/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€(Л
lstm_cell_14/addAddV2lstm_cell_14/MatMul:product:0lstm_cell_14/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€(М
#lstm_cell_14/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_14_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0Ф
lstm_cell_14/BiasAddBiasAddlstm_cell_14/add:z:0+lstm_cell_14/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€(^
lstm_cell_14/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ё
lstm_cell_14/splitSplit%lstm_cell_14/split/split_dim:output:0lstm_cell_14/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€
:€€€€€€€€€
:€€€€€€€€€
:€€€€€€€€€
*
	num_splitn
lstm_cell_14/SigmoidSigmoidlstm_cell_14/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€
p
lstm_cell_14/Sigmoid_1Sigmoidlstm_cell_14/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€
w
lstm_cell_14/mulMullstm_cell_14/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€
h
lstm_cell_14/ReluRelulstm_cell_14/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€
Ж
lstm_cell_14/mul_1Mullstm_cell_14/Sigmoid:y:0lstm_cell_14/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€
{
lstm_cell_14/add_1AddV2lstm_cell_14/mul:z:0lstm_cell_14/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€
p
lstm_cell_14/Sigmoid_2Sigmoidlstm_cell_14/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€
e
lstm_cell_14/Relu_1Relulstm_cell_14/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€
К
lstm_cell_14/mul_2Mullstm_cell_14/Sigmoid_2:y:0!lstm_cell_14/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€
n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€
   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :≈
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“F
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
€€€€€€€€€T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : А
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_14_matmul_readvariableop_resource-lstm_cell_14_matmul_1_readvariableop_resource,lstm_cell_14_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€
:€€€€€€€€€
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_80421*
condR
while_cond_80420*K
output_shapes:
8: : : : :€€€€€€€€€
:€€€€€€€€€
: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€
   ÷
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:€€€€€€€€€
*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€
*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ц
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€
[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€
ј
NoOpNoOp$^lstm_cell_14/BiasAdd/ReadVariableOp#^lstm_cell_14/MatMul/ReadVariableOp%^lstm_cell_14/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€€€€€€€€€€2: : : 2J
#lstm_cell_14/BiasAdd/ReadVariableOp#lstm_cell_14/BiasAdd/ReadVariableOp2H
"lstm_cell_14/MatMul/ReadVariableOp"lstm_cell_14/MatMul/ReadVariableOp2L
$lstm_cell_14/MatMul_1/ReadVariableOp$lstm_cell_14/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€2
"
_user_specified_name
inputs_0
іЈ
√
 __inference__wrapped_model_75469
input_3&
"sequential_2_normalization_2_sub_y'
#sequential_2_normalization_2_sqrt_xR
?sequential_2_lstm_6_lstm_cell_12_matmul_readvariableop_resource:	РT
Asequential_2_lstm_6_lstm_cell_12_matmul_1_readvariableop_resource:	dРO
@sequential_2_lstm_6_lstm_cell_12_biasadd_readvariableop_resource:	РR
?sequential_2_lstm_7_lstm_cell_13_matmul_readvariableop_resource:	d»T
Asequential_2_lstm_7_lstm_cell_13_matmul_1_readvariableop_resource:	2»O
@sequential_2_lstm_7_lstm_cell_13_biasadd_readvariableop_resource:	»Q
?sequential_2_lstm_8_lstm_cell_14_matmul_readvariableop_resource:2(S
Asequential_2_lstm_8_lstm_cell_14_matmul_1_readvariableop_resource:
(N
@sequential_2_lstm_8_lstm_cell_14_biasadd_readvariableop_resource:(E
3sequential_2_dense_2_matmul_readvariableop_resource:
B
4sequential_2_dense_2_biasadd_readvariableop_resource:
identityИҐ+sequential_2/dense_2/BiasAdd/ReadVariableOpҐ*sequential_2/dense_2/MatMul/ReadVariableOpҐ7sequential_2/lstm_6/lstm_cell_12/BiasAdd/ReadVariableOpҐ6sequential_2/lstm_6/lstm_cell_12/MatMul/ReadVariableOpҐ8sequential_2/lstm_6/lstm_cell_12/MatMul_1/ReadVariableOpҐsequential_2/lstm_6/whileҐ7sequential_2/lstm_7/lstm_cell_13/BiasAdd/ReadVariableOpҐ6sequential_2/lstm_7/lstm_cell_13/MatMul/ReadVariableOpҐ8sequential_2/lstm_7/lstm_cell_13/MatMul_1/ReadVariableOpҐsequential_2/lstm_7/whileҐ7sequential_2/lstm_8/lstm_cell_14/BiasAdd/ReadVariableOpҐ6sequential_2/lstm_8/lstm_cell_14/MatMul/ReadVariableOpҐ8sequential_2/lstm_8/lstm_cell_14/MatMul_1/ReadVariableOpҐsequential_2/lstm_8/whileК
 sequential_2/normalization_2/subSubinput_3"sequential_2_normalization_2_sub_y*
T0*+
_output_shapes
:€€€€€€€€€{
!sequential_2/normalization_2/SqrtSqrt#sequential_2_normalization_2_sqrt_x*
T0*"
_output_shapes
:k
&sequential_2/normalization_2/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *Хњ÷3і
$sequential_2/normalization_2/MaximumMaximum%sequential_2/normalization_2/Sqrt:y:0/sequential_2/normalization_2/Maximum/y:output:0*
T0*"
_output_shapes
:µ
$sequential_2/normalization_2/truedivRealDiv$sequential_2/normalization_2/sub:z:0(sequential_2/normalization_2/Maximum:z:0*
T0*+
_output_shapes
:€€€€€€€€€
sequential_2/lstm_6/ShapeShape(sequential_2/normalization_2/truediv:z:0*
T0*
_output_shapes
::нѕq
'sequential_2/lstm_6/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: s
)sequential_2/lstm_6/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:s
)sequential_2/lstm_6/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:µ
!sequential_2/lstm_6/strided_sliceStridedSlice"sequential_2/lstm_6/Shape:output:00sequential_2/lstm_6/strided_slice/stack:output:02sequential_2/lstm_6/strided_slice/stack_1:output:02sequential_2/lstm_6/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskd
"sequential_2/lstm_6/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dѓ
 sequential_2/lstm_6/zeros/packedPack*sequential_2/lstm_6/strided_slice:output:0+sequential_2/lstm_6/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:d
sequential_2/lstm_6/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ®
sequential_2/lstm_6/zerosFill)sequential_2/lstm_6/zeros/packed:output:0(sequential_2/lstm_6/zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€df
$sequential_2/lstm_6/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d≥
"sequential_2/lstm_6/zeros_1/packedPack*sequential_2/lstm_6/strided_slice:output:0-sequential_2/lstm_6/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:f
!sequential_2/lstm_6/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ѓ
sequential_2/lstm_6/zeros_1Fill+sequential_2/lstm_6/zeros_1/packed:output:0*sequential_2/lstm_6/zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€dw
"sequential_2/lstm_6/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ј
sequential_2/lstm_6/transpose	Transpose(sequential_2/normalization_2/truediv:z:0+sequential_2/lstm_6/transpose/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€z
sequential_2/lstm_6/Shape_1Shape!sequential_2/lstm_6/transpose:y:0*
T0*
_output_shapes
::нѕs
)sequential_2/lstm_6/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+sequential_2/lstm_6/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+sequential_2/lstm_6/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:њ
#sequential_2/lstm_6/strided_slice_1StridedSlice$sequential_2/lstm_6/Shape_1:output:02sequential_2/lstm_6/strided_slice_1/stack:output:04sequential_2/lstm_6/strided_slice_1/stack_1:output:04sequential_2/lstm_6/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskz
/sequential_2/lstm_6/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€р
!sequential_2/lstm_6/TensorArrayV2TensorListReserve8sequential_2/lstm_6/TensorArrayV2/element_shape:output:0,sequential_2/lstm_6/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Ъ
Isequential_2/lstm_6/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   Ь
;sequential_2/lstm_6/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor!sequential_2/lstm_6/transpose:y:0Rsequential_2/lstm_6/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“s
)sequential_2/lstm_6/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+sequential_2/lstm_6/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+sequential_2/lstm_6/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ќ
#sequential_2/lstm_6/strided_slice_2StridedSlice!sequential_2/lstm_6/transpose:y:02sequential_2/lstm_6/strided_slice_2/stack:output:04sequential_2/lstm_6/strided_slice_2/stack_1:output:04sequential_2/lstm_6/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_maskЈ
6sequential_2/lstm_6/lstm_cell_12/MatMul/ReadVariableOpReadVariableOp?sequential_2_lstm_6_lstm_cell_12_matmul_readvariableop_resource*
_output_shapes
:	Р*
dtype0“
'sequential_2/lstm_6/lstm_cell_12/MatMulMatMul,sequential_2/lstm_6/strided_slice_2:output:0>sequential_2/lstm_6/lstm_cell_12/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Рї
8sequential_2/lstm_6/lstm_cell_12/MatMul_1/ReadVariableOpReadVariableOpAsequential_2_lstm_6_lstm_cell_12_matmul_1_readvariableop_resource*
_output_shapes
:	dР*
dtype0ћ
)sequential_2/lstm_6/lstm_cell_12/MatMul_1MatMul"sequential_2/lstm_6/zeros:output:0@sequential_2/lstm_6/lstm_cell_12/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Р»
$sequential_2/lstm_6/lstm_cell_12/addAddV21sequential_2/lstm_6/lstm_cell_12/MatMul:product:03sequential_2/lstm_6/lstm_cell_12/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€Рµ
7sequential_2/lstm_6/lstm_cell_12/BiasAdd/ReadVariableOpReadVariableOp@sequential_2_lstm_6_lstm_cell_12_biasadd_readvariableop_resource*
_output_shapes	
:Р*
dtype0—
(sequential_2/lstm_6/lstm_cell_12/BiasAddBiasAdd(sequential_2/lstm_6/lstm_cell_12/add:z:0?sequential_2/lstm_6/lstm_cell_12/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Рr
0sequential_2/lstm_6/lstm_cell_12/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Щ
&sequential_2/lstm_6/lstm_cell_12/splitSplit9sequential_2/lstm_6/lstm_cell_12/split/split_dim:output:01sequential_2/lstm_6/lstm_cell_12/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€d:€€€€€€€€€d:€€€€€€€€€d:€€€€€€€€€d*
	num_splitЦ
(sequential_2/lstm_6/lstm_cell_12/SigmoidSigmoid/sequential_2/lstm_6/lstm_cell_12/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€dШ
*sequential_2/lstm_6/lstm_cell_12/Sigmoid_1Sigmoid/sequential_2/lstm_6/lstm_cell_12/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€d≥
$sequential_2/lstm_6/lstm_cell_12/mulMul.sequential_2/lstm_6/lstm_cell_12/Sigmoid_1:y:0$sequential_2/lstm_6/zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€dР
%sequential_2/lstm_6/lstm_cell_12/ReluRelu/sequential_2/lstm_6/lstm_cell_12/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€d¬
&sequential_2/lstm_6/lstm_cell_12/mul_1Mul,sequential_2/lstm_6/lstm_cell_12/Sigmoid:y:03sequential_2/lstm_6/lstm_cell_12/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€dЈ
&sequential_2/lstm_6/lstm_cell_12/add_1AddV2(sequential_2/lstm_6/lstm_cell_12/mul:z:0*sequential_2/lstm_6/lstm_cell_12/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€dШ
*sequential_2/lstm_6/lstm_cell_12/Sigmoid_2Sigmoid/sequential_2/lstm_6/lstm_cell_12/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€dН
'sequential_2/lstm_6/lstm_cell_12/Relu_1Relu*sequential_2/lstm_6/lstm_cell_12/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€d∆
&sequential_2/lstm_6/lstm_cell_12/mul_2Mul.sequential_2/lstm_6/lstm_cell_12/Sigmoid_2:y:05sequential_2/lstm_6/lstm_cell_12/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€dВ
1sequential_2/lstm_6/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€d   ф
#sequential_2/lstm_6/TensorArrayV2_1TensorListReserve:sequential_2/lstm_6/TensorArrayV2_1/element_shape:output:0,sequential_2/lstm_6/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Z
sequential_2/lstm_6/timeConst*
_output_shapes
: *
dtype0*
value	B : w
,sequential_2/lstm_6/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€h
&sequential_2/lstm_6/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ш
sequential_2/lstm_6/whileWhile/sequential_2/lstm_6/while/loop_counter:output:05sequential_2/lstm_6/while/maximum_iterations:output:0!sequential_2/lstm_6/time:output:0,sequential_2/lstm_6/TensorArrayV2_1:handle:0"sequential_2/lstm_6/zeros:output:0$sequential_2/lstm_6/zeros_1:output:0,sequential_2/lstm_6/strided_slice_1:output:0Ksequential_2/lstm_6/TensorArrayUnstack/TensorListFromTensor:output_handle:0?sequential_2_lstm_6_lstm_cell_12_matmul_readvariableop_resourceAsequential_2_lstm_6_lstm_cell_12_matmul_1_readvariableop_resource@sequential_2_lstm_6_lstm_cell_12_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€d:€€€€€€€€€d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *0
body(R&
$sequential_2_lstm_6_while_body_75096*0
cond(R&
$sequential_2_lstm_6_while_cond_75095*K
output_shapes:
8: : : : :€€€€€€€€€d:€€€€€€€€€d: : : : : *
parallel_iterations Х
Dsequential_2/lstm_6/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€d   ю
6sequential_2/lstm_6/TensorArrayV2Stack/TensorListStackTensorListStack"sequential_2/lstm_6/while:output:3Msequential_2/lstm_6/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:€€€€€€€€€d*
element_dtype0|
)sequential_2/lstm_6/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€u
+sequential_2/lstm_6/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: u
+sequential_2/lstm_6/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:л
#sequential_2/lstm_6/strided_slice_3StridedSlice?sequential_2/lstm_6/TensorArrayV2Stack/TensorListStack:tensor:02sequential_2/lstm_6/strided_slice_3/stack:output:04sequential_2/lstm_6/strided_slice_3/stack_1:output:04sequential_2/lstm_6/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€d*
shrink_axis_masky
$sequential_2/lstm_6/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          “
sequential_2/lstm_6/transpose_1	Transpose?sequential_2/lstm_6/TensorArrayV2Stack/TensorListStack:tensor:0-sequential_2/lstm_6/transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€do
sequential_2/lstm_6/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    Ж
sequential_2/dropout_6/IdentityIdentity#sequential_2/lstm_6/transpose_1:y:0*
T0*+
_output_shapes
:€€€€€€€€€d
sequential_2/lstm_7/ShapeShape(sequential_2/dropout_6/Identity:output:0*
T0*
_output_shapes
::нѕq
'sequential_2/lstm_7/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: s
)sequential_2/lstm_7/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:s
)sequential_2/lstm_7/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:µ
!sequential_2/lstm_7/strided_sliceStridedSlice"sequential_2/lstm_7/Shape:output:00sequential_2/lstm_7/strided_slice/stack:output:02sequential_2/lstm_7/strided_slice/stack_1:output:02sequential_2/lstm_7/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskd
"sequential_2/lstm_7/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2ѓ
 sequential_2/lstm_7/zeros/packedPack*sequential_2/lstm_7/strided_slice:output:0+sequential_2/lstm_7/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:d
sequential_2/lstm_7/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ®
sequential_2/lstm_7/zerosFill)sequential_2/lstm_7/zeros/packed:output:0(sequential_2/lstm_7/zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€2f
$sequential_2/lstm_7/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2≥
"sequential_2/lstm_7/zeros_1/packedPack*sequential_2/lstm_7/strided_slice:output:0-sequential_2/lstm_7/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:f
!sequential_2/lstm_7/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ѓ
sequential_2/lstm_7/zeros_1Fill+sequential_2/lstm_7/zeros_1/packed:output:0*sequential_2/lstm_7/zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€2w
"sequential_2/lstm_7/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ј
sequential_2/lstm_7/transpose	Transpose(sequential_2/dropout_6/Identity:output:0+sequential_2/lstm_7/transpose/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€dz
sequential_2/lstm_7/Shape_1Shape!sequential_2/lstm_7/transpose:y:0*
T0*
_output_shapes
::нѕs
)sequential_2/lstm_7/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+sequential_2/lstm_7/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+sequential_2/lstm_7/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:њ
#sequential_2/lstm_7/strided_slice_1StridedSlice$sequential_2/lstm_7/Shape_1:output:02sequential_2/lstm_7/strided_slice_1/stack:output:04sequential_2/lstm_7/strided_slice_1/stack_1:output:04sequential_2/lstm_7/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskz
/sequential_2/lstm_7/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€р
!sequential_2/lstm_7/TensorArrayV2TensorListReserve8sequential_2/lstm_7/TensorArrayV2/element_shape:output:0,sequential_2/lstm_7/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Ъ
Isequential_2/lstm_7/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€d   Ь
;sequential_2/lstm_7/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor!sequential_2/lstm_7/transpose:y:0Rsequential_2/lstm_7/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“s
)sequential_2/lstm_7/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+sequential_2/lstm_7/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+sequential_2/lstm_7/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ќ
#sequential_2/lstm_7/strided_slice_2StridedSlice!sequential_2/lstm_7/transpose:y:02sequential_2/lstm_7/strided_slice_2/stack:output:04sequential_2/lstm_7/strided_slice_2/stack_1:output:04sequential_2/lstm_7/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€d*
shrink_axis_maskЈ
6sequential_2/lstm_7/lstm_cell_13/MatMul/ReadVariableOpReadVariableOp?sequential_2_lstm_7_lstm_cell_13_matmul_readvariableop_resource*
_output_shapes
:	d»*
dtype0“
'sequential_2/lstm_7/lstm_cell_13/MatMulMatMul,sequential_2/lstm_7/strided_slice_2:output:0>sequential_2/lstm_7/lstm_cell_13/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€»ї
8sequential_2/lstm_7/lstm_cell_13/MatMul_1/ReadVariableOpReadVariableOpAsequential_2_lstm_7_lstm_cell_13_matmul_1_readvariableop_resource*
_output_shapes
:	2»*
dtype0ћ
)sequential_2/lstm_7/lstm_cell_13/MatMul_1MatMul"sequential_2/lstm_7/zeros:output:0@sequential_2/lstm_7/lstm_cell_13/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€»»
$sequential_2/lstm_7/lstm_cell_13/addAddV21sequential_2/lstm_7/lstm_cell_13/MatMul:product:03sequential_2/lstm_7/lstm_cell_13/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€»µ
7sequential_2/lstm_7/lstm_cell_13/BiasAdd/ReadVariableOpReadVariableOp@sequential_2_lstm_7_lstm_cell_13_biasadd_readvariableop_resource*
_output_shapes	
:»*
dtype0—
(sequential_2/lstm_7/lstm_cell_13/BiasAddBiasAdd(sequential_2/lstm_7/lstm_cell_13/add:z:0?sequential_2/lstm_7/lstm_cell_13/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€»r
0sequential_2/lstm_7/lstm_cell_13/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Щ
&sequential_2/lstm_7/lstm_cell_13/splitSplit9sequential_2/lstm_7/lstm_cell_13/split/split_dim:output:01sequential_2/lstm_7/lstm_cell_13/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€2:€€€€€€€€€2:€€€€€€€€€2:€€€€€€€€€2*
	num_splitЦ
(sequential_2/lstm_7/lstm_cell_13/SigmoidSigmoid/sequential_2/lstm_7/lstm_cell_13/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€2Ш
*sequential_2/lstm_7/lstm_cell_13/Sigmoid_1Sigmoid/sequential_2/lstm_7/lstm_cell_13/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€2≥
$sequential_2/lstm_7/lstm_cell_13/mulMul.sequential_2/lstm_7/lstm_cell_13/Sigmoid_1:y:0$sequential_2/lstm_7/zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€2Р
%sequential_2/lstm_7/lstm_cell_13/ReluRelu/sequential_2/lstm_7/lstm_cell_13/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€2¬
&sequential_2/lstm_7/lstm_cell_13/mul_1Mul,sequential_2/lstm_7/lstm_cell_13/Sigmoid:y:03sequential_2/lstm_7/lstm_cell_13/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€2Ј
&sequential_2/lstm_7/lstm_cell_13/add_1AddV2(sequential_2/lstm_7/lstm_cell_13/mul:z:0*sequential_2/lstm_7/lstm_cell_13/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€2Ш
*sequential_2/lstm_7/lstm_cell_13/Sigmoid_2Sigmoid/sequential_2/lstm_7/lstm_cell_13/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€2Н
'sequential_2/lstm_7/lstm_cell_13/Relu_1Relu*sequential_2/lstm_7/lstm_cell_13/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€2∆
&sequential_2/lstm_7/lstm_cell_13/mul_2Mul.sequential_2/lstm_7/lstm_cell_13/Sigmoid_2:y:05sequential_2/lstm_7/lstm_cell_13/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€2В
1sequential_2/lstm_7/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€2   ф
#sequential_2/lstm_7/TensorArrayV2_1TensorListReserve:sequential_2/lstm_7/TensorArrayV2_1/element_shape:output:0,sequential_2/lstm_7/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Z
sequential_2/lstm_7/timeConst*
_output_shapes
: *
dtype0*
value	B : w
,sequential_2/lstm_7/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€h
&sequential_2/lstm_7/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ш
sequential_2/lstm_7/whileWhile/sequential_2/lstm_7/while/loop_counter:output:05sequential_2/lstm_7/while/maximum_iterations:output:0!sequential_2/lstm_7/time:output:0,sequential_2/lstm_7/TensorArrayV2_1:handle:0"sequential_2/lstm_7/zeros:output:0$sequential_2/lstm_7/zeros_1:output:0,sequential_2/lstm_7/strided_slice_1:output:0Ksequential_2/lstm_7/TensorArrayUnstack/TensorListFromTensor:output_handle:0?sequential_2_lstm_7_lstm_cell_13_matmul_readvariableop_resourceAsequential_2_lstm_7_lstm_cell_13_matmul_1_readvariableop_resource@sequential_2_lstm_7_lstm_cell_13_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€2:€€€€€€€€€2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *0
body(R&
$sequential_2_lstm_7_while_body_75236*0
cond(R&
$sequential_2_lstm_7_while_cond_75235*K
output_shapes:
8: : : : :€€€€€€€€€2:€€€€€€€€€2: : : : : *
parallel_iterations Х
Dsequential_2/lstm_7/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€2   ю
6sequential_2/lstm_7/TensorArrayV2Stack/TensorListStackTensorListStack"sequential_2/lstm_7/while:output:3Msequential_2/lstm_7/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:€€€€€€€€€2*
element_dtype0|
)sequential_2/lstm_7/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€u
+sequential_2/lstm_7/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: u
+sequential_2/lstm_7/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:л
#sequential_2/lstm_7/strided_slice_3StridedSlice?sequential_2/lstm_7/TensorArrayV2Stack/TensorListStack:tensor:02sequential_2/lstm_7/strided_slice_3/stack:output:04sequential_2/lstm_7/strided_slice_3/stack_1:output:04sequential_2/lstm_7/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€2*
shrink_axis_masky
$sequential_2/lstm_7/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          “
sequential_2/lstm_7/transpose_1	Transpose?sequential_2/lstm_7/TensorArrayV2Stack/TensorListStack:tensor:0-sequential_2/lstm_7/transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€2o
sequential_2/lstm_7/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    Ж
sequential_2/dropout_7/IdentityIdentity#sequential_2/lstm_7/transpose_1:y:0*
T0*+
_output_shapes
:€€€€€€€€€2
sequential_2/lstm_8/ShapeShape(sequential_2/dropout_7/Identity:output:0*
T0*
_output_shapes
::нѕq
'sequential_2/lstm_8/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: s
)sequential_2/lstm_8/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:s
)sequential_2/lstm_8/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:µ
!sequential_2/lstm_8/strided_sliceStridedSlice"sequential_2/lstm_8/Shape:output:00sequential_2/lstm_8/strided_slice/stack:output:02sequential_2/lstm_8/strided_slice/stack_1:output:02sequential_2/lstm_8/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskd
"sequential_2/lstm_8/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
ѓ
 sequential_2/lstm_8/zeros/packedPack*sequential_2/lstm_8/strided_slice:output:0+sequential_2/lstm_8/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:d
sequential_2/lstm_8/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ®
sequential_2/lstm_8/zerosFill)sequential_2/lstm_8/zeros/packed:output:0(sequential_2/lstm_8/zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€
f
$sequential_2/lstm_8/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
≥
"sequential_2/lstm_8/zeros_1/packedPack*sequential_2/lstm_8/strided_slice:output:0-sequential_2/lstm_8/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:f
!sequential_2/lstm_8/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ѓ
sequential_2/lstm_8/zeros_1Fill+sequential_2/lstm_8/zeros_1/packed:output:0*sequential_2/lstm_8/zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€
w
"sequential_2/lstm_8/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ј
sequential_2/lstm_8/transpose	Transpose(sequential_2/dropout_7/Identity:output:0+sequential_2/lstm_8/transpose/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€2z
sequential_2/lstm_8/Shape_1Shape!sequential_2/lstm_8/transpose:y:0*
T0*
_output_shapes
::нѕs
)sequential_2/lstm_8/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+sequential_2/lstm_8/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+sequential_2/lstm_8/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:њ
#sequential_2/lstm_8/strided_slice_1StridedSlice$sequential_2/lstm_8/Shape_1:output:02sequential_2/lstm_8/strided_slice_1/stack:output:04sequential_2/lstm_8/strided_slice_1/stack_1:output:04sequential_2/lstm_8/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskz
/sequential_2/lstm_8/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€р
!sequential_2/lstm_8/TensorArrayV2TensorListReserve8sequential_2/lstm_8/TensorArrayV2/element_shape:output:0,sequential_2/lstm_8/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Ъ
Isequential_2/lstm_8/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€2   Ь
;sequential_2/lstm_8/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor!sequential_2/lstm_8/transpose:y:0Rsequential_2/lstm_8/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“s
)sequential_2/lstm_8/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+sequential_2/lstm_8/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+sequential_2/lstm_8/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ќ
#sequential_2/lstm_8/strided_slice_2StridedSlice!sequential_2/lstm_8/transpose:y:02sequential_2/lstm_8/strided_slice_2/stack:output:04sequential_2/lstm_8/strided_slice_2/stack_1:output:04sequential_2/lstm_8/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€2*
shrink_axis_maskґ
6sequential_2/lstm_8/lstm_cell_14/MatMul/ReadVariableOpReadVariableOp?sequential_2_lstm_8_lstm_cell_14_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0—
'sequential_2/lstm_8/lstm_cell_14/MatMulMatMul,sequential_2/lstm_8/strided_slice_2:output:0>sequential_2/lstm_8/lstm_cell_14/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€(Ї
8sequential_2/lstm_8/lstm_cell_14/MatMul_1/ReadVariableOpReadVariableOpAsequential_2_lstm_8_lstm_cell_14_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0Ћ
)sequential_2/lstm_8/lstm_cell_14/MatMul_1MatMul"sequential_2/lstm_8/zeros:output:0@sequential_2/lstm_8/lstm_cell_14/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€(«
$sequential_2/lstm_8/lstm_cell_14/addAddV21sequential_2/lstm_8/lstm_cell_14/MatMul:product:03sequential_2/lstm_8/lstm_cell_14/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€(і
7sequential_2/lstm_8/lstm_cell_14/BiasAdd/ReadVariableOpReadVariableOp@sequential_2_lstm_8_lstm_cell_14_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0–
(sequential_2/lstm_8/lstm_cell_14/BiasAddBiasAdd(sequential_2/lstm_8/lstm_cell_14/add:z:0?sequential_2/lstm_8/lstm_cell_14/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€(r
0sequential_2/lstm_8/lstm_cell_14/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Щ
&sequential_2/lstm_8/lstm_cell_14/splitSplit9sequential_2/lstm_8/lstm_cell_14/split/split_dim:output:01sequential_2/lstm_8/lstm_cell_14/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€
:€€€€€€€€€
:€€€€€€€€€
:€€€€€€€€€
*
	num_splitЦ
(sequential_2/lstm_8/lstm_cell_14/SigmoidSigmoid/sequential_2/lstm_8/lstm_cell_14/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€
Ш
*sequential_2/lstm_8/lstm_cell_14/Sigmoid_1Sigmoid/sequential_2/lstm_8/lstm_cell_14/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€
≥
$sequential_2/lstm_8/lstm_cell_14/mulMul.sequential_2/lstm_8/lstm_cell_14/Sigmoid_1:y:0$sequential_2/lstm_8/zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€
Р
%sequential_2/lstm_8/lstm_cell_14/ReluRelu/sequential_2/lstm_8/lstm_cell_14/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€
¬
&sequential_2/lstm_8/lstm_cell_14/mul_1Mul,sequential_2/lstm_8/lstm_cell_14/Sigmoid:y:03sequential_2/lstm_8/lstm_cell_14/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€
Ј
&sequential_2/lstm_8/lstm_cell_14/add_1AddV2(sequential_2/lstm_8/lstm_cell_14/mul:z:0*sequential_2/lstm_8/lstm_cell_14/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€
Ш
*sequential_2/lstm_8/lstm_cell_14/Sigmoid_2Sigmoid/sequential_2/lstm_8/lstm_cell_14/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€
Н
'sequential_2/lstm_8/lstm_cell_14/Relu_1Relu*sequential_2/lstm_8/lstm_cell_14/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€
∆
&sequential_2/lstm_8/lstm_cell_14/mul_2Mul.sequential_2/lstm_8/lstm_cell_14/Sigmoid_2:y:05sequential_2/lstm_8/lstm_cell_14/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€
В
1sequential_2/lstm_8/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€
   r
0sequential_2/lstm_8/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Б
#sequential_2/lstm_8/TensorArrayV2_1TensorListReserve:sequential_2/lstm_8/TensorArrayV2_1/element_shape:output:09sequential_2/lstm_8/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Z
sequential_2/lstm_8/timeConst*
_output_shapes
: *
dtype0*
value	B : w
,sequential_2/lstm_8/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€h
&sequential_2/lstm_8/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ш
sequential_2/lstm_8/whileWhile/sequential_2/lstm_8/while/loop_counter:output:05sequential_2/lstm_8/while/maximum_iterations:output:0!sequential_2/lstm_8/time:output:0,sequential_2/lstm_8/TensorArrayV2_1:handle:0"sequential_2/lstm_8/zeros:output:0$sequential_2/lstm_8/zeros_1:output:0,sequential_2/lstm_8/strided_slice_1:output:0Ksequential_2/lstm_8/TensorArrayUnstack/TensorListFromTensor:output_handle:0?sequential_2_lstm_8_lstm_cell_14_matmul_readvariableop_resourceAsequential_2_lstm_8_lstm_cell_14_matmul_1_readvariableop_resource@sequential_2_lstm_8_lstm_cell_14_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€
:€€€€€€€€€
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *0
body(R&
$sequential_2_lstm_8_while_body_75377*0
cond(R&
$sequential_2_lstm_8_while_cond_75376*K
output_shapes:
8: : : : :€€€€€€€€€
:€€€€€€€€€
: : : : : *
parallel_iterations Х
Dsequential_2/lstm_8/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€
   Т
6sequential_2/lstm_8/TensorArrayV2Stack/TensorListStackTensorListStack"sequential_2/lstm_8/while:output:3Msequential_2/lstm_8/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:€€€€€€€€€
*
element_dtype0*
num_elements|
)sequential_2/lstm_8/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€u
+sequential_2/lstm_8/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: u
+sequential_2/lstm_8/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:л
#sequential_2/lstm_8/strided_slice_3StridedSlice?sequential_2/lstm_8/TensorArrayV2Stack/TensorListStack:tensor:02sequential_2/lstm_8/strided_slice_3/stack:output:04sequential_2/lstm_8/strided_slice_3/stack_1:output:04sequential_2/lstm_8/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€
*
shrink_axis_masky
$sequential_2/lstm_8/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          “
sequential_2/lstm_8/transpose_1	Transpose?sequential_2/lstm_8/TensorArrayV2Stack/TensorListStack:tensor:0-sequential_2/lstm_8/transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€
o
sequential_2/lstm_8/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    Л
sequential_2/dropout_8/IdentityIdentity,sequential_2/lstm_8/strided_slice_3:output:0*
T0*'
_output_shapes
:€€€€€€€€€
Ю
*sequential_2/dense_2/MatMul/ReadVariableOpReadVariableOp3sequential_2_dense_2_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0µ
sequential_2/dense_2/MatMulMatMul(sequential_2/dropout_8/Identity:output:02sequential_2/dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€Ь
+sequential_2/dense_2/BiasAdd/ReadVariableOpReadVariableOp4sequential_2_dense_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0µ
sequential_2/dense_2/BiasAddBiasAdd%sequential_2/dense_2/MatMul:product:03sequential_2/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€t
IdentityIdentity%sequential_2/dense_2/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€€
NoOpNoOp,^sequential_2/dense_2/BiasAdd/ReadVariableOp+^sequential_2/dense_2/MatMul/ReadVariableOp8^sequential_2/lstm_6/lstm_cell_12/BiasAdd/ReadVariableOp7^sequential_2/lstm_6/lstm_cell_12/MatMul/ReadVariableOp9^sequential_2/lstm_6/lstm_cell_12/MatMul_1/ReadVariableOp^sequential_2/lstm_6/while8^sequential_2/lstm_7/lstm_cell_13/BiasAdd/ReadVariableOp7^sequential_2/lstm_7/lstm_cell_13/MatMul/ReadVariableOp9^sequential_2/lstm_7/lstm_cell_13/MatMul_1/ReadVariableOp^sequential_2/lstm_7/while8^sequential_2/lstm_8/lstm_cell_14/BiasAdd/ReadVariableOp7^sequential_2/lstm_8/lstm_cell_14/MatMul/ReadVariableOp9^sequential_2/lstm_8/lstm_cell_14/MatMul_1/ReadVariableOp^sequential_2/lstm_8/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*\
_input_shapesK
I:€€€€€€€€€::: : : : : : : : : : : 2Z
+sequential_2/dense_2/BiasAdd/ReadVariableOp+sequential_2/dense_2/BiasAdd/ReadVariableOp2X
*sequential_2/dense_2/MatMul/ReadVariableOp*sequential_2/dense_2/MatMul/ReadVariableOp2r
7sequential_2/lstm_6/lstm_cell_12/BiasAdd/ReadVariableOp7sequential_2/lstm_6/lstm_cell_12/BiasAdd/ReadVariableOp2p
6sequential_2/lstm_6/lstm_cell_12/MatMul/ReadVariableOp6sequential_2/lstm_6/lstm_cell_12/MatMul/ReadVariableOp2t
8sequential_2/lstm_6/lstm_cell_12/MatMul_1/ReadVariableOp8sequential_2/lstm_6/lstm_cell_12/MatMul_1/ReadVariableOp26
sequential_2/lstm_6/whilesequential_2/lstm_6/while2r
7sequential_2/lstm_7/lstm_cell_13/BiasAdd/ReadVariableOp7sequential_2/lstm_7/lstm_cell_13/BiasAdd/ReadVariableOp2p
6sequential_2/lstm_7/lstm_cell_13/MatMul/ReadVariableOp6sequential_2/lstm_7/lstm_cell_13/MatMul/ReadVariableOp2t
8sequential_2/lstm_7/lstm_cell_13/MatMul_1/ReadVariableOp8sequential_2/lstm_7/lstm_cell_13/MatMul_1/ReadVariableOp26
sequential_2/lstm_7/whilesequential_2/lstm_7/while2r
7sequential_2/lstm_8/lstm_cell_14/BiasAdd/ReadVariableOp7sequential_2/lstm_8/lstm_cell_14/BiasAdd/ReadVariableOp2p
6sequential_2/lstm_8/lstm_cell_14/MatMul/ReadVariableOp6sequential_2/lstm_8/lstm_cell_14/MatMul/ReadVariableOp2t
8sequential_2/lstm_8/lstm_cell_14/MatMul_1/ReadVariableOp8sequential_2/lstm_8/lstm_cell_14/MatMul_1/ReadVariableOp26
sequential_2/lstm_8/whilesequential_2/lstm_8/while:T P
+
_output_shapes
:€€€€€€€€€
!
_user_specified_name	input_3:($
"
_output_shapes
::($
"
_output_shapes
:
Т	
Њ
while_cond_75691
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_75691___redundant_placeholder03
/while_while_cond_75691___redundant_placeholder13
/while_while_cond_75691___redundant_placeholder23
/while_while_cond_75691___redundant_placeholder3
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
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :€€€€€€€€€d:€€€€€€€€€d: :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€d:-)
'
_output_shapes
:€€€€€€€€€d:

_output_shapes
: :

_output_shapes
:
‘
Г
G__inference_lstm_cell_13_layer_call_and_return_conditional_losses_75883

inputs

states
states_11
matmul_readvariableop_resource:	d»3
 matmul_1_readvariableop_resource:	2».
biasadd_readvariableop_resource:	»
identity

identity_1

identity_2ИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpҐMatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	d»*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€»y
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	2»*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€»e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€»s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:»*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€»Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ґ
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€2:€€€€€€€€€2:€€€€€€€€€2:€€€€€€€€€2*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:€€€€€€€€€2V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:€€€€€€€€€2U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:€€€€€€€€€2N
ReluRelusplit:output:2*
T0*'
_output_shapes
:€€€€€€€€€2_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€2T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€2V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:€€€€€€€€€2K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€2c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€2X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€2Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€2Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€2С
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:€€€€€€€€€d:€€€€€€€€€2:€€€€€€€€€2: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€d
 
_user_specified_nameinputs:OK
'
_output_shapes
:€€€€€€€€€2
 
_user_specified_namestates:OK
'
_output_shapes
:€€€€€€€€€2
 
_user_specified_namestates
‘
Г
G__inference_lstm_cell_12_layer_call_and_return_conditional_losses_75533

inputs

states
states_11
matmul_readvariableop_resource:	Р3
 matmul_1_readvariableop_resource:	dР.
biasadd_readvariableop_resource:	Р
identity

identity_1

identity_2ИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpҐMatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	Р*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Рy
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	dР*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Рe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€Рs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:Р*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€РQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ґ
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€d:€€€€€€€€€d:€€€€€€€€€d:€€€€€€€€€d*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:€€€€€€€€€dV
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:€€€€€€€€€dU
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:€€€€€€€€€dN
ReluRelusplit:output:2*
T0*'
_output_shapes
:€€€€€€€€€d_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€dT
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€dV
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:€€€€€€€€€dK
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€dc
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€dX
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€dZ

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€dZ

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€dС
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:€€€€€€€€€:€€€€€€€€€d:€€€€€€€€€d: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:OK
'
_output_shapes
:€€€€€€€€€d
 
_user_specified_namestates:OK
'
_output_shapes
:€€€€€€€€€d
 
_user_specified_namestates
р
∞
&__inference_lstm_8_layer_call_fn_80216

inputs
unknown:2(
	unknown_0:
(
	unknown_1:(
identityИҐStatefulPartitionedCallг
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_lstm_8_layer_call_and_return_conditional_losses_77511o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:€€€€€€€€€2
 
_user_specified_nameinputs
иґ
≥)
__inference__traced_save_81413
file_prefix9
+read_disablecopyonread_normalization_2_mean:?
1read_1_disablecopyonread_normalization_2_variance:8
.read_2_disablecopyonread_normalization_2_count:	 9
'read_3_disablecopyonread_dense_2_kernel:
3
%read_4_disablecopyonread_dense_2_bias:F
3read_5_disablecopyonread_lstm_6_lstm_cell_12_kernel:	РP
=read_6_disablecopyonread_lstm_6_lstm_cell_12_recurrent_kernel:	dР@
1read_7_disablecopyonread_lstm_6_lstm_cell_12_bias:	РF
3read_8_disablecopyonread_lstm_7_lstm_cell_13_kernel:	d»P
=read_9_disablecopyonread_lstm_7_lstm_cell_13_recurrent_kernel:	2»A
2read_10_disablecopyonread_lstm_7_lstm_cell_13_bias:	»F
4read_11_disablecopyonread_lstm_8_lstm_cell_14_kernel:2(P
>read_12_disablecopyonread_lstm_8_lstm_cell_14_recurrent_kernel:
(@
2read_13_disablecopyonread_lstm_8_lstm_cell_14_bias:(-
#read_14_disablecopyonread_iteration:	 1
'read_15_disablecopyonread_learning_rate: P
=read_16_disablecopyonread_adamax_m_lstm_6_lstm_cell_12_kernel:	РP
=read_17_disablecopyonread_adamax_u_lstm_6_lstm_cell_12_kernel:	РZ
Gread_18_disablecopyonread_adamax_m_lstm_6_lstm_cell_12_recurrent_kernel:	dРZ
Gread_19_disablecopyonread_adamax_u_lstm_6_lstm_cell_12_recurrent_kernel:	dРJ
;read_20_disablecopyonread_adamax_m_lstm_6_lstm_cell_12_bias:	РJ
;read_21_disablecopyonread_adamax_u_lstm_6_lstm_cell_12_bias:	РP
=read_22_disablecopyonread_adamax_m_lstm_7_lstm_cell_13_kernel:	d»P
=read_23_disablecopyonread_adamax_u_lstm_7_lstm_cell_13_kernel:	d»Z
Gread_24_disablecopyonread_adamax_m_lstm_7_lstm_cell_13_recurrent_kernel:	2»Z
Gread_25_disablecopyonread_adamax_u_lstm_7_lstm_cell_13_recurrent_kernel:	2»J
;read_26_disablecopyonread_adamax_m_lstm_7_lstm_cell_13_bias:	»J
;read_27_disablecopyonread_adamax_u_lstm_7_lstm_cell_13_bias:	»O
=read_28_disablecopyonread_adamax_m_lstm_8_lstm_cell_14_kernel:2(O
=read_29_disablecopyonread_adamax_u_lstm_8_lstm_cell_14_kernel:2(Y
Gread_30_disablecopyonread_adamax_m_lstm_8_lstm_cell_14_recurrent_kernel:
(Y
Gread_31_disablecopyonread_adamax_u_lstm_8_lstm_cell_14_recurrent_kernel:
(I
;read_32_disablecopyonread_adamax_m_lstm_8_lstm_cell_14_bias:(I
;read_33_disablecopyonread_adamax_u_lstm_8_lstm_cell_14_bias:(C
1read_34_disablecopyonread_adamax_m_dense_2_kernel:
C
1read_35_disablecopyonread_adamax_u_dense_2_kernel:
=
/read_36_disablecopyonread_adamax_m_dense_2_bias:=
/read_37_disablecopyonread_adamax_u_dense_2_bias:+
!read_38_disablecopyonread_total_1: +
!read_39_disablecopyonread_count_1: )
read_40_disablecopyonread_total: )
read_41_disablecopyonread_count: 
savev2_const_2
identity_85ИҐMergeV2CheckpointsҐRead/DisableCopyOnReadҐRead/ReadVariableOpҐRead_1/DisableCopyOnReadҐRead_1/ReadVariableOpҐRead_10/DisableCopyOnReadҐRead_10/ReadVariableOpҐRead_11/DisableCopyOnReadҐRead_11/ReadVariableOpҐRead_12/DisableCopyOnReadҐRead_12/ReadVariableOpҐRead_13/DisableCopyOnReadҐRead_13/ReadVariableOpҐRead_14/DisableCopyOnReadҐRead_14/ReadVariableOpҐRead_15/DisableCopyOnReadҐRead_15/ReadVariableOpҐRead_16/DisableCopyOnReadҐRead_16/ReadVariableOpҐRead_17/DisableCopyOnReadҐRead_17/ReadVariableOpҐRead_18/DisableCopyOnReadҐRead_18/ReadVariableOpҐRead_19/DisableCopyOnReadҐRead_19/ReadVariableOpҐRead_2/DisableCopyOnReadҐRead_2/ReadVariableOpҐRead_20/DisableCopyOnReadҐRead_20/ReadVariableOpҐRead_21/DisableCopyOnReadҐRead_21/ReadVariableOpҐRead_22/DisableCopyOnReadҐRead_22/ReadVariableOpҐRead_23/DisableCopyOnReadҐRead_23/ReadVariableOpҐRead_24/DisableCopyOnReadҐRead_24/ReadVariableOpҐRead_25/DisableCopyOnReadҐRead_25/ReadVariableOpҐRead_26/DisableCopyOnReadҐRead_26/ReadVariableOpҐRead_27/DisableCopyOnReadҐRead_27/ReadVariableOpҐRead_28/DisableCopyOnReadҐRead_28/ReadVariableOpҐRead_29/DisableCopyOnReadҐRead_29/ReadVariableOpҐRead_3/DisableCopyOnReadҐRead_3/ReadVariableOpҐRead_30/DisableCopyOnReadҐRead_30/ReadVariableOpҐRead_31/DisableCopyOnReadҐRead_31/ReadVariableOpҐRead_32/DisableCopyOnReadҐRead_32/ReadVariableOpҐRead_33/DisableCopyOnReadҐRead_33/ReadVariableOpҐRead_34/DisableCopyOnReadҐRead_34/ReadVariableOpҐRead_35/DisableCopyOnReadҐRead_35/ReadVariableOpҐRead_36/DisableCopyOnReadҐRead_36/ReadVariableOpҐRead_37/DisableCopyOnReadҐRead_37/ReadVariableOpҐRead_38/DisableCopyOnReadҐRead_38/ReadVariableOpҐRead_39/DisableCopyOnReadҐRead_39/ReadVariableOpҐRead_4/DisableCopyOnReadҐRead_4/ReadVariableOpҐRead_40/DisableCopyOnReadҐRead_40/ReadVariableOpҐRead_41/DisableCopyOnReadҐRead_41/ReadVariableOpҐRead_5/DisableCopyOnReadҐRead_5/ReadVariableOpҐRead_6/DisableCopyOnReadҐRead_6/ReadVariableOpҐRead_7/DisableCopyOnReadҐRead_7/ReadVariableOpҐRead_8/DisableCopyOnReadҐRead_8/ReadVariableOpҐRead_9/DisableCopyOnReadҐRead_9/ReadVariableOpw
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
_temp/partБ
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
value	B : У
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: }
Read/DisableCopyOnReadDisableCopyOnRead+read_disablecopyonread_normalization_2_mean"/device:CPU:0*
_output_shapes
 £
Read/ReadVariableOpReadVariableOp+read_disablecopyonread_normalization_2_mean^Read/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0e
IdentityIdentityRead/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:]

Identity_1IdentityIdentity:output:0"/device:CPU:0*
T0*
_output_shapes
:Е
Read_1/DisableCopyOnReadDisableCopyOnRead1read_1_disablecopyonread_normalization_2_variance"/device:CPU:0*
_output_shapes
 ≠
Read_1/ReadVariableOpReadVariableOp1read_1_disablecopyonread_normalization_2_variance^Read_1/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0i

Identity_2IdentityRead_1/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:_

Identity_3IdentityIdentity_2:output:0"/device:CPU:0*
T0*
_output_shapes
:В
Read_2/DisableCopyOnReadDisableCopyOnRead.read_2_disablecopyonread_normalization_2_count"/device:CPU:0*
_output_shapes
 ¶
Read_2/ReadVariableOpReadVariableOp.read_2_disablecopyonread_normalization_2_count^Read_2/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0	e

Identity_4IdentityRead_2/ReadVariableOp:value:0"/device:CPU:0*
T0	*
_output_shapes
: [

Identity_5IdentityIdentity_4:output:0"/device:CPU:0*
T0	*
_output_shapes
: {
Read_3/DisableCopyOnReadDisableCopyOnRead'read_3_disablecopyonread_dense_2_kernel"/device:CPU:0*
_output_shapes
 І
Read_3/ReadVariableOpReadVariableOp'read_3_disablecopyonread_dense_2_kernel^Read_3/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:
*
dtype0m

Identity_6IdentityRead_3/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:
c

Identity_7IdentityIdentity_6:output:0"/device:CPU:0*
T0*
_output_shapes

:
y
Read_4/DisableCopyOnReadDisableCopyOnRead%read_4_disablecopyonread_dense_2_bias"/device:CPU:0*
_output_shapes
 °
Read_4/ReadVariableOpReadVariableOp%read_4_disablecopyonread_dense_2_bias^Read_4/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0i

Identity_8IdentityRead_4/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:_

Identity_9IdentityIdentity_8:output:0"/device:CPU:0*
T0*
_output_shapes
:З
Read_5/DisableCopyOnReadDisableCopyOnRead3read_5_disablecopyonread_lstm_6_lstm_cell_12_kernel"/device:CPU:0*
_output_shapes
 і
Read_5/ReadVariableOpReadVariableOp3read_5_disablecopyonread_lstm_6_lstm_cell_12_kernel^Read_5/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	Р*
dtype0o
Identity_10IdentityRead_5/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	Рf
Identity_11IdentityIdentity_10:output:0"/device:CPU:0*
T0*
_output_shapes
:	РС
Read_6/DisableCopyOnReadDisableCopyOnRead=read_6_disablecopyonread_lstm_6_lstm_cell_12_recurrent_kernel"/device:CPU:0*
_output_shapes
 Њ
Read_6/ReadVariableOpReadVariableOp=read_6_disablecopyonread_lstm_6_lstm_cell_12_recurrent_kernel^Read_6/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	dР*
dtype0o
Identity_12IdentityRead_6/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	dРf
Identity_13IdentityIdentity_12:output:0"/device:CPU:0*
T0*
_output_shapes
:	dРЕ
Read_7/DisableCopyOnReadDisableCopyOnRead1read_7_disablecopyonread_lstm_6_lstm_cell_12_bias"/device:CPU:0*
_output_shapes
 Ѓ
Read_7/ReadVariableOpReadVariableOp1read_7_disablecopyonread_lstm_6_lstm_cell_12_bias^Read_7/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:Р*
dtype0k
Identity_14IdentityRead_7/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Рb
Identity_15IdentityIdentity_14:output:0"/device:CPU:0*
T0*
_output_shapes	
:РЗ
Read_8/DisableCopyOnReadDisableCopyOnRead3read_8_disablecopyonread_lstm_7_lstm_cell_13_kernel"/device:CPU:0*
_output_shapes
 і
Read_8/ReadVariableOpReadVariableOp3read_8_disablecopyonread_lstm_7_lstm_cell_13_kernel^Read_8/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	d»*
dtype0o
Identity_16IdentityRead_8/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	d»f
Identity_17IdentityIdentity_16:output:0"/device:CPU:0*
T0*
_output_shapes
:	d»С
Read_9/DisableCopyOnReadDisableCopyOnRead=read_9_disablecopyonread_lstm_7_lstm_cell_13_recurrent_kernel"/device:CPU:0*
_output_shapes
 Њ
Read_9/ReadVariableOpReadVariableOp=read_9_disablecopyonread_lstm_7_lstm_cell_13_recurrent_kernel^Read_9/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	2»*
dtype0o
Identity_18IdentityRead_9/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	2»f
Identity_19IdentityIdentity_18:output:0"/device:CPU:0*
T0*
_output_shapes
:	2»З
Read_10/DisableCopyOnReadDisableCopyOnRead2read_10_disablecopyonread_lstm_7_lstm_cell_13_bias"/device:CPU:0*
_output_shapes
 ±
Read_10/ReadVariableOpReadVariableOp2read_10_disablecopyonread_lstm_7_lstm_cell_13_bias^Read_10/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:»*
dtype0l
Identity_20IdentityRead_10/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:»b
Identity_21IdentityIdentity_20:output:0"/device:CPU:0*
T0*
_output_shapes	
:»Й
Read_11/DisableCopyOnReadDisableCopyOnRead4read_11_disablecopyonread_lstm_8_lstm_cell_14_kernel"/device:CPU:0*
_output_shapes
 ґ
Read_11/ReadVariableOpReadVariableOp4read_11_disablecopyonread_lstm_8_lstm_cell_14_kernel^Read_11/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:2(*
dtype0o
Identity_22IdentityRead_11/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:2(e
Identity_23IdentityIdentity_22:output:0"/device:CPU:0*
T0*
_output_shapes

:2(У
Read_12/DisableCopyOnReadDisableCopyOnRead>read_12_disablecopyonread_lstm_8_lstm_cell_14_recurrent_kernel"/device:CPU:0*
_output_shapes
 ј
Read_12/ReadVariableOpReadVariableOp>read_12_disablecopyonread_lstm_8_lstm_cell_14_recurrent_kernel^Read_12/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:
(*
dtype0o
Identity_24IdentityRead_12/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:
(e
Identity_25IdentityIdentity_24:output:0"/device:CPU:0*
T0*
_output_shapes

:
(З
Read_13/DisableCopyOnReadDisableCopyOnRead2read_13_disablecopyonread_lstm_8_lstm_cell_14_bias"/device:CPU:0*
_output_shapes
 ∞
Read_13/ReadVariableOpReadVariableOp2read_13_disablecopyonread_lstm_8_lstm_cell_14_bias^Read_13/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:(*
dtype0k
Identity_26IdentityRead_13/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:(a
Identity_27IdentityIdentity_26:output:0"/device:CPU:0*
T0*
_output_shapes
:(x
Read_14/DisableCopyOnReadDisableCopyOnRead#read_14_disablecopyonread_iteration"/device:CPU:0*
_output_shapes
 Э
Read_14/ReadVariableOpReadVariableOp#read_14_disablecopyonread_iteration^Read_14/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0	g
Identity_28IdentityRead_14/ReadVariableOp:value:0"/device:CPU:0*
T0	*
_output_shapes
: ]
Identity_29IdentityIdentity_28:output:0"/device:CPU:0*
T0	*
_output_shapes
: |
Read_15/DisableCopyOnReadDisableCopyOnRead'read_15_disablecopyonread_learning_rate"/device:CPU:0*
_output_shapes
 °
Read_15/ReadVariableOpReadVariableOp'read_15_disablecopyonread_learning_rate^Read_15/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_30IdentityRead_15/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_31IdentityIdentity_30:output:0"/device:CPU:0*
T0*
_output_shapes
: Т
Read_16/DisableCopyOnReadDisableCopyOnRead=read_16_disablecopyonread_adamax_m_lstm_6_lstm_cell_12_kernel"/device:CPU:0*
_output_shapes
 ј
Read_16/ReadVariableOpReadVariableOp=read_16_disablecopyonread_adamax_m_lstm_6_lstm_cell_12_kernel^Read_16/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	Р*
dtype0p
Identity_32IdentityRead_16/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	Рf
Identity_33IdentityIdentity_32:output:0"/device:CPU:0*
T0*
_output_shapes
:	РТ
Read_17/DisableCopyOnReadDisableCopyOnRead=read_17_disablecopyonread_adamax_u_lstm_6_lstm_cell_12_kernel"/device:CPU:0*
_output_shapes
 ј
Read_17/ReadVariableOpReadVariableOp=read_17_disablecopyonread_adamax_u_lstm_6_lstm_cell_12_kernel^Read_17/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	Р*
dtype0p
Identity_34IdentityRead_17/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	Рf
Identity_35IdentityIdentity_34:output:0"/device:CPU:0*
T0*
_output_shapes
:	РЬ
Read_18/DisableCopyOnReadDisableCopyOnReadGread_18_disablecopyonread_adamax_m_lstm_6_lstm_cell_12_recurrent_kernel"/device:CPU:0*
_output_shapes
  
Read_18/ReadVariableOpReadVariableOpGread_18_disablecopyonread_adamax_m_lstm_6_lstm_cell_12_recurrent_kernel^Read_18/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	dР*
dtype0p
Identity_36IdentityRead_18/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	dРf
Identity_37IdentityIdentity_36:output:0"/device:CPU:0*
T0*
_output_shapes
:	dРЬ
Read_19/DisableCopyOnReadDisableCopyOnReadGread_19_disablecopyonread_adamax_u_lstm_6_lstm_cell_12_recurrent_kernel"/device:CPU:0*
_output_shapes
  
Read_19/ReadVariableOpReadVariableOpGread_19_disablecopyonread_adamax_u_lstm_6_lstm_cell_12_recurrent_kernel^Read_19/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	dР*
dtype0p
Identity_38IdentityRead_19/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	dРf
Identity_39IdentityIdentity_38:output:0"/device:CPU:0*
T0*
_output_shapes
:	dРР
Read_20/DisableCopyOnReadDisableCopyOnRead;read_20_disablecopyonread_adamax_m_lstm_6_lstm_cell_12_bias"/device:CPU:0*
_output_shapes
 Ї
Read_20/ReadVariableOpReadVariableOp;read_20_disablecopyonread_adamax_m_lstm_6_lstm_cell_12_bias^Read_20/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:Р*
dtype0l
Identity_40IdentityRead_20/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Рb
Identity_41IdentityIdentity_40:output:0"/device:CPU:0*
T0*
_output_shapes	
:РР
Read_21/DisableCopyOnReadDisableCopyOnRead;read_21_disablecopyonread_adamax_u_lstm_6_lstm_cell_12_bias"/device:CPU:0*
_output_shapes
 Ї
Read_21/ReadVariableOpReadVariableOp;read_21_disablecopyonread_adamax_u_lstm_6_lstm_cell_12_bias^Read_21/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:Р*
dtype0l
Identity_42IdentityRead_21/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Рb
Identity_43IdentityIdentity_42:output:0"/device:CPU:0*
T0*
_output_shapes	
:РТ
Read_22/DisableCopyOnReadDisableCopyOnRead=read_22_disablecopyonread_adamax_m_lstm_7_lstm_cell_13_kernel"/device:CPU:0*
_output_shapes
 ј
Read_22/ReadVariableOpReadVariableOp=read_22_disablecopyonread_adamax_m_lstm_7_lstm_cell_13_kernel^Read_22/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	d»*
dtype0p
Identity_44IdentityRead_22/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	d»f
Identity_45IdentityIdentity_44:output:0"/device:CPU:0*
T0*
_output_shapes
:	d»Т
Read_23/DisableCopyOnReadDisableCopyOnRead=read_23_disablecopyonread_adamax_u_lstm_7_lstm_cell_13_kernel"/device:CPU:0*
_output_shapes
 ј
Read_23/ReadVariableOpReadVariableOp=read_23_disablecopyonread_adamax_u_lstm_7_lstm_cell_13_kernel^Read_23/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	d»*
dtype0p
Identity_46IdentityRead_23/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	d»f
Identity_47IdentityIdentity_46:output:0"/device:CPU:0*
T0*
_output_shapes
:	d»Ь
Read_24/DisableCopyOnReadDisableCopyOnReadGread_24_disablecopyonread_adamax_m_lstm_7_lstm_cell_13_recurrent_kernel"/device:CPU:0*
_output_shapes
  
Read_24/ReadVariableOpReadVariableOpGread_24_disablecopyonread_adamax_m_lstm_7_lstm_cell_13_recurrent_kernel^Read_24/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	2»*
dtype0p
Identity_48IdentityRead_24/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	2»f
Identity_49IdentityIdentity_48:output:0"/device:CPU:0*
T0*
_output_shapes
:	2»Ь
Read_25/DisableCopyOnReadDisableCopyOnReadGread_25_disablecopyonread_adamax_u_lstm_7_lstm_cell_13_recurrent_kernel"/device:CPU:0*
_output_shapes
  
Read_25/ReadVariableOpReadVariableOpGread_25_disablecopyonread_adamax_u_lstm_7_lstm_cell_13_recurrent_kernel^Read_25/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	2»*
dtype0p
Identity_50IdentityRead_25/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	2»f
Identity_51IdentityIdentity_50:output:0"/device:CPU:0*
T0*
_output_shapes
:	2»Р
Read_26/DisableCopyOnReadDisableCopyOnRead;read_26_disablecopyonread_adamax_m_lstm_7_lstm_cell_13_bias"/device:CPU:0*
_output_shapes
 Ї
Read_26/ReadVariableOpReadVariableOp;read_26_disablecopyonread_adamax_m_lstm_7_lstm_cell_13_bias^Read_26/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:»*
dtype0l
Identity_52IdentityRead_26/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:»b
Identity_53IdentityIdentity_52:output:0"/device:CPU:0*
T0*
_output_shapes	
:»Р
Read_27/DisableCopyOnReadDisableCopyOnRead;read_27_disablecopyonread_adamax_u_lstm_7_lstm_cell_13_bias"/device:CPU:0*
_output_shapes
 Ї
Read_27/ReadVariableOpReadVariableOp;read_27_disablecopyonread_adamax_u_lstm_7_lstm_cell_13_bias^Read_27/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:»*
dtype0l
Identity_54IdentityRead_27/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:»b
Identity_55IdentityIdentity_54:output:0"/device:CPU:0*
T0*
_output_shapes	
:»Т
Read_28/DisableCopyOnReadDisableCopyOnRead=read_28_disablecopyonread_adamax_m_lstm_8_lstm_cell_14_kernel"/device:CPU:0*
_output_shapes
 њ
Read_28/ReadVariableOpReadVariableOp=read_28_disablecopyonread_adamax_m_lstm_8_lstm_cell_14_kernel^Read_28/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:2(*
dtype0o
Identity_56IdentityRead_28/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:2(e
Identity_57IdentityIdentity_56:output:0"/device:CPU:0*
T0*
_output_shapes

:2(Т
Read_29/DisableCopyOnReadDisableCopyOnRead=read_29_disablecopyonread_adamax_u_lstm_8_lstm_cell_14_kernel"/device:CPU:0*
_output_shapes
 њ
Read_29/ReadVariableOpReadVariableOp=read_29_disablecopyonread_adamax_u_lstm_8_lstm_cell_14_kernel^Read_29/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:2(*
dtype0o
Identity_58IdentityRead_29/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:2(e
Identity_59IdentityIdentity_58:output:0"/device:CPU:0*
T0*
_output_shapes

:2(Ь
Read_30/DisableCopyOnReadDisableCopyOnReadGread_30_disablecopyonread_adamax_m_lstm_8_lstm_cell_14_recurrent_kernel"/device:CPU:0*
_output_shapes
 …
Read_30/ReadVariableOpReadVariableOpGread_30_disablecopyonread_adamax_m_lstm_8_lstm_cell_14_recurrent_kernel^Read_30/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:
(*
dtype0o
Identity_60IdentityRead_30/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:
(e
Identity_61IdentityIdentity_60:output:0"/device:CPU:0*
T0*
_output_shapes

:
(Ь
Read_31/DisableCopyOnReadDisableCopyOnReadGread_31_disablecopyonread_adamax_u_lstm_8_lstm_cell_14_recurrent_kernel"/device:CPU:0*
_output_shapes
 …
Read_31/ReadVariableOpReadVariableOpGread_31_disablecopyonread_adamax_u_lstm_8_lstm_cell_14_recurrent_kernel^Read_31/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:
(*
dtype0o
Identity_62IdentityRead_31/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:
(e
Identity_63IdentityIdentity_62:output:0"/device:CPU:0*
T0*
_output_shapes

:
(Р
Read_32/DisableCopyOnReadDisableCopyOnRead;read_32_disablecopyonread_adamax_m_lstm_8_lstm_cell_14_bias"/device:CPU:0*
_output_shapes
 є
Read_32/ReadVariableOpReadVariableOp;read_32_disablecopyonread_adamax_m_lstm_8_lstm_cell_14_bias^Read_32/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:(*
dtype0k
Identity_64IdentityRead_32/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:(a
Identity_65IdentityIdentity_64:output:0"/device:CPU:0*
T0*
_output_shapes
:(Р
Read_33/DisableCopyOnReadDisableCopyOnRead;read_33_disablecopyonread_adamax_u_lstm_8_lstm_cell_14_bias"/device:CPU:0*
_output_shapes
 є
Read_33/ReadVariableOpReadVariableOp;read_33_disablecopyonread_adamax_u_lstm_8_lstm_cell_14_bias^Read_33/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:(*
dtype0k
Identity_66IdentityRead_33/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:(a
Identity_67IdentityIdentity_66:output:0"/device:CPU:0*
T0*
_output_shapes
:(Ж
Read_34/DisableCopyOnReadDisableCopyOnRead1read_34_disablecopyonread_adamax_m_dense_2_kernel"/device:CPU:0*
_output_shapes
 ≥
Read_34/ReadVariableOpReadVariableOp1read_34_disablecopyonread_adamax_m_dense_2_kernel^Read_34/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:
*
dtype0o
Identity_68IdentityRead_34/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:
e
Identity_69IdentityIdentity_68:output:0"/device:CPU:0*
T0*
_output_shapes

:
Ж
Read_35/DisableCopyOnReadDisableCopyOnRead1read_35_disablecopyonread_adamax_u_dense_2_kernel"/device:CPU:0*
_output_shapes
 ≥
Read_35/ReadVariableOpReadVariableOp1read_35_disablecopyonread_adamax_u_dense_2_kernel^Read_35/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:
*
dtype0o
Identity_70IdentityRead_35/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:
e
Identity_71IdentityIdentity_70:output:0"/device:CPU:0*
T0*
_output_shapes

:
Д
Read_36/DisableCopyOnReadDisableCopyOnRead/read_36_disablecopyonread_adamax_m_dense_2_bias"/device:CPU:0*
_output_shapes
 ≠
Read_36/ReadVariableOpReadVariableOp/read_36_disablecopyonread_adamax_m_dense_2_bias^Read_36/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_72IdentityRead_36/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_73IdentityIdentity_72:output:0"/device:CPU:0*
T0*
_output_shapes
:Д
Read_37/DisableCopyOnReadDisableCopyOnRead/read_37_disablecopyonread_adamax_u_dense_2_bias"/device:CPU:0*
_output_shapes
 ≠
Read_37/ReadVariableOpReadVariableOp/read_37_disablecopyonread_adamax_u_dense_2_bias^Read_37/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_74IdentityRead_37/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_75IdentityIdentity_74:output:0"/device:CPU:0*
T0*
_output_shapes
:v
Read_38/DisableCopyOnReadDisableCopyOnRead!read_38_disablecopyonread_total_1"/device:CPU:0*
_output_shapes
 Ы
Read_38/ReadVariableOpReadVariableOp!read_38_disablecopyonread_total_1^Read_38/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_76IdentityRead_38/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_77IdentityIdentity_76:output:0"/device:CPU:0*
T0*
_output_shapes
: v
Read_39/DisableCopyOnReadDisableCopyOnRead!read_39_disablecopyonread_count_1"/device:CPU:0*
_output_shapes
 Ы
Read_39/ReadVariableOpReadVariableOp!read_39_disablecopyonread_count_1^Read_39/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_78IdentityRead_39/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_79IdentityIdentity_78:output:0"/device:CPU:0*
T0*
_output_shapes
: t
Read_40/DisableCopyOnReadDisableCopyOnReadread_40_disablecopyonread_total"/device:CPU:0*
_output_shapes
 Щ
Read_40/ReadVariableOpReadVariableOpread_40_disablecopyonread_total^Read_40/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_80IdentityRead_40/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_81IdentityIdentity_80:output:0"/device:CPU:0*
T0*
_output_shapes
: t
Read_41/DisableCopyOnReadDisableCopyOnReadread_41_disablecopyonread_count"/device:CPU:0*
_output_shapes
 Щ
Read_41/ReadVariableOpReadVariableOpread_41_disablecopyonread_count^Read_41/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_82IdentityRead_41/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_83IdentityIdentity_82:output:0"/device:CPU:0*
T0*
_output_shapes
: Ј
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:+*
dtype0*а
value÷B”+B4layer_with_weights-0/mean/.ATTRIBUTES/VARIABLE_VALUEB8layer_with_weights-0/variance/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-0/count/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH√
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:+*
dtype0*i
value`B^+B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B Ы	
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Identity_1:output:0Identity_3:output:0Identity_5:output:0Identity_7:output:0Identity_9:output:0Identity_11:output:0Identity_13:output:0Identity_15:output:0Identity_17:output:0Identity_19:output:0Identity_21:output:0Identity_23:output:0Identity_25:output:0Identity_27:output:0Identity_29:output:0Identity_31:output:0Identity_33:output:0Identity_35:output:0Identity_37:output:0Identity_39:output:0Identity_41:output:0Identity_43:output:0Identity_45:output:0Identity_47:output:0Identity_49:output:0Identity_51:output:0Identity_53:output:0Identity_55:output:0Identity_57:output:0Identity_59:output:0Identity_61:output:0Identity_63:output:0Identity_65:output:0Identity_67:output:0Identity_69:output:0Identity_71:output:0Identity_73:output:0Identity_75:output:0Identity_77:output:0Identity_79:output:0Identity_81:output:0Identity_83:output:0savev2_const_2"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *9
dtypes/
-2+		Р
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:≥
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 i
Identity_84Identityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: U
Identity_85IdentityIdentity_84:output:0^NoOp*
T0*
_output_shapes
: х
NoOpNoOp^MergeV2Checkpoints^Read/DisableCopyOnRead^Read/ReadVariableOp^Read_1/DisableCopyOnRead^Read_1/ReadVariableOp^Read_10/DisableCopyOnRead^Read_10/ReadVariableOp^Read_11/DisableCopyOnRead^Read_11/ReadVariableOp^Read_12/DisableCopyOnRead^Read_12/ReadVariableOp^Read_13/DisableCopyOnRead^Read_13/ReadVariableOp^Read_14/DisableCopyOnRead^Read_14/ReadVariableOp^Read_15/DisableCopyOnRead^Read_15/ReadVariableOp^Read_16/DisableCopyOnRead^Read_16/ReadVariableOp^Read_17/DisableCopyOnRead^Read_17/ReadVariableOp^Read_18/DisableCopyOnRead^Read_18/ReadVariableOp^Read_19/DisableCopyOnRead^Read_19/ReadVariableOp^Read_2/DisableCopyOnRead^Read_2/ReadVariableOp^Read_20/DisableCopyOnRead^Read_20/ReadVariableOp^Read_21/DisableCopyOnRead^Read_21/ReadVariableOp^Read_22/DisableCopyOnRead^Read_22/ReadVariableOp^Read_23/DisableCopyOnRead^Read_23/ReadVariableOp^Read_24/DisableCopyOnRead^Read_24/ReadVariableOp^Read_25/DisableCopyOnRead^Read_25/ReadVariableOp^Read_26/DisableCopyOnRead^Read_26/ReadVariableOp^Read_27/DisableCopyOnRead^Read_27/ReadVariableOp^Read_28/DisableCopyOnRead^Read_28/ReadVariableOp^Read_29/DisableCopyOnRead^Read_29/ReadVariableOp^Read_3/DisableCopyOnRead^Read_3/ReadVariableOp^Read_30/DisableCopyOnRead^Read_30/ReadVariableOp^Read_31/DisableCopyOnRead^Read_31/ReadVariableOp^Read_32/DisableCopyOnRead^Read_32/ReadVariableOp^Read_33/DisableCopyOnRead^Read_33/ReadVariableOp^Read_34/DisableCopyOnRead^Read_34/ReadVariableOp^Read_35/DisableCopyOnRead^Read_35/ReadVariableOp^Read_36/DisableCopyOnRead^Read_36/ReadVariableOp^Read_37/DisableCopyOnRead^Read_37/ReadVariableOp^Read_38/DisableCopyOnRead^Read_38/ReadVariableOp^Read_39/DisableCopyOnRead^Read_39/ReadVariableOp^Read_4/DisableCopyOnRead^Read_4/ReadVariableOp^Read_40/DisableCopyOnRead^Read_40/ReadVariableOp^Read_41/DisableCopyOnRead^Read_41/ReadVariableOp^Read_5/DisableCopyOnRead^Read_5/ReadVariableOp^Read_6/DisableCopyOnRead^Read_6/ReadVariableOp^Read_7/DisableCopyOnRead^Read_7/ReadVariableOp^Read_8/DisableCopyOnRead^Read_8/ReadVariableOp^Read_9/DisableCopyOnRead^Read_9/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "#
identity_85Identity_85:output:0*k
_input_shapesZ
X: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2(
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
Read_22/ReadVariableOpRead_22/ReadVariableOp26
Read_23/DisableCopyOnReadRead_23/DisableCopyOnRead20
Read_23/ReadVariableOpRead_23/ReadVariableOp26
Read_24/DisableCopyOnReadRead_24/DisableCopyOnRead20
Read_24/ReadVariableOpRead_24/ReadVariableOp26
Read_25/DisableCopyOnReadRead_25/DisableCopyOnRead20
Read_25/ReadVariableOpRead_25/ReadVariableOp26
Read_26/DisableCopyOnReadRead_26/DisableCopyOnRead20
Read_26/ReadVariableOpRead_26/ReadVariableOp26
Read_27/DisableCopyOnReadRead_27/DisableCopyOnRead20
Read_27/ReadVariableOpRead_27/ReadVariableOp26
Read_28/DisableCopyOnReadRead_28/DisableCopyOnRead20
Read_28/ReadVariableOpRead_28/ReadVariableOp26
Read_29/DisableCopyOnReadRead_29/DisableCopyOnRead20
Read_29/ReadVariableOpRead_29/ReadVariableOp24
Read_3/DisableCopyOnReadRead_3/DisableCopyOnRead2.
Read_3/ReadVariableOpRead_3/ReadVariableOp26
Read_30/DisableCopyOnReadRead_30/DisableCopyOnRead20
Read_30/ReadVariableOpRead_30/ReadVariableOp26
Read_31/DisableCopyOnReadRead_31/DisableCopyOnRead20
Read_31/ReadVariableOpRead_31/ReadVariableOp26
Read_32/DisableCopyOnReadRead_32/DisableCopyOnRead20
Read_32/ReadVariableOpRead_32/ReadVariableOp26
Read_33/DisableCopyOnReadRead_33/DisableCopyOnRead20
Read_33/ReadVariableOpRead_33/ReadVariableOp26
Read_34/DisableCopyOnReadRead_34/DisableCopyOnRead20
Read_34/ReadVariableOpRead_34/ReadVariableOp26
Read_35/DisableCopyOnReadRead_35/DisableCopyOnRead20
Read_35/ReadVariableOpRead_35/ReadVariableOp26
Read_36/DisableCopyOnReadRead_36/DisableCopyOnRead20
Read_36/ReadVariableOpRead_36/ReadVariableOp26
Read_37/DisableCopyOnReadRead_37/DisableCopyOnRead20
Read_37/ReadVariableOpRead_37/ReadVariableOp26
Read_38/DisableCopyOnReadRead_38/DisableCopyOnRead20
Read_38/ReadVariableOpRead_38/ReadVariableOp26
Read_39/DisableCopyOnReadRead_39/DisableCopyOnRead20
Read_39/ReadVariableOpRead_39/ReadVariableOp24
Read_4/DisableCopyOnReadRead_4/DisableCopyOnRead2.
Read_4/ReadVariableOpRead_4/ReadVariableOp26
Read_40/DisableCopyOnReadRead_40/DisableCopyOnRead20
Read_40/ReadVariableOpRead_40/ReadVariableOp26
Read_41/DisableCopyOnReadRead_41/DisableCopyOnRead20
Read_41/ReadVariableOpRead_41/ReadVariableOp24
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
_user_specified_namefile_prefix:+

_output_shapes
: 
¬Г
К
G__inference_sequential_2_layer_call_and_return_conditional_losses_78886

inputs
normalization_2_sub_y
normalization_2_sqrt_xE
2lstm_6_lstm_cell_12_matmul_readvariableop_resource:	РG
4lstm_6_lstm_cell_12_matmul_1_readvariableop_resource:	dРB
3lstm_6_lstm_cell_12_biasadd_readvariableop_resource:	РE
2lstm_7_lstm_cell_13_matmul_readvariableop_resource:	d»G
4lstm_7_lstm_cell_13_matmul_1_readvariableop_resource:	2»B
3lstm_7_lstm_cell_13_biasadd_readvariableop_resource:	»D
2lstm_8_lstm_cell_14_matmul_readvariableop_resource:2(F
4lstm_8_lstm_cell_14_matmul_1_readvariableop_resource:
(A
3lstm_8_lstm_cell_14_biasadd_readvariableop_resource:(8
&dense_2_matmul_readvariableop_resource:
5
'dense_2_biasadd_readvariableop_resource:
identityИҐdense_2/BiasAdd/ReadVariableOpҐdense_2/MatMul/ReadVariableOpҐ*lstm_6/lstm_cell_12/BiasAdd/ReadVariableOpҐ)lstm_6/lstm_cell_12/MatMul/ReadVariableOpҐ+lstm_6/lstm_cell_12/MatMul_1/ReadVariableOpҐlstm_6/whileҐ*lstm_7/lstm_cell_13/BiasAdd/ReadVariableOpҐ)lstm_7/lstm_cell_13/MatMul/ReadVariableOpҐ+lstm_7/lstm_cell_13/MatMul_1/ReadVariableOpҐlstm_7/whileҐ*lstm_8/lstm_cell_14/BiasAdd/ReadVariableOpҐ)lstm_8/lstm_cell_14/MatMul/ReadVariableOpҐ+lstm_8/lstm_cell_14/MatMul_1/ReadVariableOpҐlstm_8/whileo
normalization_2/subSubinputsnormalization_2_sub_y*
T0*+
_output_shapes
:€€€€€€€€€a
normalization_2/SqrtSqrtnormalization_2_sqrt_x*
T0*"
_output_shapes
:^
normalization_2/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *Хњ÷3Н
normalization_2/MaximumMaximumnormalization_2/Sqrt:y:0"normalization_2/Maximum/y:output:0*
T0*"
_output_shapes
:О
normalization_2/truedivRealDivnormalization_2/sub:z:0normalization_2/Maximum:z:0*
T0*+
_output_shapes
:€€€€€€€€€e
lstm_6/ShapeShapenormalization_2/truediv:z:0*
T0*
_output_shapes
::нѕd
lstm_6/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: f
lstm_6/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:f
lstm_6/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ф
lstm_6/strided_sliceStridedSlicelstm_6/Shape:output:0#lstm_6/strided_slice/stack:output:0%lstm_6/strided_slice/stack_1:output:0%lstm_6/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskW
lstm_6/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dИ
lstm_6/zeros/packedPacklstm_6/strided_slice:output:0lstm_6/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:W
lstm_6/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Б
lstm_6/zerosFilllstm_6/zeros/packed:output:0lstm_6/zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€dY
lstm_6/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dМ
lstm_6/zeros_1/packedPacklstm_6/strided_slice:output:0 lstm_6/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_6/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    З
lstm_6/zeros_1Filllstm_6/zeros_1/packed:output:0lstm_6/zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€dj
lstm_6/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Р
lstm_6/transpose	Transposenormalization_2/truediv:z:0lstm_6/transpose/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€`
lstm_6/Shape_1Shapelstm_6/transpose:y:0*
T0*
_output_shapes
::нѕf
lstm_6/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_6/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_6/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ю
lstm_6/strided_slice_1StridedSlicelstm_6/Shape_1:output:0%lstm_6/strided_slice_1/stack:output:0'lstm_6/strided_slice_1/stack_1:output:0'lstm_6/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskm
"lstm_6/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€…
lstm_6/TensorArrayV2TensorListReserve+lstm_6/TensorArrayV2/element_shape:output:0lstm_6/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Н
<lstm_6/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   х
.lstm_6/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_6/transpose:y:0Elstm_6/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“f
lstm_6/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_6/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_6/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:М
lstm_6/strided_slice_2StridedSlicelstm_6/transpose:y:0%lstm_6/strided_slice_2/stack:output:0'lstm_6/strided_slice_2/stack_1:output:0'lstm_6/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_maskЭ
)lstm_6/lstm_cell_12/MatMul/ReadVariableOpReadVariableOp2lstm_6_lstm_cell_12_matmul_readvariableop_resource*
_output_shapes
:	Р*
dtype0Ђ
lstm_6/lstm_cell_12/MatMulMatMullstm_6/strided_slice_2:output:01lstm_6/lstm_cell_12/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Р°
+lstm_6/lstm_cell_12/MatMul_1/ReadVariableOpReadVariableOp4lstm_6_lstm_cell_12_matmul_1_readvariableop_resource*
_output_shapes
:	dР*
dtype0•
lstm_6/lstm_cell_12/MatMul_1MatMullstm_6/zeros:output:03lstm_6/lstm_cell_12/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Р°
lstm_6/lstm_cell_12/addAddV2$lstm_6/lstm_cell_12/MatMul:product:0&lstm_6/lstm_cell_12/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€РЫ
*lstm_6/lstm_cell_12/BiasAdd/ReadVariableOpReadVariableOp3lstm_6_lstm_cell_12_biasadd_readvariableop_resource*
_output_shapes	
:Р*
dtype0™
lstm_6/lstm_cell_12/BiasAddBiasAddlstm_6/lstm_cell_12/add:z:02lstm_6/lstm_cell_12/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Рe
#lstm_6/lstm_cell_12/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :т
lstm_6/lstm_cell_12/splitSplit,lstm_6/lstm_cell_12/split/split_dim:output:0$lstm_6/lstm_cell_12/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€d:€€€€€€€€€d:€€€€€€€€€d:€€€€€€€€€d*
	num_split|
lstm_6/lstm_cell_12/SigmoidSigmoid"lstm_6/lstm_cell_12/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€d~
lstm_6/lstm_cell_12/Sigmoid_1Sigmoid"lstm_6/lstm_cell_12/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€dМ
lstm_6/lstm_cell_12/mulMul!lstm_6/lstm_cell_12/Sigmoid_1:y:0lstm_6/zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€dv
lstm_6/lstm_cell_12/ReluRelu"lstm_6/lstm_cell_12/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€dЫ
lstm_6/lstm_cell_12/mul_1Mullstm_6/lstm_cell_12/Sigmoid:y:0&lstm_6/lstm_cell_12/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€dР
lstm_6/lstm_cell_12/add_1AddV2lstm_6/lstm_cell_12/mul:z:0lstm_6/lstm_cell_12/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€d~
lstm_6/lstm_cell_12/Sigmoid_2Sigmoid"lstm_6/lstm_cell_12/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€ds
lstm_6/lstm_cell_12/Relu_1Relulstm_6/lstm_cell_12/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€dЯ
lstm_6/lstm_cell_12/mul_2Mul!lstm_6/lstm_cell_12/Sigmoid_2:y:0(lstm_6/lstm_cell_12/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€du
$lstm_6/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€d   Ќ
lstm_6/TensorArrayV2_1TensorListReserve-lstm_6/TensorArrayV2_1/element_shape:output:0lstm_6/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“M
lstm_6/timeConst*
_output_shapes
: *
dtype0*
value	B : j
lstm_6/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€[
lstm_6/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : в
lstm_6/whileWhile"lstm_6/while/loop_counter:output:0(lstm_6/while/maximum_iterations:output:0lstm_6/time:output:0lstm_6/TensorArrayV2_1:handle:0lstm_6/zeros:output:0lstm_6/zeros_1:output:0lstm_6/strided_slice_1:output:0>lstm_6/TensorArrayUnstack/TensorListFromTensor:output_handle:02lstm_6_lstm_cell_12_matmul_readvariableop_resource4lstm_6_lstm_cell_12_matmul_1_readvariableop_resource3lstm_6_lstm_cell_12_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€d:€€€€€€€€€d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *#
bodyR
lstm_6_while_body_78513*#
condR
lstm_6_while_cond_78512*K
output_shapes:
8: : : : :€€€€€€€€€d:€€€€€€€€€d: : : : : *
parallel_iterations И
7lstm_6/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€d   „
)lstm_6/TensorArrayV2Stack/TensorListStackTensorListStacklstm_6/while:output:3@lstm_6/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:€€€€€€€€€d*
element_dtype0o
lstm_6/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€h
lstm_6/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: h
lstm_6/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:™
lstm_6/strided_slice_3StridedSlice2lstm_6/TensorArrayV2Stack/TensorListStack:tensor:0%lstm_6/strided_slice_3/stack:output:0'lstm_6/strided_slice_3/stack_1:output:0'lstm_6/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€d*
shrink_axis_maskl
lstm_6/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ђ
lstm_6/transpose_1	Transpose2lstm_6/TensorArrayV2Stack/TensorListStack:tensor:0 lstm_6/transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€db
lstm_6/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    l
dropout_6/IdentityIdentitylstm_6/transpose_1:y:0*
T0*+
_output_shapes
:€€€€€€€€€de
lstm_7/ShapeShapedropout_6/Identity:output:0*
T0*
_output_shapes
::нѕd
lstm_7/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: f
lstm_7/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:f
lstm_7/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ф
lstm_7/strided_sliceStridedSlicelstm_7/Shape:output:0#lstm_7/strided_slice/stack:output:0%lstm_7/strided_slice/stack_1:output:0%lstm_7/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskW
lstm_7/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2И
lstm_7/zeros/packedPacklstm_7/strided_slice:output:0lstm_7/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:W
lstm_7/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Б
lstm_7/zerosFilllstm_7/zeros/packed:output:0lstm_7/zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€2Y
lstm_7/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2М
lstm_7/zeros_1/packedPacklstm_7/strided_slice:output:0 lstm_7/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_7/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    З
lstm_7/zeros_1Filllstm_7/zeros_1/packed:output:0lstm_7/zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€2j
lstm_7/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Р
lstm_7/transpose	Transposedropout_6/Identity:output:0lstm_7/transpose/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€d`
lstm_7/Shape_1Shapelstm_7/transpose:y:0*
T0*
_output_shapes
::нѕf
lstm_7/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_7/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_7/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ю
lstm_7/strided_slice_1StridedSlicelstm_7/Shape_1:output:0%lstm_7/strided_slice_1/stack:output:0'lstm_7/strided_slice_1/stack_1:output:0'lstm_7/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskm
"lstm_7/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€…
lstm_7/TensorArrayV2TensorListReserve+lstm_7/TensorArrayV2/element_shape:output:0lstm_7/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Н
<lstm_7/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€d   х
.lstm_7/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_7/transpose:y:0Elstm_7/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“f
lstm_7/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_7/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_7/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:М
lstm_7/strided_slice_2StridedSlicelstm_7/transpose:y:0%lstm_7/strided_slice_2/stack:output:0'lstm_7/strided_slice_2/stack_1:output:0'lstm_7/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€d*
shrink_axis_maskЭ
)lstm_7/lstm_cell_13/MatMul/ReadVariableOpReadVariableOp2lstm_7_lstm_cell_13_matmul_readvariableop_resource*
_output_shapes
:	d»*
dtype0Ђ
lstm_7/lstm_cell_13/MatMulMatMullstm_7/strided_slice_2:output:01lstm_7/lstm_cell_13/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€»°
+lstm_7/lstm_cell_13/MatMul_1/ReadVariableOpReadVariableOp4lstm_7_lstm_cell_13_matmul_1_readvariableop_resource*
_output_shapes
:	2»*
dtype0•
lstm_7/lstm_cell_13/MatMul_1MatMullstm_7/zeros:output:03lstm_7/lstm_cell_13/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€»°
lstm_7/lstm_cell_13/addAddV2$lstm_7/lstm_cell_13/MatMul:product:0&lstm_7/lstm_cell_13/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€»Ы
*lstm_7/lstm_cell_13/BiasAdd/ReadVariableOpReadVariableOp3lstm_7_lstm_cell_13_biasadd_readvariableop_resource*
_output_shapes	
:»*
dtype0™
lstm_7/lstm_cell_13/BiasAddBiasAddlstm_7/lstm_cell_13/add:z:02lstm_7/lstm_cell_13/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€»e
#lstm_7/lstm_cell_13/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :т
lstm_7/lstm_cell_13/splitSplit,lstm_7/lstm_cell_13/split/split_dim:output:0$lstm_7/lstm_cell_13/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€2:€€€€€€€€€2:€€€€€€€€€2:€€€€€€€€€2*
	num_split|
lstm_7/lstm_cell_13/SigmoidSigmoid"lstm_7/lstm_cell_13/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€2~
lstm_7/lstm_cell_13/Sigmoid_1Sigmoid"lstm_7/lstm_cell_13/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€2М
lstm_7/lstm_cell_13/mulMul!lstm_7/lstm_cell_13/Sigmoid_1:y:0lstm_7/zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€2v
lstm_7/lstm_cell_13/ReluRelu"lstm_7/lstm_cell_13/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€2Ы
lstm_7/lstm_cell_13/mul_1Mullstm_7/lstm_cell_13/Sigmoid:y:0&lstm_7/lstm_cell_13/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€2Р
lstm_7/lstm_cell_13/add_1AddV2lstm_7/lstm_cell_13/mul:z:0lstm_7/lstm_cell_13/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€2~
lstm_7/lstm_cell_13/Sigmoid_2Sigmoid"lstm_7/lstm_cell_13/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€2s
lstm_7/lstm_cell_13/Relu_1Relulstm_7/lstm_cell_13/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€2Я
lstm_7/lstm_cell_13/mul_2Mul!lstm_7/lstm_cell_13/Sigmoid_2:y:0(lstm_7/lstm_cell_13/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€2u
$lstm_7/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€2   Ќ
lstm_7/TensorArrayV2_1TensorListReserve-lstm_7/TensorArrayV2_1/element_shape:output:0lstm_7/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“M
lstm_7/timeConst*
_output_shapes
: *
dtype0*
value	B : j
lstm_7/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€[
lstm_7/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : в
lstm_7/whileWhile"lstm_7/while/loop_counter:output:0(lstm_7/while/maximum_iterations:output:0lstm_7/time:output:0lstm_7/TensorArrayV2_1:handle:0lstm_7/zeros:output:0lstm_7/zeros_1:output:0lstm_7/strided_slice_1:output:0>lstm_7/TensorArrayUnstack/TensorListFromTensor:output_handle:02lstm_7_lstm_cell_13_matmul_readvariableop_resource4lstm_7_lstm_cell_13_matmul_1_readvariableop_resource3lstm_7_lstm_cell_13_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€2:€€€€€€€€€2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *#
bodyR
lstm_7_while_body_78653*#
condR
lstm_7_while_cond_78652*K
output_shapes:
8: : : : :€€€€€€€€€2:€€€€€€€€€2: : : : : *
parallel_iterations И
7lstm_7/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€2   „
)lstm_7/TensorArrayV2Stack/TensorListStackTensorListStacklstm_7/while:output:3@lstm_7/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:€€€€€€€€€2*
element_dtype0o
lstm_7/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€h
lstm_7/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: h
lstm_7/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:™
lstm_7/strided_slice_3StridedSlice2lstm_7/TensorArrayV2Stack/TensorListStack:tensor:0%lstm_7/strided_slice_3/stack:output:0'lstm_7/strided_slice_3/stack_1:output:0'lstm_7/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€2*
shrink_axis_maskl
lstm_7/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ђ
lstm_7/transpose_1	Transpose2lstm_7/TensorArrayV2Stack/TensorListStack:tensor:0 lstm_7/transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€2b
lstm_7/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    l
dropout_7/IdentityIdentitylstm_7/transpose_1:y:0*
T0*+
_output_shapes
:€€€€€€€€€2e
lstm_8/ShapeShapedropout_7/Identity:output:0*
T0*
_output_shapes
::нѕd
lstm_8/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: f
lstm_8/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:f
lstm_8/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ф
lstm_8/strided_sliceStridedSlicelstm_8/Shape:output:0#lstm_8/strided_slice/stack:output:0%lstm_8/strided_slice/stack_1:output:0%lstm_8/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskW
lstm_8/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
И
lstm_8/zeros/packedPacklstm_8/strided_slice:output:0lstm_8/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:W
lstm_8/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Б
lstm_8/zerosFilllstm_8/zeros/packed:output:0lstm_8/zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€
Y
lstm_8/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
М
lstm_8/zeros_1/packedPacklstm_8/strided_slice:output:0 lstm_8/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_8/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    З
lstm_8/zeros_1Filllstm_8/zeros_1/packed:output:0lstm_8/zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€
j
lstm_8/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Р
lstm_8/transpose	Transposedropout_7/Identity:output:0lstm_8/transpose/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€2`
lstm_8/Shape_1Shapelstm_8/transpose:y:0*
T0*
_output_shapes
::нѕf
lstm_8/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_8/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_8/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ю
lstm_8/strided_slice_1StridedSlicelstm_8/Shape_1:output:0%lstm_8/strided_slice_1/stack:output:0'lstm_8/strided_slice_1/stack_1:output:0'lstm_8/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskm
"lstm_8/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€…
lstm_8/TensorArrayV2TensorListReserve+lstm_8/TensorArrayV2/element_shape:output:0lstm_8/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Н
<lstm_8/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€2   х
.lstm_8/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_8/transpose:y:0Elstm_8/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“f
lstm_8/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_8/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_8/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:М
lstm_8/strided_slice_2StridedSlicelstm_8/transpose:y:0%lstm_8/strided_slice_2/stack:output:0'lstm_8/strided_slice_2/stack_1:output:0'lstm_8/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€2*
shrink_axis_maskЬ
)lstm_8/lstm_cell_14/MatMul/ReadVariableOpReadVariableOp2lstm_8_lstm_cell_14_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0™
lstm_8/lstm_cell_14/MatMulMatMullstm_8/strided_slice_2:output:01lstm_8/lstm_cell_14/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€(†
+lstm_8/lstm_cell_14/MatMul_1/ReadVariableOpReadVariableOp4lstm_8_lstm_cell_14_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0§
lstm_8/lstm_cell_14/MatMul_1MatMullstm_8/zeros:output:03lstm_8/lstm_cell_14/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€(†
lstm_8/lstm_cell_14/addAddV2$lstm_8/lstm_cell_14/MatMul:product:0&lstm_8/lstm_cell_14/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€(Ъ
*lstm_8/lstm_cell_14/BiasAdd/ReadVariableOpReadVariableOp3lstm_8_lstm_cell_14_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0©
lstm_8/lstm_cell_14/BiasAddBiasAddlstm_8/lstm_cell_14/add:z:02lstm_8/lstm_cell_14/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€(e
#lstm_8/lstm_cell_14/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :т
lstm_8/lstm_cell_14/splitSplit,lstm_8/lstm_cell_14/split/split_dim:output:0$lstm_8/lstm_cell_14/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€
:€€€€€€€€€
:€€€€€€€€€
:€€€€€€€€€
*
	num_split|
lstm_8/lstm_cell_14/SigmoidSigmoid"lstm_8/lstm_cell_14/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€
~
lstm_8/lstm_cell_14/Sigmoid_1Sigmoid"lstm_8/lstm_cell_14/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€
М
lstm_8/lstm_cell_14/mulMul!lstm_8/lstm_cell_14/Sigmoid_1:y:0lstm_8/zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€
v
lstm_8/lstm_cell_14/ReluRelu"lstm_8/lstm_cell_14/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€
Ы
lstm_8/lstm_cell_14/mul_1Mullstm_8/lstm_cell_14/Sigmoid:y:0&lstm_8/lstm_cell_14/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€
Р
lstm_8/lstm_cell_14/add_1AddV2lstm_8/lstm_cell_14/mul:z:0lstm_8/lstm_cell_14/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€
~
lstm_8/lstm_cell_14/Sigmoid_2Sigmoid"lstm_8/lstm_cell_14/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€
s
lstm_8/lstm_cell_14/Relu_1Relulstm_8/lstm_cell_14/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€
Я
lstm_8/lstm_cell_14/mul_2Mul!lstm_8/lstm_cell_14/Sigmoid_2:y:0(lstm_8/lstm_cell_14/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€
u
$lstm_8/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€
   e
#lstm_8/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Џ
lstm_8/TensorArrayV2_1TensorListReserve-lstm_8/TensorArrayV2_1/element_shape:output:0,lstm_8/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“M
lstm_8/timeConst*
_output_shapes
: *
dtype0*
value	B : j
lstm_8/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€[
lstm_8/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : в
lstm_8/whileWhile"lstm_8/while/loop_counter:output:0(lstm_8/while/maximum_iterations:output:0lstm_8/time:output:0lstm_8/TensorArrayV2_1:handle:0lstm_8/zeros:output:0lstm_8/zeros_1:output:0lstm_8/strided_slice_1:output:0>lstm_8/TensorArrayUnstack/TensorListFromTensor:output_handle:02lstm_8_lstm_cell_14_matmul_readvariableop_resource4lstm_8_lstm_cell_14_matmul_1_readvariableop_resource3lstm_8_lstm_cell_14_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€
:€€€€€€€€€
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *#
bodyR
lstm_8_while_body_78794*#
condR
lstm_8_while_cond_78793*K
output_shapes:
8: : : : :€€€€€€€€€
:€€€€€€€€€
: : : : : *
parallel_iterations И
7lstm_8/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€
   л
)lstm_8/TensorArrayV2Stack/TensorListStackTensorListStacklstm_8/while:output:3@lstm_8/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:€€€€€€€€€
*
element_dtype0*
num_elementso
lstm_8/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€h
lstm_8/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: h
lstm_8/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:™
lstm_8/strided_slice_3StridedSlice2lstm_8/TensorArrayV2Stack/TensorListStack:tensor:0%lstm_8/strided_slice_3/stack:output:0'lstm_8/strided_slice_3/stack_1:output:0'lstm_8/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€
*
shrink_axis_maskl
lstm_8/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ђ
lstm_8/transpose_1	Transpose2lstm_8/TensorArrayV2Stack/TensorListStack:tensor:0 lstm_8/transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€
b
lstm_8/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    q
dropout_8/IdentityIdentitylstm_8/strided_slice_3:output:0*
T0*'
_output_shapes
:€€€€€€€€€
Д
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0О
dense_2/MatMulMatMuldropout_8/Identity:output:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€В
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0О
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€g
IdentityIdentitydense_2/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€…
NoOpNoOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp+^lstm_6/lstm_cell_12/BiasAdd/ReadVariableOp*^lstm_6/lstm_cell_12/MatMul/ReadVariableOp,^lstm_6/lstm_cell_12/MatMul_1/ReadVariableOp^lstm_6/while+^lstm_7/lstm_cell_13/BiasAdd/ReadVariableOp*^lstm_7/lstm_cell_13/MatMul/ReadVariableOp,^lstm_7/lstm_cell_13/MatMul_1/ReadVariableOp^lstm_7/while+^lstm_8/lstm_cell_14/BiasAdd/ReadVariableOp*^lstm_8/lstm_cell_14/MatMul/ReadVariableOp,^lstm_8/lstm_cell_14/MatMul_1/ReadVariableOp^lstm_8/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*\
_input_shapesK
I:€€€€€€€€€::: : : : : : : : : : : 2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp2X
*lstm_6/lstm_cell_12/BiasAdd/ReadVariableOp*lstm_6/lstm_cell_12/BiasAdd/ReadVariableOp2V
)lstm_6/lstm_cell_12/MatMul/ReadVariableOp)lstm_6/lstm_cell_12/MatMul/ReadVariableOp2Z
+lstm_6/lstm_cell_12/MatMul_1/ReadVariableOp+lstm_6/lstm_cell_12/MatMul_1/ReadVariableOp2
lstm_6/whilelstm_6/while2X
*lstm_7/lstm_cell_13/BiasAdd/ReadVariableOp*lstm_7/lstm_cell_13/BiasAdd/ReadVariableOp2V
)lstm_7/lstm_cell_13/MatMul/ReadVariableOp)lstm_7/lstm_cell_13/MatMul/ReadVariableOp2Z
+lstm_7/lstm_cell_13/MatMul_1/ReadVariableOp+lstm_7/lstm_cell_13/MatMul_1/ReadVariableOp2
lstm_7/whilelstm_7/while2X
*lstm_8/lstm_cell_14/BiasAdd/ReadVariableOp*lstm_8/lstm_cell_14/BiasAdd/ReadVariableOp2V
)lstm_8/lstm_cell_14/MatMul/ReadVariableOp)lstm_8/lstm_cell_14/MatMul/ReadVariableOp2Z
+lstm_8/lstm_cell_14/MatMul_1/ReadVariableOp+lstm_8/lstm_cell_14/MatMul_1/ReadVariableOp2
lstm_8/whilelstm_8/while:S O
+
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:($
"
_output_shapes
::($
"
_output_shapes
:
н8
ѕ
while_body_77269
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_13_matmul_readvariableop_resource_0:	d»H
5while_lstm_cell_13_matmul_1_readvariableop_resource_0:	2»C
4while_lstm_cell_13_biasadd_readvariableop_resource_0:	»
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_13_matmul_readvariableop_resource:	d»F
3while_lstm_cell_13_matmul_1_readvariableop_resource:	2»A
2while_lstm_cell_13_biasadd_readvariableop_resource:	»ИҐ)while/lstm_cell_13/BiasAdd/ReadVariableOpҐ(while/lstm_cell_13/MatMul/ReadVariableOpҐ*while/lstm_cell_13/MatMul_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€d   ¶
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€d*
element_dtype0Э
(while/lstm_cell_13/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_13_matmul_readvariableop_resource_0*
_output_shapes
:	d»*
dtype0Ї
while/lstm_cell_13/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_13/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€»°
*while/lstm_cell_13/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_13_matmul_1_readvariableop_resource_0*
_output_shapes
:	2»*
dtype0°
while/lstm_cell_13/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_13/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€»Ю
while/lstm_cell_13/addAddV2#while/lstm_cell_13/MatMul:product:0%while/lstm_cell_13/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€»Ы
)while/lstm_cell_13/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_13_biasadd_readvariableop_resource_0*
_output_shapes	
:»*
dtype0І
while/lstm_cell_13/BiasAddBiasAddwhile/lstm_cell_13/add:z:01while/lstm_cell_13/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€»d
"while/lstm_cell_13/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :п
while/lstm_cell_13/splitSplit+while/lstm_cell_13/split/split_dim:output:0#while/lstm_cell_13/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€2:€€€€€€€€€2:€€€€€€€€€2:€€€€€€€€€2*
	num_splitz
while/lstm_cell_13/SigmoidSigmoid!while/lstm_cell_13/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€2|
while/lstm_cell_13/Sigmoid_1Sigmoid!while/lstm_cell_13/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€2Ж
while/lstm_cell_13/mulMul while/lstm_cell_13/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€2t
while/lstm_cell_13/ReluRelu!while/lstm_cell_13/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€2Ш
while/lstm_cell_13/mul_1Mulwhile/lstm_cell_13/Sigmoid:y:0%while/lstm_cell_13/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€2Н
while/lstm_cell_13/add_1AddV2while/lstm_cell_13/mul:z:0while/lstm_cell_13/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€2|
while/lstm_cell_13/Sigmoid_2Sigmoid!while/lstm_cell_13/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€2q
while/lstm_cell_13/Relu_1Reluwhile/lstm_cell_13/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€2Ь
while/lstm_cell_13/mul_2Mul while/lstm_cell_13/Sigmoid_2:y:0'while/lstm_cell_13/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€2≈
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_13/mul_2:z:0*
_output_shapes
: *
element_dtype0:йи“M
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
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_13/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€2y
while/Identity_5Identitywhile/lstm_cell_13/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€2–

while/NoOpNoOp*^while/lstm_cell_13/BiasAdd/ReadVariableOp)^while/lstm_cell_13/MatMul/ReadVariableOp+^while/lstm_cell_13/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_13_biasadd_readvariableop_resource4while_lstm_cell_13_biasadd_readvariableop_resource_0"l
3while_lstm_cell_13_matmul_1_readvariableop_resource5while_lstm_cell_13_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_13_matmul_readvariableop_resource3while_lstm_cell_13_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :€€€€€€€€€2:€€€€€€€€€2: : : : : 2V
)while/lstm_cell_13/BiasAdd/ReadVariableOp)while/lstm_cell_13/BiasAdd/ReadVariableOp2T
(while/lstm_cell_13/MatMul/ReadVariableOp(while/lstm_cell_13/MatMul/ReadVariableOp2X
*while/lstm_cell_13/MatMul_1/ReadVariableOp*while/lstm_cell_13/MatMul_1/ReadVariableOp:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€2:-)
'
_output_shapes
:€€€€€€€€€2:

_output_shapes
: :

_output_shapes
: 
†8
А
A__inference_lstm_6_layer_call_and_return_conditional_losses_75761

inputs%
lstm_cell_12_75679:	Р%
lstm_cell_12_75681:	dР!
lstm_cell_12_75683:	Р
identityИҐ$lstm_cell_12/StatefulPartitionedCallҐwhileI
ShapeShapeinputs*
T0*
_output_shapes
::нѕ]
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
valueB:—
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
value	B :ds
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
:€€€€€€€€€dR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€dc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::нѕ_
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
valueB:џ
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
€€€€€€€€€і
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   а
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“_
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
valueB:й
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_maskс
$lstm_cell_12/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_12_75679lstm_cell_12_75681lstm_cell_12_75683*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:€€€€€€€€€d:€€€€€€€€€d:€€€€€€€€€d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_lstm_cell_12_layer_call_and_return_conditional_losses_75678n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€d   Є
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“F
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
€€€€€€€€€T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ≤
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_12_75679lstm_cell_12_75681lstm_cell_12_75683*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€d:€€€€€€€€€d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_75692*
condR
while_cond_75691*K
output_shapes:
8: : : : :€€€€€€€€€d:€€€€€€€€€d: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€d   Ћ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€d*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€d*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Я
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€du
NoOpNoOp%^lstm_cell_12/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€€€€€€€€€€: : : 2L
$lstm_cell_12/StatefulPartitionedCall$lstm_cell_12/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
≥B
©

lstm_8_while_body_78348*
&lstm_8_while_lstm_8_while_loop_counter0
,lstm_8_while_lstm_8_while_maximum_iterations
lstm_8_while_placeholder
lstm_8_while_placeholder_1
lstm_8_while_placeholder_2
lstm_8_while_placeholder_3)
%lstm_8_while_lstm_8_strided_slice_1_0e
alstm_8_while_tensorarrayv2read_tensorlistgetitem_lstm_8_tensorarrayunstack_tensorlistfromtensor_0L
:lstm_8_while_lstm_cell_14_matmul_readvariableop_resource_0:2(N
<lstm_8_while_lstm_cell_14_matmul_1_readvariableop_resource_0:
(I
;lstm_8_while_lstm_cell_14_biasadd_readvariableop_resource_0:(
lstm_8_while_identity
lstm_8_while_identity_1
lstm_8_while_identity_2
lstm_8_while_identity_3
lstm_8_while_identity_4
lstm_8_while_identity_5'
#lstm_8_while_lstm_8_strided_slice_1c
_lstm_8_while_tensorarrayv2read_tensorlistgetitem_lstm_8_tensorarrayunstack_tensorlistfromtensorJ
8lstm_8_while_lstm_cell_14_matmul_readvariableop_resource:2(L
:lstm_8_while_lstm_cell_14_matmul_1_readvariableop_resource:
(G
9lstm_8_while_lstm_cell_14_biasadd_readvariableop_resource:(ИҐ0lstm_8/while/lstm_cell_14/BiasAdd/ReadVariableOpҐ/lstm_8/while/lstm_cell_14/MatMul/ReadVariableOpҐ1lstm_8/while/lstm_cell_14/MatMul_1/ReadVariableOpП
>lstm_8/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€2   …
0lstm_8/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemalstm_8_while_tensorarrayv2read_tensorlistgetitem_lstm_8_tensorarrayunstack_tensorlistfromtensor_0lstm_8_while_placeholderGlstm_8/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€2*
element_dtype0™
/lstm_8/while/lstm_cell_14/MatMul/ReadVariableOpReadVariableOp:lstm_8_while_lstm_cell_14_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0ќ
 lstm_8/while/lstm_cell_14/MatMulMatMul7lstm_8/while/TensorArrayV2Read/TensorListGetItem:item:07lstm_8/while/lstm_cell_14/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€(Ѓ
1lstm_8/while/lstm_cell_14/MatMul_1/ReadVariableOpReadVariableOp<lstm_8_while_lstm_cell_14_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0µ
"lstm_8/while/lstm_cell_14/MatMul_1MatMullstm_8_while_placeholder_29lstm_8/while/lstm_cell_14/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€(≤
lstm_8/while/lstm_cell_14/addAddV2*lstm_8/while/lstm_cell_14/MatMul:product:0,lstm_8/while/lstm_cell_14/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€(®
0lstm_8/while/lstm_cell_14/BiasAdd/ReadVariableOpReadVariableOp;lstm_8_while_lstm_cell_14_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0ї
!lstm_8/while/lstm_cell_14/BiasAddBiasAdd!lstm_8/while/lstm_cell_14/add:z:08lstm_8/while/lstm_cell_14/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€(k
)lstm_8/while/lstm_cell_14/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Д
lstm_8/while/lstm_cell_14/splitSplit2lstm_8/while/lstm_cell_14/split/split_dim:output:0*lstm_8/while/lstm_cell_14/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€
:€€€€€€€€€
:€€€€€€€€€
:€€€€€€€€€
*
	num_splitИ
!lstm_8/while/lstm_cell_14/SigmoidSigmoid(lstm_8/while/lstm_cell_14/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€
К
#lstm_8/while/lstm_cell_14/Sigmoid_1Sigmoid(lstm_8/while/lstm_cell_14/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€
Ы
lstm_8/while/lstm_cell_14/mulMul'lstm_8/while/lstm_cell_14/Sigmoid_1:y:0lstm_8_while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€
В
lstm_8/while/lstm_cell_14/ReluRelu(lstm_8/while/lstm_cell_14/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€
≠
lstm_8/while/lstm_cell_14/mul_1Mul%lstm_8/while/lstm_cell_14/Sigmoid:y:0,lstm_8/while/lstm_cell_14/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€
Ґ
lstm_8/while/lstm_cell_14/add_1AddV2!lstm_8/while/lstm_cell_14/mul:z:0#lstm_8/while/lstm_cell_14/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€
К
#lstm_8/while/lstm_cell_14/Sigmoid_2Sigmoid(lstm_8/while/lstm_cell_14/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€

 lstm_8/while/lstm_cell_14/Relu_1Relu#lstm_8/while/lstm_cell_14/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€
±
lstm_8/while/lstm_cell_14/mul_2Mul'lstm_8/while/lstm_cell_14/Sigmoid_2:y:0.lstm_8/while/lstm_cell_14/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€
y
7lstm_8/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : Й
1lstm_8/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_8_while_placeholder_1@lstm_8/while/TensorArrayV2Write/TensorListSetItem/index:output:0#lstm_8/while/lstm_cell_14/mul_2:z:0*
_output_shapes
: *
element_dtype0:йи“T
lstm_8/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :q
lstm_8/while/addAddV2lstm_8_while_placeholderlstm_8/while/add/y:output:0*
T0*
_output_shapes
: V
lstm_8/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :Г
lstm_8/while/add_1AddV2&lstm_8_while_lstm_8_while_loop_counterlstm_8/while/add_1/y:output:0*
T0*
_output_shapes
: n
lstm_8/while/IdentityIdentitylstm_8/while/add_1:z:0^lstm_8/while/NoOp*
T0*
_output_shapes
: Ж
lstm_8/while/Identity_1Identity,lstm_8_while_lstm_8_while_maximum_iterations^lstm_8/while/NoOp*
T0*
_output_shapes
: n
lstm_8/while/Identity_2Identitylstm_8/while/add:z:0^lstm_8/while/NoOp*
T0*
_output_shapes
: Ы
lstm_8/while/Identity_3IdentityAlstm_8/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_8/while/NoOp*
T0*
_output_shapes
: О
lstm_8/while/Identity_4Identity#lstm_8/while/lstm_cell_14/mul_2:z:0^lstm_8/while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€
О
lstm_8/while/Identity_5Identity#lstm_8/while/lstm_cell_14/add_1:z:0^lstm_8/while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€
м
lstm_8/while/NoOpNoOp1^lstm_8/while/lstm_cell_14/BiasAdd/ReadVariableOp0^lstm_8/while/lstm_cell_14/MatMul/ReadVariableOp2^lstm_8/while/lstm_cell_14/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "7
lstm_8_while_identitylstm_8/while/Identity:output:0";
lstm_8_while_identity_1 lstm_8/while/Identity_1:output:0";
lstm_8_while_identity_2 lstm_8/while/Identity_2:output:0";
lstm_8_while_identity_3 lstm_8/while/Identity_3:output:0";
lstm_8_while_identity_4 lstm_8/while/Identity_4:output:0";
lstm_8_while_identity_5 lstm_8/while/Identity_5:output:0"L
#lstm_8_while_lstm_8_strided_slice_1%lstm_8_while_lstm_8_strided_slice_1_0"x
9lstm_8_while_lstm_cell_14_biasadd_readvariableop_resource;lstm_8_while_lstm_cell_14_biasadd_readvariableop_resource_0"z
:lstm_8_while_lstm_cell_14_matmul_1_readvariableop_resource<lstm_8_while_lstm_cell_14_matmul_1_readvariableop_resource_0"v
8lstm_8_while_lstm_cell_14_matmul_readvariableop_resource:lstm_8_while_lstm_cell_14_matmul_readvariableop_resource_0"ƒ
_lstm_8_while_tensorarrayv2read_tensorlistgetitem_lstm_8_tensorarrayunstack_tensorlistfromtensoralstm_8_while_tensorarrayv2read_tensorlistgetitem_lstm_8_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :€€€€€€€€€
:€€€€€€€€€
: : : : : 2d
0lstm_8/while/lstm_cell_14/BiasAdd/ReadVariableOp0lstm_8/while/lstm_cell_14/BiasAdd/ReadVariableOp2b
/lstm_8/while/lstm_cell_14/MatMul/ReadVariableOp/lstm_8/while/lstm_cell_14/MatMul/ReadVariableOp2f
1lstm_8/while/lstm_cell_14/MatMul_1/ReadVariableOp1lstm_8/while/lstm_cell_14/MatMul_1/ReadVariableOp:Q M

_output_shapes
: 
3
_user_specified_namelstm_8/while/loop_counter:WS

_output_shapes
: 
9
_user_specified_name!lstm_8/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€
:-)
'
_output_shapes
:€€€€€€€€€
:

_output_shapes
: :

_output_shapes
: 
Ј#
№
while_body_75692
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0-
while_lstm_cell_12_75716_0:	Р-
while_lstm_cell_12_75718_0:	dР)
while_lstm_cell_12_75720_0:	Р
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor+
while_lstm_cell_12_75716:	Р+
while_lstm_cell_12_75718:	dР'
while_lstm_cell_12_75720:	РИҐ*while/lstm_cell_12/StatefulPartitionedCallИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ¶
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€*
element_dtype0ѓ
*while/lstm_cell_12/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_12_75716_0while_lstm_cell_12_75718_0while_lstm_cell_12_75720_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:€€€€€€€€€d:€€€€€€€€€d:€€€€€€€€€d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_lstm_cell_12_layer_call_and_return_conditional_losses_75678№
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_12/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:йи“M
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
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: Р
while/Identity_4Identity3while/lstm_cell_12/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€dР
while/Identity_5Identity3while/lstm_cell_12/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€dy

while/NoOpNoOp+^while/lstm_cell_12/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"6
while_lstm_cell_12_75716while_lstm_cell_12_75716_0"6
while_lstm_cell_12_75718while_lstm_cell_12_75718_0"6
while_lstm_cell_12_75720while_lstm_cell_12_75720_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :€€€€€€€€€d:€€€€€€€€€d: : : : : 2X
*while/lstm_cell_12/StatefulPartitionedCall*while/lstm_cell_12/StatefulPartitionedCall:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€d:-)
'
_output_shapes
:€€€€€€€€€d:

_output_shapes
: :

_output_shapes
: 
Ъ*
з
G__inference_sequential_2_layer_call_and_return_conditional_losses_77045
input_3
normalization_2_sub_y
normalization_2_sqrt_x
lstm_6_76677:	Р
lstm_6_76679:	dР
lstm_6_76681:	Р
lstm_7_76841:	d»
lstm_7_76843:	2»
lstm_7_76845:	»
lstm_8_77007:2(
lstm_8_77009:
(
lstm_8_77011:(
dense_2_77039:

dense_2_77041:
identityИҐdense_2/StatefulPartitionedCallҐ!dropout_6/StatefulPartitionedCallҐ!dropout_7/StatefulPartitionedCallҐ!dropout_8/StatefulPartitionedCallҐlstm_6/StatefulPartitionedCallҐlstm_7/StatefulPartitionedCallҐlstm_8/StatefulPartitionedCallp
normalization_2/subSubinput_3normalization_2_sub_y*
T0*+
_output_shapes
:€€€€€€€€€a
normalization_2/SqrtSqrtnormalization_2_sqrt_x*
T0*"
_output_shapes
:^
normalization_2/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *Хњ÷3Н
normalization_2/MaximumMaximumnormalization_2/Sqrt:y:0"normalization_2/Maximum/y:output:0*
T0*"
_output_shapes
:О
normalization_2/truedivRealDivnormalization_2/sub:z:0normalization_2/Maximum:z:0*
T0*+
_output_shapes
:€€€€€€€€€О
lstm_6/StatefulPartitionedCallStatefulPartitionedCallnormalization_2/truediv:z:0lstm_6_76677lstm_6_76679lstm_6_76681*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_lstm_6_layer_call_and_return_conditional_losses_76676о
!dropout_6/StatefulPartitionedCallStatefulPartitionedCall'lstm_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€d* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dropout_6_layer_call_and_return_conditional_losses_76696Э
lstm_7/StatefulPartitionedCallStatefulPartitionedCall*dropout_6/StatefulPartitionedCall:output:0lstm_7_76841lstm_7_76843lstm_7_76845*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_lstm_7_layer_call_and_return_conditional_losses_76840Т
!dropout_7/StatefulPartitionedCallStatefulPartitionedCall'lstm_7/StatefulPartitionedCall:output:0"^dropout_6/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€2* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dropout_7_layer_call_and_return_conditional_losses_76860Щ
lstm_8/StatefulPartitionedCallStatefulPartitionedCall*dropout_7/StatefulPartitionedCall:output:0lstm_8_77007lstm_8_77009lstm_8_77011*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_lstm_8_layer_call_and_return_conditional_losses_77006О
!dropout_8/StatefulPartitionedCallStatefulPartitionedCall'lstm_8/StatefulPartitionedCall:output:0"^dropout_7/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€
* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dropout_8_layer_call_and_return_conditional_losses_77026Н
dense_2/StatefulPartitionedCallStatefulPartitionedCall*dropout_8/StatefulPartitionedCall:output:0dense_2_77039dense_2_77041*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dense_2_layer_call_and_return_conditional_losses_77038w
IdentityIdentity(dense_2/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€Ј
NoOpNoOp ^dense_2/StatefulPartitionedCall"^dropout_6/StatefulPartitionedCall"^dropout_7/StatefulPartitionedCall"^dropout_8/StatefulPartitionedCall^lstm_6/StatefulPartitionedCall^lstm_7/StatefulPartitionedCall^lstm_8/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*\
_input_shapesK
I:€€€€€€€€€::: : : : : : : : : : : 2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2F
!dropout_6/StatefulPartitionedCall!dropout_6/StatefulPartitionedCall2F
!dropout_7/StatefulPartitionedCall!dropout_7/StatefulPartitionedCall2F
!dropout_8/StatefulPartitionedCall!dropout_8/StatefulPartitionedCall2@
lstm_6/StatefulPartitionedCalllstm_6/StatefulPartitionedCall2@
lstm_7/StatefulPartitionedCalllstm_7/StatefulPartitionedCall2@
lstm_8/StatefulPartitionedCalllstm_8/StatefulPartitionedCall:T P
+
_output_shapes
:€€€€€€€€€
!
_user_specified_name	input_3:($
"
_output_shapes
::($
"
_output_shapes
:
Т	
Њ
while_cond_77268
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_77268___redundant_placeholder03
/while_while_cond_77268___redundant_placeholder13
/while_while_cond_77268___redundant_placeholder23
/while_while_cond_77268___redundant_placeholder3
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
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :€€€€€€€€€2:€€€€€€€€€2: :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€2:-)
'
_output_shapes
:€€€€€€€€€2:

_output_shapes
: :

_output_shapes
:
Њ
Ф
'__inference_dense_2_layer_call_fn_80832

inputs
unknown:

	unknown_0:
identityИҐStatefulPartitionedCall„
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dense_2_layer_call_and_return_conditional_losses_77038o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€
: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€

 
_user_specified_nameinputs
й
х
,__inference_lstm_cell_13_layer_call_fn_80957

inputs
states_0
states_1
unknown:	d»
	unknown_0:	2»
	unknown_1:	»
identity

identity_1

identity_2ИҐStatefulPartitionedCallІ
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:€€€€€€€€€2:€€€€€€€€€2:€€€€€€€€€2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_lstm_cell_13_layer_call_and_return_conditional_losses_75883o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€2q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:€€€€€€€€€2q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:€€€€€€€€€2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:€€€€€€€€€d:€€€€€€€€€2:€€€€€€€€€2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€d
 
_user_specified_nameinputs:QM
'
_output_shapes
:€€€€€€€€€2
"
_user_specified_name
states_0:QM
'
_output_shapes
:€€€€€€€€€2
"
_user_specified_name
states_1
щJ
Ы
A__inference_lstm_6_layer_call_and_return_conditional_losses_79216
inputs_0>
+lstm_cell_12_matmul_readvariableop_resource:	Р@
-lstm_cell_12_matmul_1_readvariableop_resource:	dР;
,lstm_cell_12_biasadd_readvariableop_resource:	Р
identityИҐ#lstm_cell_12/BiasAdd/ReadVariableOpҐ"lstm_cell_12/MatMul/ReadVariableOpҐ$lstm_cell_12/MatMul_1/ReadVariableOpҐwhileK
ShapeShapeinputs_0*
T0*
_output_shapes
::нѕ]
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
valueB:—
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
value	B :ds
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
:€€€€€€€€€dR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€dc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::нѕ_
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
valueB:џ
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
€€€€€€€€€і
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   а
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“_
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
valueB:й
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_maskП
"lstm_cell_12/MatMul/ReadVariableOpReadVariableOp+lstm_cell_12_matmul_readvariableop_resource*
_output_shapes
:	Р*
dtype0Ц
lstm_cell_12/MatMulMatMulstrided_slice_2:output:0*lstm_cell_12/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€РУ
$lstm_cell_12/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_12_matmul_1_readvariableop_resource*
_output_shapes
:	dР*
dtype0Р
lstm_cell_12/MatMul_1MatMulzeros:output:0,lstm_cell_12/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€РМ
lstm_cell_12/addAddV2lstm_cell_12/MatMul:product:0lstm_cell_12/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€РН
#lstm_cell_12/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_12_biasadd_readvariableop_resource*
_output_shapes	
:Р*
dtype0Х
lstm_cell_12/BiasAddBiasAddlstm_cell_12/add:z:0+lstm_cell_12/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Р^
lstm_cell_12/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ё
lstm_cell_12/splitSplit%lstm_cell_12/split/split_dim:output:0lstm_cell_12/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€d:€€€€€€€€€d:€€€€€€€€€d:€€€€€€€€€d*
	num_splitn
lstm_cell_12/SigmoidSigmoidlstm_cell_12/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€dp
lstm_cell_12/Sigmoid_1Sigmoidlstm_cell_12/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€dw
lstm_cell_12/mulMullstm_cell_12/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€dh
lstm_cell_12/ReluRelulstm_cell_12/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€dЖ
lstm_cell_12/mul_1Mullstm_cell_12/Sigmoid:y:0lstm_cell_12/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€d{
lstm_cell_12/add_1AddV2lstm_cell_12/mul:z:0lstm_cell_12/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€dp
lstm_cell_12/Sigmoid_2Sigmoidlstm_cell_12/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€de
lstm_cell_12/Relu_1Relulstm_cell_12/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€dК
lstm_cell_12/mul_2Mullstm_cell_12/Sigmoid_2:y:0!lstm_cell_12/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€dn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€d   Є
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“F
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
€€€€€€€€€T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : А
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_12_matmul_readvariableop_resource-lstm_cell_12_matmul_1_readvariableop_resource,lstm_cell_12_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€d:€€€€€€€€€d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_79132*
condR
while_cond_79131*K
output_shapes:
8: : : : :€€€€€€€€€d:€€€€€€€€€d: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€d   Ћ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€d*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€d*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Я
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€dј
NoOpNoOp$^lstm_cell_12/BiasAdd/ReadVariableOp#^lstm_cell_12/MatMul/ReadVariableOp%^lstm_cell_12/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€€€€€€€€€€: : : 2J
#lstm_cell_12/BiasAdd/ReadVariableOp#lstm_cell_12/BiasAdd/ReadVariableOp2H
"lstm_cell_12/MatMul/ReadVariableOp"lstm_cell_12/MatMul/ReadVariableOp2L
$lstm_cell_12/MatMul_1/ReadVariableOp$lstm_cell_12/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
"
_user_specified_name
inputs_0
ВR
…
$sequential_2_lstm_8_while_body_75377D
@sequential_2_lstm_8_while_sequential_2_lstm_8_while_loop_counterJ
Fsequential_2_lstm_8_while_sequential_2_lstm_8_while_maximum_iterations)
%sequential_2_lstm_8_while_placeholder+
'sequential_2_lstm_8_while_placeholder_1+
'sequential_2_lstm_8_while_placeholder_2+
'sequential_2_lstm_8_while_placeholder_3C
?sequential_2_lstm_8_while_sequential_2_lstm_8_strided_slice_1_0
{sequential_2_lstm_8_while_tensorarrayv2read_tensorlistgetitem_sequential_2_lstm_8_tensorarrayunstack_tensorlistfromtensor_0Y
Gsequential_2_lstm_8_while_lstm_cell_14_matmul_readvariableop_resource_0:2([
Isequential_2_lstm_8_while_lstm_cell_14_matmul_1_readvariableop_resource_0:
(V
Hsequential_2_lstm_8_while_lstm_cell_14_biasadd_readvariableop_resource_0:(&
"sequential_2_lstm_8_while_identity(
$sequential_2_lstm_8_while_identity_1(
$sequential_2_lstm_8_while_identity_2(
$sequential_2_lstm_8_while_identity_3(
$sequential_2_lstm_8_while_identity_4(
$sequential_2_lstm_8_while_identity_5A
=sequential_2_lstm_8_while_sequential_2_lstm_8_strided_slice_1}
ysequential_2_lstm_8_while_tensorarrayv2read_tensorlistgetitem_sequential_2_lstm_8_tensorarrayunstack_tensorlistfromtensorW
Esequential_2_lstm_8_while_lstm_cell_14_matmul_readvariableop_resource:2(Y
Gsequential_2_lstm_8_while_lstm_cell_14_matmul_1_readvariableop_resource:
(T
Fsequential_2_lstm_8_while_lstm_cell_14_biasadd_readvariableop_resource:(ИҐ=sequential_2/lstm_8/while/lstm_cell_14/BiasAdd/ReadVariableOpҐ<sequential_2/lstm_8/while/lstm_cell_14/MatMul/ReadVariableOpҐ>sequential_2/lstm_8/while/lstm_cell_14/MatMul_1/ReadVariableOpЬ
Ksequential_2/lstm_8/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€2   К
=sequential_2/lstm_8/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem{sequential_2_lstm_8_while_tensorarrayv2read_tensorlistgetitem_sequential_2_lstm_8_tensorarrayunstack_tensorlistfromtensor_0%sequential_2_lstm_8_while_placeholderTsequential_2/lstm_8/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€2*
element_dtype0ƒ
<sequential_2/lstm_8/while/lstm_cell_14/MatMul/ReadVariableOpReadVariableOpGsequential_2_lstm_8_while_lstm_cell_14_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0х
-sequential_2/lstm_8/while/lstm_cell_14/MatMulMatMulDsequential_2/lstm_8/while/TensorArrayV2Read/TensorListGetItem:item:0Dsequential_2/lstm_8/while/lstm_cell_14/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€(»
>sequential_2/lstm_8/while/lstm_cell_14/MatMul_1/ReadVariableOpReadVariableOpIsequential_2_lstm_8_while_lstm_cell_14_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0№
/sequential_2/lstm_8/while/lstm_cell_14/MatMul_1MatMul'sequential_2_lstm_8_while_placeholder_2Fsequential_2/lstm_8/while/lstm_cell_14/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€(ў
*sequential_2/lstm_8/while/lstm_cell_14/addAddV27sequential_2/lstm_8/while/lstm_cell_14/MatMul:product:09sequential_2/lstm_8/while/lstm_cell_14/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€(¬
=sequential_2/lstm_8/while/lstm_cell_14/BiasAdd/ReadVariableOpReadVariableOpHsequential_2_lstm_8_while_lstm_cell_14_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0в
.sequential_2/lstm_8/while/lstm_cell_14/BiasAddBiasAdd.sequential_2/lstm_8/while/lstm_cell_14/add:z:0Esequential_2/lstm_8/while/lstm_cell_14/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€(x
6sequential_2/lstm_8/while/lstm_cell_14/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ђ
,sequential_2/lstm_8/while/lstm_cell_14/splitSplit?sequential_2/lstm_8/while/lstm_cell_14/split/split_dim:output:07sequential_2/lstm_8/while/lstm_cell_14/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€
:€€€€€€€€€
:€€€€€€€€€
:€€€€€€€€€
*
	num_splitҐ
.sequential_2/lstm_8/while/lstm_cell_14/SigmoidSigmoid5sequential_2/lstm_8/while/lstm_cell_14/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€
§
0sequential_2/lstm_8/while/lstm_cell_14/Sigmoid_1Sigmoid5sequential_2/lstm_8/while/lstm_cell_14/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€
¬
*sequential_2/lstm_8/while/lstm_cell_14/mulMul4sequential_2/lstm_8/while/lstm_cell_14/Sigmoid_1:y:0'sequential_2_lstm_8_while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€
Ь
+sequential_2/lstm_8/while/lstm_cell_14/ReluRelu5sequential_2/lstm_8/while/lstm_cell_14/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€
‘
,sequential_2/lstm_8/while/lstm_cell_14/mul_1Mul2sequential_2/lstm_8/while/lstm_cell_14/Sigmoid:y:09sequential_2/lstm_8/while/lstm_cell_14/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€
…
,sequential_2/lstm_8/while/lstm_cell_14/add_1AddV2.sequential_2/lstm_8/while/lstm_cell_14/mul:z:00sequential_2/lstm_8/while/lstm_cell_14/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€
§
0sequential_2/lstm_8/while/lstm_cell_14/Sigmoid_2Sigmoid5sequential_2/lstm_8/while/lstm_cell_14/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€
Щ
-sequential_2/lstm_8/while/lstm_cell_14/Relu_1Relu0sequential_2/lstm_8/while/lstm_cell_14/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€
Ў
,sequential_2/lstm_8/while/lstm_cell_14/mul_2Mul4sequential_2/lstm_8/while/lstm_cell_14/Sigmoid_2:y:0;sequential_2/lstm_8/while/lstm_cell_14/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€
Ж
Dsequential_2/lstm_8/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : љ
>sequential_2/lstm_8/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem'sequential_2_lstm_8_while_placeholder_1Msequential_2/lstm_8/while/TensorArrayV2Write/TensorListSetItem/index:output:00sequential_2/lstm_8/while/lstm_cell_14/mul_2:z:0*
_output_shapes
: *
element_dtype0:йи“a
sequential_2/lstm_8/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :Ш
sequential_2/lstm_8/while/addAddV2%sequential_2_lstm_8_while_placeholder(sequential_2/lstm_8/while/add/y:output:0*
T0*
_output_shapes
: c
!sequential_2/lstm_8/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :Ј
sequential_2/lstm_8/while/add_1AddV2@sequential_2_lstm_8_while_sequential_2_lstm_8_while_loop_counter*sequential_2/lstm_8/while/add_1/y:output:0*
T0*
_output_shapes
: Х
"sequential_2/lstm_8/while/IdentityIdentity#sequential_2/lstm_8/while/add_1:z:0^sequential_2/lstm_8/while/NoOp*
T0*
_output_shapes
: Ї
$sequential_2/lstm_8/while/Identity_1IdentityFsequential_2_lstm_8_while_sequential_2_lstm_8_while_maximum_iterations^sequential_2/lstm_8/while/NoOp*
T0*
_output_shapes
: Х
$sequential_2/lstm_8/while/Identity_2Identity!sequential_2/lstm_8/while/add:z:0^sequential_2/lstm_8/while/NoOp*
T0*
_output_shapes
: ¬
$sequential_2/lstm_8/while/Identity_3IdentityNsequential_2/lstm_8/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^sequential_2/lstm_8/while/NoOp*
T0*
_output_shapes
: µ
$sequential_2/lstm_8/while/Identity_4Identity0sequential_2/lstm_8/while/lstm_cell_14/mul_2:z:0^sequential_2/lstm_8/while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€
µ
$sequential_2/lstm_8/while/Identity_5Identity0sequential_2/lstm_8/while/lstm_cell_14/add_1:z:0^sequential_2/lstm_8/while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€
†
sequential_2/lstm_8/while/NoOpNoOp>^sequential_2/lstm_8/while/lstm_cell_14/BiasAdd/ReadVariableOp=^sequential_2/lstm_8/while/lstm_cell_14/MatMul/ReadVariableOp?^sequential_2/lstm_8/while/lstm_cell_14/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Q
"sequential_2_lstm_8_while_identity+sequential_2/lstm_8/while/Identity:output:0"U
$sequential_2_lstm_8_while_identity_1-sequential_2/lstm_8/while/Identity_1:output:0"U
$sequential_2_lstm_8_while_identity_2-sequential_2/lstm_8/while/Identity_2:output:0"U
$sequential_2_lstm_8_while_identity_3-sequential_2/lstm_8/while/Identity_3:output:0"U
$sequential_2_lstm_8_while_identity_4-sequential_2/lstm_8/while/Identity_4:output:0"U
$sequential_2_lstm_8_while_identity_5-sequential_2/lstm_8/while/Identity_5:output:0"Т
Fsequential_2_lstm_8_while_lstm_cell_14_biasadd_readvariableop_resourceHsequential_2_lstm_8_while_lstm_cell_14_biasadd_readvariableop_resource_0"Ф
Gsequential_2_lstm_8_while_lstm_cell_14_matmul_1_readvariableop_resourceIsequential_2_lstm_8_while_lstm_cell_14_matmul_1_readvariableop_resource_0"Р
Esequential_2_lstm_8_while_lstm_cell_14_matmul_readvariableop_resourceGsequential_2_lstm_8_while_lstm_cell_14_matmul_readvariableop_resource_0"А
=sequential_2_lstm_8_while_sequential_2_lstm_8_strided_slice_1?sequential_2_lstm_8_while_sequential_2_lstm_8_strided_slice_1_0"ш
ysequential_2_lstm_8_while_tensorarrayv2read_tensorlistgetitem_sequential_2_lstm_8_tensorarrayunstack_tensorlistfromtensor{sequential_2_lstm_8_while_tensorarrayv2read_tensorlistgetitem_sequential_2_lstm_8_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :€€€€€€€€€
:€€€€€€€€€
: : : : : 2~
=sequential_2/lstm_8/while/lstm_cell_14/BiasAdd/ReadVariableOp=sequential_2/lstm_8/while/lstm_cell_14/BiasAdd/ReadVariableOp2|
<sequential_2/lstm_8/while/lstm_cell_14/MatMul/ReadVariableOp<sequential_2/lstm_8/while/lstm_cell_14/MatMul/ReadVariableOp2А
>sequential_2/lstm_8/while/lstm_cell_14/MatMul_1/ReadVariableOp>sequential_2/lstm_8/while/lstm_cell_14/MatMul_1/ReadVariableOp:^ Z

_output_shapes
: 
@
_user_specified_name(&sequential_2/lstm_8/while/loop_counter:d`

_output_shapes
: 
F
_user_specified_name.,sequential_2/lstm_8/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€
:-)
'
_output_shapes
:€€€€€€€€€
:

_output_shapes
: :

_output_shapes
: 
ы
≥
&__inference_lstm_7_layer_call_fn_79562

inputs
unknown:	d»
	unknown_0:	2»
	unknown_1:	»
identityИҐStatefulPartitionedCallз
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_lstm_7_layer_call_and_return_conditional_losses_76840s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€d: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:€€€€€€€€€d
 
_user_specified_nameinputs
„
b
D__inference_dropout_8_layer_call_and_return_conditional_losses_77523

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:€€€€€€€€€
[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:€€€€€€€€€
"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€
:O K
'
_output_shapes
:€€€€€€€€€

 
_user_specified_nameinputs
ЈK
Ц
A__inference_lstm_8_layer_call_and_return_conditional_losses_80651

inputs=
+lstm_cell_14_matmul_readvariableop_resource:2(?
-lstm_cell_14_matmul_1_readvariableop_resource:
(:
,lstm_cell_14_biasadd_readvariableop_resource:(
identityИҐ#lstm_cell_14/BiasAdd/ReadVariableOpҐ"lstm_cell_14/MatMul/ReadVariableOpҐ$lstm_cell_14/MatMul_1/ReadVariableOpҐwhileI
ShapeShapeinputs*
T0*
_output_shapes
::нѕ]
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
valueB:—
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
value	B :
s
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
:€€€€€€€€€
R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€
c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€2R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::нѕ_
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
valueB:џ
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
€€€€€€€€€і
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€2   а
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“_
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
valueB:й
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€2*
shrink_axis_maskО
"lstm_cell_14/MatMul/ReadVariableOpReadVariableOp+lstm_cell_14_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0Х
lstm_cell_14/MatMulMatMulstrided_slice_2:output:0*lstm_cell_14/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€(Т
$lstm_cell_14/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_14_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0П
lstm_cell_14/MatMul_1MatMulzeros:output:0,lstm_cell_14/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€(Л
lstm_cell_14/addAddV2lstm_cell_14/MatMul:product:0lstm_cell_14/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€(М
#lstm_cell_14/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_14_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0Ф
lstm_cell_14/BiasAddBiasAddlstm_cell_14/add:z:0+lstm_cell_14/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€(^
lstm_cell_14/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ё
lstm_cell_14/splitSplit%lstm_cell_14/split/split_dim:output:0lstm_cell_14/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€
:€€€€€€€€€
:€€€€€€€€€
:€€€€€€€€€
*
	num_splitn
lstm_cell_14/SigmoidSigmoidlstm_cell_14/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€
p
lstm_cell_14/Sigmoid_1Sigmoidlstm_cell_14/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€
w
lstm_cell_14/mulMullstm_cell_14/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€
h
lstm_cell_14/ReluRelulstm_cell_14/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€
Ж
lstm_cell_14/mul_1Mullstm_cell_14/Sigmoid:y:0lstm_cell_14/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€
{
lstm_cell_14/add_1AddV2lstm_cell_14/mul:z:0lstm_cell_14/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€
p
lstm_cell_14/Sigmoid_2Sigmoidlstm_cell_14/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€
e
lstm_cell_14/Relu_1Relulstm_cell_14/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€
К
lstm_cell_14/mul_2Mullstm_cell_14/Sigmoid_2:y:0!lstm_cell_14/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€
n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€
   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :≈
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“F
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
€€€€€€€€€T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : А
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_14_matmul_readvariableop_resource-lstm_cell_14_matmul_1_readvariableop_resource,lstm_cell_14_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€
:€€€€€€€€€
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_80566*
condR
while_cond_80565*K
output_shapes:
8: : : : :€€€€€€€€€
:€€€€€€€€€
: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€
   ÷
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:€€€€€€€€€
*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€
*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ц
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€
[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€
ј
NoOpNoOp$^lstm_cell_14/BiasAdd/ReadVariableOp#^lstm_cell_14/MatMul/ReadVariableOp%^lstm_cell_14/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€2: : : 2J
#lstm_cell_14/BiasAdd/ReadVariableOp#lstm_cell_14/BiasAdd/ReadVariableOp2H
"lstm_cell_14/MatMul/ReadVariableOp"lstm_cell_14/MatMul/ReadVariableOp2L
$lstm_cell_14/MatMul_1/ReadVariableOp$lstm_cell_14/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:€€€€€€€€€2
 
_user_specified_nameinputs
И9
э
A__inference_lstm_8_layer_call_and_return_conditional_losses_76318

inputs$
lstm_cell_14_76234:2($
lstm_cell_14_76236:
( 
lstm_cell_14_76238:(
identityИҐ$lstm_cell_14/StatefulPartitionedCallҐwhileI
ShapeShapeinputs*
T0*
_output_shapes
::нѕ]
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
valueB:—
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
value	B :
s
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
:€€€€€€€€€
R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€
c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€2R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::нѕ_
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
valueB:џ
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
€€€€€€€€€і
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€2   а
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“_
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
valueB:й
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€2*
shrink_axis_maskс
$lstm_cell_14/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_14_76234lstm_cell_14_76236lstm_cell_14_76238*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:€€€€€€€€€
:€€€€€€€€€
:€€€€€€€€€
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_lstm_cell_14_layer_call_and_return_conditional_losses_76233n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€
   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :≈
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“F
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
€€€€€€€€€T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ≤
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_14_76234lstm_cell_14_76236lstm_cell_14_76238*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€
:€€€€€€€€€
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_76248*
condR
while_cond_76247*K
output_shapes:
8: : : : :€€€€€€€€€
:€€€€€€€€€
: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€
   ÷
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:€€€€€€€€€
*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€
*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ц
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€
[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€
u
NoOpNoOp%^lstm_cell_14/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€€€€€€€€€€2: : : 2L
$lstm_cell_14/StatefulPartitionedCall$lstm_cell_14/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€2
 
_user_specified_nameinputs
щJ
Ы
A__inference_lstm_7_layer_call_and_return_conditional_losses_79716
inputs_0>
+lstm_cell_13_matmul_readvariableop_resource:	d»@
-lstm_cell_13_matmul_1_readvariableop_resource:	2»;
,lstm_cell_13_biasadd_readvariableop_resource:	»
identityИҐ#lstm_cell_13/BiasAdd/ReadVariableOpҐ"lstm_cell_13/MatMul/ReadVariableOpҐ$lstm_cell_13/MatMul_1/ReadVariableOpҐwhileK
ShapeShapeinputs_0*
T0*
_output_shapes
::нѕ]
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
valueB:—
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
value	B :2s
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
:€€€€€€€€€2R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€dR
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::нѕ_
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
valueB:џ
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
€€€€€€€€€і
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€d   а
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“_
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
valueB:й
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€d*
shrink_axis_maskП
"lstm_cell_13/MatMul/ReadVariableOpReadVariableOp+lstm_cell_13_matmul_readvariableop_resource*
_output_shapes
:	d»*
dtype0Ц
lstm_cell_13/MatMulMatMulstrided_slice_2:output:0*lstm_cell_13/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€»У
$lstm_cell_13/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_13_matmul_1_readvariableop_resource*
_output_shapes
:	2»*
dtype0Р
lstm_cell_13/MatMul_1MatMulzeros:output:0,lstm_cell_13/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€»М
lstm_cell_13/addAddV2lstm_cell_13/MatMul:product:0lstm_cell_13/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€»Н
#lstm_cell_13/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_13_biasadd_readvariableop_resource*
_output_shapes	
:»*
dtype0Х
lstm_cell_13/BiasAddBiasAddlstm_cell_13/add:z:0+lstm_cell_13/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€»^
lstm_cell_13/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ё
lstm_cell_13/splitSplit%lstm_cell_13/split/split_dim:output:0lstm_cell_13/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€2:€€€€€€€€€2:€€€€€€€€€2:€€€€€€€€€2*
	num_splitn
lstm_cell_13/SigmoidSigmoidlstm_cell_13/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€2p
lstm_cell_13/Sigmoid_1Sigmoidlstm_cell_13/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€2w
lstm_cell_13/mulMullstm_cell_13/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€2h
lstm_cell_13/ReluRelulstm_cell_13/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€2Ж
lstm_cell_13/mul_1Mullstm_cell_13/Sigmoid:y:0lstm_cell_13/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€2{
lstm_cell_13/add_1AddV2lstm_cell_13/mul:z:0lstm_cell_13/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€2p
lstm_cell_13/Sigmoid_2Sigmoidlstm_cell_13/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€2e
lstm_cell_13/Relu_1Relulstm_cell_13/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€2К
lstm_cell_13/mul_2Mullstm_cell_13/Sigmoid_2:y:0!lstm_cell_13/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€2n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€2   Є
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“F
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
€€€€€€€€€T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : А
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_13_matmul_readvariableop_resource-lstm_cell_13_matmul_1_readvariableop_resource,lstm_cell_13_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€2:€€€€€€€€€2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_79632*
condR
while_cond_79631*K
output_shapes:
8: : : : :€€€€€€€€€2:€€€€€€€€€2: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€2   Ћ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Я
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€2[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€2ј
NoOpNoOp$^lstm_cell_13/BiasAdd/ReadVariableOp#^lstm_cell_13/MatMul/ReadVariableOp%^lstm_cell_13/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€€€€€€€€€€d: : : 2J
#lstm_cell_13/BiasAdd/ReadVariableOp#lstm_cell_13/BiasAdd/ReadVariableOp2H
"lstm_cell_13/MatMul/ReadVariableOp"lstm_cell_13/MatMul/ReadVariableOp2L
$lstm_cell_13/MatMul_1/ReadVariableOp$lstm_cell_13/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€d
"
_user_specified_name
inputs_0
ы
≥
&__inference_lstm_7_layer_call_fn_79573

inputs
unknown:	d»
	unknown_0:	2»
	unknown_1:	»
identityИҐStatefulPartitionedCallз
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_lstm_7_layer_call_and_return_conditional_losses_77353s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€d: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:€€€€€€€€€d
 
_user_specified_nameinputs
н8
ѕ
while_body_79918
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_13_matmul_readvariableop_resource_0:	d»H
5while_lstm_cell_13_matmul_1_readvariableop_resource_0:	2»C
4while_lstm_cell_13_biasadd_readvariableop_resource_0:	»
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_13_matmul_readvariableop_resource:	d»F
3while_lstm_cell_13_matmul_1_readvariableop_resource:	2»A
2while_lstm_cell_13_biasadd_readvariableop_resource:	»ИҐ)while/lstm_cell_13/BiasAdd/ReadVariableOpҐ(while/lstm_cell_13/MatMul/ReadVariableOpҐ*while/lstm_cell_13/MatMul_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€d   ¶
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€d*
element_dtype0Э
(while/lstm_cell_13/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_13_matmul_readvariableop_resource_0*
_output_shapes
:	d»*
dtype0Ї
while/lstm_cell_13/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_13/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€»°
*while/lstm_cell_13/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_13_matmul_1_readvariableop_resource_0*
_output_shapes
:	2»*
dtype0°
while/lstm_cell_13/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_13/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€»Ю
while/lstm_cell_13/addAddV2#while/lstm_cell_13/MatMul:product:0%while/lstm_cell_13/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€»Ы
)while/lstm_cell_13/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_13_biasadd_readvariableop_resource_0*
_output_shapes	
:»*
dtype0І
while/lstm_cell_13/BiasAddBiasAddwhile/lstm_cell_13/add:z:01while/lstm_cell_13/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€»d
"while/lstm_cell_13/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :п
while/lstm_cell_13/splitSplit+while/lstm_cell_13/split/split_dim:output:0#while/lstm_cell_13/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€2:€€€€€€€€€2:€€€€€€€€€2:€€€€€€€€€2*
	num_splitz
while/lstm_cell_13/SigmoidSigmoid!while/lstm_cell_13/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€2|
while/lstm_cell_13/Sigmoid_1Sigmoid!while/lstm_cell_13/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€2Ж
while/lstm_cell_13/mulMul while/lstm_cell_13/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€2t
while/lstm_cell_13/ReluRelu!while/lstm_cell_13/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€2Ш
while/lstm_cell_13/mul_1Mulwhile/lstm_cell_13/Sigmoid:y:0%while/lstm_cell_13/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€2Н
while/lstm_cell_13/add_1AddV2while/lstm_cell_13/mul:z:0while/lstm_cell_13/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€2|
while/lstm_cell_13/Sigmoid_2Sigmoid!while/lstm_cell_13/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€2q
while/lstm_cell_13/Relu_1Reluwhile/lstm_cell_13/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€2Ь
while/lstm_cell_13/mul_2Mul while/lstm_cell_13/Sigmoid_2:y:0'while/lstm_cell_13/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€2≈
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_13/mul_2:z:0*
_output_shapes
: *
element_dtype0:йи“M
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
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_13/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€2y
while/Identity_5Identitywhile/lstm_cell_13/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€2–

while/NoOpNoOp*^while/lstm_cell_13/BiasAdd/ReadVariableOp)^while/lstm_cell_13/MatMul/ReadVariableOp+^while/lstm_cell_13/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_13_biasadd_readvariableop_resource4while_lstm_cell_13_biasadd_readvariableop_resource_0"l
3while_lstm_cell_13_matmul_1_readvariableop_resource5while_lstm_cell_13_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_13_matmul_readvariableop_resource3while_lstm_cell_13_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :€€€€€€€€€2:€€€€€€€€€2: : : : : 2V
)while/lstm_cell_13/BiasAdd/ReadVariableOp)while/lstm_cell_13/BiasAdd/ReadVariableOp2T
(while/lstm_cell_13/MatMul/ReadVariableOp(while/lstm_cell_13/MatMul/ReadVariableOp2X
*while/lstm_cell_13/MatMul_1/ReadVariableOp*while/lstm_cell_13/MatMul_1/ReadVariableOp:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€2:-)
'
_output_shapes
:€€€€€€€€€2:

_output_shapes
: :

_output_shapes
: 
•
µ
&__inference_lstm_7_layer_call_fn_79540
inputs_0
unknown:	d»
	unknown_0:	2»
	unknown_1:	»
identityИҐStatefulPartitionedCallт
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_lstm_7_layer_call_and_return_conditional_losses_75966|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€€€€€€€€€€d: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€d
"
_user_specified_name
inputs_0
•
µ
&__inference_lstm_6_layer_call_fn_78897
inputs_0
unknown:	Р
	unknown_0:	dР
	unknown_1:	Р
identityИҐStatefulPartitionedCallт
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_lstm_6_layer_call_and_return_conditional_losses_75616|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€d`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€€€€€€€€€€: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
"
_user_specified_name
inputs_0
•
µ
&__inference_lstm_7_layer_call_fn_79551
inputs_0
unknown:	d»
	unknown_0:	2»
	unknown_1:	»
identityИҐStatefulPartitionedCallт
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_lstm_7_layer_call_and_return_conditional_losses_76111|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€€€€€€€€€€d: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€d
"
_user_specified_name
inputs_0
ь9
…
while_body_80421
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_14_matmul_readvariableop_resource_0:2(G
5while_lstm_cell_14_matmul_1_readvariableop_resource_0:
(B
4while_lstm_cell_14_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_14_matmul_readvariableop_resource:2(E
3while_lstm_cell_14_matmul_1_readvariableop_resource:
(@
2while_lstm_cell_14_biasadd_readvariableop_resource:(ИҐ)while/lstm_cell_14/BiasAdd/ReadVariableOpҐ(while/lstm_cell_14/MatMul/ReadVariableOpҐ*while/lstm_cell_14/MatMul_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€2   ¶
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€2*
element_dtype0Ь
(while/lstm_cell_14/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_14_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0є
while/lstm_cell_14/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_14/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€(†
*while/lstm_cell_14/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_14_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0†
while/lstm_cell_14/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_14/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€(Э
while/lstm_cell_14/addAddV2#while/lstm_cell_14/MatMul:product:0%while/lstm_cell_14/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€(Ъ
)while/lstm_cell_14/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_14_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0¶
while/lstm_cell_14/BiasAddBiasAddwhile/lstm_cell_14/add:z:01while/lstm_cell_14/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€(d
"while/lstm_cell_14/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :п
while/lstm_cell_14/splitSplit+while/lstm_cell_14/split/split_dim:output:0#while/lstm_cell_14/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€
:€€€€€€€€€
:€€€€€€€€€
:€€€€€€€€€
*
	num_splitz
while/lstm_cell_14/SigmoidSigmoid!while/lstm_cell_14/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€
|
while/lstm_cell_14/Sigmoid_1Sigmoid!while/lstm_cell_14/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€
Ж
while/lstm_cell_14/mulMul while/lstm_cell_14/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€
t
while/lstm_cell_14/ReluRelu!while/lstm_cell_14/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€
Ш
while/lstm_cell_14/mul_1Mulwhile/lstm_cell_14/Sigmoid:y:0%while/lstm_cell_14/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€
Н
while/lstm_cell_14/add_1AddV2while/lstm_cell_14/mul:z:0while/lstm_cell_14/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€
|
while/lstm_cell_14/Sigmoid_2Sigmoid!while/lstm_cell_14/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€
q
while/lstm_cell_14/Relu_1Reluwhile/lstm_cell_14/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€
Ь
while/lstm_cell_14/mul_2Mul while/lstm_cell_14/Sigmoid_2:y:0'while/lstm_cell_14/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€
r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : н
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell_14/mul_2:z:0*
_output_shapes
: *
element_dtype0:йи“M
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
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_14/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€
y
while/Identity_5Identitywhile/lstm_cell_14/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€
–

while/NoOpNoOp*^while/lstm_cell_14/BiasAdd/ReadVariableOp)^while/lstm_cell_14/MatMul/ReadVariableOp+^while/lstm_cell_14/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_14_biasadd_readvariableop_resource4while_lstm_cell_14_biasadd_readvariableop_resource_0"l
3while_lstm_cell_14_matmul_1_readvariableop_resource5while_lstm_cell_14_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_14_matmul_readvariableop_resource3while_lstm_cell_14_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :€€€€€€€€€
:€€€€€€€€€
: : : : : 2V
)while/lstm_cell_14/BiasAdd/ReadVariableOp)while/lstm_cell_14/BiasAdd/ReadVariableOp2T
(while/lstm_cell_14/MatMul/ReadVariableOp(while/lstm_cell_14/MatMul/ReadVariableOp2X
*while/lstm_cell_14/MatMul_1/ReadVariableOp*while/lstm_cell_14/MatMul_1/ReadVariableOp:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€
:-)
'
_output_shapes
:€€€€€€€€€
:

_output_shapes
: :

_output_shapes
: 
„%
ъ
G__inference_sequential_2_layer_call_and_return_conditional_losses_77645

inputs
normalization_2_sub_y
normalization_2_sqrt_x
lstm_6_77615:	Р
lstm_6_77617:	dР
lstm_6_77619:	Р
lstm_7_77623:	d»
lstm_7_77625:	2»
lstm_7_77627:	»
lstm_8_77631:2(
lstm_8_77633:
(
lstm_8_77635:(
dense_2_77639:

dense_2_77641:
identityИҐdense_2/StatefulPartitionedCallҐlstm_6/StatefulPartitionedCallҐlstm_7/StatefulPartitionedCallҐlstm_8/StatefulPartitionedCallo
normalization_2/subSubinputsnormalization_2_sub_y*
T0*+
_output_shapes
:€€€€€€€€€a
normalization_2/SqrtSqrtnormalization_2_sqrt_x*
T0*"
_output_shapes
:^
normalization_2/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *Хњ÷3Н
normalization_2/MaximumMaximumnormalization_2/Sqrt:y:0"normalization_2/Maximum/y:output:0*
T0*"
_output_shapes
:О
normalization_2/truedivRealDivnormalization_2/sub:z:0normalization_2/Maximum:z:0*
T0*+
_output_shapes
:€€€€€€€€€О
lstm_6/StatefulPartitionedCallStatefulPartitionedCallnormalization_2/truediv:z:0lstm_6_77615lstm_6_77617lstm_6_77619*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_lstm_6_layer_call_and_return_conditional_losses_77197ё
dropout_6/PartitionedCallPartitionedCall'lstm_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€d* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dropout_6_layer_call_and_return_conditional_losses_77209Х
lstm_7/StatefulPartitionedCallStatefulPartitionedCall"dropout_6/PartitionedCall:output:0lstm_7_77623lstm_7_77625lstm_7_77627*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_lstm_7_layer_call_and_return_conditional_losses_77353ё
dropout_7/PartitionedCallPartitionedCall'lstm_7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€2* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dropout_7_layer_call_and_return_conditional_losses_77365С
lstm_8/StatefulPartitionedCallStatefulPartitionedCall"dropout_7/PartitionedCall:output:0lstm_8_77631lstm_8_77633lstm_8_77635*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_lstm_8_layer_call_and_return_conditional_losses_77511Џ
dropout_8/PartitionedCallPartitionedCall'lstm_8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€
* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dropout_8_layer_call_and_return_conditional_losses_77523Е
dense_2/StatefulPartitionedCallStatefulPartitionedCall"dropout_8/PartitionedCall:output:0dense_2_77639dense_2_77641*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dense_2_layer_call_and_return_conditional_losses_77038w
IdentityIdentity(dense_2/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€Ћ
NoOpNoOp ^dense_2/StatefulPartitionedCall^lstm_6/StatefulPartitionedCall^lstm_7/StatefulPartitionedCall^lstm_8/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*\
_input_shapesK
I:€€€€€€€€€::: : : : : : : : : : : 2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2@
lstm_6/StatefulPartitionedCalllstm_6/StatefulPartitionedCall2@
lstm_7/StatefulPartitionedCalllstm_7/StatefulPartitionedCall2@
lstm_8/StatefulPartitionedCalllstm_8/StatefulPartitionedCall:S O
+
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:($
"
_output_shapes
::($
"
_output_shapes
:
д

 
lstm_6_while_cond_78512*
&lstm_6_while_lstm_6_while_loop_counter0
,lstm_6_while_lstm_6_while_maximum_iterations
lstm_6_while_placeholder
lstm_6_while_placeholder_1
lstm_6_while_placeholder_2
lstm_6_while_placeholder_3,
(lstm_6_while_less_lstm_6_strided_slice_1A
=lstm_6_while_lstm_6_while_cond_78512___redundant_placeholder0A
=lstm_6_while_lstm_6_while_cond_78512___redundant_placeholder1A
=lstm_6_while_lstm_6_while_cond_78512___redundant_placeholder2A
=lstm_6_while_lstm_6_while_cond_78512___redundant_placeholder3
lstm_6_while_identity
~
lstm_6/while/LessLesslstm_6_while_placeholder(lstm_6_while_less_lstm_6_strided_slice_1*
T0*
_output_shapes
: Y
lstm_6/while/IdentityIdentitylstm_6/while/Less:z:0*
T0
*
_output_shapes
: "7
lstm_6_while_identitylstm_6/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :€€€€€€€€€d:€€€€€€€€€d: :::::Q M

_output_shapes
: 
3
_user_specified_namelstm_6/while/loop_counter:WS

_output_shapes
: 
9
_user_specified_name!lstm_6/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€d:-)
'
_output_shapes
:€€€€€€€€€d:

_output_shapes
: :

_output_shapes
:
д

 
lstm_6_while_cond_78052*
&lstm_6_while_lstm_6_while_loop_counter0
,lstm_6_while_lstm_6_while_maximum_iterations
lstm_6_while_placeholder
lstm_6_while_placeholder_1
lstm_6_while_placeholder_2
lstm_6_while_placeholder_3,
(lstm_6_while_less_lstm_6_strided_slice_1A
=lstm_6_while_lstm_6_while_cond_78052___redundant_placeholder0A
=lstm_6_while_lstm_6_while_cond_78052___redundant_placeholder1A
=lstm_6_while_lstm_6_while_cond_78052___redundant_placeholder2A
=lstm_6_while_lstm_6_while_cond_78052___redundant_placeholder3
lstm_6_while_identity
~
lstm_6/while/LessLesslstm_6_while_placeholder(lstm_6_while_less_lstm_6_strided_slice_1*
T0*
_output_shapes
: Y
lstm_6/while/IdentityIdentitylstm_6/while/Less:z:0*
T0
*
_output_shapes
: "7
lstm_6_while_identitylstm_6/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :€€€€€€€€€d:€€€€€€€€€d: :::::Q M

_output_shapes
: 
3
_user_specified_namelstm_6/while/loop_counter:WS

_output_shapes
: 
9
_user_specified_name!lstm_6/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€d:-)
'
_output_shapes
:€€€€€€€€€d:

_output_shapes
: :

_output_shapes
:
‘
Г
G__inference_lstm_cell_13_layer_call_and_return_conditional_losses_76028

inputs

states
states_11
matmul_readvariableop_resource:	d»3
 matmul_1_readvariableop_resource:	2».
biasadd_readvariableop_resource:	»
identity

identity_1

identity_2ИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpҐMatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	d»*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€»y
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	2»*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€»e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€»s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:»*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€»Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ґ
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€2:€€€€€€€€€2:€€€€€€€€€2:€€€€€€€€€2*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:€€€€€€€€€2V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:€€€€€€€€€2U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:€€€€€€€€€2N
ReluRelusplit:output:2*
T0*'
_output_shapes
:€€€€€€€€€2_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€2T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€2V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:€€€€€€€€€2K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€2c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€2X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€2Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€2Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€2С
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:€€€€€€€€€d:€€€€€€€€€2:€€€€€€€€€2: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€d
 
_user_specified_nameinputs:OK
'
_output_shapes
:€€€€€€€€€2
 
_user_specified_namestates:OK
'
_output_shapes
:€€€€€€€€€2
 
_user_specified_namestates
Т	
Њ
while_cond_76041
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_76041___redundant_placeholder03
/while_while_cond_76041___redundant_placeholder13
/while_while_cond_76041___redundant_placeholder23
/while_while_cond_76041___redundant_placeholder3
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
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :€€€€€€€€€2:€€€€€€€€€2: :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€2:-)
'
_output_shapes
:€€€€€€€€€2:

_output_shapes
: :

_output_shapes
:
†8
А
A__inference_lstm_6_layer_call_and_return_conditional_losses_75616

inputs%
lstm_cell_12_75534:	Р%
lstm_cell_12_75536:	dР!
lstm_cell_12_75538:	Р
identityИҐ$lstm_cell_12/StatefulPartitionedCallҐwhileI
ShapeShapeinputs*
T0*
_output_shapes
::нѕ]
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
valueB:—
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
value	B :ds
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
:€€€€€€€€€dR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€dc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::нѕ_
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
valueB:џ
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
€€€€€€€€€і
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   а
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“_
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
valueB:й
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_maskс
$lstm_cell_12/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_12_75534lstm_cell_12_75536lstm_cell_12_75538*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:€€€€€€€€€d:€€€€€€€€€d:€€€€€€€€€d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_lstm_cell_12_layer_call_and_return_conditional_losses_75533n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€d   Є
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“F
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
€€€€€€€€€T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ≤
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_12_75534lstm_cell_12_75536lstm_cell_12_75538*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€d:€€€€€€€€€d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_75547*
condR
while_cond_75546*K
output_shapes:
8: : : : :€€€€€€€€€d:€€€€€€€€€d: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€d   Ћ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€d*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€d*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Я
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€du
NoOpNoOp%^lstm_cell_12/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€€€€€€€€€€: : : 2L
$lstm_cell_12/StatefulPartitionedCall$lstm_cell_12/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
≠
E
)__inference_dropout_6_layer_call_fn_79512

inputs
identity≥
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€d* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dropout_6_layer_call_and_return_conditional_losses_77209d
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:€€€€€€€€€d"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€d:S O
+
_output_shapes
:€€€€€€€€€d
 
_user_specified_nameinputs
ЈK
Ц
A__inference_lstm_8_layer_call_and_return_conditional_losses_77006

inputs=
+lstm_cell_14_matmul_readvariableop_resource:2(?
-lstm_cell_14_matmul_1_readvariableop_resource:
(:
,lstm_cell_14_biasadd_readvariableop_resource:(
identityИҐ#lstm_cell_14/BiasAdd/ReadVariableOpҐ"lstm_cell_14/MatMul/ReadVariableOpҐ$lstm_cell_14/MatMul_1/ReadVariableOpҐwhileI
ShapeShapeinputs*
T0*
_output_shapes
::нѕ]
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
valueB:—
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
value	B :
s
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
:€€€€€€€€€
R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€
c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€2R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::нѕ_
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
valueB:џ
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
€€€€€€€€€і
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€2   а
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“_
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
valueB:й
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€2*
shrink_axis_maskО
"lstm_cell_14/MatMul/ReadVariableOpReadVariableOp+lstm_cell_14_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0Х
lstm_cell_14/MatMulMatMulstrided_slice_2:output:0*lstm_cell_14/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€(Т
$lstm_cell_14/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_14_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0П
lstm_cell_14/MatMul_1MatMulzeros:output:0,lstm_cell_14/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€(Л
lstm_cell_14/addAddV2lstm_cell_14/MatMul:product:0lstm_cell_14/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€(М
#lstm_cell_14/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_14_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0Ф
lstm_cell_14/BiasAddBiasAddlstm_cell_14/add:z:0+lstm_cell_14/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€(^
lstm_cell_14/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ё
lstm_cell_14/splitSplit%lstm_cell_14/split/split_dim:output:0lstm_cell_14/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€
:€€€€€€€€€
:€€€€€€€€€
:€€€€€€€€€
*
	num_splitn
lstm_cell_14/SigmoidSigmoidlstm_cell_14/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€
p
lstm_cell_14/Sigmoid_1Sigmoidlstm_cell_14/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€
w
lstm_cell_14/mulMullstm_cell_14/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€
h
lstm_cell_14/ReluRelulstm_cell_14/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€
Ж
lstm_cell_14/mul_1Mullstm_cell_14/Sigmoid:y:0lstm_cell_14/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€
{
lstm_cell_14/add_1AddV2lstm_cell_14/mul:z:0lstm_cell_14/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€
p
lstm_cell_14/Sigmoid_2Sigmoidlstm_cell_14/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€
e
lstm_cell_14/Relu_1Relulstm_cell_14/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€
К
lstm_cell_14/mul_2Mullstm_cell_14/Sigmoid_2:y:0!lstm_cell_14/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€
n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€
   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :≈
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“F
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
€€€€€€€€€T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : А
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_14_matmul_readvariableop_resource-lstm_cell_14_matmul_1_readvariableop_resource,lstm_cell_14_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€
:€€€€€€€€€
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_76921*
condR
while_cond_76920*K
output_shapes:
8: : : : :€€€€€€€€€
:€€€€€€€€€
: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€
   ÷
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:€€€€€€€€€
*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€
*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ц
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€
[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€
ј
NoOpNoOp$^lstm_cell_14/BiasAdd/ReadVariableOp#^lstm_cell_14/MatMul/ReadVariableOp%^lstm_cell_14/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€2: : : 2J
#lstm_cell_14/BiasAdd/ReadVariableOp#lstm_cell_14/BiasAdd/ReadVariableOp2H
"lstm_cell_14/MatMul/ReadVariableOp"lstm_cell_14/MatMul/ReadVariableOp2L
$lstm_cell_14/MatMul_1/ReadVariableOp$lstm_cell_14/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:€€€€€€€€€2
 
_user_specified_nameinputs
Т	
Њ
while_cond_79917
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_79917___redundant_placeholder03
/while_while_cond_79917___redundant_placeholder13
/while_while_cond_79917___redundant_placeholder23
/while_while_cond_79917___redundant_placeholder3
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
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :€€€€€€€€€2:€€€€€€€€€2: :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€2:-)
'
_output_shapes
:€€€€€€€€€2:

_output_shapes
: :

_output_shapes
:
ЏK
Ш
A__inference_lstm_8_layer_call_and_return_conditional_losses_80361
inputs_0=
+lstm_cell_14_matmul_readvariableop_resource:2(?
-lstm_cell_14_matmul_1_readvariableop_resource:
(:
,lstm_cell_14_biasadd_readvariableop_resource:(
identityИҐ#lstm_cell_14/BiasAdd/ReadVariableOpҐ"lstm_cell_14/MatMul/ReadVariableOpҐ$lstm_cell_14/MatMul_1/ReadVariableOpҐwhileK
ShapeShapeinputs_0*
T0*
_output_shapes
::нѕ]
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
valueB:—
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
value	B :
s
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
:€€€€€€€€€
R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€
c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€2R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::нѕ_
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
valueB:џ
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
€€€€€€€€€і
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€2   а
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“_
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
valueB:й
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€2*
shrink_axis_maskО
"lstm_cell_14/MatMul/ReadVariableOpReadVariableOp+lstm_cell_14_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0Х
lstm_cell_14/MatMulMatMulstrided_slice_2:output:0*lstm_cell_14/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€(Т
$lstm_cell_14/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_14_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0П
lstm_cell_14/MatMul_1MatMulzeros:output:0,lstm_cell_14/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€(Л
lstm_cell_14/addAddV2lstm_cell_14/MatMul:product:0lstm_cell_14/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€(М
#lstm_cell_14/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_14_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0Ф
lstm_cell_14/BiasAddBiasAddlstm_cell_14/add:z:0+lstm_cell_14/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€(^
lstm_cell_14/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ё
lstm_cell_14/splitSplit%lstm_cell_14/split/split_dim:output:0lstm_cell_14/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€
:€€€€€€€€€
:€€€€€€€€€
:€€€€€€€€€
*
	num_splitn
lstm_cell_14/SigmoidSigmoidlstm_cell_14/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€
p
lstm_cell_14/Sigmoid_1Sigmoidlstm_cell_14/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€
w
lstm_cell_14/mulMullstm_cell_14/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€
h
lstm_cell_14/ReluRelulstm_cell_14/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€
Ж
lstm_cell_14/mul_1Mullstm_cell_14/Sigmoid:y:0lstm_cell_14/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€
{
lstm_cell_14/add_1AddV2lstm_cell_14/mul:z:0lstm_cell_14/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€
p
lstm_cell_14/Sigmoid_2Sigmoidlstm_cell_14/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€
e
lstm_cell_14/Relu_1Relulstm_cell_14/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€
К
lstm_cell_14/mul_2Mullstm_cell_14/Sigmoid_2:y:0!lstm_cell_14/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€
n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€
   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :≈
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“F
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
€€€€€€€€€T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : А
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_14_matmul_readvariableop_resource-lstm_cell_14_matmul_1_readvariableop_resource,lstm_cell_14_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€
:€€€€€€€€€
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_80276*
condR
while_cond_80275*K
output_shapes:
8: : : : :€€€€€€€€€
:€€€€€€€€€
: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€
   ÷
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:€€€€€€€€€
*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€
*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ц
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€
[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€
ј
NoOpNoOp$^lstm_cell_14/BiasAdd/ReadVariableOp#^lstm_cell_14/MatMul/ReadVariableOp%^lstm_cell_14/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€€€€€€€€€€2: : : 2J
#lstm_cell_14/BiasAdd/ReadVariableOp#lstm_cell_14/BiasAdd/ReadVariableOp2H
"lstm_cell_14/MatMul/ReadVariableOp"lstm_cell_14/MatMul/ReadVariableOp2L
$lstm_cell_14/MatMul_1/ReadVariableOp$lstm_cell_14/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€2
"
_user_specified_name
inputs_0
ЬЫ
К
G__inference_sequential_2_layer_call_and_return_conditional_losses_78447

inputs
normalization_2_sub_y
normalization_2_sqrt_xE
2lstm_6_lstm_cell_12_matmul_readvariableop_resource:	РG
4lstm_6_lstm_cell_12_matmul_1_readvariableop_resource:	dРB
3lstm_6_lstm_cell_12_biasadd_readvariableop_resource:	РE
2lstm_7_lstm_cell_13_matmul_readvariableop_resource:	d»G
4lstm_7_lstm_cell_13_matmul_1_readvariableop_resource:	2»B
3lstm_7_lstm_cell_13_biasadd_readvariableop_resource:	»D
2lstm_8_lstm_cell_14_matmul_readvariableop_resource:2(F
4lstm_8_lstm_cell_14_matmul_1_readvariableop_resource:
(A
3lstm_8_lstm_cell_14_biasadd_readvariableop_resource:(8
&dense_2_matmul_readvariableop_resource:
5
'dense_2_biasadd_readvariableop_resource:
identityИҐdense_2/BiasAdd/ReadVariableOpҐdense_2/MatMul/ReadVariableOpҐ*lstm_6/lstm_cell_12/BiasAdd/ReadVariableOpҐ)lstm_6/lstm_cell_12/MatMul/ReadVariableOpҐ+lstm_6/lstm_cell_12/MatMul_1/ReadVariableOpҐlstm_6/whileҐ*lstm_7/lstm_cell_13/BiasAdd/ReadVariableOpҐ)lstm_7/lstm_cell_13/MatMul/ReadVariableOpҐ+lstm_7/lstm_cell_13/MatMul_1/ReadVariableOpҐlstm_7/whileҐ*lstm_8/lstm_cell_14/BiasAdd/ReadVariableOpҐ)lstm_8/lstm_cell_14/MatMul/ReadVariableOpҐ+lstm_8/lstm_cell_14/MatMul_1/ReadVariableOpҐlstm_8/whileo
normalization_2/subSubinputsnormalization_2_sub_y*
T0*+
_output_shapes
:€€€€€€€€€a
normalization_2/SqrtSqrtnormalization_2_sqrt_x*
T0*"
_output_shapes
:^
normalization_2/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *Хњ÷3Н
normalization_2/MaximumMaximumnormalization_2/Sqrt:y:0"normalization_2/Maximum/y:output:0*
T0*"
_output_shapes
:О
normalization_2/truedivRealDivnormalization_2/sub:z:0normalization_2/Maximum:z:0*
T0*+
_output_shapes
:€€€€€€€€€e
lstm_6/ShapeShapenormalization_2/truediv:z:0*
T0*
_output_shapes
::нѕd
lstm_6/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: f
lstm_6/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:f
lstm_6/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ф
lstm_6/strided_sliceStridedSlicelstm_6/Shape:output:0#lstm_6/strided_slice/stack:output:0%lstm_6/strided_slice/stack_1:output:0%lstm_6/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskW
lstm_6/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dИ
lstm_6/zeros/packedPacklstm_6/strided_slice:output:0lstm_6/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:W
lstm_6/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Б
lstm_6/zerosFilllstm_6/zeros/packed:output:0lstm_6/zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€dY
lstm_6/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dМ
lstm_6/zeros_1/packedPacklstm_6/strided_slice:output:0 lstm_6/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_6/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    З
lstm_6/zeros_1Filllstm_6/zeros_1/packed:output:0lstm_6/zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€dj
lstm_6/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Р
lstm_6/transpose	Transposenormalization_2/truediv:z:0lstm_6/transpose/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€`
lstm_6/Shape_1Shapelstm_6/transpose:y:0*
T0*
_output_shapes
::нѕf
lstm_6/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_6/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_6/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ю
lstm_6/strided_slice_1StridedSlicelstm_6/Shape_1:output:0%lstm_6/strided_slice_1/stack:output:0'lstm_6/strided_slice_1/stack_1:output:0'lstm_6/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskm
"lstm_6/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€…
lstm_6/TensorArrayV2TensorListReserve+lstm_6/TensorArrayV2/element_shape:output:0lstm_6/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Н
<lstm_6/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   х
.lstm_6/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_6/transpose:y:0Elstm_6/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“f
lstm_6/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_6/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_6/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:М
lstm_6/strided_slice_2StridedSlicelstm_6/transpose:y:0%lstm_6/strided_slice_2/stack:output:0'lstm_6/strided_slice_2/stack_1:output:0'lstm_6/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_maskЭ
)lstm_6/lstm_cell_12/MatMul/ReadVariableOpReadVariableOp2lstm_6_lstm_cell_12_matmul_readvariableop_resource*
_output_shapes
:	Р*
dtype0Ђ
lstm_6/lstm_cell_12/MatMulMatMullstm_6/strided_slice_2:output:01lstm_6/lstm_cell_12/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Р°
+lstm_6/lstm_cell_12/MatMul_1/ReadVariableOpReadVariableOp4lstm_6_lstm_cell_12_matmul_1_readvariableop_resource*
_output_shapes
:	dР*
dtype0•
lstm_6/lstm_cell_12/MatMul_1MatMullstm_6/zeros:output:03lstm_6/lstm_cell_12/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Р°
lstm_6/lstm_cell_12/addAddV2$lstm_6/lstm_cell_12/MatMul:product:0&lstm_6/lstm_cell_12/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€РЫ
*lstm_6/lstm_cell_12/BiasAdd/ReadVariableOpReadVariableOp3lstm_6_lstm_cell_12_biasadd_readvariableop_resource*
_output_shapes	
:Р*
dtype0™
lstm_6/lstm_cell_12/BiasAddBiasAddlstm_6/lstm_cell_12/add:z:02lstm_6/lstm_cell_12/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Рe
#lstm_6/lstm_cell_12/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :т
lstm_6/lstm_cell_12/splitSplit,lstm_6/lstm_cell_12/split/split_dim:output:0$lstm_6/lstm_cell_12/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€d:€€€€€€€€€d:€€€€€€€€€d:€€€€€€€€€d*
	num_split|
lstm_6/lstm_cell_12/SigmoidSigmoid"lstm_6/lstm_cell_12/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€d~
lstm_6/lstm_cell_12/Sigmoid_1Sigmoid"lstm_6/lstm_cell_12/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€dМ
lstm_6/lstm_cell_12/mulMul!lstm_6/lstm_cell_12/Sigmoid_1:y:0lstm_6/zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€dv
lstm_6/lstm_cell_12/ReluRelu"lstm_6/lstm_cell_12/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€dЫ
lstm_6/lstm_cell_12/mul_1Mullstm_6/lstm_cell_12/Sigmoid:y:0&lstm_6/lstm_cell_12/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€dР
lstm_6/lstm_cell_12/add_1AddV2lstm_6/lstm_cell_12/mul:z:0lstm_6/lstm_cell_12/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€d~
lstm_6/lstm_cell_12/Sigmoid_2Sigmoid"lstm_6/lstm_cell_12/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€ds
lstm_6/lstm_cell_12/Relu_1Relulstm_6/lstm_cell_12/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€dЯ
lstm_6/lstm_cell_12/mul_2Mul!lstm_6/lstm_cell_12/Sigmoid_2:y:0(lstm_6/lstm_cell_12/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€du
$lstm_6/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€d   Ќ
lstm_6/TensorArrayV2_1TensorListReserve-lstm_6/TensorArrayV2_1/element_shape:output:0lstm_6/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“M
lstm_6/timeConst*
_output_shapes
: *
dtype0*
value	B : j
lstm_6/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€[
lstm_6/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : в
lstm_6/whileWhile"lstm_6/while/loop_counter:output:0(lstm_6/while/maximum_iterations:output:0lstm_6/time:output:0lstm_6/TensorArrayV2_1:handle:0lstm_6/zeros:output:0lstm_6/zeros_1:output:0lstm_6/strided_slice_1:output:0>lstm_6/TensorArrayUnstack/TensorListFromTensor:output_handle:02lstm_6_lstm_cell_12_matmul_readvariableop_resource4lstm_6_lstm_cell_12_matmul_1_readvariableop_resource3lstm_6_lstm_cell_12_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€d:€€€€€€€€€d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *#
bodyR
lstm_6_while_body_78053*#
condR
lstm_6_while_cond_78052*K
output_shapes:
8: : : : :€€€€€€€€€d:€€€€€€€€€d: : : : : *
parallel_iterations И
7lstm_6/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€d   „
)lstm_6/TensorArrayV2Stack/TensorListStackTensorListStacklstm_6/while:output:3@lstm_6/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:€€€€€€€€€d*
element_dtype0o
lstm_6/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€h
lstm_6/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: h
lstm_6/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:™
lstm_6/strided_slice_3StridedSlice2lstm_6/TensorArrayV2Stack/TensorListStack:tensor:0%lstm_6/strided_slice_3/stack:output:0'lstm_6/strided_slice_3/stack_1:output:0'lstm_6/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€d*
shrink_axis_maskl
lstm_6/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ђ
lstm_6/transpose_1	Transpose2lstm_6/TensorArrayV2Stack/TensorListStack:tensor:0 lstm_6/transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€db
lstm_6/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    \
dropout_6/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nџґ?М
dropout_6/dropout/MulMullstm_6/transpose_1:y:0 dropout_6/dropout/Const:output:0*
T0*+
_output_shapes
:€€€€€€€€€dk
dropout_6/dropout/ShapeShapelstm_6/transpose_1:y:0*
T0*
_output_shapes
::нѕ§
.dropout_6/dropout/random_uniform/RandomUniformRandomUniform dropout_6/dropout/Shape:output:0*
T0*+
_output_shapes
:€€€€€€€€€d*
dtype0e
 dropout_6/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЪЩЩ>»
dropout_6/dropout/GreaterEqualGreaterEqual7dropout_6/dropout/random_uniform/RandomUniform:output:0)dropout_6/dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:€€€€€€€€€d^
dropout_6/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    њ
dropout_6/dropout/SelectV2SelectV2"dropout_6/dropout/GreaterEqual:z:0dropout_6/dropout/Mul:z:0"dropout_6/dropout/Const_1:output:0*
T0*+
_output_shapes
:€€€€€€€€€dm
lstm_7/ShapeShape#dropout_6/dropout/SelectV2:output:0*
T0*
_output_shapes
::нѕd
lstm_7/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: f
lstm_7/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:f
lstm_7/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ф
lstm_7/strided_sliceStridedSlicelstm_7/Shape:output:0#lstm_7/strided_slice/stack:output:0%lstm_7/strided_slice/stack_1:output:0%lstm_7/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskW
lstm_7/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2И
lstm_7/zeros/packedPacklstm_7/strided_slice:output:0lstm_7/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:W
lstm_7/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Б
lstm_7/zerosFilllstm_7/zeros/packed:output:0lstm_7/zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€2Y
lstm_7/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2М
lstm_7/zeros_1/packedPacklstm_7/strided_slice:output:0 lstm_7/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_7/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    З
lstm_7/zeros_1Filllstm_7/zeros_1/packed:output:0lstm_7/zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€2j
lstm_7/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ш
lstm_7/transpose	Transpose#dropout_6/dropout/SelectV2:output:0lstm_7/transpose/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€d`
lstm_7/Shape_1Shapelstm_7/transpose:y:0*
T0*
_output_shapes
::нѕf
lstm_7/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_7/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_7/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ю
lstm_7/strided_slice_1StridedSlicelstm_7/Shape_1:output:0%lstm_7/strided_slice_1/stack:output:0'lstm_7/strided_slice_1/stack_1:output:0'lstm_7/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskm
"lstm_7/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€…
lstm_7/TensorArrayV2TensorListReserve+lstm_7/TensorArrayV2/element_shape:output:0lstm_7/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Н
<lstm_7/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€d   х
.lstm_7/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_7/transpose:y:0Elstm_7/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“f
lstm_7/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_7/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_7/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:М
lstm_7/strided_slice_2StridedSlicelstm_7/transpose:y:0%lstm_7/strided_slice_2/stack:output:0'lstm_7/strided_slice_2/stack_1:output:0'lstm_7/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€d*
shrink_axis_maskЭ
)lstm_7/lstm_cell_13/MatMul/ReadVariableOpReadVariableOp2lstm_7_lstm_cell_13_matmul_readvariableop_resource*
_output_shapes
:	d»*
dtype0Ђ
lstm_7/lstm_cell_13/MatMulMatMullstm_7/strided_slice_2:output:01lstm_7/lstm_cell_13/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€»°
+lstm_7/lstm_cell_13/MatMul_1/ReadVariableOpReadVariableOp4lstm_7_lstm_cell_13_matmul_1_readvariableop_resource*
_output_shapes
:	2»*
dtype0•
lstm_7/lstm_cell_13/MatMul_1MatMullstm_7/zeros:output:03lstm_7/lstm_cell_13/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€»°
lstm_7/lstm_cell_13/addAddV2$lstm_7/lstm_cell_13/MatMul:product:0&lstm_7/lstm_cell_13/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€»Ы
*lstm_7/lstm_cell_13/BiasAdd/ReadVariableOpReadVariableOp3lstm_7_lstm_cell_13_biasadd_readvariableop_resource*
_output_shapes	
:»*
dtype0™
lstm_7/lstm_cell_13/BiasAddBiasAddlstm_7/lstm_cell_13/add:z:02lstm_7/lstm_cell_13/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€»e
#lstm_7/lstm_cell_13/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :т
lstm_7/lstm_cell_13/splitSplit,lstm_7/lstm_cell_13/split/split_dim:output:0$lstm_7/lstm_cell_13/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€2:€€€€€€€€€2:€€€€€€€€€2:€€€€€€€€€2*
	num_split|
lstm_7/lstm_cell_13/SigmoidSigmoid"lstm_7/lstm_cell_13/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€2~
lstm_7/lstm_cell_13/Sigmoid_1Sigmoid"lstm_7/lstm_cell_13/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€2М
lstm_7/lstm_cell_13/mulMul!lstm_7/lstm_cell_13/Sigmoid_1:y:0lstm_7/zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€2v
lstm_7/lstm_cell_13/ReluRelu"lstm_7/lstm_cell_13/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€2Ы
lstm_7/lstm_cell_13/mul_1Mullstm_7/lstm_cell_13/Sigmoid:y:0&lstm_7/lstm_cell_13/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€2Р
lstm_7/lstm_cell_13/add_1AddV2lstm_7/lstm_cell_13/mul:z:0lstm_7/lstm_cell_13/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€2~
lstm_7/lstm_cell_13/Sigmoid_2Sigmoid"lstm_7/lstm_cell_13/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€2s
lstm_7/lstm_cell_13/Relu_1Relulstm_7/lstm_cell_13/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€2Я
lstm_7/lstm_cell_13/mul_2Mul!lstm_7/lstm_cell_13/Sigmoid_2:y:0(lstm_7/lstm_cell_13/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€2u
$lstm_7/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€2   Ќ
lstm_7/TensorArrayV2_1TensorListReserve-lstm_7/TensorArrayV2_1/element_shape:output:0lstm_7/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“M
lstm_7/timeConst*
_output_shapes
: *
dtype0*
value	B : j
lstm_7/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€[
lstm_7/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : в
lstm_7/whileWhile"lstm_7/while/loop_counter:output:0(lstm_7/while/maximum_iterations:output:0lstm_7/time:output:0lstm_7/TensorArrayV2_1:handle:0lstm_7/zeros:output:0lstm_7/zeros_1:output:0lstm_7/strided_slice_1:output:0>lstm_7/TensorArrayUnstack/TensorListFromTensor:output_handle:02lstm_7_lstm_cell_13_matmul_readvariableop_resource4lstm_7_lstm_cell_13_matmul_1_readvariableop_resource3lstm_7_lstm_cell_13_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€2:€€€€€€€€€2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *#
bodyR
lstm_7_while_body_78200*#
condR
lstm_7_while_cond_78199*K
output_shapes:
8: : : : :€€€€€€€€€2:€€€€€€€€€2: : : : : *
parallel_iterations И
7lstm_7/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€2   „
)lstm_7/TensorArrayV2Stack/TensorListStackTensorListStacklstm_7/while:output:3@lstm_7/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:€€€€€€€€€2*
element_dtype0o
lstm_7/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€h
lstm_7/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: h
lstm_7/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:™
lstm_7/strided_slice_3StridedSlice2lstm_7/TensorArrayV2Stack/TensorListStack:tensor:0%lstm_7/strided_slice_3/stack:output:0'lstm_7/strided_slice_3/stack_1:output:0'lstm_7/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€2*
shrink_axis_maskl
lstm_7/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ђ
lstm_7/transpose_1	Transpose2lstm_7/TensorArrayV2Stack/TensorListStack:tensor:0 lstm_7/transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€2b
lstm_7/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    \
dropout_7/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU’?М
dropout_7/dropout/MulMullstm_7/transpose_1:y:0 dropout_7/dropout/Const:output:0*
T0*+
_output_shapes
:€€€€€€€€€2k
dropout_7/dropout/ShapeShapelstm_7/transpose_1:y:0*
T0*
_output_shapes
::нѕ§
.dropout_7/dropout/random_uniform/RandomUniformRandomUniform dropout_7/dropout/Shape:output:0*
T0*+
_output_shapes
:€€€€€€€€€2*
dtype0e
 dropout_7/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ќћћ>»
dropout_7/dropout/GreaterEqualGreaterEqual7dropout_7/dropout/random_uniform/RandomUniform:output:0)dropout_7/dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:€€€€€€€€€2^
dropout_7/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    њ
dropout_7/dropout/SelectV2SelectV2"dropout_7/dropout/GreaterEqual:z:0dropout_7/dropout/Mul:z:0"dropout_7/dropout/Const_1:output:0*
T0*+
_output_shapes
:€€€€€€€€€2m
lstm_8/ShapeShape#dropout_7/dropout/SelectV2:output:0*
T0*
_output_shapes
::нѕd
lstm_8/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: f
lstm_8/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:f
lstm_8/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ф
lstm_8/strided_sliceStridedSlicelstm_8/Shape:output:0#lstm_8/strided_slice/stack:output:0%lstm_8/strided_slice/stack_1:output:0%lstm_8/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskW
lstm_8/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
И
lstm_8/zeros/packedPacklstm_8/strided_slice:output:0lstm_8/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:W
lstm_8/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Б
lstm_8/zerosFilllstm_8/zeros/packed:output:0lstm_8/zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€
Y
lstm_8/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
М
lstm_8/zeros_1/packedPacklstm_8/strided_slice:output:0 lstm_8/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_8/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    З
lstm_8/zeros_1Filllstm_8/zeros_1/packed:output:0lstm_8/zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€
j
lstm_8/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ш
lstm_8/transpose	Transpose#dropout_7/dropout/SelectV2:output:0lstm_8/transpose/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€2`
lstm_8/Shape_1Shapelstm_8/transpose:y:0*
T0*
_output_shapes
::нѕf
lstm_8/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_8/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_8/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ю
lstm_8/strided_slice_1StridedSlicelstm_8/Shape_1:output:0%lstm_8/strided_slice_1/stack:output:0'lstm_8/strided_slice_1/stack_1:output:0'lstm_8/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskm
"lstm_8/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€…
lstm_8/TensorArrayV2TensorListReserve+lstm_8/TensorArrayV2/element_shape:output:0lstm_8/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Н
<lstm_8/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€2   х
.lstm_8/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_8/transpose:y:0Elstm_8/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“f
lstm_8/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_8/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_8/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:М
lstm_8/strided_slice_2StridedSlicelstm_8/transpose:y:0%lstm_8/strided_slice_2/stack:output:0'lstm_8/strided_slice_2/stack_1:output:0'lstm_8/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€2*
shrink_axis_maskЬ
)lstm_8/lstm_cell_14/MatMul/ReadVariableOpReadVariableOp2lstm_8_lstm_cell_14_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0™
lstm_8/lstm_cell_14/MatMulMatMullstm_8/strided_slice_2:output:01lstm_8/lstm_cell_14/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€(†
+lstm_8/lstm_cell_14/MatMul_1/ReadVariableOpReadVariableOp4lstm_8_lstm_cell_14_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0§
lstm_8/lstm_cell_14/MatMul_1MatMullstm_8/zeros:output:03lstm_8/lstm_cell_14/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€(†
lstm_8/lstm_cell_14/addAddV2$lstm_8/lstm_cell_14/MatMul:product:0&lstm_8/lstm_cell_14/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€(Ъ
*lstm_8/lstm_cell_14/BiasAdd/ReadVariableOpReadVariableOp3lstm_8_lstm_cell_14_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0©
lstm_8/lstm_cell_14/BiasAddBiasAddlstm_8/lstm_cell_14/add:z:02lstm_8/lstm_cell_14/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€(e
#lstm_8/lstm_cell_14/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :т
lstm_8/lstm_cell_14/splitSplit,lstm_8/lstm_cell_14/split/split_dim:output:0$lstm_8/lstm_cell_14/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€
:€€€€€€€€€
:€€€€€€€€€
:€€€€€€€€€
*
	num_split|
lstm_8/lstm_cell_14/SigmoidSigmoid"lstm_8/lstm_cell_14/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€
~
lstm_8/lstm_cell_14/Sigmoid_1Sigmoid"lstm_8/lstm_cell_14/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€
М
lstm_8/lstm_cell_14/mulMul!lstm_8/lstm_cell_14/Sigmoid_1:y:0lstm_8/zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€
v
lstm_8/lstm_cell_14/ReluRelu"lstm_8/lstm_cell_14/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€
Ы
lstm_8/lstm_cell_14/mul_1Mullstm_8/lstm_cell_14/Sigmoid:y:0&lstm_8/lstm_cell_14/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€
Р
lstm_8/lstm_cell_14/add_1AddV2lstm_8/lstm_cell_14/mul:z:0lstm_8/lstm_cell_14/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€
~
lstm_8/lstm_cell_14/Sigmoid_2Sigmoid"lstm_8/lstm_cell_14/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€
s
lstm_8/lstm_cell_14/Relu_1Relulstm_8/lstm_cell_14/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€
Я
lstm_8/lstm_cell_14/mul_2Mul!lstm_8/lstm_cell_14/Sigmoid_2:y:0(lstm_8/lstm_cell_14/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€
u
$lstm_8/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€
   e
#lstm_8/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Џ
lstm_8/TensorArrayV2_1TensorListReserve-lstm_8/TensorArrayV2_1/element_shape:output:0,lstm_8/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“M
lstm_8/timeConst*
_output_shapes
: *
dtype0*
value	B : j
lstm_8/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€[
lstm_8/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : в
lstm_8/whileWhile"lstm_8/while/loop_counter:output:0(lstm_8/while/maximum_iterations:output:0lstm_8/time:output:0lstm_8/TensorArrayV2_1:handle:0lstm_8/zeros:output:0lstm_8/zeros_1:output:0lstm_8/strided_slice_1:output:0>lstm_8/TensorArrayUnstack/TensorListFromTensor:output_handle:02lstm_8_lstm_cell_14_matmul_readvariableop_resource4lstm_8_lstm_cell_14_matmul_1_readvariableop_resource3lstm_8_lstm_cell_14_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€
:€€€€€€€€€
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *#
bodyR
lstm_8_while_body_78348*#
condR
lstm_8_while_cond_78347*K
output_shapes:
8: : : : :€€€€€€€€€
:€€€€€€€€€
: : : : : *
parallel_iterations И
7lstm_8/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€
   л
)lstm_8/TensorArrayV2Stack/TensorListStackTensorListStacklstm_8/while:output:3@lstm_8/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:€€€€€€€€€
*
element_dtype0*
num_elementso
lstm_8/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€h
lstm_8/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: h
lstm_8/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:™
lstm_8/strided_slice_3StridedSlice2lstm_8/TensorArrayV2Stack/TensorListStack:tensor:0%lstm_8/strided_slice_3/stack:output:0'lstm_8/strided_slice_3/stack_1:output:0'lstm_8/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€
*
shrink_axis_maskl
lstm_8/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ђ
lstm_8/transpose_1	Transpose2lstm_8/TensorArrayV2Stack/TensorListStack:tensor:0 lstm_8/transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€
b
lstm_8/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    \
dropout_8/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  †?С
dropout_8/dropout/MulMullstm_8/strided_slice_3:output:0 dropout_8/dropout/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€
t
dropout_8/dropout/ShapeShapelstm_8/strided_slice_3:output:0*
T0*
_output_shapes
::нѕ†
.dropout_8/dropout/random_uniform/RandomUniformRandomUniform dropout_8/dropout/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€
*
dtype0e
 dropout_8/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЌћL>ƒ
dropout_8/dropout/GreaterEqualGreaterEqual7dropout_8/dropout/random_uniform/RandomUniform:output:0)dropout_8/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€
^
dropout_8/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ї
dropout_8/dropout/SelectV2SelectV2"dropout_8/dropout/GreaterEqual:z:0dropout_8/dropout/Mul:z:0"dropout_8/dropout/Const_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€
Д
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0Ц
dense_2/MatMulMatMul#dropout_8/dropout/SelectV2:output:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€В
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0О
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€g
IdentityIdentitydense_2/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€…
NoOpNoOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp+^lstm_6/lstm_cell_12/BiasAdd/ReadVariableOp*^lstm_6/lstm_cell_12/MatMul/ReadVariableOp,^lstm_6/lstm_cell_12/MatMul_1/ReadVariableOp^lstm_6/while+^lstm_7/lstm_cell_13/BiasAdd/ReadVariableOp*^lstm_7/lstm_cell_13/MatMul/ReadVariableOp,^lstm_7/lstm_cell_13/MatMul_1/ReadVariableOp^lstm_7/while+^lstm_8/lstm_cell_14/BiasAdd/ReadVariableOp*^lstm_8/lstm_cell_14/MatMul/ReadVariableOp,^lstm_8/lstm_cell_14/MatMul_1/ReadVariableOp^lstm_8/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*\
_input_shapesK
I:€€€€€€€€€::: : : : : : : : : : : 2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp2X
*lstm_6/lstm_cell_12/BiasAdd/ReadVariableOp*lstm_6/lstm_cell_12/BiasAdd/ReadVariableOp2V
)lstm_6/lstm_cell_12/MatMul/ReadVariableOp)lstm_6/lstm_cell_12/MatMul/ReadVariableOp2Z
+lstm_6/lstm_cell_12/MatMul_1/ReadVariableOp+lstm_6/lstm_cell_12/MatMul_1/ReadVariableOp2
lstm_6/whilelstm_6/while2X
*lstm_7/lstm_cell_13/BiasAdd/ReadVariableOp*lstm_7/lstm_cell_13/BiasAdd/ReadVariableOp2V
)lstm_7/lstm_cell_13/MatMul/ReadVariableOp)lstm_7/lstm_cell_13/MatMul/ReadVariableOp2Z
+lstm_7/lstm_cell_13/MatMul_1/ReadVariableOp+lstm_7/lstm_cell_13/MatMul_1/ReadVariableOp2
lstm_7/whilelstm_7/while2X
*lstm_8/lstm_cell_14/BiasAdd/ReadVariableOp*lstm_8/lstm_cell_14/BiasAdd/ReadVariableOp2V
)lstm_8/lstm_cell_14/MatMul/ReadVariableOp)lstm_8/lstm_cell_14/MatMul/ReadVariableOp2Z
+lstm_8/lstm_cell_14/MatMul_1/ReadVariableOp+lstm_8/lstm_cell_14/MatMul_1/ReadVariableOp2
lstm_8/whilelstm_8/while:S O
+
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:($
"
_output_shapes
::($
"
_output_shapes
:
н8
ѕ
while_body_79418
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_12_matmul_readvariableop_resource_0:	РH
5while_lstm_cell_12_matmul_1_readvariableop_resource_0:	dРC
4while_lstm_cell_12_biasadd_readvariableop_resource_0:	Р
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_12_matmul_readvariableop_resource:	РF
3while_lstm_cell_12_matmul_1_readvariableop_resource:	dРA
2while_lstm_cell_12_biasadd_readvariableop_resource:	РИҐ)while/lstm_cell_12/BiasAdd/ReadVariableOpҐ(while/lstm_cell_12/MatMul/ReadVariableOpҐ*while/lstm_cell_12/MatMul_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ¶
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€*
element_dtype0Э
(while/lstm_cell_12/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_12_matmul_readvariableop_resource_0*
_output_shapes
:	Р*
dtype0Ї
while/lstm_cell_12/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_12/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Р°
*while/lstm_cell_12/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_12_matmul_1_readvariableop_resource_0*
_output_shapes
:	dР*
dtype0°
while/lstm_cell_12/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_12/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€РЮ
while/lstm_cell_12/addAddV2#while/lstm_cell_12/MatMul:product:0%while/lstm_cell_12/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€РЫ
)while/lstm_cell_12/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_12_biasadd_readvariableop_resource_0*
_output_shapes	
:Р*
dtype0І
while/lstm_cell_12/BiasAddBiasAddwhile/lstm_cell_12/add:z:01while/lstm_cell_12/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Рd
"while/lstm_cell_12/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :п
while/lstm_cell_12/splitSplit+while/lstm_cell_12/split/split_dim:output:0#while/lstm_cell_12/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€d:€€€€€€€€€d:€€€€€€€€€d:€€€€€€€€€d*
	num_splitz
while/lstm_cell_12/SigmoidSigmoid!while/lstm_cell_12/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€d|
while/lstm_cell_12/Sigmoid_1Sigmoid!while/lstm_cell_12/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€dЖ
while/lstm_cell_12/mulMul while/lstm_cell_12/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€dt
while/lstm_cell_12/ReluRelu!while/lstm_cell_12/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€dШ
while/lstm_cell_12/mul_1Mulwhile/lstm_cell_12/Sigmoid:y:0%while/lstm_cell_12/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€dН
while/lstm_cell_12/add_1AddV2while/lstm_cell_12/mul:z:0while/lstm_cell_12/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€d|
while/lstm_cell_12/Sigmoid_2Sigmoid!while/lstm_cell_12/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€dq
while/lstm_cell_12/Relu_1Reluwhile/lstm_cell_12/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€dЬ
while/lstm_cell_12/mul_2Mul while/lstm_cell_12/Sigmoid_2:y:0'while/lstm_cell_12/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€d≈
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_12/mul_2:z:0*
_output_shapes
: *
element_dtype0:йи“M
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
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_12/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€dy
while/Identity_5Identitywhile/lstm_cell_12/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€d–

while/NoOpNoOp*^while/lstm_cell_12/BiasAdd/ReadVariableOp)^while/lstm_cell_12/MatMul/ReadVariableOp+^while/lstm_cell_12/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_12_biasadd_readvariableop_resource4while_lstm_cell_12_biasadd_readvariableop_resource_0"l
3while_lstm_cell_12_matmul_1_readvariableop_resource5while_lstm_cell_12_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_12_matmul_readvariableop_resource3while_lstm_cell_12_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :€€€€€€€€€d:€€€€€€€€€d: : : : : 2V
)while/lstm_cell_12/BiasAdd/ReadVariableOp)while/lstm_cell_12/BiasAdd/ReadVariableOp2T
(while/lstm_cell_12/MatMul/ReadVariableOp(while/lstm_cell_12/MatMul/ReadVariableOp2X
*while/lstm_cell_12/MatMul_1/ReadVariableOp*while/lstm_cell_12/MatMul_1/ReadVariableOp:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€d:-)
'
_output_shapes
:€€€€€€€€€d:

_output_shapes
: :

_output_shapes
: 
Т	
Њ
while_cond_76920
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_76920___redundant_placeholder03
/while_while_cond_76920___redundant_placeholder13
/while_while_cond_76920___redundant_placeholder23
/while_while_cond_76920___redundant_placeholder3
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
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :€€€€€€€€€
:€€€€€€€€€
: :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€
:-)
'
_output_shapes
:€€€€€€€€€
:

_output_shapes
: :

_output_shapes
:
„
b
D__inference_dropout_8_layer_call_and_return_conditional_losses_80823

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:€€€€€€€€€
[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:€€€€€€€€€
"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€
:O K
'
_output_shapes
:€€€€€€€€€

 
_user_specified_nameinputs
И9
э
A__inference_lstm_8_layer_call_and_return_conditional_losses_76465

inputs$
lstm_cell_14_76381:2($
lstm_cell_14_76383:
( 
lstm_cell_14_76385:(
identityИҐ$lstm_cell_14/StatefulPartitionedCallҐwhileI
ShapeShapeinputs*
T0*
_output_shapes
::нѕ]
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
valueB:—
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
value	B :
s
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
:€€€€€€€€€
R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€
c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€2R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::нѕ_
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
valueB:џ
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
€€€€€€€€€і
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€2   а
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“_
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
valueB:й
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€2*
shrink_axis_maskс
$lstm_cell_14/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_14_76381lstm_cell_14_76383lstm_cell_14_76385*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:€€€€€€€€€
:€€€€€€€€€
:€€€€€€€€€
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_lstm_cell_14_layer_call_and_return_conditional_losses_76380n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€
   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :≈
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“F
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
€€€€€€€€€T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ≤
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_14_76381lstm_cell_14_76383lstm_cell_14_76385*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€
:€€€€€€€€€
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_76395*
condR
while_cond_76394*K
output_shapes:
8: : : : :€€€€€€€€€
:€€€€€€€€€
: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€
   ÷
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:€€€€€€€€€
*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€
*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ц
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€
[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€
u
NoOpNoOp%^lstm_cell_14/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€€€€€€€€€€2: : : 2L
$lstm_cell_14/StatefulPartitionedCall$lstm_cell_14/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€2
 
_user_specified_nameinputs
і

c
D__inference_dropout_7_layer_call_and_return_conditional_losses_76860

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU’?h
dropout/MulMulinputsdropout/Const:output:0*
T0*+
_output_shapes
:€€€€€€€€€2Q
dropout/ShapeShapeinputs*
T0*
_output_shapes
::нѕР
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*+
_output_shapes
:€€€€€€€€€2*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ќћћ>™
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:€€€€€€€€€2T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Ч
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*+
_output_shapes
:€€€€€€€€€2e
IdentityIdentitydropout/SelectV2:output:0*
T0*+
_output_shapes
:€€€€€€€€€2"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€2:S O
+
_output_shapes
:€€€€€€€€€2
 
_user_specified_nameinputs
€
b
)__inference_dropout_7_layer_call_fn_80150

inputs
identityИҐStatefulPartitionedCall√
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€2* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dropout_7_layer_call_and_return_conditional_losses_76860s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€222
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:€€€€€€€€€2
 
_user_specified_nameinputs
Т	
Њ
while_cond_76591
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_76591___redundant_placeholder03
/while_while_cond_76591___redundant_placeholder13
/while_while_cond_76591___redundant_placeholder23
/while_while_cond_76591___redundant_placeholder3
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
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :€€€€€€€€€d:€€€€€€€€€d: :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€d:-)
'
_output_shapes
:€€€€€€€€€d:

_output_shapes
: :

_output_shapes
:
ж
т
,__inference_lstm_cell_14_layer_call_fn_81072

inputs
states_0
states_1
unknown:2(
	unknown_0:
(
	unknown_1:(
identity

identity_1

identity_2ИҐStatefulPartitionedCallІ
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:€€€€€€€€€
:€€€€€€€€€
:€€€€€€€€€
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_lstm_cell_14_layer_call_and_return_conditional_losses_76380o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€
q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:€€€€€€€€€
q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:€€€€€€€€€
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:€€€€€€€€€2:€€€€€€€€€
:€€€€€€€€€
: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€2
 
_user_specified_nameinputs:QM
'
_output_shapes
:€€€€€€€€€

"
_user_specified_name
states_0:QM
'
_output_shapes
:€€€€€€€€€

"
_user_specified_name
states_1
і

c
D__inference_dropout_7_layer_call_and_return_conditional_losses_80167

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU’?h
dropout/MulMulinputsdropout/Const:output:0*
T0*+
_output_shapes
:€€€€€€€€€2Q
dropout/ShapeShapeinputs*
T0*
_output_shapes
::нѕР
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*+
_output_shapes
:€€€€€€€€€2*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ќћћ>™
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:€€€€€€€€€2T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Ч
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*+
_output_shapes
:€€€€€€€€€2e
IdentityIdentitydropout/SelectV2:output:0*
T0*+
_output_shapes
:€€€€€€€€€2"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€2:S O
+
_output_shapes
:€€€€€€€€€2
 
_user_specified_nameinputs
д

 
lstm_8_while_cond_78793*
&lstm_8_while_lstm_8_while_loop_counter0
,lstm_8_while_lstm_8_while_maximum_iterations
lstm_8_while_placeholder
lstm_8_while_placeholder_1
lstm_8_while_placeholder_2
lstm_8_while_placeholder_3,
(lstm_8_while_less_lstm_8_strided_slice_1A
=lstm_8_while_lstm_8_while_cond_78793___redundant_placeholder0A
=lstm_8_while_lstm_8_while_cond_78793___redundant_placeholder1A
=lstm_8_while_lstm_8_while_cond_78793___redundant_placeholder2A
=lstm_8_while_lstm_8_while_cond_78793___redundant_placeholder3
lstm_8_while_identity
~
lstm_8/while/LessLesslstm_8_while_placeholder(lstm_8_while_less_lstm_8_strided_slice_1*
T0*
_output_shapes
: Y
lstm_8/while/IdentityIdentitylstm_8/while/Less:z:0*
T0
*
_output_shapes
: "7
lstm_8_while_identitylstm_8/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :€€€€€€€€€
:€€€€€€€€€
: :::::Q M

_output_shapes
: 
3
_user_specified_namelstm_8/while/loop_counter:WS

_output_shapes
: 
9
_user_specified_name!lstm_8/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€
:-)
'
_output_shapes
:€€€€€€€€€
:

_output_shapes
: :

_output_shapes
:
д

 
lstm_7_while_cond_78652*
&lstm_7_while_lstm_7_while_loop_counter0
,lstm_7_while_lstm_7_while_maximum_iterations
lstm_7_while_placeholder
lstm_7_while_placeholder_1
lstm_7_while_placeholder_2
lstm_7_while_placeholder_3,
(lstm_7_while_less_lstm_7_strided_slice_1A
=lstm_7_while_lstm_7_while_cond_78652___redundant_placeholder0A
=lstm_7_while_lstm_7_while_cond_78652___redundant_placeholder1A
=lstm_7_while_lstm_7_while_cond_78652___redundant_placeholder2A
=lstm_7_while_lstm_7_while_cond_78652___redundant_placeholder3
lstm_7_while_identity
~
lstm_7/while/LessLesslstm_7_while_placeholder(lstm_7_while_less_lstm_7_strided_slice_1*
T0*
_output_shapes
: Y
lstm_7/while/IdentityIdentitylstm_7/while/Less:z:0*
T0
*
_output_shapes
: "7
lstm_7_while_identitylstm_7/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :€€€€€€€€€2:€€€€€€€€€2: :::::Q M

_output_shapes
: 
3
_user_specified_namelstm_7/while/loop_counter:WS

_output_shapes
: 
9
_user_specified_name!lstm_7/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€2:-)
'
_output_shapes
:€€€€€€€€€2:

_output_shapes
: :

_output_shapes
:
р
∞
&__inference_lstm_8_layer_call_fn_80205

inputs
unknown:2(
	unknown_0:
(
	unknown_1:(
identityИҐStatefulPartitionedCallг
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_lstm_8_layer_call_and_return_conditional_losses_77006o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:€€€€€€€€€2
 
_user_specified_nameinputs
з
b
D__inference_dropout_7_layer_call_and_return_conditional_losses_77365

inputs

identity_1R
IdentityIdentityinputs*
T0*+
_output_shapes
:€€€€€€€€€2_

Identity_1IdentityIdentity:output:0*
T0*+
_output_shapes
:€€€€€€€€€2"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€2:S O
+
_output_shapes
:€€€€€€€€€2
 
_user_specified_nameinputs
№
Е
G__inference_lstm_cell_12_layer_call_and_return_conditional_losses_80940

inputs
states_0
states_11
matmul_readvariableop_resource:	Р3
 matmul_1_readvariableop_resource:	dР.
biasadd_readvariableop_resource:	Р
identity

identity_1

identity_2ИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpҐMatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	Р*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Рy
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	dР*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Рe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€Рs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:Р*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€РQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ґ
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€d:€€€€€€€€€d:€€€€€€€€€d:€€€€€€€€€d*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:€€€€€€€€€dV
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:€€€€€€€€€dU
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:€€€€€€€€€dN
ReluRelusplit:output:2*
T0*'
_output_shapes
:€€€€€€€€€d_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€dT
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€dV
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:€€€€€€€€€dK
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€dc
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€dX
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€dZ

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€dZ

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€dС
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:€€€€€€€€€:€€€€€€€€€d:€€€€€€€€€d: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:QM
'
_output_shapes
:€€€€€€€€€d
"
_user_specified_name
states_0:QM
'
_output_shapes
:€€€€€€€€€d
"
_user_specified_name
states_1
н8
ѕ
while_body_79275
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_12_matmul_readvariableop_resource_0:	РH
5while_lstm_cell_12_matmul_1_readvariableop_resource_0:	dРC
4while_lstm_cell_12_biasadd_readvariableop_resource_0:	Р
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_12_matmul_readvariableop_resource:	РF
3while_lstm_cell_12_matmul_1_readvariableop_resource:	dРA
2while_lstm_cell_12_biasadd_readvariableop_resource:	РИҐ)while/lstm_cell_12/BiasAdd/ReadVariableOpҐ(while/lstm_cell_12/MatMul/ReadVariableOpҐ*while/lstm_cell_12/MatMul_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ¶
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€*
element_dtype0Э
(while/lstm_cell_12/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_12_matmul_readvariableop_resource_0*
_output_shapes
:	Р*
dtype0Ї
while/lstm_cell_12/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_12/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Р°
*while/lstm_cell_12/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_12_matmul_1_readvariableop_resource_0*
_output_shapes
:	dР*
dtype0°
while/lstm_cell_12/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_12/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€РЮ
while/lstm_cell_12/addAddV2#while/lstm_cell_12/MatMul:product:0%while/lstm_cell_12/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€РЫ
)while/lstm_cell_12/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_12_biasadd_readvariableop_resource_0*
_output_shapes	
:Р*
dtype0І
while/lstm_cell_12/BiasAddBiasAddwhile/lstm_cell_12/add:z:01while/lstm_cell_12/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Рd
"while/lstm_cell_12/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :п
while/lstm_cell_12/splitSplit+while/lstm_cell_12/split/split_dim:output:0#while/lstm_cell_12/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€d:€€€€€€€€€d:€€€€€€€€€d:€€€€€€€€€d*
	num_splitz
while/lstm_cell_12/SigmoidSigmoid!while/lstm_cell_12/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€d|
while/lstm_cell_12/Sigmoid_1Sigmoid!while/lstm_cell_12/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€dЖ
while/lstm_cell_12/mulMul while/lstm_cell_12/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€dt
while/lstm_cell_12/ReluRelu!while/lstm_cell_12/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€dШ
while/lstm_cell_12/mul_1Mulwhile/lstm_cell_12/Sigmoid:y:0%while/lstm_cell_12/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€dН
while/lstm_cell_12/add_1AddV2while/lstm_cell_12/mul:z:0while/lstm_cell_12/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€d|
while/lstm_cell_12/Sigmoid_2Sigmoid!while/lstm_cell_12/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€dq
while/lstm_cell_12/Relu_1Reluwhile/lstm_cell_12/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€dЬ
while/lstm_cell_12/mul_2Mul while/lstm_cell_12/Sigmoid_2:y:0'while/lstm_cell_12/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€d≈
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_12/mul_2:z:0*
_output_shapes
: *
element_dtype0:йи“M
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
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_12/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€dy
while/Identity_5Identitywhile/lstm_cell_12/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€d–

while/NoOpNoOp*^while/lstm_cell_12/BiasAdd/ReadVariableOp)^while/lstm_cell_12/MatMul/ReadVariableOp+^while/lstm_cell_12/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_12_biasadd_readvariableop_resource4while_lstm_cell_12_biasadd_readvariableop_resource_0"l
3while_lstm_cell_12_matmul_1_readvariableop_resource5while_lstm_cell_12_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_12_matmul_readvariableop_resource3while_lstm_cell_12_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :€€€€€€€€€d:€€€€€€€€€d: : : : : 2V
)while/lstm_cell_12/BiasAdd/ReadVariableOp)while/lstm_cell_12/BiasAdd/ReadVariableOp2T
(while/lstm_cell_12/MatMul/ReadVariableOp(while/lstm_cell_12/MatMul/ReadVariableOp2X
*while/lstm_cell_12/MatMul_1/ReadVariableOp*while/lstm_cell_12/MatMul_1/ReadVariableOp:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€d:-)
'
_output_shapes
:€€€€€€€€€d:

_output_shapes
: :

_output_shapes
: 
Т	
Њ
while_cond_79131
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_79131___redundant_placeholder03
/while_while_cond_79131___redundant_placeholder13
/while_while_cond_79131___redundant_placeholder23
/while_while_cond_79131___redundant_placeholder3
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
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :€€€€€€€€€d:€€€€€€€€€d: :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€d:-)
'
_output_shapes
:€€€€€€€€€d:

_output_shapes
: :

_output_shapes
:
Ј#
№
while_body_76042
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0-
while_lstm_cell_13_76066_0:	d»-
while_lstm_cell_13_76068_0:	2»)
while_lstm_cell_13_76070_0:	»
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor+
while_lstm_cell_13_76066:	d»+
while_lstm_cell_13_76068:	2»'
while_lstm_cell_13_76070:	»ИҐ*while/lstm_cell_13/StatefulPartitionedCallИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€d   ¶
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€d*
element_dtype0ѓ
*while/lstm_cell_13/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_13_76066_0while_lstm_cell_13_76068_0while_lstm_cell_13_76070_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:€€€€€€€€€2:€€€€€€€€€2:€€€€€€€€€2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_lstm_cell_13_layer_call_and_return_conditional_losses_76028№
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_13/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:йи“M
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
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: Р
while/Identity_4Identity3while/lstm_cell_13/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€2Р
while/Identity_5Identity3while/lstm_cell_13/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€2y

while/NoOpNoOp+^while/lstm_cell_13/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"6
while_lstm_cell_13_76066while_lstm_cell_13_76066_0"6
while_lstm_cell_13_76068while_lstm_cell_13_76068_0"6
while_lstm_cell_13_76070while_lstm_cell_13_76070_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :€€€€€€€€€2:€€€€€€€€€2: : : : : 2X
*while/lstm_cell_13/StatefulPartitionedCall*while/lstm_cell_13/StatefulPartitionedCall:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€2:-)
'
_output_shapes
:€€€€€€€€€2:

_output_shapes
: :

_output_shapes
: 
€
b
)__inference_dropout_6_layer_call_fn_79507

inputs
identityИҐStatefulPartitionedCall√
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€d* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dropout_6_layer_call_and_return_conditional_losses_76696s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€d`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€d22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:€€€€€€€€€d
 
_user_specified_nameinputs
≥B
©

lstm_8_while_body_78794*
&lstm_8_while_lstm_8_while_loop_counter0
,lstm_8_while_lstm_8_while_maximum_iterations
lstm_8_while_placeholder
lstm_8_while_placeholder_1
lstm_8_while_placeholder_2
lstm_8_while_placeholder_3)
%lstm_8_while_lstm_8_strided_slice_1_0e
alstm_8_while_tensorarrayv2read_tensorlistgetitem_lstm_8_tensorarrayunstack_tensorlistfromtensor_0L
:lstm_8_while_lstm_cell_14_matmul_readvariableop_resource_0:2(N
<lstm_8_while_lstm_cell_14_matmul_1_readvariableop_resource_0:
(I
;lstm_8_while_lstm_cell_14_biasadd_readvariableop_resource_0:(
lstm_8_while_identity
lstm_8_while_identity_1
lstm_8_while_identity_2
lstm_8_while_identity_3
lstm_8_while_identity_4
lstm_8_while_identity_5'
#lstm_8_while_lstm_8_strided_slice_1c
_lstm_8_while_tensorarrayv2read_tensorlistgetitem_lstm_8_tensorarrayunstack_tensorlistfromtensorJ
8lstm_8_while_lstm_cell_14_matmul_readvariableop_resource:2(L
:lstm_8_while_lstm_cell_14_matmul_1_readvariableop_resource:
(G
9lstm_8_while_lstm_cell_14_biasadd_readvariableop_resource:(ИҐ0lstm_8/while/lstm_cell_14/BiasAdd/ReadVariableOpҐ/lstm_8/while/lstm_cell_14/MatMul/ReadVariableOpҐ1lstm_8/while/lstm_cell_14/MatMul_1/ReadVariableOpП
>lstm_8/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€2   …
0lstm_8/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemalstm_8_while_tensorarrayv2read_tensorlistgetitem_lstm_8_tensorarrayunstack_tensorlistfromtensor_0lstm_8_while_placeholderGlstm_8/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€2*
element_dtype0™
/lstm_8/while/lstm_cell_14/MatMul/ReadVariableOpReadVariableOp:lstm_8_while_lstm_cell_14_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0ќ
 lstm_8/while/lstm_cell_14/MatMulMatMul7lstm_8/while/TensorArrayV2Read/TensorListGetItem:item:07lstm_8/while/lstm_cell_14/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€(Ѓ
1lstm_8/while/lstm_cell_14/MatMul_1/ReadVariableOpReadVariableOp<lstm_8_while_lstm_cell_14_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0µ
"lstm_8/while/lstm_cell_14/MatMul_1MatMullstm_8_while_placeholder_29lstm_8/while/lstm_cell_14/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€(≤
lstm_8/while/lstm_cell_14/addAddV2*lstm_8/while/lstm_cell_14/MatMul:product:0,lstm_8/while/lstm_cell_14/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€(®
0lstm_8/while/lstm_cell_14/BiasAdd/ReadVariableOpReadVariableOp;lstm_8_while_lstm_cell_14_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0ї
!lstm_8/while/lstm_cell_14/BiasAddBiasAdd!lstm_8/while/lstm_cell_14/add:z:08lstm_8/while/lstm_cell_14/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€(k
)lstm_8/while/lstm_cell_14/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Д
lstm_8/while/lstm_cell_14/splitSplit2lstm_8/while/lstm_cell_14/split/split_dim:output:0*lstm_8/while/lstm_cell_14/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€
:€€€€€€€€€
:€€€€€€€€€
:€€€€€€€€€
*
	num_splitИ
!lstm_8/while/lstm_cell_14/SigmoidSigmoid(lstm_8/while/lstm_cell_14/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€
К
#lstm_8/while/lstm_cell_14/Sigmoid_1Sigmoid(lstm_8/while/lstm_cell_14/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€
Ы
lstm_8/while/lstm_cell_14/mulMul'lstm_8/while/lstm_cell_14/Sigmoid_1:y:0lstm_8_while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€
В
lstm_8/while/lstm_cell_14/ReluRelu(lstm_8/while/lstm_cell_14/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€
≠
lstm_8/while/lstm_cell_14/mul_1Mul%lstm_8/while/lstm_cell_14/Sigmoid:y:0,lstm_8/while/lstm_cell_14/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€
Ґ
lstm_8/while/lstm_cell_14/add_1AddV2!lstm_8/while/lstm_cell_14/mul:z:0#lstm_8/while/lstm_cell_14/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€
К
#lstm_8/while/lstm_cell_14/Sigmoid_2Sigmoid(lstm_8/while/lstm_cell_14/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€

 lstm_8/while/lstm_cell_14/Relu_1Relu#lstm_8/while/lstm_cell_14/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€
±
lstm_8/while/lstm_cell_14/mul_2Mul'lstm_8/while/lstm_cell_14/Sigmoid_2:y:0.lstm_8/while/lstm_cell_14/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€
y
7lstm_8/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : Й
1lstm_8/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_8_while_placeholder_1@lstm_8/while/TensorArrayV2Write/TensorListSetItem/index:output:0#lstm_8/while/lstm_cell_14/mul_2:z:0*
_output_shapes
: *
element_dtype0:йи“T
lstm_8/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :q
lstm_8/while/addAddV2lstm_8_while_placeholderlstm_8/while/add/y:output:0*
T0*
_output_shapes
: V
lstm_8/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :Г
lstm_8/while/add_1AddV2&lstm_8_while_lstm_8_while_loop_counterlstm_8/while/add_1/y:output:0*
T0*
_output_shapes
: n
lstm_8/while/IdentityIdentitylstm_8/while/add_1:z:0^lstm_8/while/NoOp*
T0*
_output_shapes
: Ж
lstm_8/while/Identity_1Identity,lstm_8_while_lstm_8_while_maximum_iterations^lstm_8/while/NoOp*
T0*
_output_shapes
: n
lstm_8/while/Identity_2Identitylstm_8/while/add:z:0^lstm_8/while/NoOp*
T0*
_output_shapes
: Ы
lstm_8/while/Identity_3IdentityAlstm_8/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_8/while/NoOp*
T0*
_output_shapes
: О
lstm_8/while/Identity_4Identity#lstm_8/while/lstm_cell_14/mul_2:z:0^lstm_8/while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€
О
lstm_8/while/Identity_5Identity#lstm_8/while/lstm_cell_14/add_1:z:0^lstm_8/while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€
м
lstm_8/while/NoOpNoOp1^lstm_8/while/lstm_cell_14/BiasAdd/ReadVariableOp0^lstm_8/while/lstm_cell_14/MatMul/ReadVariableOp2^lstm_8/while/lstm_cell_14/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "7
lstm_8_while_identitylstm_8/while/Identity:output:0";
lstm_8_while_identity_1 lstm_8/while/Identity_1:output:0";
lstm_8_while_identity_2 lstm_8/while/Identity_2:output:0";
lstm_8_while_identity_3 lstm_8/while/Identity_3:output:0";
lstm_8_while_identity_4 lstm_8/while/Identity_4:output:0";
lstm_8_while_identity_5 lstm_8/while/Identity_5:output:0"L
#lstm_8_while_lstm_8_strided_slice_1%lstm_8_while_lstm_8_strided_slice_1_0"x
9lstm_8_while_lstm_cell_14_biasadd_readvariableop_resource;lstm_8_while_lstm_cell_14_biasadd_readvariableop_resource_0"z
:lstm_8_while_lstm_cell_14_matmul_1_readvariableop_resource<lstm_8_while_lstm_cell_14_matmul_1_readvariableop_resource_0"v
8lstm_8_while_lstm_cell_14_matmul_readvariableop_resource:lstm_8_while_lstm_cell_14_matmul_readvariableop_resource_0"ƒ
_lstm_8_while_tensorarrayv2read_tensorlistgetitem_lstm_8_tensorarrayunstack_tensorlistfromtensoralstm_8_while_tensorarrayv2read_tensorlistgetitem_lstm_8_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :€€€€€€€€€
:€€€€€€€€€
: : : : : 2d
0lstm_8/while/lstm_cell_14/BiasAdd/ReadVariableOp0lstm_8/while/lstm_cell_14/BiasAdd/ReadVariableOp2b
/lstm_8/while/lstm_cell_14/MatMul/ReadVariableOp/lstm_8/while/lstm_cell_14/MatMul/ReadVariableOp2f
1lstm_8/while/lstm_cell_14/MatMul_1/ReadVariableOp1lstm_8/while/lstm_cell_14/MatMul_1/ReadVariableOp:Q M

_output_shapes
: 
3
_user_specified_namelstm_8/while/loop_counter:WS

_output_shapes
: 
9
_user_specified_name!lstm_8/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€
:-)
'
_output_shapes
:€€€€€€€€€
:

_output_shapes
: :

_output_shapes
: 
н8
ѕ
while_body_78989
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_12_matmul_readvariableop_resource_0:	РH
5while_lstm_cell_12_matmul_1_readvariableop_resource_0:	dРC
4while_lstm_cell_12_biasadd_readvariableop_resource_0:	Р
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_12_matmul_readvariableop_resource:	РF
3while_lstm_cell_12_matmul_1_readvariableop_resource:	dРA
2while_lstm_cell_12_biasadd_readvariableop_resource:	РИҐ)while/lstm_cell_12/BiasAdd/ReadVariableOpҐ(while/lstm_cell_12/MatMul/ReadVariableOpҐ*while/lstm_cell_12/MatMul_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ¶
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€*
element_dtype0Э
(while/lstm_cell_12/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_12_matmul_readvariableop_resource_0*
_output_shapes
:	Р*
dtype0Ї
while/lstm_cell_12/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_12/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Р°
*while/lstm_cell_12/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_12_matmul_1_readvariableop_resource_0*
_output_shapes
:	dР*
dtype0°
while/lstm_cell_12/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_12/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€РЮ
while/lstm_cell_12/addAddV2#while/lstm_cell_12/MatMul:product:0%while/lstm_cell_12/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€РЫ
)while/lstm_cell_12/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_12_biasadd_readvariableop_resource_0*
_output_shapes	
:Р*
dtype0І
while/lstm_cell_12/BiasAddBiasAddwhile/lstm_cell_12/add:z:01while/lstm_cell_12/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Рd
"while/lstm_cell_12/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :п
while/lstm_cell_12/splitSplit+while/lstm_cell_12/split/split_dim:output:0#while/lstm_cell_12/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€d:€€€€€€€€€d:€€€€€€€€€d:€€€€€€€€€d*
	num_splitz
while/lstm_cell_12/SigmoidSigmoid!while/lstm_cell_12/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€d|
while/lstm_cell_12/Sigmoid_1Sigmoid!while/lstm_cell_12/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€dЖ
while/lstm_cell_12/mulMul while/lstm_cell_12/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€dt
while/lstm_cell_12/ReluRelu!while/lstm_cell_12/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€dШ
while/lstm_cell_12/mul_1Mulwhile/lstm_cell_12/Sigmoid:y:0%while/lstm_cell_12/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€dН
while/lstm_cell_12/add_1AddV2while/lstm_cell_12/mul:z:0while/lstm_cell_12/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€d|
while/lstm_cell_12/Sigmoid_2Sigmoid!while/lstm_cell_12/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€dq
while/lstm_cell_12/Relu_1Reluwhile/lstm_cell_12/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€dЬ
while/lstm_cell_12/mul_2Mul while/lstm_cell_12/Sigmoid_2:y:0'while/lstm_cell_12/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€d≈
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_12/mul_2:z:0*
_output_shapes
: *
element_dtype0:йи“M
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
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_12/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€dy
while/Identity_5Identitywhile/lstm_cell_12/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€d–

while/NoOpNoOp*^while/lstm_cell_12/BiasAdd/ReadVariableOp)^while/lstm_cell_12/MatMul/ReadVariableOp+^while/lstm_cell_12/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_12_biasadd_readvariableop_resource4while_lstm_cell_12_biasadd_readvariableop_resource_0"l
3while_lstm_cell_12_matmul_1_readvariableop_resource5while_lstm_cell_12_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_12_matmul_readvariableop_resource3while_lstm_cell_12_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :€€€€€€€€€d:€€€€€€€€€d: : : : : 2V
)while/lstm_cell_12/BiasAdd/ReadVariableOp)while/lstm_cell_12/BiasAdd/ReadVariableOp2T
(while/lstm_cell_12/MatMul/ReadVariableOp(while/lstm_cell_12/MatMul/ReadVariableOp2X
*while/lstm_cell_12/MatMul_1/ReadVariableOp*while/lstm_cell_12/MatMul_1/ReadVariableOp:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€d:-)
'
_output_shapes
:€€€€€€€€€d:

_output_shapes
: :

_output_shapes
: 
ёP
ѕ
$sequential_2_lstm_7_while_body_75236D
@sequential_2_lstm_7_while_sequential_2_lstm_7_while_loop_counterJ
Fsequential_2_lstm_7_while_sequential_2_lstm_7_while_maximum_iterations)
%sequential_2_lstm_7_while_placeholder+
'sequential_2_lstm_7_while_placeholder_1+
'sequential_2_lstm_7_while_placeholder_2+
'sequential_2_lstm_7_while_placeholder_3C
?sequential_2_lstm_7_while_sequential_2_lstm_7_strided_slice_1_0
{sequential_2_lstm_7_while_tensorarrayv2read_tensorlistgetitem_sequential_2_lstm_7_tensorarrayunstack_tensorlistfromtensor_0Z
Gsequential_2_lstm_7_while_lstm_cell_13_matmul_readvariableop_resource_0:	d»\
Isequential_2_lstm_7_while_lstm_cell_13_matmul_1_readvariableop_resource_0:	2»W
Hsequential_2_lstm_7_while_lstm_cell_13_biasadd_readvariableop_resource_0:	»&
"sequential_2_lstm_7_while_identity(
$sequential_2_lstm_7_while_identity_1(
$sequential_2_lstm_7_while_identity_2(
$sequential_2_lstm_7_while_identity_3(
$sequential_2_lstm_7_while_identity_4(
$sequential_2_lstm_7_while_identity_5A
=sequential_2_lstm_7_while_sequential_2_lstm_7_strided_slice_1}
ysequential_2_lstm_7_while_tensorarrayv2read_tensorlistgetitem_sequential_2_lstm_7_tensorarrayunstack_tensorlistfromtensorX
Esequential_2_lstm_7_while_lstm_cell_13_matmul_readvariableop_resource:	d»Z
Gsequential_2_lstm_7_while_lstm_cell_13_matmul_1_readvariableop_resource:	2»U
Fsequential_2_lstm_7_while_lstm_cell_13_biasadd_readvariableop_resource:	»ИҐ=sequential_2/lstm_7/while/lstm_cell_13/BiasAdd/ReadVariableOpҐ<sequential_2/lstm_7/while/lstm_cell_13/MatMul/ReadVariableOpҐ>sequential_2/lstm_7/while/lstm_cell_13/MatMul_1/ReadVariableOpЬ
Ksequential_2/lstm_7/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€d   К
=sequential_2/lstm_7/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem{sequential_2_lstm_7_while_tensorarrayv2read_tensorlistgetitem_sequential_2_lstm_7_tensorarrayunstack_tensorlistfromtensor_0%sequential_2_lstm_7_while_placeholderTsequential_2/lstm_7/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€d*
element_dtype0≈
<sequential_2/lstm_7/while/lstm_cell_13/MatMul/ReadVariableOpReadVariableOpGsequential_2_lstm_7_while_lstm_cell_13_matmul_readvariableop_resource_0*
_output_shapes
:	d»*
dtype0ц
-sequential_2/lstm_7/while/lstm_cell_13/MatMulMatMulDsequential_2/lstm_7/while/TensorArrayV2Read/TensorListGetItem:item:0Dsequential_2/lstm_7/while/lstm_cell_13/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€»…
>sequential_2/lstm_7/while/lstm_cell_13/MatMul_1/ReadVariableOpReadVariableOpIsequential_2_lstm_7_while_lstm_cell_13_matmul_1_readvariableop_resource_0*
_output_shapes
:	2»*
dtype0Ё
/sequential_2/lstm_7/while/lstm_cell_13/MatMul_1MatMul'sequential_2_lstm_7_while_placeholder_2Fsequential_2/lstm_7/while/lstm_cell_13/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€»Џ
*sequential_2/lstm_7/while/lstm_cell_13/addAddV27sequential_2/lstm_7/while/lstm_cell_13/MatMul:product:09sequential_2/lstm_7/while/lstm_cell_13/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€»√
=sequential_2/lstm_7/while/lstm_cell_13/BiasAdd/ReadVariableOpReadVariableOpHsequential_2_lstm_7_while_lstm_cell_13_biasadd_readvariableop_resource_0*
_output_shapes	
:»*
dtype0г
.sequential_2/lstm_7/while/lstm_cell_13/BiasAddBiasAdd.sequential_2/lstm_7/while/lstm_cell_13/add:z:0Esequential_2/lstm_7/while/lstm_cell_13/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€»x
6sequential_2/lstm_7/while/lstm_cell_13/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ђ
,sequential_2/lstm_7/while/lstm_cell_13/splitSplit?sequential_2/lstm_7/while/lstm_cell_13/split/split_dim:output:07sequential_2/lstm_7/while/lstm_cell_13/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€2:€€€€€€€€€2:€€€€€€€€€2:€€€€€€€€€2*
	num_splitҐ
.sequential_2/lstm_7/while/lstm_cell_13/SigmoidSigmoid5sequential_2/lstm_7/while/lstm_cell_13/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€2§
0sequential_2/lstm_7/while/lstm_cell_13/Sigmoid_1Sigmoid5sequential_2/lstm_7/while/lstm_cell_13/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€2¬
*sequential_2/lstm_7/while/lstm_cell_13/mulMul4sequential_2/lstm_7/while/lstm_cell_13/Sigmoid_1:y:0'sequential_2_lstm_7_while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€2Ь
+sequential_2/lstm_7/while/lstm_cell_13/ReluRelu5sequential_2/lstm_7/while/lstm_cell_13/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€2‘
,sequential_2/lstm_7/while/lstm_cell_13/mul_1Mul2sequential_2/lstm_7/while/lstm_cell_13/Sigmoid:y:09sequential_2/lstm_7/while/lstm_cell_13/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€2…
,sequential_2/lstm_7/while/lstm_cell_13/add_1AddV2.sequential_2/lstm_7/while/lstm_cell_13/mul:z:00sequential_2/lstm_7/while/lstm_cell_13/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€2§
0sequential_2/lstm_7/while/lstm_cell_13/Sigmoid_2Sigmoid5sequential_2/lstm_7/while/lstm_cell_13/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€2Щ
-sequential_2/lstm_7/while/lstm_cell_13/Relu_1Relu0sequential_2/lstm_7/while/lstm_cell_13/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€2Ў
,sequential_2/lstm_7/while/lstm_cell_13/mul_2Mul4sequential_2/lstm_7/while/lstm_cell_13/Sigmoid_2:y:0;sequential_2/lstm_7/while/lstm_cell_13/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€2Х
>sequential_2/lstm_7/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem'sequential_2_lstm_7_while_placeholder_1%sequential_2_lstm_7_while_placeholder0sequential_2/lstm_7/while/lstm_cell_13/mul_2:z:0*
_output_shapes
: *
element_dtype0:йи“a
sequential_2/lstm_7/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :Ш
sequential_2/lstm_7/while/addAddV2%sequential_2_lstm_7_while_placeholder(sequential_2/lstm_7/while/add/y:output:0*
T0*
_output_shapes
: c
!sequential_2/lstm_7/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :Ј
sequential_2/lstm_7/while/add_1AddV2@sequential_2_lstm_7_while_sequential_2_lstm_7_while_loop_counter*sequential_2/lstm_7/while/add_1/y:output:0*
T0*
_output_shapes
: Х
"sequential_2/lstm_7/while/IdentityIdentity#sequential_2/lstm_7/while/add_1:z:0^sequential_2/lstm_7/while/NoOp*
T0*
_output_shapes
: Ї
$sequential_2/lstm_7/while/Identity_1IdentityFsequential_2_lstm_7_while_sequential_2_lstm_7_while_maximum_iterations^sequential_2/lstm_7/while/NoOp*
T0*
_output_shapes
: Х
$sequential_2/lstm_7/while/Identity_2Identity!sequential_2/lstm_7/while/add:z:0^sequential_2/lstm_7/while/NoOp*
T0*
_output_shapes
: ¬
$sequential_2/lstm_7/while/Identity_3IdentityNsequential_2/lstm_7/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^sequential_2/lstm_7/while/NoOp*
T0*
_output_shapes
: µ
$sequential_2/lstm_7/while/Identity_4Identity0sequential_2/lstm_7/while/lstm_cell_13/mul_2:z:0^sequential_2/lstm_7/while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€2µ
$sequential_2/lstm_7/while/Identity_5Identity0sequential_2/lstm_7/while/lstm_cell_13/add_1:z:0^sequential_2/lstm_7/while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€2†
sequential_2/lstm_7/while/NoOpNoOp>^sequential_2/lstm_7/while/lstm_cell_13/BiasAdd/ReadVariableOp=^sequential_2/lstm_7/while/lstm_cell_13/MatMul/ReadVariableOp?^sequential_2/lstm_7/while/lstm_cell_13/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Q
"sequential_2_lstm_7_while_identity+sequential_2/lstm_7/while/Identity:output:0"U
$sequential_2_lstm_7_while_identity_1-sequential_2/lstm_7/while/Identity_1:output:0"U
$sequential_2_lstm_7_while_identity_2-sequential_2/lstm_7/while/Identity_2:output:0"U
$sequential_2_lstm_7_while_identity_3-sequential_2/lstm_7/while/Identity_3:output:0"U
$sequential_2_lstm_7_while_identity_4-sequential_2/lstm_7/while/Identity_4:output:0"U
$sequential_2_lstm_7_while_identity_5-sequential_2/lstm_7/while/Identity_5:output:0"Т
Fsequential_2_lstm_7_while_lstm_cell_13_biasadd_readvariableop_resourceHsequential_2_lstm_7_while_lstm_cell_13_biasadd_readvariableop_resource_0"Ф
Gsequential_2_lstm_7_while_lstm_cell_13_matmul_1_readvariableop_resourceIsequential_2_lstm_7_while_lstm_cell_13_matmul_1_readvariableop_resource_0"Р
Esequential_2_lstm_7_while_lstm_cell_13_matmul_readvariableop_resourceGsequential_2_lstm_7_while_lstm_cell_13_matmul_readvariableop_resource_0"А
=sequential_2_lstm_7_while_sequential_2_lstm_7_strided_slice_1?sequential_2_lstm_7_while_sequential_2_lstm_7_strided_slice_1_0"ш
ysequential_2_lstm_7_while_tensorarrayv2read_tensorlistgetitem_sequential_2_lstm_7_tensorarrayunstack_tensorlistfromtensor{sequential_2_lstm_7_while_tensorarrayv2read_tensorlistgetitem_sequential_2_lstm_7_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :€€€€€€€€€2:€€€€€€€€€2: : : : : 2~
=sequential_2/lstm_7/while/lstm_cell_13/BiasAdd/ReadVariableOp=sequential_2/lstm_7/while/lstm_cell_13/BiasAdd/ReadVariableOp2|
<sequential_2/lstm_7/while/lstm_cell_13/MatMul/ReadVariableOp<sequential_2/lstm_7/while/lstm_cell_13/MatMul/ReadVariableOp2А
>sequential_2/lstm_7/while/lstm_cell_13/MatMul_1/ReadVariableOp>sequential_2/lstm_7/while/lstm_cell_13/MatMul_1/ReadVariableOp:^ Z

_output_shapes
: 
@
_user_specified_name(&sequential_2/lstm_7/while/loop_counter:d`

_output_shapes
: 
F
_user_specified_name.,sequential_2/lstm_7/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€2:-)
'
_output_shapes
:€€€€€€€€€2:

_output_shapes
: :

_output_shapes
: 
й
х
,__inference_lstm_cell_12_layer_call_fn_80876

inputs
states_0
states_1
unknown:	Р
	unknown_0:	dР
	unknown_1:	Р
identity

identity_1

identity_2ИҐStatefulPartitionedCallІ
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:€€€€€€€€€d:€€€€€€€€€d:€€€€€€€€€d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_lstm_cell_12_layer_call_and_return_conditional_losses_75678o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€dq

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:€€€€€€€€€dq

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:€€€€€€€€€d`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:€€€€€€€€€:€€€€€€€€€d:€€€€€€€€€d: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:QM
'
_output_shapes
:€€€€€€€€€d
"
_user_specified_name
states_0:QM
'
_output_shapes
:€€€€€€€€€d
"
_user_specified_name
states_1
Т	
Њ
while_cond_78988
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_78988___redundant_placeholder03
/while_while_cond_78988___redundant_placeholder13
/while_while_cond_78988___redundant_placeholder23
/while_while_cond_78988___redundant_placeholder3
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
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :€€€€€€€€€d:€€€€€€€€€d: :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€d:-)
'
_output_shapes
:€€€€€€€€€d:

_output_shapes
: :

_output_shapes
:
й
х
,__inference_lstm_cell_13_layer_call_fn_80974

inputs
states_0
states_1
unknown:	d»
	unknown_0:	2»
	unknown_1:	»
identity

identity_1

identity_2ИҐStatefulPartitionedCallІ
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:€€€€€€€€€2:€€€€€€€€€2:€€€€€€€€€2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_lstm_cell_13_layer_call_and_return_conditional_losses_76028o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€2q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:€€€€€€€€€2q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:€€€€€€€€€2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:€€€€€€€€€d:€€€€€€€€€2:€€€€€€€€€2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€d
 
_user_specified_nameinputs:QM
'
_output_shapes
:€€€€€€€€€2
"
_user_specified_name
states_0:QM
'
_output_shapes
:€€€€€€€€€2
"
_user_specified_name
states_1
ЈK
Ц
A__inference_lstm_8_layer_call_and_return_conditional_losses_80796

inputs=
+lstm_cell_14_matmul_readvariableop_resource:2(?
-lstm_cell_14_matmul_1_readvariableop_resource:
(:
,lstm_cell_14_biasadd_readvariableop_resource:(
identityИҐ#lstm_cell_14/BiasAdd/ReadVariableOpҐ"lstm_cell_14/MatMul/ReadVariableOpҐ$lstm_cell_14/MatMul_1/ReadVariableOpҐwhileI
ShapeShapeinputs*
T0*
_output_shapes
::нѕ]
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
valueB:—
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
value	B :
s
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
:€€€€€€€€€
R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€
c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€2R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::нѕ_
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
valueB:џ
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
€€€€€€€€€і
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€2   а
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“_
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
valueB:й
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€2*
shrink_axis_maskО
"lstm_cell_14/MatMul/ReadVariableOpReadVariableOp+lstm_cell_14_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0Х
lstm_cell_14/MatMulMatMulstrided_slice_2:output:0*lstm_cell_14/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€(Т
$lstm_cell_14/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_14_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0П
lstm_cell_14/MatMul_1MatMulzeros:output:0,lstm_cell_14/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€(Л
lstm_cell_14/addAddV2lstm_cell_14/MatMul:product:0lstm_cell_14/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€(М
#lstm_cell_14/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_14_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0Ф
lstm_cell_14/BiasAddBiasAddlstm_cell_14/add:z:0+lstm_cell_14/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€(^
lstm_cell_14/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ё
lstm_cell_14/splitSplit%lstm_cell_14/split/split_dim:output:0lstm_cell_14/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€
:€€€€€€€€€
:€€€€€€€€€
:€€€€€€€€€
*
	num_splitn
lstm_cell_14/SigmoidSigmoidlstm_cell_14/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€
p
lstm_cell_14/Sigmoid_1Sigmoidlstm_cell_14/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€
w
lstm_cell_14/mulMullstm_cell_14/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€
h
lstm_cell_14/ReluRelulstm_cell_14/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€
Ж
lstm_cell_14/mul_1Mullstm_cell_14/Sigmoid:y:0lstm_cell_14/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€
{
lstm_cell_14/add_1AddV2lstm_cell_14/mul:z:0lstm_cell_14/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€
p
lstm_cell_14/Sigmoid_2Sigmoidlstm_cell_14/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€
e
lstm_cell_14/Relu_1Relulstm_cell_14/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€
К
lstm_cell_14/mul_2Mullstm_cell_14/Sigmoid_2:y:0!lstm_cell_14/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€
n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€
   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :≈
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“F
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
€€€€€€€€€T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : А
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_14_matmul_readvariableop_resource-lstm_cell_14_matmul_1_readvariableop_resource,lstm_cell_14_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€
:€€€€€€€€€
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_80711*
condR
while_cond_80710*K
output_shapes:
8: : : : :€€€€€€€€€
:€€€€€€€€€
: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€
   ÷
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:€€€€€€€€€
*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€
*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ц
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€
[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€
ј
NoOpNoOp$^lstm_cell_14/BiasAdd/ReadVariableOp#^lstm_cell_14/MatMul/ReadVariableOp%^lstm_cell_14/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€2: : : 2J
#lstm_cell_14/BiasAdd/ReadVariableOp#lstm_cell_14/BiasAdd/ReadVariableOp2H
"lstm_cell_14/MatMul/ReadVariableOp"lstm_cell_14/MatMul/ReadVariableOp2L
$lstm_cell_14/MatMul_1/ReadVariableOp$lstm_cell_14/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:€€€€€€€€€2
 
_user_specified_nameinputs
щJ
Ы
A__inference_lstm_7_layer_call_and_return_conditional_losses_79859
inputs_0>
+lstm_cell_13_matmul_readvariableop_resource:	d»@
-lstm_cell_13_matmul_1_readvariableop_resource:	2»;
,lstm_cell_13_biasadd_readvariableop_resource:	»
identityИҐ#lstm_cell_13/BiasAdd/ReadVariableOpҐ"lstm_cell_13/MatMul/ReadVariableOpҐ$lstm_cell_13/MatMul_1/ReadVariableOpҐwhileK
ShapeShapeinputs_0*
T0*
_output_shapes
::нѕ]
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
valueB:—
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
value	B :2s
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
:€€€€€€€€€2R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€dR
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::нѕ_
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
valueB:џ
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
€€€€€€€€€і
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€d   а
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“_
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
valueB:й
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€d*
shrink_axis_maskП
"lstm_cell_13/MatMul/ReadVariableOpReadVariableOp+lstm_cell_13_matmul_readvariableop_resource*
_output_shapes
:	d»*
dtype0Ц
lstm_cell_13/MatMulMatMulstrided_slice_2:output:0*lstm_cell_13/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€»У
$lstm_cell_13/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_13_matmul_1_readvariableop_resource*
_output_shapes
:	2»*
dtype0Р
lstm_cell_13/MatMul_1MatMulzeros:output:0,lstm_cell_13/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€»М
lstm_cell_13/addAddV2lstm_cell_13/MatMul:product:0lstm_cell_13/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€»Н
#lstm_cell_13/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_13_biasadd_readvariableop_resource*
_output_shapes	
:»*
dtype0Х
lstm_cell_13/BiasAddBiasAddlstm_cell_13/add:z:0+lstm_cell_13/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€»^
lstm_cell_13/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ё
lstm_cell_13/splitSplit%lstm_cell_13/split/split_dim:output:0lstm_cell_13/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€2:€€€€€€€€€2:€€€€€€€€€2:€€€€€€€€€2*
	num_splitn
lstm_cell_13/SigmoidSigmoidlstm_cell_13/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€2p
lstm_cell_13/Sigmoid_1Sigmoidlstm_cell_13/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€2w
lstm_cell_13/mulMullstm_cell_13/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€2h
lstm_cell_13/ReluRelulstm_cell_13/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€2Ж
lstm_cell_13/mul_1Mullstm_cell_13/Sigmoid:y:0lstm_cell_13/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€2{
lstm_cell_13/add_1AddV2lstm_cell_13/mul:z:0lstm_cell_13/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€2p
lstm_cell_13/Sigmoid_2Sigmoidlstm_cell_13/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€2e
lstm_cell_13/Relu_1Relulstm_cell_13/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€2К
lstm_cell_13/mul_2Mullstm_cell_13/Sigmoid_2:y:0!lstm_cell_13/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€2n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€2   Є
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“F
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
€€€€€€€€€T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : А
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_13_matmul_readvariableop_resource-lstm_cell_13_matmul_1_readvariableop_resource,lstm_cell_13_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€2:€€€€€€€€€2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_79775*
condR
while_cond_79774*K
output_shapes:
8: : : : :€€€€€€€€€2:€€€€€€€€€2: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€2   Ћ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Я
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€2[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€2ј
NoOpNoOp$^lstm_cell_13/BiasAdd/ReadVariableOp#^lstm_cell_13/MatMul/ReadVariableOp%^lstm_cell_13/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€€€€€€€€€€d: : : 2J
#lstm_cell_13/BiasAdd/ReadVariableOp#lstm_cell_13/BiasAdd/ReadVariableOp2H
"lstm_cell_13/MatMul/ReadVariableOp"lstm_cell_13/MatMul/ReadVariableOp2L
$lstm_cell_13/MatMul_1/ReadVariableOp$lstm_cell_13/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€d
"
_user_specified_name
inputs_0
ы
≥
&__inference_lstm_6_layer_call_fn_78930

inputs
unknown:	Р
	unknown_0:	dР
	unknown_1:	Р
identityИҐStatefulPartitionedCallз
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_lstm_6_layer_call_and_return_conditional_losses_77197s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€d`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
їJ
Щ
A__inference_lstm_7_layer_call_and_return_conditional_losses_80145

inputs>
+lstm_cell_13_matmul_readvariableop_resource:	d»@
-lstm_cell_13_matmul_1_readvariableop_resource:	2»;
,lstm_cell_13_biasadd_readvariableop_resource:	»
identityИҐ#lstm_cell_13/BiasAdd/ReadVariableOpҐ"lstm_cell_13/MatMul/ReadVariableOpҐ$lstm_cell_13/MatMul_1/ReadVariableOpҐwhileI
ShapeShapeinputs*
T0*
_output_shapes
::нѕ]
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
valueB:—
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
value	B :2s
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
:€€€€€€€€€2R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€dR
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::нѕ_
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
valueB:џ
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
€€€€€€€€€і
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€d   а
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“_
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
valueB:й
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€d*
shrink_axis_maskП
"lstm_cell_13/MatMul/ReadVariableOpReadVariableOp+lstm_cell_13_matmul_readvariableop_resource*
_output_shapes
:	d»*
dtype0Ц
lstm_cell_13/MatMulMatMulstrided_slice_2:output:0*lstm_cell_13/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€»У
$lstm_cell_13/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_13_matmul_1_readvariableop_resource*
_output_shapes
:	2»*
dtype0Р
lstm_cell_13/MatMul_1MatMulzeros:output:0,lstm_cell_13/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€»М
lstm_cell_13/addAddV2lstm_cell_13/MatMul:product:0lstm_cell_13/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€»Н
#lstm_cell_13/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_13_biasadd_readvariableop_resource*
_output_shapes	
:»*
dtype0Х
lstm_cell_13/BiasAddBiasAddlstm_cell_13/add:z:0+lstm_cell_13/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€»^
lstm_cell_13/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ё
lstm_cell_13/splitSplit%lstm_cell_13/split/split_dim:output:0lstm_cell_13/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€2:€€€€€€€€€2:€€€€€€€€€2:€€€€€€€€€2*
	num_splitn
lstm_cell_13/SigmoidSigmoidlstm_cell_13/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€2p
lstm_cell_13/Sigmoid_1Sigmoidlstm_cell_13/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€2w
lstm_cell_13/mulMullstm_cell_13/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€2h
lstm_cell_13/ReluRelulstm_cell_13/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€2Ж
lstm_cell_13/mul_1Mullstm_cell_13/Sigmoid:y:0lstm_cell_13/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€2{
lstm_cell_13/add_1AddV2lstm_cell_13/mul:z:0lstm_cell_13/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€2p
lstm_cell_13/Sigmoid_2Sigmoidlstm_cell_13/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€2e
lstm_cell_13/Relu_1Relulstm_cell_13/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€2К
lstm_cell_13/mul_2Mullstm_cell_13/Sigmoid_2:y:0!lstm_cell_13/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€2n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€2   Є
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“F
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
€€€€€€€€€T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : А
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_13_matmul_readvariableop_resource-lstm_cell_13_matmul_1_readvariableop_resource,lstm_cell_13_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€2:€€€€€€€€€2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_80061*
condR
while_cond_80060*K
output_shapes:
8: : : : :€€€€€€€€€2:€€€€€€€€€2: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€2   ¬
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:€€€€€€€€€2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ц
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€2[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€2ј
NoOpNoOp$^lstm_cell_13/BiasAdd/ReadVariableOp#^lstm_cell_13/MatMul/ReadVariableOp%^lstm_cell_13/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€d: : : 2J
#lstm_cell_13/BiasAdd/ReadVariableOp#lstm_cell_13/BiasAdd/ReadVariableOp2H
"lstm_cell_13/MatMul/ReadVariableOp"lstm_cell_13/MatMul/ReadVariableOp2L
$lstm_cell_13/MatMul_1/ReadVariableOp$lstm_cell_13/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:€€€€€€€€€d
 
_user_specified_nameinputs
А
Є
,__inference_sequential_2_layer_call_fn_77987

inputs
unknown
	unknown_0
	unknown_1:	Р
	unknown_2:	dР
	unknown_3:	Р
	unknown_4:	d»
	unknown_5:	2»
	unknown_6:	»
	unknown_7:2(
	unknown_8:
(
	unknown_9:(

unknown_10:


unknown_11:
identityИҐStatefulPartitionedCallл
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_sequential_2_layer_call_and_return_conditional_losses_77645o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*\
_input_shapesK
I:€€€€€€€€€::: : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:($
"
_output_shapes
::($
"
_output_shapes
:
ь9
…
while_body_76921
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_14_matmul_readvariableop_resource_0:2(G
5while_lstm_cell_14_matmul_1_readvariableop_resource_0:
(B
4while_lstm_cell_14_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_14_matmul_readvariableop_resource:2(E
3while_lstm_cell_14_matmul_1_readvariableop_resource:
(@
2while_lstm_cell_14_biasadd_readvariableop_resource:(ИҐ)while/lstm_cell_14/BiasAdd/ReadVariableOpҐ(while/lstm_cell_14/MatMul/ReadVariableOpҐ*while/lstm_cell_14/MatMul_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€2   ¶
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€2*
element_dtype0Ь
(while/lstm_cell_14/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_14_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0є
while/lstm_cell_14/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_14/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€(†
*while/lstm_cell_14/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_14_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0†
while/lstm_cell_14/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_14/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€(Э
while/lstm_cell_14/addAddV2#while/lstm_cell_14/MatMul:product:0%while/lstm_cell_14/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€(Ъ
)while/lstm_cell_14/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_14_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0¶
while/lstm_cell_14/BiasAddBiasAddwhile/lstm_cell_14/add:z:01while/lstm_cell_14/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€(d
"while/lstm_cell_14/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :п
while/lstm_cell_14/splitSplit+while/lstm_cell_14/split/split_dim:output:0#while/lstm_cell_14/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€
:€€€€€€€€€
:€€€€€€€€€
:€€€€€€€€€
*
	num_splitz
while/lstm_cell_14/SigmoidSigmoid!while/lstm_cell_14/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€
|
while/lstm_cell_14/Sigmoid_1Sigmoid!while/lstm_cell_14/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€
Ж
while/lstm_cell_14/mulMul while/lstm_cell_14/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€
t
while/lstm_cell_14/ReluRelu!while/lstm_cell_14/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€
Ш
while/lstm_cell_14/mul_1Mulwhile/lstm_cell_14/Sigmoid:y:0%while/lstm_cell_14/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€
Н
while/lstm_cell_14/add_1AddV2while/lstm_cell_14/mul:z:0while/lstm_cell_14/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€
|
while/lstm_cell_14/Sigmoid_2Sigmoid!while/lstm_cell_14/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€
q
while/lstm_cell_14/Relu_1Reluwhile/lstm_cell_14/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€
Ь
while/lstm_cell_14/mul_2Mul while/lstm_cell_14/Sigmoid_2:y:0'while/lstm_cell_14/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€
r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : н
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell_14/mul_2:z:0*
_output_shapes
: *
element_dtype0:йи“M
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
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_14/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€
y
while/Identity_5Identitywhile/lstm_cell_14/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€
–

while/NoOpNoOp*^while/lstm_cell_14/BiasAdd/ReadVariableOp)^while/lstm_cell_14/MatMul/ReadVariableOp+^while/lstm_cell_14/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_14_biasadd_readvariableop_resource4while_lstm_cell_14_biasadd_readvariableop_resource_0"l
3while_lstm_cell_14_matmul_1_readvariableop_resource5while_lstm_cell_14_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_14_matmul_readvariableop_resource3while_lstm_cell_14_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :€€€€€€€€€
:€€€€€€€€€
: : : : : 2V
)while/lstm_cell_14/BiasAdd/ReadVariableOp)while/lstm_cell_14/BiasAdd/ReadVariableOp2T
(while/lstm_cell_14/MatMul/ReadVariableOp(while/lstm_cell_14/MatMul/ReadVariableOp2X
*while/lstm_cell_14/MatMul_1/ReadVariableOp*while/lstm_cell_14/MatMul_1/ReadVariableOp:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€
:-)
'
_output_shapes
:€€€€€€€€€
:

_output_shapes
: :

_output_shapes
: 
•
µ
&__inference_lstm_6_layer_call_fn_78908
inputs_0
unknown:	Р
	unknown_0:	dР
	unknown_1:	Р
identityИҐStatefulPartitionedCallт
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_lstm_6_layer_call_and_return_conditional_losses_75761|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€d`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€€€€€€€€€€: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
"
_user_specified_name
inputs_0
їJ
Щ
A__inference_lstm_7_layer_call_and_return_conditional_losses_80002

inputs>
+lstm_cell_13_matmul_readvariableop_resource:	d»@
-lstm_cell_13_matmul_1_readvariableop_resource:	2»;
,lstm_cell_13_biasadd_readvariableop_resource:	»
identityИҐ#lstm_cell_13/BiasAdd/ReadVariableOpҐ"lstm_cell_13/MatMul/ReadVariableOpҐ$lstm_cell_13/MatMul_1/ReadVariableOpҐwhileI
ShapeShapeinputs*
T0*
_output_shapes
::нѕ]
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
valueB:—
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
value	B :2s
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
:€€€€€€€€€2R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€dR
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::нѕ_
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
valueB:џ
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
€€€€€€€€€і
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€d   а
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“_
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
valueB:й
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€d*
shrink_axis_maskП
"lstm_cell_13/MatMul/ReadVariableOpReadVariableOp+lstm_cell_13_matmul_readvariableop_resource*
_output_shapes
:	d»*
dtype0Ц
lstm_cell_13/MatMulMatMulstrided_slice_2:output:0*lstm_cell_13/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€»У
$lstm_cell_13/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_13_matmul_1_readvariableop_resource*
_output_shapes
:	2»*
dtype0Р
lstm_cell_13/MatMul_1MatMulzeros:output:0,lstm_cell_13/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€»М
lstm_cell_13/addAddV2lstm_cell_13/MatMul:product:0lstm_cell_13/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€»Н
#lstm_cell_13/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_13_biasadd_readvariableop_resource*
_output_shapes	
:»*
dtype0Х
lstm_cell_13/BiasAddBiasAddlstm_cell_13/add:z:0+lstm_cell_13/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€»^
lstm_cell_13/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ё
lstm_cell_13/splitSplit%lstm_cell_13/split/split_dim:output:0lstm_cell_13/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€2:€€€€€€€€€2:€€€€€€€€€2:€€€€€€€€€2*
	num_splitn
lstm_cell_13/SigmoidSigmoidlstm_cell_13/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€2p
lstm_cell_13/Sigmoid_1Sigmoidlstm_cell_13/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€2w
lstm_cell_13/mulMullstm_cell_13/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€2h
lstm_cell_13/ReluRelulstm_cell_13/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€2Ж
lstm_cell_13/mul_1Mullstm_cell_13/Sigmoid:y:0lstm_cell_13/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€2{
lstm_cell_13/add_1AddV2lstm_cell_13/mul:z:0lstm_cell_13/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€2p
lstm_cell_13/Sigmoid_2Sigmoidlstm_cell_13/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€2e
lstm_cell_13/Relu_1Relulstm_cell_13/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€2К
lstm_cell_13/mul_2Mullstm_cell_13/Sigmoid_2:y:0!lstm_cell_13/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€2n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€2   Є
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“F
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
€€€€€€€€€T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : А
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_13_matmul_readvariableop_resource-lstm_cell_13_matmul_1_readvariableop_resource,lstm_cell_13_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€2:€€€€€€€€€2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_79918*
condR
while_cond_79917*K
output_shapes:
8: : : : :€€€€€€€€€2:€€€€€€€€€2: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€2   ¬
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:€€€€€€€€€2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ц
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€2[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€2ј
NoOpNoOp$^lstm_cell_13/BiasAdd/ReadVariableOp#^lstm_cell_13/MatMul/ReadVariableOp%^lstm_cell_13/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€d: : : 2J
#lstm_cell_13/BiasAdd/ReadVariableOp#lstm_cell_13/BiasAdd/ReadVariableOp2H
"lstm_cell_13/MatMul/ReadVariableOp"lstm_cell_13/MatMul/ReadVariableOp2L
$lstm_cell_13/MatMul_1/ReadVariableOp$lstm_cell_13/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:€€€€€€€€€d
 
_user_specified_nameinputs
н8
ѕ
while_body_79632
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_13_matmul_readvariableop_resource_0:	d»H
5while_lstm_cell_13_matmul_1_readvariableop_resource_0:	2»C
4while_lstm_cell_13_biasadd_readvariableop_resource_0:	»
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_13_matmul_readvariableop_resource:	d»F
3while_lstm_cell_13_matmul_1_readvariableop_resource:	2»A
2while_lstm_cell_13_biasadd_readvariableop_resource:	»ИҐ)while/lstm_cell_13/BiasAdd/ReadVariableOpҐ(while/lstm_cell_13/MatMul/ReadVariableOpҐ*while/lstm_cell_13/MatMul_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€d   ¶
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€d*
element_dtype0Э
(while/lstm_cell_13/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_13_matmul_readvariableop_resource_0*
_output_shapes
:	d»*
dtype0Ї
while/lstm_cell_13/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_13/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€»°
*while/lstm_cell_13/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_13_matmul_1_readvariableop_resource_0*
_output_shapes
:	2»*
dtype0°
while/lstm_cell_13/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_13/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€»Ю
while/lstm_cell_13/addAddV2#while/lstm_cell_13/MatMul:product:0%while/lstm_cell_13/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€»Ы
)while/lstm_cell_13/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_13_biasadd_readvariableop_resource_0*
_output_shapes	
:»*
dtype0І
while/lstm_cell_13/BiasAddBiasAddwhile/lstm_cell_13/add:z:01while/lstm_cell_13/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€»d
"while/lstm_cell_13/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :п
while/lstm_cell_13/splitSplit+while/lstm_cell_13/split/split_dim:output:0#while/lstm_cell_13/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€2:€€€€€€€€€2:€€€€€€€€€2:€€€€€€€€€2*
	num_splitz
while/lstm_cell_13/SigmoidSigmoid!while/lstm_cell_13/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€2|
while/lstm_cell_13/Sigmoid_1Sigmoid!while/lstm_cell_13/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€2Ж
while/lstm_cell_13/mulMul while/lstm_cell_13/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€2t
while/lstm_cell_13/ReluRelu!while/lstm_cell_13/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€2Ш
while/lstm_cell_13/mul_1Mulwhile/lstm_cell_13/Sigmoid:y:0%while/lstm_cell_13/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€2Н
while/lstm_cell_13/add_1AddV2while/lstm_cell_13/mul:z:0while/lstm_cell_13/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€2|
while/lstm_cell_13/Sigmoid_2Sigmoid!while/lstm_cell_13/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€2q
while/lstm_cell_13/Relu_1Reluwhile/lstm_cell_13/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€2Ь
while/lstm_cell_13/mul_2Mul while/lstm_cell_13/Sigmoid_2:y:0'while/lstm_cell_13/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€2≈
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_13/mul_2:z:0*
_output_shapes
: *
element_dtype0:йи“M
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
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_13/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€2y
while/Identity_5Identitywhile/lstm_cell_13/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€2–

while/NoOpNoOp*^while/lstm_cell_13/BiasAdd/ReadVariableOp)^while/lstm_cell_13/MatMul/ReadVariableOp+^while/lstm_cell_13/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_13_biasadd_readvariableop_resource4while_lstm_cell_13_biasadd_readvariableop_resource_0"l
3while_lstm_cell_13_matmul_1_readvariableop_resource5while_lstm_cell_13_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_13_matmul_readvariableop_resource3while_lstm_cell_13_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :€€€€€€€€€2:€€€€€€€€€2: : : : : 2V
)while/lstm_cell_13/BiasAdd/ReadVariableOp)while/lstm_cell_13/BiasAdd/ReadVariableOp2T
(while/lstm_cell_13/MatMul/ReadVariableOp(while/lstm_cell_13/MatMul/ReadVariableOp2X
*while/lstm_cell_13/MatMul_1/ReadVariableOp*while/lstm_cell_13/MatMul_1/ReadVariableOp:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€2:-)
'
_output_shapes
:€€€€€€€€€2:

_output_shapes
: :

_output_shapes
: 
Т	
Њ
while_cond_77112
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_77112___redundant_placeholder03
/while_while_cond_77112___redundant_placeholder13
/while_while_cond_77112___redundant_placeholder23
/while_while_cond_77112___redundant_placeholder3
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
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :€€€€€€€€€d:€€€€€€€€€d: :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€d:-)
'
_output_shapes
:€€€€€€€€€d:

_output_shapes
: :

_output_shapes
:
л
ќ
$sequential_2_lstm_8_while_cond_75376D
@sequential_2_lstm_8_while_sequential_2_lstm_8_while_loop_counterJ
Fsequential_2_lstm_8_while_sequential_2_lstm_8_while_maximum_iterations)
%sequential_2_lstm_8_while_placeholder+
'sequential_2_lstm_8_while_placeholder_1+
'sequential_2_lstm_8_while_placeholder_2+
'sequential_2_lstm_8_while_placeholder_3F
Bsequential_2_lstm_8_while_less_sequential_2_lstm_8_strided_slice_1[
Wsequential_2_lstm_8_while_sequential_2_lstm_8_while_cond_75376___redundant_placeholder0[
Wsequential_2_lstm_8_while_sequential_2_lstm_8_while_cond_75376___redundant_placeholder1[
Wsequential_2_lstm_8_while_sequential_2_lstm_8_while_cond_75376___redundant_placeholder2[
Wsequential_2_lstm_8_while_sequential_2_lstm_8_while_cond_75376___redundant_placeholder3&
"sequential_2_lstm_8_while_identity
≤
sequential_2/lstm_8/while/LessLess%sequential_2_lstm_8_while_placeholderBsequential_2_lstm_8_while_less_sequential_2_lstm_8_strided_slice_1*
T0*
_output_shapes
: s
"sequential_2/lstm_8/while/IdentityIdentity"sequential_2/lstm_8/while/Less:z:0*
T0
*
_output_shapes
: "Q
"sequential_2_lstm_8_while_identity+sequential_2/lstm_8/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :€€€€€€€€€
:€€€€€€€€€
: :::::^ Z

_output_shapes
: 
@
_user_specified_name(&sequential_2/lstm_8/while/loop_counter:d`

_output_shapes
: 
F
_user_specified_name.,sequential_2/lstm_8/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€
:-)
'
_output_shapes
:€€€€€€€€€
:

_output_shapes
: :

_output_shapes
:
ы
≥
&__inference_lstm_6_layer_call_fn_78919

inputs
unknown:	Р
	unknown_0:	dР
	unknown_1:	Р
identityИҐStatefulPartitionedCallз
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_lstm_6_layer_call_and_return_conditional_losses_76676s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€d`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
н8
ѕ
while_body_79775
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_13_matmul_readvariableop_resource_0:	d»H
5while_lstm_cell_13_matmul_1_readvariableop_resource_0:	2»C
4while_lstm_cell_13_biasadd_readvariableop_resource_0:	»
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_13_matmul_readvariableop_resource:	d»F
3while_lstm_cell_13_matmul_1_readvariableop_resource:	2»A
2while_lstm_cell_13_biasadd_readvariableop_resource:	»ИҐ)while/lstm_cell_13/BiasAdd/ReadVariableOpҐ(while/lstm_cell_13/MatMul/ReadVariableOpҐ*while/lstm_cell_13/MatMul_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€d   ¶
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€d*
element_dtype0Э
(while/lstm_cell_13/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_13_matmul_readvariableop_resource_0*
_output_shapes
:	d»*
dtype0Ї
while/lstm_cell_13/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_13/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€»°
*while/lstm_cell_13/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_13_matmul_1_readvariableop_resource_0*
_output_shapes
:	2»*
dtype0°
while/lstm_cell_13/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_13/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€»Ю
while/lstm_cell_13/addAddV2#while/lstm_cell_13/MatMul:product:0%while/lstm_cell_13/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€»Ы
)while/lstm_cell_13/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_13_biasadd_readvariableop_resource_0*
_output_shapes	
:»*
dtype0І
while/lstm_cell_13/BiasAddBiasAddwhile/lstm_cell_13/add:z:01while/lstm_cell_13/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€»d
"while/lstm_cell_13/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :п
while/lstm_cell_13/splitSplit+while/lstm_cell_13/split/split_dim:output:0#while/lstm_cell_13/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€2:€€€€€€€€€2:€€€€€€€€€2:€€€€€€€€€2*
	num_splitz
while/lstm_cell_13/SigmoidSigmoid!while/lstm_cell_13/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€2|
while/lstm_cell_13/Sigmoid_1Sigmoid!while/lstm_cell_13/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€2Ж
while/lstm_cell_13/mulMul while/lstm_cell_13/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€2t
while/lstm_cell_13/ReluRelu!while/lstm_cell_13/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€2Ш
while/lstm_cell_13/mul_1Mulwhile/lstm_cell_13/Sigmoid:y:0%while/lstm_cell_13/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€2Н
while/lstm_cell_13/add_1AddV2while/lstm_cell_13/mul:z:0while/lstm_cell_13/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€2|
while/lstm_cell_13/Sigmoid_2Sigmoid!while/lstm_cell_13/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€2q
while/lstm_cell_13/Relu_1Reluwhile/lstm_cell_13/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€2Ь
while/lstm_cell_13/mul_2Mul while/lstm_cell_13/Sigmoid_2:y:0'while/lstm_cell_13/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€2≈
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_13/mul_2:z:0*
_output_shapes
: *
element_dtype0:йи“M
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
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_13/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€2y
while/Identity_5Identitywhile/lstm_cell_13/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€2–

while/NoOpNoOp*^while/lstm_cell_13/BiasAdd/ReadVariableOp)^while/lstm_cell_13/MatMul/ReadVariableOp+^while/lstm_cell_13/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_13_biasadd_readvariableop_resource4while_lstm_cell_13_biasadd_readvariableop_resource_0"l
3while_lstm_cell_13_matmul_1_readvariableop_resource5while_lstm_cell_13_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_13_matmul_readvariableop_resource3while_lstm_cell_13_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :€€€€€€€€€2:€€€€€€€€€2: : : : : 2V
)while/lstm_cell_13/BiasAdd/ReadVariableOp)while/lstm_cell_13/BiasAdd/ReadVariableOp2T
(while/lstm_cell_13/MatMul/ReadVariableOp(while/lstm_cell_13/MatMul/ReadVariableOp2X
*while/lstm_cell_13/MatMul_1/ReadVariableOp*while/lstm_cell_13/MatMul_1/ReadVariableOp:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€2:-)
'
_output_shapes
:€€€€€€€€€2:

_output_shapes
: :

_output_shapes
: 
Ч*
ж
G__inference_sequential_2_layer_call_and_return_conditional_losses_77574

inputs
normalization_2_sub_y
normalization_2_sqrt_x
lstm_6_77544:	Р
lstm_6_77546:	dР
lstm_6_77548:	Р
lstm_7_77552:	d»
lstm_7_77554:	2»
lstm_7_77556:	»
lstm_8_77560:2(
lstm_8_77562:
(
lstm_8_77564:(
dense_2_77568:

dense_2_77570:
identityИҐdense_2/StatefulPartitionedCallҐ!dropout_6/StatefulPartitionedCallҐ!dropout_7/StatefulPartitionedCallҐ!dropout_8/StatefulPartitionedCallҐlstm_6/StatefulPartitionedCallҐlstm_7/StatefulPartitionedCallҐlstm_8/StatefulPartitionedCallo
normalization_2/subSubinputsnormalization_2_sub_y*
T0*+
_output_shapes
:€€€€€€€€€a
normalization_2/SqrtSqrtnormalization_2_sqrt_x*
T0*"
_output_shapes
:^
normalization_2/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *Хњ÷3Н
normalization_2/MaximumMaximumnormalization_2/Sqrt:y:0"normalization_2/Maximum/y:output:0*
T0*"
_output_shapes
:О
normalization_2/truedivRealDivnormalization_2/sub:z:0normalization_2/Maximum:z:0*
T0*+
_output_shapes
:€€€€€€€€€О
lstm_6/StatefulPartitionedCallStatefulPartitionedCallnormalization_2/truediv:z:0lstm_6_77544lstm_6_77546lstm_6_77548*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_lstm_6_layer_call_and_return_conditional_losses_76676о
!dropout_6/StatefulPartitionedCallStatefulPartitionedCall'lstm_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€d* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dropout_6_layer_call_and_return_conditional_losses_76696Э
lstm_7/StatefulPartitionedCallStatefulPartitionedCall*dropout_6/StatefulPartitionedCall:output:0lstm_7_77552lstm_7_77554lstm_7_77556*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_lstm_7_layer_call_and_return_conditional_losses_76840Т
!dropout_7/StatefulPartitionedCallStatefulPartitionedCall'lstm_7/StatefulPartitionedCall:output:0"^dropout_6/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€2* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dropout_7_layer_call_and_return_conditional_losses_76860Щ
lstm_8/StatefulPartitionedCallStatefulPartitionedCall*dropout_7/StatefulPartitionedCall:output:0lstm_8_77560lstm_8_77562lstm_8_77564*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_lstm_8_layer_call_and_return_conditional_losses_77006О
!dropout_8/StatefulPartitionedCallStatefulPartitionedCall'lstm_8/StatefulPartitionedCall:output:0"^dropout_7/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€
* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dropout_8_layer_call_and_return_conditional_losses_77026Н
dense_2/StatefulPartitionedCallStatefulPartitionedCall*dropout_8/StatefulPartitionedCall:output:0dense_2_77568dense_2_77570*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dense_2_layer_call_and_return_conditional_losses_77038w
IdentityIdentity(dense_2/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€Ј
NoOpNoOp ^dense_2/StatefulPartitionedCall"^dropout_6/StatefulPartitionedCall"^dropout_7/StatefulPartitionedCall"^dropout_8/StatefulPartitionedCall^lstm_6/StatefulPartitionedCall^lstm_7/StatefulPartitionedCall^lstm_8/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*\
_input_shapesK
I:€€€€€€€€€::: : : : : : : : : : : 2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2F
!dropout_6/StatefulPartitionedCall!dropout_6/StatefulPartitionedCall2F
!dropout_7/StatefulPartitionedCall!dropout_7/StatefulPartitionedCall2F
!dropout_8/StatefulPartitionedCall!dropout_8/StatefulPartitionedCall2@
lstm_6/StatefulPartitionedCalllstm_6/StatefulPartitionedCall2@
lstm_7/StatefulPartitionedCalllstm_7/StatefulPartitionedCall2@
lstm_8/StatefulPartitionedCalllstm_8/StatefulPartitionedCall:S O
+
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:($
"
_output_shapes
::($
"
_output_shapes
:
 
А
G__inference_lstm_cell_14_layer_call_and_return_conditional_losses_76233

inputs

states
states_10
matmul_readvariableop_resource:2(2
 matmul_1_readvariableop_resource:
(-
biasadd_readvariableop_resource:(
identity

identity_1

identity_2ИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpҐMatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2(*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€(x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0m
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€(d
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€(r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:(*
dtype0m
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€(Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ґ
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€
:€€€€€€€€€
:€€€€€€€€€
:€€€€€€€€€
*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:€€€€€€€€€
V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:€€€€€€€€€
U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:€€€€€€€€€
N
ReluRelusplit:output:2*
T0*'
_output_shapes
:€€€€€€€€€
_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€
T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€
V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:€€€€€€€€€
K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€
c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€
X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€
Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€
Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€
С
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:€€€€€€€€€2:€€€€€€€€€
:€€€€€€€€€
: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€2
 
_user_specified_nameinputs:OK
'
_output_shapes
:€€€€€€€€€

 
_user_specified_namestates:OK
'
_output_shapes
:€€€€€€€€€

 
_user_specified_namestates
Т	
Њ
while_cond_79417
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_79417___redundant_placeholder03
/while_while_cond_79417___redundant_placeholder13
/while_while_cond_79417___redundant_placeholder23
/while_while_cond_79417___redundant_placeholder3
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
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :€€€€€€€€€d:€€€€€€€€€d: :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€d:-)
'
_output_shapes
:€€€€€€€€€d:

_output_shapes
: :

_output_shapes
:
н8
ѕ
while_body_77113
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_12_matmul_readvariableop_resource_0:	РH
5while_lstm_cell_12_matmul_1_readvariableop_resource_0:	dРC
4while_lstm_cell_12_biasadd_readvariableop_resource_0:	Р
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_12_matmul_readvariableop_resource:	РF
3while_lstm_cell_12_matmul_1_readvariableop_resource:	dРA
2while_lstm_cell_12_biasadd_readvariableop_resource:	РИҐ)while/lstm_cell_12/BiasAdd/ReadVariableOpҐ(while/lstm_cell_12/MatMul/ReadVariableOpҐ*while/lstm_cell_12/MatMul_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ¶
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€*
element_dtype0Э
(while/lstm_cell_12/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_12_matmul_readvariableop_resource_0*
_output_shapes
:	Р*
dtype0Ї
while/lstm_cell_12/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_12/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Р°
*while/lstm_cell_12/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_12_matmul_1_readvariableop_resource_0*
_output_shapes
:	dР*
dtype0°
while/lstm_cell_12/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_12/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€РЮ
while/lstm_cell_12/addAddV2#while/lstm_cell_12/MatMul:product:0%while/lstm_cell_12/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€РЫ
)while/lstm_cell_12/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_12_biasadd_readvariableop_resource_0*
_output_shapes	
:Р*
dtype0І
while/lstm_cell_12/BiasAddBiasAddwhile/lstm_cell_12/add:z:01while/lstm_cell_12/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Рd
"while/lstm_cell_12/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :п
while/lstm_cell_12/splitSplit+while/lstm_cell_12/split/split_dim:output:0#while/lstm_cell_12/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€d:€€€€€€€€€d:€€€€€€€€€d:€€€€€€€€€d*
	num_splitz
while/lstm_cell_12/SigmoidSigmoid!while/lstm_cell_12/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€d|
while/lstm_cell_12/Sigmoid_1Sigmoid!while/lstm_cell_12/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€dЖ
while/lstm_cell_12/mulMul while/lstm_cell_12/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€dt
while/lstm_cell_12/ReluRelu!while/lstm_cell_12/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€dШ
while/lstm_cell_12/mul_1Mulwhile/lstm_cell_12/Sigmoid:y:0%while/lstm_cell_12/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€dН
while/lstm_cell_12/add_1AddV2while/lstm_cell_12/mul:z:0while/lstm_cell_12/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€d|
while/lstm_cell_12/Sigmoid_2Sigmoid!while/lstm_cell_12/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€dq
while/lstm_cell_12/Relu_1Reluwhile/lstm_cell_12/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€dЬ
while/lstm_cell_12/mul_2Mul while/lstm_cell_12/Sigmoid_2:y:0'while/lstm_cell_12/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€d≈
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_12/mul_2:z:0*
_output_shapes
: *
element_dtype0:йи“M
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
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_12/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€dy
while/Identity_5Identitywhile/lstm_cell_12/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€d–

while/NoOpNoOp*^while/lstm_cell_12/BiasAdd/ReadVariableOp)^while/lstm_cell_12/MatMul/ReadVariableOp+^while/lstm_cell_12/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_12_biasadd_readvariableop_resource4while_lstm_cell_12_biasadd_readvariableop_resource_0"l
3while_lstm_cell_12_matmul_1_readvariableop_resource5while_lstm_cell_12_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_12_matmul_readvariableop_resource3while_lstm_cell_12_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :€€€€€€€€€d:€€€€€€€€€d: : : : : 2V
)while/lstm_cell_12/BiasAdd/ReadVariableOp)while/lstm_cell_12/BiasAdd/ReadVariableOp2T
(while/lstm_cell_12/MatMul/ReadVariableOp(while/lstm_cell_12/MatMul/ReadVariableOp2X
*while/lstm_cell_12/MatMul_1/ReadVariableOp*while/lstm_cell_12/MatMul_1/ReadVariableOp:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€d:-)
'
_output_shapes
:€€€€€€€€€d:

_output_shapes
: :

_output_shapes
: 
“
В
G__inference_lstm_cell_14_layer_call_and_return_conditional_losses_81104

inputs
states_0
states_10
matmul_readvariableop_resource:2(2
 matmul_1_readvariableop_resource:
(-
biasadd_readvariableop_resource:(
identity

identity_1

identity_2ИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpҐMatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2(*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€(x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0o
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€(d
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€(r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:(*
dtype0m
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€(Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ґ
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€
:€€€€€€€€€
:€€€€€€€€€
:€€€€€€€€€
*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:€€€€€€€€€
V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:€€€€€€€€€
U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:€€€€€€€€€
N
ReluRelusplit:output:2*
T0*'
_output_shapes
:€€€€€€€€€
_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€
T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€
V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:€€€€€€€€€
K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€
c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€
X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€
Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€
Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€
С
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:€€€€€€€€€2:€€€€€€€€€
:€€€€€€€€€
: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€2
 
_user_specified_nameinputs:QM
'
_output_shapes
:€€€€€€€€€

"
_user_specified_name
states_0:QM
'
_output_shapes
:€€€€€€€€€

"
_user_specified_name
states_1
Џ%
ы
G__inference_sequential_2_layer_call_and_return_conditional_losses_77531
input_3
normalization_2_sub_y
normalization_2_sqrt_x
lstm_6_77198:	Р
lstm_6_77200:	dР
lstm_6_77202:	Р
lstm_7_77354:	d»
lstm_7_77356:	2»
lstm_7_77358:	»
lstm_8_77512:2(
lstm_8_77514:
(
lstm_8_77516:(
dense_2_77525:

dense_2_77527:
identityИҐdense_2/StatefulPartitionedCallҐlstm_6/StatefulPartitionedCallҐlstm_7/StatefulPartitionedCallҐlstm_8/StatefulPartitionedCallp
normalization_2/subSubinput_3normalization_2_sub_y*
T0*+
_output_shapes
:€€€€€€€€€a
normalization_2/SqrtSqrtnormalization_2_sqrt_x*
T0*"
_output_shapes
:^
normalization_2/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *Хњ÷3Н
normalization_2/MaximumMaximumnormalization_2/Sqrt:y:0"normalization_2/Maximum/y:output:0*
T0*"
_output_shapes
:О
normalization_2/truedivRealDivnormalization_2/sub:z:0normalization_2/Maximum:z:0*
T0*+
_output_shapes
:€€€€€€€€€О
lstm_6/StatefulPartitionedCallStatefulPartitionedCallnormalization_2/truediv:z:0lstm_6_77198lstm_6_77200lstm_6_77202*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_lstm_6_layer_call_and_return_conditional_losses_77197ё
dropout_6/PartitionedCallPartitionedCall'lstm_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€d* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dropout_6_layer_call_and_return_conditional_losses_77209Х
lstm_7/StatefulPartitionedCallStatefulPartitionedCall"dropout_6/PartitionedCall:output:0lstm_7_77354lstm_7_77356lstm_7_77358*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_lstm_7_layer_call_and_return_conditional_losses_77353ё
dropout_7/PartitionedCallPartitionedCall'lstm_7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€2* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dropout_7_layer_call_and_return_conditional_losses_77365С
lstm_8/StatefulPartitionedCallStatefulPartitionedCall"dropout_7/PartitionedCall:output:0lstm_8_77512lstm_8_77514lstm_8_77516*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_lstm_8_layer_call_and_return_conditional_losses_77511Џ
dropout_8/PartitionedCallPartitionedCall'lstm_8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€
* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dropout_8_layer_call_and_return_conditional_losses_77523Е
dense_2/StatefulPartitionedCallStatefulPartitionedCall"dropout_8/PartitionedCall:output:0dense_2_77525dense_2_77527*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dense_2_layer_call_and_return_conditional_losses_77038w
IdentityIdentity(dense_2/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€Ћ
NoOpNoOp ^dense_2/StatefulPartitionedCall^lstm_6/StatefulPartitionedCall^lstm_7/StatefulPartitionedCall^lstm_8/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*\
_input_shapesK
I:€€€€€€€€€::: : : : : : : : : : : 2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2@
lstm_6/StatefulPartitionedCalllstm_6/StatefulPartitionedCall2@
lstm_7/StatefulPartitionedCalllstm_7/StatefulPartitionedCall2@
lstm_8/StatefulPartitionedCalllstm_8/StatefulPartitionedCall:T P
+
_output_shapes
:€€€€€€€€€
!
_user_specified_name	input_3:($
"
_output_shapes
::($
"
_output_shapes
:
Т	
Њ
while_cond_76394
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_76394___redundant_placeholder03
/while_while_cond_76394___redundant_placeholder13
/while_while_cond_76394___redundant_placeholder23
/while_while_cond_76394___redundant_placeholder3
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
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :€€€€€€€€€
:€€€€€€€€€
: :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€
:-)
'
_output_shapes
:€€€€€€€€€
:

_output_shapes
: :

_output_shapes
:
їJ
Щ
A__inference_lstm_6_layer_call_and_return_conditional_losses_79359

inputs>
+lstm_cell_12_matmul_readvariableop_resource:	Р@
-lstm_cell_12_matmul_1_readvariableop_resource:	dР;
,lstm_cell_12_biasadd_readvariableop_resource:	Р
identityИҐ#lstm_cell_12/BiasAdd/ReadVariableOpҐ"lstm_cell_12/MatMul/ReadVariableOpҐ$lstm_cell_12/MatMul_1/ReadVariableOpҐwhileI
ShapeShapeinputs*
T0*
_output_shapes
::нѕ]
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
valueB:—
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
value	B :ds
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
:€€€€€€€€€dR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€dc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::нѕ_
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
valueB:џ
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
€€€€€€€€€і
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   а
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“_
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
valueB:й
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_maskП
"lstm_cell_12/MatMul/ReadVariableOpReadVariableOp+lstm_cell_12_matmul_readvariableop_resource*
_output_shapes
:	Р*
dtype0Ц
lstm_cell_12/MatMulMatMulstrided_slice_2:output:0*lstm_cell_12/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€РУ
$lstm_cell_12/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_12_matmul_1_readvariableop_resource*
_output_shapes
:	dР*
dtype0Р
lstm_cell_12/MatMul_1MatMulzeros:output:0,lstm_cell_12/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€РМ
lstm_cell_12/addAddV2lstm_cell_12/MatMul:product:0lstm_cell_12/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€РН
#lstm_cell_12/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_12_biasadd_readvariableop_resource*
_output_shapes	
:Р*
dtype0Х
lstm_cell_12/BiasAddBiasAddlstm_cell_12/add:z:0+lstm_cell_12/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Р^
lstm_cell_12/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ё
lstm_cell_12/splitSplit%lstm_cell_12/split/split_dim:output:0lstm_cell_12/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€d:€€€€€€€€€d:€€€€€€€€€d:€€€€€€€€€d*
	num_splitn
lstm_cell_12/SigmoidSigmoidlstm_cell_12/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€dp
lstm_cell_12/Sigmoid_1Sigmoidlstm_cell_12/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€dw
lstm_cell_12/mulMullstm_cell_12/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€dh
lstm_cell_12/ReluRelulstm_cell_12/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€dЖ
lstm_cell_12/mul_1Mullstm_cell_12/Sigmoid:y:0lstm_cell_12/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€d{
lstm_cell_12/add_1AddV2lstm_cell_12/mul:z:0lstm_cell_12/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€dp
lstm_cell_12/Sigmoid_2Sigmoidlstm_cell_12/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€de
lstm_cell_12/Relu_1Relulstm_cell_12/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€dК
lstm_cell_12/mul_2Mullstm_cell_12/Sigmoid_2:y:0!lstm_cell_12/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€dn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€d   Є
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“F
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
€€€€€€€€€T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : А
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_12_matmul_readvariableop_resource-lstm_cell_12_matmul_1_readvariableop_resource,lstm_cell_12_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€d:€€€€€€€€€d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_79275*
condR
while_cond_79274*K
output_shapes:
8: : : : :€€€€€€€€€d:€€€€€€€€€d: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€d   ¬
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:€€€€€€€€€d*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€d*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ц
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€dј
NoOpNoOp$^lstm_cell_12/BiasAdd/ReadVariableOp#^lstm_cell_12/MatMul/ReadVariableOp%^lstm_cell_12/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€: : : 2J
#lstm_cell_12/BiasAdd/ReadVariableOp#lstm_cell_12/BiasAdd/ReadVariableOp2H
"lstm_cell_12/MatMul/ReadVariableOp"lstm_cell_12/MatMul/ReadVariableOp2L
$lstm_cell_12/MatMul_1/ReadVariableOp$lstm_cell_12/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
њ'
Ѕ
__inference_adapt_step_77925
iterator%
add_readvariableop_resource:	 %
readvariableop_resource:'
readvariableop_2_resource:ИҐAssignVariableOpҐAssignVariableOp_1ҐAssignVariableOp_2ҐIteratorGetNextҐReadVariableOpҐReadVariableOp_1ҐReadVariableOp_2Ґadd/ReadVariableOpІ
IteratorGetNextIteratorGetNextiterator*
_class
loc:@iterator*"
_output_shapes
: *!
output_shapes
: *
output_types
2o
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       Щ
moments/meanMeanIteratorGetNext:components:0'moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(h
moments/StopGradientStopGradientmoments/mean:output:0*
T0*"
_output_shapes
:Ш
moments/SquaredDifferenceSquaredDifferenceIteratorGetNext:components:0moments/StopGradient:output:0*
T0*"
_output_shapes
: s
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       Ґ
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(n
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 t
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 f
ShapeConst*
_output_shapes
:*
dtype0	*-
value$B"	"                      a
GatherV2/indicesConst*
_output_shapes
:*
dtype0*
valueB"       O
GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : Я
GatherV2GatherV2Shape:output:0GatherV2/indices:output:0GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0	*
_output_shapes
:O
ConstConst*
_output_shapes
:*
dtype0*
valueB: P
ProdProdGatherV2:output:0Const:output:0*
T0	*
_output_shapes
: f
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes
: *
dtype0	X
addAddV2Prod:output:0add/ReadVariableOp:value:0*
T0	*
_output_shapes
: K
CastCastProd:output:0*

DstT0*

SrcT0	*
_output_shapes
: G
Cast_1Castadd:z:0*

DstT0*

SrcT0	*
_output_shapes
: I
truedivRealDivCast:y:0
Cast_1:y:0*
T0*
_output_shapes
: J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?H
subSubsub/x:output:0truediv:z:0*
T0*
_output_shapes
: b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0P
mulMulReadVariableOp:value:0sub:z:0*
T0*
_output_shapes
:X
mul_1Mulmoments/Squeeze:output:0truediv:z:0*
T0*
_output_shapes
:G
add_1AddV2mul:z:0	mul_1:z:0*
T0*
_output_shapes
:d
ReadVariableOp_1ReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0V
sub_1SubReadVariableOp_1:value:0	add_1:z:0*
T0*
_output_shapes
:J
pow/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @J
powPow	sub_1:z:0pow/y:output:0*
T0*
_output_shapes
:f
ReadVariableOp_2ReadVariableOpreadvariableop_2_resource*
_output_shapes
:*
dtype0V
add_2AddV2ReadVariableOp_2:value:0pow:z:0*
T0*
_output_shapes
:E
mul_2Mul	add_2:z:0sub:z:0*
T0*
_output_shapes
:V
sub_2Submoments/Squeeze:output:0	add_1:z:0*
T0*
_output_shapes
:L
pow_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @N
pow_1Pow	sub_2:z:0pow_1/y:output:0*
T0*
_output_shapes
:Z
add_3AddV2moments/Squeeze_1:output:0	pow_1:z:0*
T0*
_output_shapes
:I
mul_3Mul	add_3:z:0truediv:z:0*
T0*
_output_shapes
:I
add_4AddV2	mul_2:z:0	mul_3:z:0*
T0*
_output_shapes
:•
AssignVariableOpAssignVariableOpreadvariableop_resource	add_1:z:0^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(Ш
AssignVariableOp_1AssignVariableOpreadvariableop_2_resource	add_4:z:0^ReadVariableOp_2*
_output_shapes
 *
dtype0*
validate_shape(Ъ
AssignVariableOp_2AssignVariableOpadd_readvariableop_resourceadd:z:0^add/ReadVariableOp*
_output_shapes
 *
dtype0	*
validate_shape(*(
_construction_contextkEagerRuntime*
_input_shapes

: : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12(
AssignVariableOp_2AssignVariableOp_22"
IteratorGetNextIteratorGetNext2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22(
add/ReadVariableOpadd/ReadVariableOp:( $
"
_user_specified_name
iterator
ь9
…
while_body_80276
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_14_matmul_readvariableop_resource_0:2(G
5while_lstm_cell_14_matmul_1_readvariableop_resource_0:
(B
4while_lstm_cell_14_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_14_matmul_readvariableop_resource:2(E
3while_lstm_cell_14_matmul_1_readvariableop_resource:
(@
2while_lstm_cell_14_biasadd_readvariableop_resource:(ИҐ)while/lstm_cell_14/BiasAdd/ReadVariableOpҐ(while/lstm_cell_14/MatMul/ReadVariableOpҐ*while/lstm_cell_14/MatMul_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€2   ¶
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€2*
element_dtype0Ь
(while/lstm_cell_14/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_14_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0є
while/lstm_cell_14/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_14/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€(†
*while/lstm_cell_14/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_14_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0†
while/lstm_cell_14/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_14/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€(Э
while/lstm_cell_14/addAddV2#while/lstm_cell_14/MatMul:product:0%while/lstm_cell_14/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€(Ъ
)while/lstm_cell_14/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_14_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0¶
while/lstm_cell_14/BiasAddBiasAddwhile/lstm_cell_14/add:z:01while/lstm_cell_14/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€(d
"while/lstm_cell_14/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :п
while/lstm_cell_14/splitSplit+while/lstm_cell_14/split/split_dim:output:0#while/lstm_cell_14/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€
:€€€€€€€€€
:€€€€€€€€€
:€€€€€€€€€
*
	num_splitz
while/lstm_cell_14/SigmoidSigmoid!while/lstm_cell_14/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€
|
while/lstm_cell_14/Sigmoid_1Sigmoid!while/lstm_cell_14/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€
Ж
while/lstm_cell_14/mulMul while/lstm_cell_14/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€
t
while/lstm_cell_14/ReluRelu!while/lstm_cell_14/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€
Ш
while/lstm_cell_14/mul_1Mulwhile/lstm_cell_14/Sigmoid:y:0%while/lstm_cell_14/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€
Н
while/lstm_cell_14/add_1AddV2while/lstm_cell_14/mul:z:0while/lstm_cell_14/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€
|
while/lstm_cell_14/Sigmoid_2Sigmoid!while/lstm_cell_14/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€
q
while/lstm_cell_14/Relu_1Reluwhile/lstm_cell_14/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€
Ь
while/lstm_cell_14/mul_2Mul while/lstm_cell_14/Sigmoid_2:y:0'while/lstm_cell_14/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€
r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : н
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell_14/mul_2:z:0*
_output_shapes
: *
element_dtype0:йи“M
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
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_14/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€
y
while/Identity_5Identitywhile/lstm_cell_14/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€
–

while/NoOpNoOp*^while/lstm_cell_14/BiasAdd/ReadVariableOp)^while/lstm_cell_14/MatMul/ReadVariableOp+^while/lstm_cell_14/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_14_biasadd_readvariableop_resource4while_lstm_cell_14_biasadd_readvariableop_resource_0"l
3while_lstm_cell_14_matmul_1_readvariableop_resource5while_lstm_cell_14_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_14_matmul_readvariableop_resource3while_lstm_cell_14_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :€€€€€€€€€
:€€€€€€€€€
: : : : : 2V
)while/lstm_cell_14/BiasAdd/ReadVariableOp)while/lstm_cell_14/BiasAdd/ReadVariableOp2T
(while/lstm_cell_14/MatMul/ReadVariableOp(while/lstm_cell_14/MatMul/ReadVariableOp2X
*while/lstm_cell_14/MatMul_1/ReadVariableOp*while/lstm_cell_14/MatMul_1/ReadVariableOp:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€
:-)
'
_output_shapes
:€€€€€€€€€
:

_output_shapes
: :

_output_shapes
: 
ж
т
,__inference_lstm_cell_14_layer_call_fn_81055

inputs
states_0
states_1
unknown:2(
	unknown_0:
(
	unknown_1:(
identity

identity_1

identity_2ИҐStatefulPartitionedCallІ
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:€€€€€€€€€
:€€€€€€€€€
:€€€€€€€€€
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_lstm_cell_14_layer_call_and_return_conditional_losses_76233o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€
q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:€€€€€€€€€
q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:€€€€€€€€€
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:€€€€€€€€€2:€€€€€€€€€
:€€€€€€€€€
: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€2
 
_user_specified_nameinputs:QM
'
_output_shapes
:€€€€€€€€€

"
_user_specified_name
states_0:QM
'
_output_shapes
:€€€€€€€€€

"
_user_specified_name
states_1
ЭA
ѓ

lstm_6_while_body_78053*
&lstm_6_while_lstm_6_while_loop_counter0
,lstm_6_while_lstm_6_while_maximum_iterations
lstm_6_while_placeholder
lstm_6_while_placeholder_1
lstm_6_while_placeholder_2
lstm_6_while_placeholder_3)
%lstm_6_while_lstm_6_strided_slice_1_0e
alstm_6_while_tensorarrayv2read_tensorlistgetitem_lstm_6_tensorarrayunstack_tensorlistfromtensor_0M
:lstm_6_while_lstm_cell_12_matmul_readvariableop_resource_0:	РO
<lstm_6_while_lstm_cell_12_matmul_1_readvariableop_resource_0:	dРJ
;lstm_6_while_lstm_cell_12_biasadd_readvariableop_resource_0:	Р
lstm_6_while_identity
lstm_6_while_identity_1
lstm_6_while_identity_2
lstm_6_while_identity_3
lstm_6_while_identity_4
lstm_6_while_identity_5'
#lstm_6_while_lstm_6_strided_slice_1c
_lstm_6_while_tensorarrayv2read_tensorlistgetitem_lstm_6_tensorarrayunstack_tensorlistfromtensorK
8lstm_6_while_lstm_cell_12_matmul_readvariableop_resource:	РM
:lstm_6_while_lstm_cell_12_matmul_1_readvariableop_resource:	dРH
9lstm_6_while_lstm_cell_12_biasadd_readvariableop_resource:	РИҐ0lstm_6/while/lstm_cell_12/BiasAdd/ReadVariableOpҐ/lstm_6/while/lstm_cell_12/MatMul/ReadVariableOpҐ1lstm_6/while/lstm_cell_12/MatMul_1/ReadVariableOpП
>lstm_6/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   …
0lstm_6/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemalstm_6_while_tensorarrayv2read_tensorlistgetitem_lstm_6_tensorarrayunstack_tensorlistfromtensor_0lstm_6_while_placeholderGlstm_6/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€*
element_dtype0Ђ
/lstm_6/while/lstm_cell_12/MatMul/ReadVariableOpReadVariableOp:lstm_6_while_lstm_cell_12_matmul_readvariableop_resource_0*
_output_shapes
:	Р*
dtype0ѕ
 lstm_6/while/lstm_cell_12/MatMulMatMul7lstm_6/while/TensorArrayV2Read/TensorListGetItem:item:07lstm_6/while/lstm_cell_12/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Рѓ
1lstm_6/while/lstm_cell_12/MatMul_1/ReadVariableOpReadVariableOp<lstm_6_while_lstm_cell_12_matmul_1_readvariableop_resource_0*
_output_shapes
:	dР*
dtype0ґ
"lstm_6/while/lstm_cell_12/MatMul_1MatMullstm_6_while_placeholder_29lstm_6/while/lstm_cell_12/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Р≥
lstm_6/while/lstm_cell_12/addAddV2*lstm_6/while/lstm_cell_12/MatMul:product:0,lstm_6/while/lstm_cell_12/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€Р©
0lstm_6/while/lstm_cell_12/BiasAdd/ReadVariableOpReadVariableOp;lstm_6_while_lstm_cell_12_biasadd_readvariableop_resource_0*
_output_shapes	
:Р*
dtype0Љ
!lstm_6/while/lstm_cell_12/BiasAddBiasAdd!lstm_6/while/lstm_cell_12/add:z:08lstm_6/while/lstm_cell_12/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Рk
)lstm_6/while/lstm_cell_12/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Д
lstm_6/while/lstm_cell_12/splitSplit2lstm_6/while/lstm_cell_12/split/split_dim:output:0*lstm_6/while/lstm_cell_12/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€d:€€€€€€€€€d:€€€€€€€€€d:€€€€€€€€€d*
	num_splitИ
!lstm_6/while/lstm_cell_12/SigmoidSigmoid(lstm_6/while/lstm_cell_12/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€dК
#lstm_6/while/lstm_cell_12/Sigmoid_1Sigmoid(lstm_6/while/lstm_cell_12/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€dЫ
lstm_6/while/lstm_cell_12/mulMul'lstm_6/while/lstm_cell_12/Sigmoid_1:y:0lstm_6_while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€dВ
lstm_6/while/lstm_cell_12/ReluRelu(lstm_6/while/lstm_cell_12/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€d≠
lstm_6/while/lstm_cell_12/mul_1Mul%lstm_6/while/lstm_cell_12/Sigmoid:y:0,lstm_6/while/lstm_cell_12/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€dҐ
lstm_6/while/lstm_cell_12/add_1AddV2!lstm_6/while/lstm_cell_12/mul:z:0#lstm_6/while/lstm_cell_12/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€dК
#lstm_6/while/lstm_cell_12/Sigmoid_2Sigmoid(lstm_6/while/lstm_cell_12/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€d
 lstm_6/while/lstm_cell_12/Relu_1Relu#lstm_6/while/lstm_cell_12/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€d±
lstm_6/while/lstm_cell_12/mul_2Mul'lstm_6/while/lstm_cell_12/Sigmoid_2:y:0.lstm_6/while/lstm_cell_12/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€dб
1lstm_6/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_6_while_placeholder_1lstm_6_while_placeholder#lstm_6/while/lstm_cell_12/mul_2:z:0*
_output_shapes
: *
element_dtype0:йи“T
lstm_6/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :q
lstm_6/while/addAddV2lstm_6_while_placeholderlstm_6/while/add/y:output:0*
T0*
_output_shapes
: V
lstm_6/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :Г
lstm_6/while/add_1AddV2&lstm_6_while_lstm_6_while_loop_counterlstm_6/while/add_1/y:output:0*
T0*
_output_shapes
: n
lstm_6/while/IdentityIdentitylstm_6/while/add_1:z:0^lstm_6/while/NoOp*
T0*
_output_shapes
: Ж
lstm_6/while/Identity_1Identity,lstm_6_while_lstm_6_while_maximum_iterations^lstm_6/while/NoOp*
T0*
_output_shapes
: n
lstm_6/while/Identity_2Identitylstm_6/while/add:z:0^lstm_6/while/NoOp*
T0*
_output_shapes
: Ы
lstm_6/while/Identity_3IdentityAlstm_6/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_6/while/NoOp*
T0*
_output_shapes
: О
lstm_6/while/Identity_4Identity#lstm_6/while/lstm_cell_12/mul_2:z:0^lstm_6/while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€dО
lstm_6/while/Identity_5Identity#lstm_6/while/lstm_cell_12/add_1:z:0^lstm_6/while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€dм
lstm_6/while/NoOpNoOp1^lstm_6/while/lstm_cell_12/BiasAdd/ReadVariableOp0^lstm_6/while/lstm_cell_12/MatMul/ReadVariableOp2^lstm_6/while/lstm_cell_12/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "7
lstm_6_while_identitylstm_6/while/Identity:output:0";
lstm_6_while_identity_1 lstm_6/while/Identity_1:output:0";
lstm_6_while_identity_2 lstm_6/while/Identity_2:output:0";
lstm_6_while_identity_3 lstm_6/while/Identity_3:output:0";
lstm_6_while_identity_4 lstm_6/while/Identity_4:output:0";
lstm_6_while_identity_5 lstm_6/while/Identity_5:output:0"L
#lstm_6_while_lstm_6_strided_slice_1%lstm_6_while_lstm_6_strided_slice_1_0"x
9lstm_6_while_lstm_cell_12_biasadd_readvariableop_resource;lstm_6_while_lstm_cell_12_biasadd_readvariableop_resource_0"z
:lstm_6_while_lstm_cell_12_matmul_1_readvariableop_resource<lstm_6_while_lstm_cell_12_matmul_1_readvariableop_resource_0"v
8lstm_6_while_lstm_cell_12_matmul_readvariableop_resource:lstm_6_while_lstm_cell_12_matmul_readvariableop_resource_0"ƒ
_lstm_6_while_tensorarrayv2read_tensorlistgetitem_lstm_6_tensorarrayunstack_tensorlistfromtensoralstm_6_while_tensorarrayv2read_tensorlistgetitem_lstm_6_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :€€€€€€€€€d:€€€€€€€€€d: : : : : 2d
0lstm_6/while/lstm_cell_12/BiasAdd/ReadVariableOp0lstm_6/while/lstm_cell_12/BiasAdd/ReadVariableOp2b
/lstm_6/while/lstm_cell_12/MatMul/ReadVariableOp/lstm_6/while/lstm_cell_12/MatMul/ReadVariableOp2f
1lstm_6/while/lstm_cell_12/MatMul_1/ReadVariableOp1lstm_6/while/lstm_cell_12/MatMul_1/ReadVariableOp:Q M

_output_shapes
: 
3
_user_specified_namelstm_6/while/loop_counter:WS

_output_shapes
: 
9
_user_specified_name!lstm_6/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€d:-)
'
_output_shapes
:€€€€€€€€€d:

_output_shapes
: :

_output_shapes
: 
їJ
Щ
A__inference_lstm_6_layer_call_and_return_conditional_losses_77197

inputs>
+lstm_cell_12_matmul_readvariableop_resource:	Р@
-lstm_cell_12_matmul_1_readvariableop_resource:	dР;
,lstm_cell_12_biasadd_readvariableop_resource:	Р
identityИҐ#lstm_cell_12/BiasAdd/ReadVariableOpҐ"lstm_cell_12/MatMul/ReadVariableOpҐ$lstm_cell_12/MatMul_1/ReadVariableOpҐwhileI
ShapeShapeinputs*
T0*
_output_shapes
::нѕ]
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
valueB:—
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
value	B :ds
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
:€€€€€€€€€dR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€dc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::нѕ_
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
valueB:џ
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
€€€€€€€€€і
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   а
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“_
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
valueB:й
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_maskП
"lstm_cell_12/MatMul/ReadVariableOpReadVariableOp+lstm_cell_12_matmul_readvariableop_resource*
_output_shapes
:	Р*
dtype0Ц
lstm_cell_12/MatMulMatMulstrided_slice_2:output:0*lstm_cell_12/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€РУ
$lstm_cell_12/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_12_matmul_1_readvariableop_resource*
_output_shapes
:	dР*
dtype0Р
lstm_cell_12/MatMul_1MatMulzeros:output:0,lstm_cell_12/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€РМ
lstm_cell_12/addAddV2lstm_cell_12/MatMul:product:0lstm_cell_12/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€РН
#lstm_cell_12/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_12_biasadd_readvariableop_resource*
_output_shapes	
:Р*
dtype0Х
lstm_cell_12/BiasAddBiasAddlstm_cell_12/add:z:0+lstm_cell_12/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Р^
lstm_cell_12/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ё
lstm_cell_12/splitSplit%lstm_cell_12/split/split_dim:output:0lstm_cell_12/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€d:€€€€€€€€€d:€€€€€€€€€d:€€€€€€€€€d*
	num_splitn
lstm_cell_12/SigmoidSigmoidlstm_cell_12/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€dp
lstm_cell_12/Sigmoid_1Sigmoidlstm_cell_12/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€dw
lstm_cell_12/mulMullstm_cell_12/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€dh
lstm_cell_12/ReluRelulstm_cell_12/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€dЖ
lstm_cell_12/mul_1Mullstm_cell_12/Sigmoid:y:0lstm_cell_12/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€d{
lstm_cell_12/add_1AddV2lstm_cell_12/mul:z:0lstm_cell_12/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€dp
lstm_cell_12/Sigmoid_2Sigmoidlstm_cell_12/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€de
lstm_cell_12/Relu_1Relulstm_cell_12/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€dК
lstm_cell_12/mul_2Mullstm_cell_12/Sigmoid_2:y:0!lstm_cell_12/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€dn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€d   Є
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“F
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
€€€€€€€€€T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : А
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_12_matmul_readvariableop_resource-lstm_cell_12_matmul_1_readvariableop_resource,lstm_cell_12_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€d:€€€€€€€€€d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_77113*
condR
while_cond_77112*K
output_shapes:
8: : : : :€€€€€€€€€d:€€€€€€€€€d: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€d   ¬
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:€€€€€€€€€d*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€d*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ц
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€dј
NoOpNoOp$^lstm_cell_12/BiasAdd/ReadVariableOp#^lstm_cell_12/MatMul/ReadVariableOp%^lstm_cell_12/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€: : : 2J
#lstm_cell_12/BiasAdd/ReadVariableOp#lstm_cell_12/BiasAdd/ReadVariableOp2H
"lstm_cell_12/MatMul/ReadVariableOp"lstm_cell_12/MatMul/ReadVariableOp2L
$lstm_cell_12/MatMul_1/ReadVariableOp$lstm_cell_12/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
ЭA
ѓ

lstm_7_while_body_78200*
&lstm_7_while_lstm_7_while_loop_counter0
,lstm_7_while_lstm_7_while_maximum_iterations
lstm_7_while_placeholder
lstm_7_while_placeholder_1
lstm_7_while_placeholder_2
lstm_7_while_placeholder_3)
%lstm_7_while_lstm_7_strided_slice_1_0e
alstm_7_while_tensorarrayv2read_tensorlistgetitem_lstm_7_tensorarrayunstack_tensorlistfromtensor_0M
:lstm_7_while_lstm_cell_13_matmul_readvariableop_resource_0:	d»O
<lstm_7_while_lstm_cell_13_matmul_1_readvariableop_resource_0:	2»J
;lstm_7_while_lstm_cell_13_biasadd_readvariableop_resource_0:	»
lstm_7_while_identity
lstm_7_while_identity_1
lstm_7_while_identity_2
lstm_7_while_identity_3
lstm_7_while_identity_4
lstm_7_while_identity_5'
#lstm_7_while_lstm_7_strided_slice_1c
_lstm_7_while_tensorarrayv2read_tensorlistgetitem_lstm_7_tensorarrayunstack_tensorlistfromtensorK
8lstm_7_while_lstm_cell_13_matmul_readvariableop_resource:	d»M
:lstm_7_while_lstm_cell_13_matmul_1_readvariableop_resource:	2»H
9lstm_7_while_lstm_cell_13_biasadd_readvariableop_resource:	»ИҐ0lstm_7/while/lstm_cell_13/BiasAdd/ReadVariableOpҐ/lstm_7/while/lstm_cell_13/MatMul/ReadVariableOpҐ1lstm_7/while/lstm_cell_13/MatMul_1/ReadVariableOpП
>lstm_7/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€d   …
0lstm_7/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemalstm_7_while_tensorarrayv2read_tensorlistgetitem_lstm_7_tensorarrayunstack_tensorlistfromtensor_0lstm_7_while_placeholderGlstm_7/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€d*
element_dtype0Ђ
/lstm_7/while/lstm_cell_13/MatMul/ReadVariableOpReadVariableOp:lstm_7_while_lstm_cell_13_matmul_readvariableop_resource_0*
_output_shapes
:	d»*
dtype0ѕ
 lstm_7/while/lstm_cell_13/MatMulMatMul7lstm_7/while/TensorArrayV2Read/TensorListGetItem:item:07lstm_7/while/lstm_cell_13/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€»ѓ
1lstm_7/while/lstm_cell_13/MatMul_1/ReadVariableOpReadVariableOp<lstm_7_while_lstm_cell_13_matmul_1_readvariableop_resource_0*
_output_shapes
:	2»*
dtype0ґ
"lstm_7/while/lstm_cell_13/MatMul_1MatMullstm_7_while_placeholder_29lstm_7/while/lstm_cell_13/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€»≥
lstm_7/while/lstm_cell_13/addAddV2*lstm_7/while/lstm_cell_13/MatMul:product:0,lstm_7/while/lstm_cell_13/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€»©
0lstm_7/while/lstm_cell_13/BiasAdd/ReadVariableOpReadVariableOp;lstm_7_while_lstm_cell_13_biasadd_readvariableop_resource_0*
_output_shapes	
:»*
dtype0Љ
!lstm_7/while/lstm_cell_13/BiasAddBiasAdd!lstm_7/while/lstm_cell_13/add:z:08lstm_7/while/lstm_cell_13/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€»k
)lstm_7/while/lstm_cell_13/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Д
lstm_7/while/lstm_cell_13/splitSplit2lstm_7/while/lstm_cell_13/split/split_dim:output:0*lstm_7/while/lstm_cell_13/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€2:€€€€€€€€€2:€€€€€€€€€2:€€€€€€€€€2*
	num_splitИ
!lstm_7/while/lstm_cell_13/SigmoidSigmoid(lstm_7/while/lstm_cell_13/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€2К
#lstm_7/while/lstm_cell_13/Sigmoid_1Sigmoid(lstm_7/while/lstm_cell_13/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€2Ы
lstm_7/while/lstm_cell_13/mulMul'lstm_7/while/lstm_cell_13/Sigmoid_1:y:0lstm_7_while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€2В
lstm_7/while/lstm_cell_13/ReluRelu(lstm_7/while/lstm_cell_13/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€2≠
lstm_7/while/lstm_cell_13/mul_1Mul%lstm_7/while/lstm_cell_13/Sigmoid:y:0,lstm_7/while/lstm_cell_13/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€2Ґ
lstm_7/while/lstm_cell_13/add_1AddV2!lstm_7/while/lstm_cell_13/mul:z:0#lstm_7/while/lstm_cell_13/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€2К
#lstm_7/while/lstm_cell_13/Sigmoid_2Sigmoid(lstm_7/while/lstm_cell_13/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€2
 lstm_7/while/lstm_cell_13/Relu_1Relu#lstm_7/while/lstm_cell_13/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€2±
lstm_7/while/lstm_cell_13/mul_2Mul'lstm_7/while/lstm_cell_13/Sigmoid_2:y:0.lstm_7/while/lstm_cell_13/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€2б
1lstm_7/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_7_while_placeholder_1lstm_7_while_placeholder#lstm_7/while/lstm_cell_13/mul_2:z:0*
_output_shapes
: *
element_dtype0:йи“T
lstm_7/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :q
lstm_7/while/addAddV2lstm_7_while_placeholderlstm_7/while/add/y:output:0*
T0*
_output_shapes
: V
lstm_7/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :Г
lstm_7/while/add_1AddV2&lstm_7_while_lstm_7_while_loop_counterlstm_7/while/add_1/y:output:0*
T0*
_output_shapes
: n
lstm_7/while/IdentityIdentitylstm_7/while/add_1:z:0^lstm_7/while/NoOp*
T0*
_output_shapes
: Ж
lstm_7/while/Identity_1Identity,lstm_7_while_lstm_7_while_maximum_iterations^lstm_7/while/NoOp*
T0*
_output_shapes
: n
lstm_7/while/Identity_2Identitylstm_7/while/add:z:0^lstm_7/while/NoOp*
T0*
_output_shapes
: Ы
lstm_7/while/Identity_3IdentityAlstm_7/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_7/while/NoOp*
T0*
_output_shapes
: О
lstm_7/while/Identity_4Identity#lstm_7/while/lstm_cell_13/mul_2:z:0^lstm_7/while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€2О
lstm_7/while/Identity_5Identity#lstm_7/while/lstm_cell_13/add_1:z:0^lstm_7/while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€2м
lstm_7/while/NoOpNoOp1^lstm_7/while/lstm_cell_13/BiasAdd/ReadVariableOp0^lstm_7/while/lstm_cell_13/MatMul/ReadVariableOp2^lstm_7/while/lstm_cell_13/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "7
lstm_7_while_identitylstm_7/while/Identity:output:0";
lstm_7_while_identity_1 lstm_7/while/Identity_1:output:0";
lstm_7_while_identity_2 lstm_7/while/Identity_2:output:0";
lstm_7_while_identity_3 lstm_7/while/Identity_3:output:0";
lstm_7_while_identity_4 lstm_7/while/Identity_4:output:0";
lstm_7_while_identity_5 lstm_7/while/Identity_5:output:0"L
#lstm_7_while_lstm_7_strided_slice_1%lstm_7_while_lstm_7_strided_slice_1_0"x
9lstm_7_while_lstm_cell_13_biasadd_readvariableop_resource;lstm_7_while_lstm_cell_13_biasadd_readvariableop_resource_0"z
:lstm_7_while_lstm_cell_13_matmul_1_readvariableop_resource<lstm_7_while_lstm_cell_13_matmul_1_readvariableop_resource_0"v
8lstm_7_while_lstm_cell_13_matmul_readvariableop_resource:lstm_7_while_lstm_cell_13_matmul_readvariableop_resource_0"ƒ
_lstm_7_while_tensorarrayv2read_tensorlistgetitem_lstm_7_tensorarrayunstack_tensorlistfromtensoralstm_7_while_tensorarrayv2read_tensorlistgetitem_lstm_7_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :€€€€€€€€€2:€€€€€€€€€2: : : : : 2d
0lstm_7/while/lstm_cell_13/BiasAdd/ReadVariableOp0lstm_7/while/lstm_cell_13/BiasAdd/ReadVariableOp2b
/lstm_7/while/lstm_cell_13/MatMul/ReadVariableOp/lstm_7/while/lstm_cell_13/MatMul/ReadVariableOp2f
1lstm_7/while/lstm_cell_13/MatMul_1/ReadVariableOp1lstm_7/while/lstm_cell_13/MatMul_1/ReadVariableOp:Q M

_output_shapes
: 
3
_user_specified_namelstm_7/while/loop_counter:WS

_output_shapes
: 
9
_user_specified_name!lstm_7/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€2:-)
'
_output_shapes
:€€€€€€€€€2:

_output_shapes
: :

_output_shapes
: 
Т	
Њ
while_cond_75546
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_75546___redundant_placeholder03
/while_while_cond_75546___redundant_placeholder13
/while_while_cond_75546___redundant_placeholder23
/while_while_cond_75546___redundant_placeholder3
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
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :€€€€€€€€€d:€€€€€€€€€d: :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€d:-)
'
_output_shapes
:€€€€€€€€€d:

_output_shapes
: :

_output_shapes
:
Ј#
№
while_body_75897
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0-
while_lstm_cell_13_75921_0:	d»-
while_lstm_cell_13_75923_0:	2»)
while_lstm_cell_13_75925_0:	»
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor+
while_lstm_cell_13_75921:	d»+
while_lstm_cell_13_75923:	2»'
while_lstm_cell_13_75925:	»ИҐ*while/lstm_cell_13/StatefulPartitionedCallИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€d   ¶
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€d*
element_dtype0ѓ
*while/lstm_cell_13/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_13_75921_0while_lstm_cell_13_75923_0while_lstm_cell_13_75925_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:€€€€€€€€€2:€€€€€€€€€2:€€€€€€€€€2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_lstm_cell_13_layer_call_and_return_conditional_losses_75883№
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_13/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:йи“M
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
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: Р
while/Identity_4Identity3while/lstm_cell_13/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€2Р
while/Identity_5Identity3while/lstm_cell_13/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€2y

while/NoOpNoOp+^while/lstm_cell_13/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"6
while_lstm_cell_13_75921while_lstm_cell_13_75921_0"6
while_lstm_cell_13_75923while_lstm_cell_13_75923_0"6
while_lstm_cell_13_75925while_lstm_cell_13_75925_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :€€€€€€€€€2:€€€€€€€€€2: : : : : 2X
*while/lstm_cell_13/StatefulPartitionedCall*while/lstm_cell_13/StatefulPartitionedCall:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€2:-)
'
_output_shapes
:€€€€€€€€€2:

_output_shapes
: :

_output_shapes
: 
н8
ѕ
while_body_76592
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_12_matmul_readvariableop_resource_0:	РH
5while_lstm_cell_12_matmul_1_readvariableop_resource_0:	dРC
4while_lstm_cell_12_biasadd_readvariableop_resource_0:	Р
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_12_matmul_readvariableop_resource:	РF
3while_lstm_cell_12_matmul_1_readvariableop_resource:	dРA
2while_lstm_cell_12_biasadd_readvariableop_resource:	РИҐ)while/lstm_cell_12/BiasAdd/ReadVariableOpҐ(while/lstm_cell_12/MatMul/ReadVariableOpҐ*while/lstm_cell_12/MatMul_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ¶
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€*
element_dtype0Э
(while/lstm_cell_12/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_12_matmul_readvariableop_resource_0*
_output_shapes
:	Р*
dtype0Ї
while/lstm_cell_12/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_12/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Р°
*while/lstm_cell_12/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_12_matmul_1_readvariableop_resource_0*
_output_shapes
:	dР*
dtype0°
while/lstm_cell_12/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_12/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€РЮ
while/lstm_cell_12/addAddV2#while/lstm_cell_12/MatMul:product:0%while/lstm_cell_12/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€РЫ
)while/lstm_cell_12/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_12_biasadd_readvariableop_resource_0*
_output_shapes	
:Р*
dtype0І
while/lstm_cell_12/BiasAddBiasAddwhile/lstm_cell_12/add:z:01while/lstm_cell_12/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Рd
"while/lstm_cell_12/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :п
while/lstm_cell_12/splitSplit+while/lstm_cell_12/split/split_dim:output:0#while/lstm_cell_12/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€d:€€€€€€€€€d:€€€€€€€€€d:€€€€€€€€€d*
	num_splitz
while/lstm_cell_12/SigmoidSigmoid!while/lstm_cell_12/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€d|
while/lstm_cell_12/Sigmoid_1Sigmoid!while/lstm_cell_12/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€dЖ
while/lstm_cell_12/mulMul while/lstm_cell_12/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€dt
while/lstm_cell_12/ReluRelu!while/lstm_cell_12/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€dШ
while/lstm_cell_12/mul_1Mulwhile/lstm_cell_12/Sigmoid:y:0%while/lstm_cell_12/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€dН
while/lstm_cell_12/add_1AddV2while/lstm_cell_12/mul:z:0while/lstm_cell_12/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€d|
while/lstm_cell_12/Sigmoid_2Sigmoid!while/lstm_cell_12/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€dq
while/lstm_cell_12/Relu_1Reluwhile/lstm_cell_12/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€dЬ
while/lstm_cell_12/mul_2Mul while/lstm_cell_12/Sigmoid_2:y:0'while/lstm_cell_12/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€d≈
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_12/mul_2:z:0*
_output_shapes
: *
element_dtype0:йи“M
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
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_12/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€dy
while/Identity_5Identitywhile/lstm_cell_12/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€d–

while/NoOpNoOp*^while/lstm_cell_12/BiasAdd/ReadVariableOp)^while/lstm_cell_12/MatMul/ReadVariableOp+^while/lstm_cell_12/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_12_biasadd_readvariableop_resource4while_lstm_cell_12_biasadd_readvariableop_resource_0"l
3while_lstm_cell_12_matmul_1_readvariableop_resource5while_lstm_cell_12_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_12_matmul_readvariableop_resource3while_lstm_cell_12_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :€€€€€€€€€d:€€€€€€€€€d: : : : : 2V
)while/lstm_cell_12/BiasAdd/ReadVariableOp)while/lstm_cell_12/BiasAdd/ReadVariableOp2T
(while/lstm_cell_12/MatMul/ReadVariableOp(while/lstm_cell_12/MatMul/ReadVariableOp2X
*while/lstm_cell_12/MatMul_1/ReadVariableOp*while/lstm_cell_12/MatMul_1/ReadVariableOp:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€d:-)
'
_output_shapes
:€€€€€€€€€d:

_output_shapes
: :

_output_shapes
: 
Ш

c
D__inference_dropout_8_layer_call_and_return_conditional_losses_80818

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  †?d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€
Q
dropout/ShapeShapeinputs*
T0*
_output_shapes
::нѕМ
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€
*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЌћL>¶
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€
T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    У
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€
a
IdentityIdentitydropout/SelectV2:output:0*
T0*'
_output_shapes
:€€€€€€€€€
"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€
:O K
'
_output_shapes
:€€€€€€€€€

 
_user_specified_nameinputs
їJ
Щ
A__inference_lstm_6_layer_call_and_return_conditional_losses_79502

inputs>
+lstm_cell_12_matmul_readvariableop_resource:	Р@
-lstm_cell_12_matmul_1_readvariableop_resource:	dР;
,lstm_cell_12_biasadd_readvariableop_resource:	Р
identityИҐ#lstm_cell_12/BiasAdd/ReadVariableOpҐ"lstm_cell_12/MatMul/ReadVariableOpҐ$lstm_cell_12/MatMul_1/ReadVariableOpҐwhileI
ShapeShapeinputs*
T0*
_output_shapes
::нѕ]
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
valueB:—
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
value	B :ds
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
:€€€€€€€€€dR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€dc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::нѕ_
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
valueB:џ
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
€€€€€€€€€і
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   а
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“_
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
valueB:й
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_maskП
"lstm_cell_12/MatMul/ReadVariableOpReadVariableOp+lstm_cell_12_matmul_readvariableop_resource*
_output_shapes
:	Р*
dtype0Ц
lstm_cell_12/MatMulMatMulstrided_slice_2:output:0*lstm_cell_12/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€РУ
$lstm_cell_12/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_12_matmul_1_readvariableop_resource*
_output_shapes
:	dР*
dtype0Р
lstm_cell_12/MatMul_1MatMulzeros:output:0,lstm_cell_12/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€РМ
lstm_cell_12/addAddV2lstm_cell_12/MatMul:product:0lstm_cell_12/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€РН
#lstm_cell_12/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_12_biasadd_readvariableop_resource*
_output_shapes	
:Р*
dtype0Х
lstm_cell_12/BiasAddBiasAddlstm_cell_12/add:z:0+lstm_cell_12/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Р^
lstm_cell_12/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ё
lstm_cell_12/splitSplit%lstm_cell_12/split/split_dim:output:0lstm_cell_12/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€d:€€€€€€€€€d:€€€€€€€€€d:€€€€€€€€€d*
	num_splitn
lstm_cell_12/SigmoidSigmoidlstm_cell_12/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€dp
lstm_cell_12/Sigmoid_1Sigmoidlstm_cell_12/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€dw
lstm_cell_12/mulMullstm_cell_12/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€dh
lstm_cell_12/ReluRelulstm_cell_12/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€dЖ
lstm_cell_12/mul_1Mullstm_cell_12/Sigmoid:y:0lstm_cell_12/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€d{
lstm_cell_12/add_1AddV2lstm_cell_12/mul:z:0lstm_cell_12/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€dp
lstm_cell_12/Sigmoid_2Sigmoidlstm_cell_12/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€de
lstm_cell_12/Relu_1Relulstm_cell_12/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€dК
lstm_cell_12/mul_2Mullstm_cell_12/Sigmoid_2:y:0!lstm_cell_12/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€dn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€d   Є
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“F
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
€€€€€€€€€T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : А
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_12_matmul_readvariableop_resource-lstm_cell_12_matmul_1_readvariableop_resource,lstm_cell_12_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€d:€€€€€€€€€d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_79418*
condR
while_cond_79417*K
output_shapes:
8: : : : :€€€€€€€€€d:€€€€€€€€€d: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€d   ¬
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:€€€€€€€€€d*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€d*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ц
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€dј
NoOpNoOp$^lstm_cell_12/BiasAdd/ReadVariableOp#^lstm_cell_12/MatMul/ReadVariableOp%^lstm_cell_12/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€: : : 2J
#lstm_cell_12/BiasAdd/ReadVariableOp#lstm_cell_12/BiasAdd/ReadVariableOp2H
"lstm_cell_12/MatMul/ReadVariableOp"lstm_cell_12/MatMul/ReadVariableOp2L
$lstm_cell_12/MatMul_1/ReadVariableOp$lstm_cell_12/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
ёP
ѕ
$sequential_2_lstm_6_while_body_75096D
@sequential_2_lstm_6_while_sequential_2_lstm_6_while_loop_counterJ
Fsequential_2_lstm_6_while_sequential_2_lstm_6_while_maximum_iterations)
%sequential_2_lstm_6_while_placeholder+
'sequential_2_lstm_6_while_placeholder_1+
'sequential_2_lstm_6_while_placeholder_2+
'sequential_2_lstm_6_while_placeholder_3C
?sequential_2_lstm_6_while_sequential_2_lstm_6_strided_slice_1_0
{sequential_2_lstm_6_while_tensorarrayv2read_tensorlistgetitem_sequential_2_lstm_6_tensorarrayunstack_tensorlistfromtensor_0Z
Gsequential_2_lstm_6_while_lstm_cell_12_matmul_readvariableop_resource_0:	Р\
Isequential_2_lstm_6_while_lstm_cell_12_matmul_1_readvariableop_resource_0:	dРW
Hsequential_2_lstm_6_while_lstm_cell_12_biasadd_readvariableop_resource_0:	Р&
"sequential_2_lstm_6_while_identity(
$sequential_2_lstm_6_while_identity_1(
$sequential_2_lstm_6_while_identity_2(
$sequential_2_lstm_6_while_identity_3(
$sequential_2_lstm_6_while_identity_4(
$sequential_2_lstm_6_while_identity_5A
=sequential_2_lstm_6_while_sequential_2_lstm_6_strided_slice_1}
ysequential_2_lstm_6_while_tensorarrayv2read_tensorlistgetitem_sequential_2_lstm_6_tensorarrayunstack_tensorlistfromtensorX
Esequential_2_lstm_6_while_lstm_cell_12_matmul_readvariableop_resource:	РZ
Gsequential_2_lstm_6_while_lstm_cell_12_matmul_1_readvariableop_resource:	dРU
Fsequential_2_lstm_6_while_lstm_cell_12_biasadd_readvariableop_resource:	РИҐ=sequential_2/lstm_6/while/lstm_cell_12/BiasAdd/ReadVariableOpҐ<sequential_2/lstm_6/while/lstm_cell_12/MatMul/ReadVariableOpҐ>sequential_2/lstm_6/while/lstm_cell_12/MatMul_1/ReadVariableOpЬ
Ksequential_2/lstm_6/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   К
=sequential_2/lstm_6/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem{sequential_2_lstm_6_while_tensorarrayv2read_tensorlistgetitem_sequential_2_lstm_6_tensorarrayunstack_tensorlistfromtensor_0%sequential_2_lstm_6_while_placeholderTsequential_2/lstm_6/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€*
element_dtype0≈
<sequential_2/lstm_6/while/lstm_cell_12/MatMul/ReadVariableOpReadVariableOpGsequential_2_lstm_6_while_lstm_cell_12_matmul_readvariableop_resource_0*
_output_shapes
:	Р*
dtype0ц
-sequential_2/lstm_6/while/lstm_cell_12/MatMulMatMulDsequential_2/lstm_6/while/TensorArrayV2Read/TensorListGetItem:item:0Dsequential_2/lstm_6/while/lstm_cell_12/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Р…
>sequential_2/lstm_6/while/lstm_cell_12/MatMul_1/ReadVariableOpReadVariableOpIsequential_2_lstm_6_while_lstm_cell_12_matmul_1_readvariableop_resource_0*
_output_shapes
:	dР*
dtype0Ё
/sequential_2/lstm_6/while/lstm_cell_12/MatMul_1MatMul'sequential_2_lstm_6_while_placeholder_2Fsequential_2/lstm_6/while/lstm_cell_12/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€РЏ
*sequential_2/lstm_6/while/lstm_cell_12/addAddV27sequential_2/lstm_6/while/lstm_cell_12/MatMul:product:09sequential_2/lstm_6/while/lstm_cell_12/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€Р√
=sequential_2/lstm_6/while/lstm_cell_12/BiasAdd/ReadVariableOpReadVariableOpHsequential_2_lstm_6_while_lstm_cell_12_biasadd_readvariableop_resource_0*
_output_shapes	
:Р*
dtype0г
.sequential_2/lstm_6/while/lstm_cell_12/BiasAddBiasAdd.sequential_2/lstm_6/while/lstm_cell_12/add:z:0Esequential_2/lstm_6/while/lstm_cell_12/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Рx
6sequential_2/lstm_6/while/lstm_cell_12/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ђ
,sequential_2/lstm_6/while/lstm_cell_12/splitSplit?sequential_2/lstm_6/while/lstm_cell_12/split/split_dim:output:07sequential_2/lstm_6/while/lstm_cell_12/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€d:€€€€€€€€€d:€€€€€€€€€d:€€€€€€€€€d*
	num_splitҐ
.sequential_2/lstm_6/while/lstm_cell_12/SigmoidSigmoid5sequential_2/lstm_6/while/lstm_cell_12/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€d§
0sequential_2/lstm_6/while/lstm_cell_12/Sigmoid_1Sigmoid5sequential_2/lstm_6/while/lstm_cell_12/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€d¬
*sequential_2/lstm_6/while/lstm_cell_12/mulMul4sequential_2/lstm_6/while/lstm_cell_12/Sigmoid_1:y:0'sequential_2_lstm_6_while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€dЬ
+sequential_2/lstm_6/while/lstm_cell_12/ReluRelu5sequential_2/lstm_6/while/lstm_cell_12/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€d‘
,sequential_2/lstm_6/while/lstm_cell_12/mul_1Mul2sequential_2/lstm_6/while/lstm_cell_12/Sigmoid:y:09sequential_2/lstm_6/while/lstm_cell_12/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€d…
,sequential_2/lstm_6/while/lstm_cell_12/add_1AddV2.sequential_2/lstm_6/while/lstm_cell_12/mul:z:00sequential_2/lstm_6/while/lstm_cell_12/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€d§
0sequential_2/lstm_6/while/lstm_cell_12/Sigmoid_2Sigmoid5sequential_2/lstm_6/while/lstm_cell_12/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€dЩ
-sequential_2/lstm_6/while/lstm_cell_12/Relu_1Relu0sequential_2/lstm_6/while/lstm_cell_12/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€dЎ
,sequential_2/lstm_6/while/lstm_cell_12/mul_2Mul4sequential_2/lstm_6/while/lstm_cell_12/Sigmoid_2:y:0;sequential_2/lstm_6/while/lstm_cell_12/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€dХ
>sequential_2/lstm_6/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem'sequential_2_lstm_6_while_placeholder_1%sequential_2_lstm_6_while_placeholder0sequential_2/lstm_6/while/lstm_cell_12/mul_2:z:0*
_output_shapes
: *
element_dtype0:йи“a
sequential_2/lstm_6/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :Ш
sequential_2/lstm_6/while/addAddV2%sequential_2_lstm_6_while_placeholder(sequential_2/lstm_6/while/add/y:output:0*
T0*
_output_shapes
: c
!sequential_2/lstm_6/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :Ј
sequential_2/lstm_6/while/add_1AddV2@sequential_2_lstm_6_while_sequential_2_lstm_6_while_loop_counter*sequential_2/lstm_6/while/add_1/y:output:0*
T0*
_output_shapes
: Х
"sequential_2/lstm_6/while/IdentityIdentity#sequential_2/lstm_6/while/add_1:z:0^sequential_2/lstm_6/while/NoOp*
T0*
_output_shapes
: Ї
$sequential_2/lstm_6/while/Identity_1IdentityFsequential_2_lstm_6_while_sequential_2_lstm_6_while_maximum_iterations^sequential_2/lstm_6/while/NoOp*
T0*
_output_shapes
: Х
$sequential_2/lstm_6/while/Identity_2Identity!sequential_2/lstm_6/while/add:z:0^sequential_2/lstm_6/while/NoOp*
T0*
_output_shapes
: ¬
$sequential_2/lstm_6/while/Identity_3IdentityNsequential_2/lstm_6/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^sequential_2/lstm_6/while/NoOp*
T0*
_output_shapes
: µ
$sequential_2/lstm_6/while/Identity_4Identity0sequential_2/lstm_6/while/lstm_cell_12/mul_2:z:0^sequential_2/lstm_6/while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€dµ
$sequential_2/lstm_6/while/Identity_5Identity0sequential_2/lstm_6/while/lstm_cell_12/add_1:z:0^sequential_2/lstm_6/while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€d†
sequential_2/lstm_6/while/NoOpNoOp>^sequential_2/lstm_6/while/lstm_cell_12/BiasAdd/ReadVariableOp=^sequential_2/lstm_6/while/lstm_cell_12/MatMul/ReadVariableOp?^sequential_2/lstm_6/while/lstm_cell_12/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Q
"sequential_2_lstm_6_while_identity+sequential_2/lstm_6/while/Identity:output:0"U
$sequential_2_lstm_6_while_identity_1-sequential_2/lstm_6/while/Identity_1:output:0"U
$sequential_2_lstm_6_while_identity_2-sequential_2/lstm_6/while/Identity_2:output:0"U
$sequential_2_lstm_6_while_identity_3-sequential_2/lstm_6/while/Identity_3:output:0"U
$sequential_2_lstm_6_while_identity_4-sequential_2/lstm_6/while/Identity_4:output:0"U
$sequential_2_lstm_6_while_identity_5-sequential_2/lstm_6/while/Identity_5:output:0"Т
Fsequential_2_lstm_6_while_lstm_cell_12_biasadd_readvariableop_resourceHsequential_2_lstm_6_while_lstm_cell_12_biasadd_readvariableop_resource_0"Ф
Gsequential_2_lstm_6_while_lstm_cell_12_matmul_1_readvariableop_resourceIsequential_2_lstm_6_while_lstm_cell_12_matmul_1_readvariableop_resource_0"Р
Esequential_2_lstm_6_while_lstm_cell_12_matmul_readvariableop_resourceGsequential_2_lstm_6_while_lstm_cell_12_matmul_readvariableop_resource_0"А
=sequential_2_lstm_6_while_sequential_2_lstm_6_strided_slice_1?sequential_2_lstm_6_while_sequential_2_lstm_6_strided_slice_1_0"ш
ysequential_2_lstm_6_while_tensorarrayv2read_tensorlistgetitem_sequential_2_lstm_6_tensorarrayunstack_tensorlistfromtensor{sequential_2_lstm_6_while_tensorarrayv2read_tensorlistgetitem_sequential_2_lstm_6_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :€€€€€€€€€d:€€€€€€€€€d: : : : : 2~
=sequential_2/lstm_6/while/lstm_cell_12/BiasAdd/ReadVariableOp=sequential_2/lstm_6/while/lstm_cell_12/BiasAdd/ReadVariableOp2|
<sequential_2/lstm_6/while/lstm_cell_12/MatMul/ReadVariableOp<sequential_2/lstm_6/while/lstm_cell_12/MatMul/ReadVariableOp2А
>sequential_2/lstm_6/while/lstm_cell_12/MatMul_1/ReadVariableOp>sequential_2/lstm_6/while/lstm_cell_12/MatMul_1/ReadVariableOp:^ Z

_output_shapes
: 
@
_user_specified_name(&sequential_2/lstm_6/while/loop_counter:d`

_output_shapes
: 
F
_user_specified_name.,sequential_2/lstm_6/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€d:-)
'
_output_shapes
:€€€€€€€€€d:

_output_shapes
: :

_output_shapes
: 
А
Є
,__inference_sequential_2_layer_call_fn_77956

inputs
unknown
	unknown_0
	unknown_1:	Р
	unknown_2:	dР
	unknown_3:	Р
	unknown_4:	d»
	unknown_5:	2»
	unknown_6:	»
	unknown_7:2(
	unknown_8:
(
	unknown_9:(

unknown_10:


unknown_11:
identityИҐStatefulPartitionedCallл
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_sequential_2_layer_call_and_return_conditional_losses_77574o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*\
_input_shapesK
I:€€€€€€€€€::: : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:($
"
_output_shapes
::($
"
_output_shapes
:
‘
Г
G__inference_lstm_cell_12_layer_call_and_return_conditional_losses_75678

inputs

states
states_11
matmul_readvariableop_resource:	Р3
 matmul_1_readvariableop_resource:	dР.
biasadd_readvariableop_resource:	Р
identity

identity_1

identity_2ИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpҐMatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	Р*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Рy
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	dР*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Рe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€Рs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:Р*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€РQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ґ
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€d:€€€€€€€€€d:€€€€€€€€€d:€€€€€€€€€d*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:€€€€€€€€€dV
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:€€€€€€€€€dU
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:€€€€€€€€€dN
ReluRelusplit:output:2*
T0*'
_output_shapes
:€€€€€€€€€d_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€dT
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€dV
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:€€€€€€€€€dK
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€dc
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€dX
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€dZ

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€dZ

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€dС
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:€€€€€€€€€:€€€€€€€€€d:€€€€€€€€€d: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:OK
'
_output_shapes
:€€€€€€€€€d
 
_user_specified_namestates:OK
'
_output_shapes
:€€€€€€€€€d
 
_user_specified_namestates
Г
є
,__inference_sequential_2_layer_call_fn_77603
input_3
unknown
	unknown_0
	unknown_1:	Р
	unknown_2:	dР
	unknown_3:	Р
	unknown_4:	d»
	unknown_5:	2»
	unknown_6:	»
	unknown_7:2(
	unknown_8:
(
	unknown_9:(

unknown_10:


unknown_11:
identityИҐStatefulPartitionedCallм
StatefulPartitionedCallStatefulPartitionedCallinput_3unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_sequential_2_layer_call_and_return_conditional_losses_77574o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*\
_input_shapesK
I:€€€€€€€€€::: : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
+
_output_shapes
:€€€€€€€€€
!
_user_specified_name	input_3:($
"
_output_shapes
::($
"
_output_shapes
:
ь9
…
while_body_80711
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_14_matmul_readvariableop_resource_0:2(G
5while_lstm_cell_14_matmul_1_readvariableop_resource_0:
(B
4while_lstm_cell_14_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_14_matmul_readvariableop_resource:2(E
3while_lstm_cell_14_matmul_1_readvariableop_resource:
(@
2while_lstm_cell_14_biasadd_readvariableop_resource:(ИҐ)while/lstm_cell_14/BiasAdd/ReadVariableOpҐ(while/lstm_cell_14/MatMul/ReadVariableOpҐ*while/lstm_cell_14/MatMul_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€2   ¶
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€2*
element_dtype0Ь
(while/lstm_cell_14/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_14_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0є
while/lstm_cell_14/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_14/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€(†
*while/lstm_cell_14/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_14_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0†
while/lstm_cell_14/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_14/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€(Э
while/lstm_cell_14/addAddV2#while/lstm_cell_14/MatMul:product:0%while/lstm_cell_14/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€(Ъ
)while/lstm_cell_14/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_14_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0¶
while/lstm_cell_14/BiasAddBiasAddwhile/lstm_cell_14/add:z:01while/lstm_cell_14/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€(d
"while/lstm_cell_14/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :п
while/lstm_cell_14/splitSplit+while/lstm_cell_14/split/split_dim:output:0#while/lstm_cell_14/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€
:€€€€€€€€€
:€€€€€€€€€
:€€€€€€€€€
*
	num_splitz
while/lstm_cell_14/SigmoidSigmoid!while/lstm_cell_14/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€
|
while/lstm_cell_14/Sigmoid_1Sigmoid!while/lstm_cell_14/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€
Ж
while/lstm_cell_14/mulMul while/lstm_cell_14/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€
t
while/lstm_cell_14/ReluRelu!while/lstm_cell_14/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€
Ш
while/lstm_cell_14/mul_1Mulwhile/lstm_cell_14/Sigmoid:y:0%while/lstm_cell_14/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€
Н
while/lstm_cell_14/add_1AddV2while/lstm_cell_14/mul:z:0while/lstm_cell_14/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€
|
while/lstm_cell_14/Sigmoid_2Sigmoid!while/lstm_cell_14/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€
q
while/lstm_cell_14/Relu_1Reluwhile/lstm_cell_14/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€
Ь
while/lstm_cell_14/mul_2Mul while/lstm_cell_14/Sigmoid_2:y:0'while/lstm_cell_14/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€
r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : н
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell_14/mul_2:z:0*
_output_shapes
: *
element_dtype0:йи“M
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
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_14/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€
y
while/Identity_5Identitywhile/lstm_cell_14/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€
–

while/NoOpNoOp*^while/lstm_cell_14/BiasAdd/ReadVariableOp)^while/lstm_cell_14/MatMul/ReadVariableOp+^while/lstm_cell_14/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_14_biasadd_readvariableop_resource4while_lstm_cell_14_biasadd_readvariableop_resource_0"l
3while_lstm_cell_14_matmul_1_readvariableop_resource5while_lstm_cell_14_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_14_matmul_readvariableop_resource3while_lstm_cell_14_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :€€€€€€€€€
:€€€€€€€€€
: : : : : 2V
)while/lstm_cell_14/BiasAdd/ReadVariableOp)while/lstm_cell_14/BiasAdd/ReadVariableOp2T
(while/lstm_cell_14/MatMul/ReadVariableOp(while/lstm_cell_14/MatMul/ReadVariableOp2X
*while/lstm_cell_14/MatMul_1/ReadVariableOp*while/lstm_cell_14/MatMul_1/ReadVariableOp:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€
:-)
'
_output_shapes
:€€€€€€€€€
:

_output_shapes
: :

_output_shapes
: 
щJ
Ы
A__inference_lstm_6_layer_call_and_return_conditional_losses_79073
inputs_0>
+lstm_cell_12_matmul_readvariableop_resource:	Р@
-lstm_cell_12_matmul_1_readvariableop_resource:	dР;
,lstm_cell_12_biasadd_readvariableop_resource:	Р
identityИҐ#lstm_cell_12/BiasAdd/ReadVariableOpҐ"lstm_cell_12/MatMul/ReadVariableOpҐ$lstm_cell_12/MatMul_1/ReadVariableOpҐwhileK
ShapeShapeinputs_0*
T0*
_output_shapes
::нѕ]
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
valueB:—
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
value	B :ds
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
:€€€€€€€€€dR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€dc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::нѕ_
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
valueB:џ
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
€€€€€€€€€і
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   а
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“_
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
valueB:й
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_maskП
"lstm_cell_12/MatMul/ReadVariableOpReadVariableOp+lstm_cell_12_matmul_readvariableop_resource*
_output_shapes
:	Р*
dtype0Ц
lstm_cell_12/MatMulMatMulstrided_slice_2:output:0*lstm_cell_12/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€РУ
$lstm_cell_12/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_12_matmul_1_readvariableop_resource*
_output_shapes
:	dР*
dtype0Р
lstm_cell_12/MatMul_1MatMulzeros:output:0,lstm_cell_12/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€РМ
lstm_cell_12/addAddV2lstm_cell_12/MatMul:product:0lstm_cell_12/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€РН
#lstm_cell_12/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_12_biasadd_readvariableop_resource*
_output_shapes	
:Р*
dtype0Х
lstm_cell_12/BiasAddBiasAddlstm_cell_12/add:z:0+lstm_cell_12/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Р^
lstm_cell_12/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ё
lstm_cell_12/splitSplit%lstm_cell_12/split/split_dim:output:0lstm_cell_12/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€d:€€€€€€€€€d:€€€€€€€€€d:€€€€€€€€€d*
	num_splitn
lstm_cell_12/SigmoidSigmoidlstm_cell_12/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€dp
lstm_cell_12/Sigmoid_1Sigmoidlstm_cell_12/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€dw
lstm_cell_12/mulMullstm_cell_12/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€dh
lstm_cell_12/ReluRelulstm_cell_12/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€dЖ
lstm_cell_12/mul_1Mullstm_cell_12/Sigmoid:y:0lstm_cell_12/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€d{
lstm_cell_12/add_1AddV2lstm_cell_12/mul:z:0lstm_cell_12/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€dp
lstm_cell_12/Sigmoid_2Sigmoidlstm_cell_12/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€de
lstm_cell_12/Relu_1Relulstm_cell_12/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€dК
lstm_cell_12/mul_2Mullstm_cell_12/Sigmoid_2:y:0!lstm_cell_12/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€dn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€d   Є
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“F
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
€€€€€€€€€T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : А
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_12_matmul_readvariableop_resource-lstm_cell_12_matmul_1_readvariableop_resource,lstm_cell_12_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€d:€€€€€€€€€d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_78989*
condR
while_cond_78988*K
output_shapes:
8: : : : :€€€€€€€€€d:€€€€€€€€€d: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€d   Ћ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€d*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€d*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Я
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€dј
NoOpNoOp$^lstm_cell_12/BiasAdd/ReadVariableOp#^lstm_cell_12/MatMul/ReadVariableOp%^lstm_cell_12/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€€€€€€€€€€: : : 2J
#lstm_cell_12/BiasAdd/ReadVariableOp#lstm_cell_12/BiasAdd/ReadVariableOp2H
"lstm_cell_12/MatMul/ReadVariableOp"lstm_cell_12/MatMul/ReadVariableOp2L
$lstm_cell_12/MatMul_1/ReadVariableOp$lstm_cell_12/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
"
_user_specified_name
inputs_0
Т	
Њ
while_cond_75896
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_75896___redundant_placeholder03
/while_while_cond_75896___redundant_placeholder13
/while_while_cond_75896___redundant_placeholder23
/while_while_cond_75896___redundant_placeholder3
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
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :€€€€€€€€€2:€€€€€€€€€2: :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€2:-)
'
_output_shapes
:€€€€€€€€€2:

_output_shapes
: :

_output_shapes
:
з
b
D__inference_dropout_6_layer_call_and_return_conditional_losses_77209

inputs

identity_1R
IdentityIdentityinputs*
T0*+
_output_shapes
:€€€€€€€€€d_

Identity_1IdentityIdentity:output:0*
T0*+
_output_shapes
:€€€€€€€€€d"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€d:S O
+
_output_shapes
:€€€€€€€€€d
 
_user_specified_nameinputs
№
Е
G__inference_lstm_cell_12_layer_call_and_return_conditional_losses_80908

inputs
states_0
states_11
matmul_readvariableop_resource:	Р3
 matmul_1_readvariableop_resource:	dР.
biasadd_readvariableop_resource:	Р
identity

identity_1

identity_2ИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpҐMatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	Р*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Рy
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	dР*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Рe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€Рs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:Р*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€РQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ґ
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€d:€€€€€€€€€d:€€€€€€€€€d:€€€€€€€€€d*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:€€€€€€€€€dV
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:€€€€€€€€€dU
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:€€€€€€€€€dN
ReluRelusplit:output:2*
T0*'
_output_shapes
:€€€€€€€€€d_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€dT
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€dV
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:€€€€€€€€€dK
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€dc
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€dX
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€dZ

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€dZ

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€dС
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:€€€€€€€€€:€€€€€€€€€d:€€€€€€€€€d: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:QM
'
_output_shapes
:€€€€€€€€€d
"
_user_specified_name
states_0:QM
'
_output_shapes
:€€€€€€€€€d
"
_user_specified_name
states_1
≠
E
)__inference_dropout_7_layer_call_fn_80155

inputs
identity≥
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€2* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dropout_7_layer_call_and_return_conditional_losses_77365d
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:€€€€€€€€€2"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€2:S O
+
_output_shapes
:€€€€€€€€€2
 
_user_specified_nameinputs
 
А
G__inference_lstm_cell_14_layer_call_and_return_conditional_losses_76380

inputs

states
states_10
matmul_readvariableop_resource:2(2
 matmul_1_readvariableop_resource:
(-
biasadd_readvariableop_resource:(
identity

identity_1

identity_2ИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpҐMatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2(*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€(x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0m
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€(d
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€(r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:(*
dtype0m
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€(Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ґ
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€
:€€€€€€€€€
:€€€€€€€€€
:€€€€€€€€€
*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:€€€€€€€€€
V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:€€€€€€€€€
U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:€€€€€€€€€
N
ReluRelusplit:output:2*
T0*'
_output_shapes
:€€€€€€€€€
_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€
T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€
V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:€€€€€€€€€
K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€
c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€
X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€
Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€
Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€
С
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:€€€€€€€€€2:€€€€€€€€€
:€€€€€€€€€
: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€2
 
_user_specified_nameinputs:OK
'
_output_shapes
:€€€€€€€€€

 
_user_specified_namestates:OK
'
_output_shapes
:€€€€€€€€€

 
_user_specified_namestates
Т	
Њ
while_cond_76755
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_76755___redundant_placeholder03
/while_while_cond_76755___redundant_placeholder13
/while_while_cond_76755___redundant_placeholder23
/while_while_cond_76755___redundant_placeholder3
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
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :€€€€€€€€€2:€€€€€€€€€2: :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€2:-)
'
_output_shapes
:€€€€€€€€€2:

_output_shapes
: :

_output_shapes
:
†8
А
A__inference_lstm_7_layer_call_and_return_conditional_losses_75966

inputs%
lstm_cell_13_75884:	d»%
lstm_cell_13_75886:	2»!
lstm_cell_13_75888:	»
identityИҐ$lstm_cell_13/StatefulPartitionedCallҐwhileI
ShapeShapeinputs*
T0*
_output_shapes
::нѕ]
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
valueB:—
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
value	B :2s
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
:€€€€€€€€€2R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€dR
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::нѕ_
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
valueB:џ
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
€€€€€€€€€і
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€d   а
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“_
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
valueB:й
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€d*
shrink_axis_maskс
$lstm_cell_13/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_13_75884lstm_cell_13_75886lstm_cell_13_75888*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:€€€€€€€€€2:€€€€€€€€€2:€€€€€€€€€2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_lstm_cell_13_layer_call_and_return_conditional_losses_75883n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€2   Є
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“F
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
€€€€€€€€€T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ≤
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_13_75884lstm_cell_13_75886lstm_cell_13_75888*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€2:€€€€€€€€€2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_75897*
condR
while_cond_75896*K
output_shapes:
8: : : : :€€€€€€€€€2:€€€€€€€€€2: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€2   Ћ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Я
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€2[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€2u
NoOpNoOp%^lstm_cell_13/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€€€€€€€€€€d: : : 2L
$lstm_cell_13/StatefulPartitionedCall$lstm_cell_13/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€d
 
_user_specified_nameinputs
≈	
у
B__inference_dense_2_layer_call_and_return_conditional_losses_80842

inputs0
matmul_readvariableop_resource:
-
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:
*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€
: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€

 
_user_specified_nameinputs
”
∞
#__inference_signature_wrapper_77880
input_3
unknown
	unknown_0
	unknown_1:	Р
	unknown_2:	dР
	unknown_3:	Р
	unknown_4:	d»
	unknown_5:	2»
	unknown_6:	»
	unknown_7:2(
	unknown_8:
(
	unknown_9:(

unknown_10:


unknown_11:
identityИҐStatefulPartitionedCall≈
StatefulPartitionedCallStatefulPartitionedCallinput_3unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *)
f$R"
 __inference__wrapped_model_75469o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*\
_input_shapesK
I:€€€€€€€€€::: : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
+
_output_shapes
:€€€€€€€€€
!
_user_specified_name	input_3:($
"
_output_shapes
::($
"
_output_shapes
:
ЭA
ѓ

lstm_6_while_body_78513*
&lstm_6_while_lstm_6_while_loop_counter0
,lstm_6_while_lstm_6_while_maximum_iterations
lstm_6_while_placeholder
lstm_6_while_placeholder_1
lstm_6_while_placeholder_2
lstm_6_while_placeholder_3)
%lstm_6_while_lstm_6_strided_slice_1_0e
alstm_6_while_tensorarrayv2read_tensorlistgetitem_lstm_6_tensorarrayunstack_tensorlistfromtensor_0M
:lstm_6_while_lstm_cell_12_matmul_readvariableop_resource_0:	РO
<lstm_6_while_lstm_cell_12_matmul_1_readvariableop_resource_0:	dРJ
;lstm_6_while_lstm_cell_12_biasadd_readvariableop_resource_0:	Р
lstm_6_while_identity
lstm_6_while_identity_1
lstm_6_while_identity_2
lstm_6_while_identity_3
lstm_6_while_identity_4
lstm_6_while_identity_5'
#lstm_6_while_lstm_6_strided_slice_1c
_lstm_6_while_tensorarrayv2read_tensorlistgetitem_lstm_6_tensorarrayunstack_tensorlistfromtensorK
8lstm_6_while_lstm_cell_12_matmul_readvariableop_resource:	РM
:lstm_6_while_lstm_cell_12_matmul_1_readvariableop_resource:	dРH
9lstm_6_while_lstm_cell_12_biasadd_readvariableop_resource:	РИҐ0lstm_6/while/lstm_cell_12/BiasAdd/ReadVariableOpҐ/lstm_6/while/lstm_cell_12/MatMul/ReadVariableOpҐ1lstm_6/while/lstm_cell_12/MatMul_1/ReadVariableOpП
>lstm_6/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   …
0lstm_6/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemalstm_6_while_tensorarrayv2read_tensorlistgetitem_lstm_6_tensorarrayunstack_tensorlistfromtensor_0lstm_6_while_placeholderGlstm_6/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€*
element_dtype0Ђ
/lstm_6/while/lstm_cell_12/MatMul/ReadVariableOpReadVariableOp:lstm_6_while_lstm_cell_12_matmul_readvariableop_resource_0*
_output_shapes
:	Р*
dtype0ѕ
 lstm_6/while/lstm_cell_12/MatMulMatMul7lstm_6/while/TensorArrayV2Read/TensorListGetItem:item:07lstm_6/while/lstm_cell_12/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Рѓ
1lstm_6/while/lstm_cell_12/MatMul_1/ReadVariableOpReadVariableOp<lstm_6_while_lstm_cell_12_matmul_1_readvariableop_resource_0*
_output_shapes
:	dР*
dtype0ґ
"lstm_6/while/lstm_cell_12/MatMul_1MatMullstm_6_while_placeholder_29lstm_6/while/lstm_cell_12/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Р≥
lstm_6/while/lstm_cell_12/addAddV2*lstm_6/while/lstm_cell_12/MatMul:product:0,lstm_6/while/lstm_cell_12/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€Р©
0lstm_6/while/lstm_cell_12/BiasAdd/ReadVariableOpReadVariableOp;lstm_6_while_lstm_cell_12_biasadd_readvariableop_resource_0*
_output_shapes	
:Р*
dtype0Љ
!lstm_6/while/lstm_cell_12/BiasAddBiasAdd!lstm_6/while/lstm_cell_12/add:z:08lstm_6/while/lstm_cell_12/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Рk
)lstm_6/while/lstm_cell_12/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Д
lstm_6/while/lstm_cell_12/splitSplit2lstm_6/while/lstm_cell_12/split/split_dim:output:0*lstm_6/while/lstm_cell_12/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€d:€€€€€€€€€d:€€€€€€€€€d:€€€€€€€€€d*
	num_splitИ
!lstm_6/while/lstm_cell_12/SigmoidSigmoid(lstm_6/while/lstm_cell_12/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€dК
#lstm_6/while/lstm_cell_12/Sigmoid_1Sigmoid(lstm_6/while/lstm_cell_12/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€dЫ
lstm_6/while/lstm_cell_12/mulMul'lstm_6/while/lstm_cell_12/Sigmoid_1:y:0lstm_6_while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€dВ
lstm_6/while/lstm_cell_12/ReluRelu(lstm_6/while/lstm_cell_12/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€d≠
lstm_6/while/lstm_cell_12/mul_1Mul%lstm_6/while/lstm_cell_12/Sigmoid:y:0,lstm_6/while/lstm_cell_12/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€dҐ
lstm_6/while/lstm_cell_12/add_1AddV2!lstm_6/while/lstm_cell_12/mul:z:0#lstm_6/while/lstm_cell_12/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€dК
#lstm_6/while/lstm_cell_12/Sigmoid_2Sigmoid(lstm_6/while/lstm_cell_12/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€d
 lstm_6/while/lstm_cell_12/Relu_1Relu#lstm_6/while/lstm_cell_12/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€d±
lstm_6/while/lstm_cell_12/mul_2Mul'lstm_6/while/lstm_cell_12/Sigmoid_2:y:0.lstm_6/while/lstm_cell_12/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€dб
1lstm_6/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_6_while_placeholder_1lstm_6_while_placeholder#lstm_6/while/lstm_cell_12/mul_2:z:0*
_output_shapes
: *
element_dtype0:йи“T
lstm_6/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :q
lstm_6/while/addAddV2lstm_6_while_placeholderlstm_6/while/add/y:output:0*
T0*
_output_shapes
: V
lstm_6/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :Г
lstm_6/while/add_1AddV2&lstm_6_while_lstm_6_while_loop_counterlstm_6/while/add_1/y:output:0*
T0*
_output_shapes
: n
lstm_6/while/IdentityIdentitylstm_6/while/add_1:z:0^lstm_6/while/NoOp*
T0*
_output_shapes
: Ж
lstm_6/while/Identity_1Identity,lstm_6_while_lstm_6_while_maximum_iterations^lstm_6/while/NoOp*
T0*
_output_shapes
: n
lstm_6/while/Identity_2Identitylstm_6/while/add:z:0^lstm_6/while/NoOp*
T0*
_output_shapes
: Ы
lstm_6/while/Identity_3IdentityAlstm_6/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_6/while/NoOp*
T0*
_output_shapes
: О
lstm_6/while/Identity_4Identity#lstm_6/while/lstm_cell_12/mul_2:z:0^lstm_6/while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€dО
lstm_6/while/Identity_5Identity#lstm_6/while/lstm_cell_12/add_1:z:0^lstm_6/while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€dм
lstm_6/while/NoOpNoOp1^lstm_6/while/lstm_cell_12/BiasAdd/ReadVariableOp0^lstm_6/while/lstm_cell_12/MatMul/ReadVariableOp2^lstm_6/while/lstm_cell_12/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "7
lstm_6_while_identitylstm_6/while/Identity:output:0";
lstm_6_while_identity_1 lstm_6/while/Identity_1:output:0";
lstm_6_while_identity_2 lstm_6/while/Identity_2:output:0";
lstm_6_while_identity_3 lstm_6/while/Identity_3:output:0";
lstm_6_while_identity_4 lstm_6/while/Identity_4:output:0";
lstm_6_while_identity_5 lstm_6/while/Identity_5:output:0"L
#lstm_6_while_lstm_6_strided_slice_1%lstm_6_while_lstm_6_strided_slice_1_0"x
9lstm_6_while_lstm_cell_12_biasadd_readvariableop_resource;lstm_6_while_lstm_cell_12_biasadd_readvariableop_resource_0"z
:lstm_6_while_lstm_cell_12_matmul_1_readvariableop_resource<lstm_6_while_lstm_cell_12_matmul_1_readvariableop_resource_0"v
8lstm_6_while_lstm_cell_12_matmul_readvariableop_resource:lstm_6_while_lstm_cell_12_matmul_readvariableop_resource_0"ƒ
_lstm_6_while_tensorarrayv2read_tensorlistgetitem_lstm_6_tensorarrayunstack_tensorlistfromtensoralstm_6_while_tensorarrayv2read_tensorlistgetitem_lstm_6_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :€€€€€€€€€d:€€€€€€€€€d: : : : : 2d
0lstm_6/while/lstm_cell_12/BiasAdd/ReadVariableOp0lstm_6/while/lstm_cell_12/BiasAdd/ReadVariableOp2b
/lstm_6/while/lstm_cell_12/MatMul/ReadVariableOp/lstm_6/while/lstm_cell_12/MatMul/ReadVariableOp2f
1lstm_6/while/lstm_cell_12/MatMul_1/ReadVariableOp1lstm_6/while/lstm_cell_12/MatMul_1/ReadVariableOp:Q M

_output_shapes
: 
3
_user_specified_namelstm_6/while/loop_counter:WS

_output_shapes
: 
9
_user_specified_name!lstm_6/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€d:-)
'
_output_shapes
:€€€€€€€€€d:

_output_shapes
: :

_output_shapes
: 
Т	
Њ
while_cond_79631
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_79631___redundant_placeholder03
/while_while_cond_79631___redundant_placeholder13
/while_while_cond_79631___redundant_placeholder23
/while_while_cond_79631___redundant_placeholder3
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
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :€€€€€€€€€2:€€€€€€€€€2: :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€2:-)
'
_output_shapes
:€€€€€€€€€2:

_output_shapes
: :

_output_shapes
:
Т	
Њ
while_cond_80420
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_80420___redundant_placeholder03
/while_while_cond_80420___redundant_placeholder13
/while_while_cond_80420___redundant_placeholder23
/while_while_cond_80420___redundant_placeholder3
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
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :€€€€€€€€€
:€€€€€€€€€
: :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€
:-)
'
_output_shapes
:€€€€€€€€€
:

_output_shapes
: :

_output_shapes
:
Т	
Њ
while_cond_79274
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_79274___redundant_placeholder03
/while_while_cond_79274___redundant_placeholder13
/while_while_cond_79274___redundant_placeholder23
/while_while_cond_79274___redundant_placeholder3
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
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :€€€€€€€€€d:€€€€€€€€€d: :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€d:-)
'
_output_shapes
:€€€€€€€€€d:

_output_shapes
: :

_output_shapes
:
Т	
Њ
while_cond_76247
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_76247___redundant_placeholder03
/while_while_cond_76247___redundant_placeholder13
/while_while_cond_76247___redundant_placeholder23
/while_while_cond_76247___redundant_placeholder3
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
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :€€€€€€€€€
:€€€€€€€€€
: :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€
:-)
'
_output_shapes
:€€€€€€€€€
:

_output_shapes
: :

_output_shapes
:
л
ќ
$sequential_2_lstm_7_while_cond_75235D
@sequential_2_lstm_7_while_sequential_2_lstm_7_while_loop_counterJ
Fsequential_2_lstm_7_while_sequential_2_lstm_7_while_maximum_iterations)
%sequential_2_lstm_7_while_placeholder+
'sequential_2_lstm_7_while_placeholder_1+
'sequential_2_lstm_7_while_placeholder_2+
'sequential_2_lstm_7_while_placeholder_3F
Bsequential_2_lstm_7_while_less_sequential_2_lstm_7_strided_slice_1[
Wsequential_2_lstm_7_while_sequential_2_lstm_7_while_cond_75235___redundant_placeholder0[
Wsequential_2_lstm_7_while_sequential_2_lstm_7_while_cond_75235___redundant_placeholder1[
Wsequential_2_lstm_7_while_sequential_2_lstm_7_while_cond_75235___redundant_placeholder2[
Wsequential_2_lstm_7_while_sequential_2_lstm_7_while_cond_75235___redundant_placeholder3&
"sequential_2_lstm_7_while_identity
≤
sequential_2/lstm_7/while/LessLess%sequential_2_lstm_7_while_placeholderBsequential_2_lstm_7_while_less_sequential_2_lstm_7_strided_slice_1*
T0*
_output_shapes
: s
"sequential_2/lstm_7/while/IdentityIdentity"sequential_2/lstm_7/while/Less:z:0*
T0
*
_output_shapes
: "Q
"sequential_2_lstm_7_while_identity+sequential_2/lstm_7/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :€€€€€€€€€2:€€€€€€€€€2: :::::^ Z

_output_shapes
: 
@
_user_specified_name(&sequential_2/lstm_7/while/loop_counter:d`

_output_shapes
: 
F
_user_specified_name.,sequential_2/lstm_7/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€2:-)
'
_output_shapes
:€€€€€€€€€2:

_output_shapes
: :

_output_shapes
:
И
≤
&__inference_lstm_8_layer_call_fn_80194
inputs_0
unknown:2(
	unknown_0:
(
	unknown_1:(
identityИҐStatefulPartitionedCallе
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_lstm_8_layer_call_and_return_conditional_losses_76465o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€€€€€€€€€€2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€2
"
_user_specified_name
inputs_0
Т	
Њ
while_cond_80710
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_80710___redundant_placeholder03
/while_while_cond_80710___redundant_placeholder13
/while_while_cond_80710___redundant_placeholder23
/while_while_cond_80710___redundant_placeholder3
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
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :€€€€€€€€€
:€€€€€€€€€
: :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€
:-)
'
_output_shapes
:€€€€€€€€€
:

_output_shapes
: :

_output_shapes
:
н8
ѕ
while_body_79132
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_12_matmul_readvariableop_resource_0:	РH
5while_lstm_cell_12_matmul_1_readvariableop_resource_0:	dРC
4while_lstm_cell_12_biasadd_readvariableop_resource_0:	Р
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_12_matmul_readvariableop_resource:	РF
3while_lstm_cell_12_matmul_1_readvariableop_resource:	dРA
2while_lstm_cell_12_biasadd_readvariableop_resource:	РИҐ)while/lstm_cell_12/BiasAdd/ReadVariableOpҐ(while/lstm_cell_12/MatMul/ReadVariableOpҐ*while/lstm_cell_12/MatMul_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ¶
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€*
element_dtype0Э
(while/lstm_cell_12/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_12_matmul_readvariableop_resource_0*
_output_shapes
:	Р*
dtype0Ї
while/lstm_cell_12/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_12/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Р°
*while/lstm_cell_12/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_12_matmul_1_readvariableop_resource_0*
_output_shapes
:	dР*
dtype0°
while/lstm_cell_12/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_12/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€РЮ
while/lstm_cell_12/addAddV2#while/lstm_cell_12/MatMul:product:0%while/lstm_cell_12/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€РЫ
)while/lstm_cell_12/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_12_biasadd_readvariableop_resource_0*
_output_shapes	
:Р*
dtype0І
while/lstm_cell_12/BiasAddBiasAddwhile/lstm_cell_12/add:z:01while/lstm_cell_12/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Рd
"while/lstm_cell_12/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :п
while/lstm_cell_12/splitSplit+while/lstm_cell_12/split/split_dim:output:0#while/lstm_cell_12/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€d:€€€€€€€€€d:€€€€€€€€€d:€€€€€€€€€d*
	num_splitz
while/lstm_cell_12/SigmoidSigmoid!while/lstm_cell_12/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€d|
while/lstm_cell_12/Sigmoid_1Sigmoid!while/lstm_cell_12/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€dЖ
while/lstm_cell_12/mulMul while/lstm_cell_12/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€dt
while/lstm_cell_12/ReluRelu!while/lstm_cell_12/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€dШ
while/lstm_cell_12/mul_1Mulwhile/lstm_cell_12/Sigmoid:y:0%while/lstm_cell_12/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€dН
while/lstm_cell_12/add_1AddV2while/lstm_cell_12/mul:z:0while/lstm_cell_12/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€d|
while/lstm_cell_12/Sigmoid_2Sigmoid!while/lstm_cell_12/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€dq
while/lstm_cell_12/Relu_1Reluwhile/lstm_cell_12/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€dЬ
while/lstm_cell_12/mul_2Mul while/lstm_cell_12/Sigmoid_2:y:0'while/lstm_cell_12/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€d≈
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_12/mul_2:z:0*
_output_shapes
: *
element_dtype0:йи“M
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
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_12/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€dy
while/Identity_5Identitywhile/lstm_cell_12/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€d–

while/NoOpNoOp*^while/lstm_cell_12/BiasAdd/ReadVariableOp)^while/lstm_cell_12/MatMul/ReadVariableOp+^while/lstm_cell_12/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_12_biasadd_readvariableop_resource4while_lstm_cell_12_biasadd_readvariableop_resource_0"l
3while_lstm_cell_12_matmul_1_readvariableop_resource5while_lstm_cell_12_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_12_matmul_readvariableop_resource3while_lstm_cell_12_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :€€€€€€€€€d:€€€€€€€€€d: : : : : 2V
)while/lstm_cell_12/BiasAdd/ReadVariableOp)while/lstm_cell_12/BiasAdd/ReadVariableOp2T
(while/lstm_cell_12/MatMul/ReadVariableOp(while/lstm_cell_12/MatMul/ReadVariableOp2X
*while/lstm_cell_12/MatMul_1/ReadVariableOp*while/lstm_cell_12/MatMul_1/ReadVariableOp:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€d:-)
'
_output_shapes
:€€€€€€€€€d:

_output_shapes
: :

_output_shapes
: 
Ј#
№
while_body_75547
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0-
while_lstm_cell_12_75571_0:	Р-
while_lstm_cell_12_75573_0:	dР)
while_lstm_cell_12_75575_0:	Р
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor+
while_lstm_cell_12_75571:	Р+
while_lstm_cell_12_75573:	dР'
while_lstm_cell_12_75575:	РИҐ*while/lstm_cell_12/StatefulPartitionedCallИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ¶
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€*
element_dtype0ѓ
*while/lstm_cell_12/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_12_75571_0while_lstm_cell_12_75573_0while_lstm_cell_12_75575_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:€€€€€€€€€d:€€€€€€€€€d:€€€€€€€€€d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_lstm_cell_12_layer_call_and_return_conditional_losses_75533№
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_12/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:йи“M
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
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: Р
while/Identity_4Identity3while/lstm_cell_12/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€dР
while/Identity_5Identity3while/lstm_cell_12/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€dy

while/NoOpNoOp+^while/lstm_cell_12/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"6
while_lstm_cell_12_75571while_lstm_cell_12_75571_0"6
while_lstm_cell_12_75573while_lstm_cell_12_75573_0"6
while_lstm_cell_12_75575while_lstm_cell_12_75575_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :€€€€€€€€€d:€€€€€€€€€d: : : : : 2X
*while/lstm_cell_12/StatefulPartitionedCall*while/lstm_cell_12/StatefulPartitionedCall:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€d:-)
'
_output_shapes
:€€€€€€€€€d:

_output_shapes
: :

_output_shapes
: 
№
Е
G__inference_lstm_cell_13_layer_call_and_return_conditional_losses_81006

inputs
states_0
states_11
matmul_readvariableop_resource:	d»3
 matmul_1_readvariableop_resource:	2».
biasadd_readvariableop_resource:	»
identity

identity_1

identity_2ИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpҐMatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	d»*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€»y
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	2»*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€»e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€»s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:»*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€»Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ґ
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€2:€€€€€€€€€2:€€€€€€€€€2:€€€€€€€€€2*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:€€€€€€€€€2V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:€€€€€€€€€2U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:€€€€€€€€€2N
ReluRelusplit:output:2*
T0*'
_output_shapes
:€€€€€€€€€2_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€2T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€2V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:€€€€€€€€€2K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€2c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€2X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€2Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€2Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€2С
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:€€€€€€€€€d:€€€€€€€€€2:€€€€€€€€€2: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€d
 
_user_specified_nameinputs:QM
'
_output_shapes
:€€€€€€€€€2
"
_user_specified_name
states_0:QM
'
_output_shapes
:€€€€€€€€€2
"
_user_specified_name
states_1
д

 
lstm_7_while_cond_78199*
&lstm_7_while_lstm_7_while_loop_counter0
,lstm_7_while_lstm_7_while_maximum_iterations
lstm_7_while_placeholder
lstm_7_while_placeholder_1
lstm_7_while_placeholder_2
lstm_7_while_placeholder_3,
(lstm_7_while_less_lstm_7_strided_slice_1A
=lstm_7_while_lstm_7_while_cond_78199___redundant_placeholder0A
=lstm_7_while_lstm_7_while_cond_78199___redundant_placeholder1A
=lstm_7_while_lstm_7_while_cond_78199___redundant_placeholder2A
=lstm_7_while_lstm_7_while_cond_78199___redundant_placeholder3
lstm_7_while_identity
~
lstm_7/while/LessLesslstm_7_while_placeholder(lstm_7_while_less_lstm_7_strided_slice_1*
T0*
_output_shapes
: Y
lstm_7/while/IdentityIdentitylstm_7/while/Less:z:0*
T0
*
_output_shapes
: "7
lstm_7_while_identitylstm_7/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :€€€€€€€€€2:€€€€€€€€€2: :::::Q M

_output_shapes
: 
3
_user_specified_namelstm_7/while/loop_counter:WS

_output_shapes
: 
9
_user_specified_name!lstm_7/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€2:-)
'
_output_shapes
:€€€€€€€€€2:

_output_shapes
: :

_output_shapes
:
Т	
Њ
while_cond_80275
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_80275___redundant_placeholder03
/while_while_cond_80275___redundant_placeholder13
/while_while_cond_80275___redundant_placeholder23
/while_while_cond_80275___redundant_placeholder3
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
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :€€€€€€€€€
:€€€€€€€€€
: :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€
:-)
'
_output_shapes
:€€€€€€€€€
:

_output_shapes
: :

_output_shapes
:
И
≤
&__inference_lstm_8_layer_call_fn_80183
inputs_0
unknown:2(
	unknown_0:
(
	unknown_1:(
identityИҐStatefulPartitionedCallе
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_lstm_8_layer_call_and_return_conditional_losses_76318o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€€€€€€€€€€2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€2
"
_user_specified_name
inputs_0
Ќ$
÷
while_body_76395
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0,
while_lstm_cell_14_76419_0:2(,
while_lstm_cell_14_76421_0:
((
while_lstm_cell_14_76423_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor*
while_lstm_cell_14_76419:2(*
while_lstm_cell_14_76421:
(&
while_lstm_cell_14_76423:(ИҐ*while/lstm_cell_14/StatefulPartitionedCallИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€2   ¶
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€2*
element_dtype0ѓ
*while/lstm_cell_14/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_14_76419_0while_lstm_cell_14_76421_0while_lstm_cell_14_76423_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:€€€€€€€€€
:€€€€€€€€€
:€€€€€€€€€
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_lstm_cell_14_layer_call_and_return_conditional_losses_76380r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : Д
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:03while/lstm_cell_14/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:йи“M
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
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: Р
while/Identity_4Identity3while/lstm_cell_14/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€
Р
while/Identity_5Identity3while/lstm_cell_14/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€
y

while/NoOpNoOp+^while/lstm_cell_14/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"6
while_lstm_cell_14_76419while_lstm_cell_14_76419_0"6
while_lstm_cell_14_76421while_lstm_cell_14_76421_0"6
while_lstm_cell_14_76423while_lstm_cell_14_76423_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :€€€€€€€€€
:€€€€€€€€€
: : : : : 2X
*while/lstm_cell_14/StatefulPartitionedCall*while/lstm_cell_14/StatefulPartitionedCall:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€
:-)
'
_output_shapes
:€€€€€€€€€
:

_output_shapes
: :

_output_shapes
: "у
L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*Ѓ
serving_defaultЪ
?
input_34
serving_default_input_3:0€€€€€€€€€;
dense_20
StatefulPartitionedCall:0€€€€€€€€€tensorflow/serving/predict:ЈШ
–
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer-2
layer_with_weights-2
layer-3
layer-4
layer_with_weights-3
layer-5
layer-6
layer_with_weights-4
layer-7
		variables

trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures"
_tf_keras_sequential
”
	keras_api

_keep_axis
_reduce_axis
_reduce_axis_mask
_broadcast_shape
mean

adapt_mean
variance
adapt_variance
	count
_adapt_function"
_tf_keras_layer
Џ
	variables
trainable_variables
regularization_losses
	keras_api
__call__
* &call_and_return_all_conditional_losses
!_random_generator
"cell
#
state_spec"
_tf_keras_rnn_layer
Љ
$	variables
%trainable_variables
&regularization_losses
'	keras_api
(__call__
*)&call_and_return_all_conditional_losses
*_random_generator"
_tf_keras_layer
Џ
+	variables
,trainable_variables
-regularization_losses
.	keras_api
/__call__
*0&call_and_return_all_conditional_losses
1_random_generator
2cell
3
state_spec"
_tf_keras_rnn_layer
Љ
4	variables
5trainable_variables
6regularization_losses
7	keras_api
8__call__
*9&call_and_return_all_conditional_losses
:_random_generator"
_tf_keras_layer
Џ
;	variables
<trainable_variables
=regularization_losses
>	keras_api
?__call__
*@&call_and_return_all_conditional_losses
A_random_generator
Bcell
C
state_spec"
_tf_keras_rnn_layer
Љ
D	variables
Etrainable_variables
Fregularization_losses
G	keras_api
H__call__
*I&call_and_return_all_conditional_losses
J_random_generator"
_tf_keras_layer
ї
K	variables
Ltrainable_variables
Mregularization_losses
N	keras_api
O__call__
*P&call_and_return_all_conditional_losses

Qkernel
Rbias"
_tf_keras_layer
Ж
0
1
2
S3
T4
U5
V6
W7
X8
Y9
Z10
[11
Q12
R13"
trackable_list_wrapper
n
S0
T1
U2
V3
W4
X5
Y6
Z7
[8
Q9
R10"
trackable_list_wrapper
 "
trackable_list_wrapper
 
\non_trainable_variables

]layers
^metrics
_layer_regularization_losses
`layer_metrics
		variables

trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
џ
atrace_0
btrace_1
ctrace_2
dtrace_32р
,__inference_sequential_2_layer_call_fn_77603
,__inference_sequential_2_layer_call_fn_77674
,__inference_sequential_2_layer_call_fn_77956
,__inference_sequential_2_layer_call_fn_77987µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zatrace_0zbtrace_1zctrace_2zdtrace_3
«
etrace_0
ftrace_1
gtrace_2
htrace_32№
G__inference_sequential_2_layer_call_and_return_conditional_losses_77045
G__inference_sequential_2_layer_call_and_return_conditional_losses_77531
G__inference_sequential_2_layer_call_and_return_conditional_losses_78447
G__inference_sequential_2_layer_call_and_return_conditional_losses_78886µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zetrace_0zftrace_1zgtrace_2zhtrace_3
З
i	capture_0
j	capture_1B»
 __inference__wrapped_model_75469input_3"Ш
С≤Н
FullArgSpec
argsЪ 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zi	capture_0zj	capture_1
Л
k
_variables
l_iterations
m_learning_rate
n_index_dict
o_m
p_u
q_update_step_xla"
experimentalOptimizer
,
rserving_default"
signature_map
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 :2normalization_2/mean
$:"2normalization_2/variance
:	 2normalization_2/count
Ў
strace_02ї
__inference_adapt_step_77925Ъ
У≤П
FullArgSpec
argsЪ

jiterator
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zstrace_0
5
S0
T1
U2"
trackable_list_wrapper
5
S0
T1
U2"
trackable_list_wrapper
 "
trackable_list_wrapper
є

tstates
unon_trainable_variables

vlayers
wmetrics
xlayer_regularization_losses
ylayer_metrics
	variables
trainable_variables
regularization_losses
__call__
* &call_and_return_all_conditional_losses
& "call_and_return_conditional_losses"
_generic_user_object
Ў
ztrace_0
{trace_1
|trace_2
}trace_32н
&__inference_lstm_6_layer_call_fn_78897
&__inference_lstm_6_layer_call_fn_78908
&__inference_lstm_6_layer_call_fn_78919
&__inference_lstm_6_layer_call_fn_78930 
√≤њ
FullArgSpec:
args2Ъ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsҐ

 
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zztrace_0z{trace_1z|trace_2z}trace_3
»
~trace_0
trace_1
Аtrace_2
Бtrace_32ў
A__inference_lstm_6_layer_call_and_return_conditional_losses_79073
A__inference_lstm_6_layer_call_and_return_conditional_losses_79216
A__inference_lstm_6_layer_call_and_return_conditional_losses_79359
A__inference_lstm_6_layer_call_and_return_conditional_losses_79502 
√≤њ
FullArgSpec:
args2Ъ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsҐ

 
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z~trace_0ztrace_1zАtrace_2zБtrace_3
"
_generic_user_object
А
В	variables
Гtrainable_variables
Дregularization_losses
Е	keras_api
Ж__call__
+З&call_and_return_all_conditional_losses
И_random_generator
Й
state_size

Skernel
Trecurrent_kernel
Ubias"
_tf_keras_layer
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
≤
Кnon_trainable_variables
Лlayers
Мmetrics
 Нlayer_regularization_losses
Оlayer_metrics
$	variables
%trainable_variables
&regularization_losses
(__call__
*)&call_and_return_all_conditional_losses
&)"call_and_return_conditional_losses"
_generic_user_object
љ
Пtrace_0
Рtrace_12В
)__inference_dropout_6_layer_call_fn_79507
)__inference_dropout_6_layer_call_fn_79512©
Ґ≤Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zПtrace_0zРtrace_1
у
Сtrace_0
Тtrace_12Є
D__inference_dropout_6_layer_call_and_return_conditional_losses_79524
D__inference_dropout_6_layer_call_and_return_conditional_losses_79529©
Ґ≤Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zСtrace_0zТtrace_1
"
_generic_user_object
5
V0
W1
X2"
trackable_list_wrapper
5
V0
W1
X2"
trackable_list_wrapper
 "
trackable_list_wrapper
њ
Уstates
Фnon_trainable_variables
Хlayers
Цmetrics
 Чlayer_regularization_losses
Шlayer_metrics
+	variables
,trainable_variables
-regularization_losses
/__call__
*0&call_and_return_all_conditional_losses
&0"call_and_return_conditional_losses"
_generic_user_object
а
Щtrace_0
Ъtrace_1
Ыtrace_2
Ьtrace_32н
&__inference_lstm_7_layer_call_fn_79540
&__inference_lstm_7_layer_call_fn_79551
&__inference_lstm_7_layer_call_fn_79562
&__inference_lstm_7_layer_call_fn_79573 
√≤њ
FullArgSpec:
args2Ъ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsҐ

 
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zЩtrace_0zЪtrace_1zЫtrace_2zЬtrace_3
ћ
Эtrace_0
Юtrace_1
Яtrace_2
†trace_32ў
A__inference_lstm_7_layer_call_and_return_conditional_losses_79716
A__inference_lstm_7_layer_call_and_return_conditional_losses_79859
A__inference_lstm_7_layer_call_and_return_conditional_losses_80002
A__inference_lstm_7_layer_call_and_return_conditional_losses_80145 
√≤њ
FullArgSpec:
args2Ъ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsҐ

 
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zЭtrace_0zЮtrace_1zЯtrace_2z†trace_3
"
_generic_user_object
А
°	variables
Ґtrainable_variables
£regularization_losses
§	keras_api
•__call__
+¶&call_and_return_all_conditional_losses
І_random_generator
®
state_size

Vkernel
Wrecurrent_kernel
Xbias"
_tf_keras_layer
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
≤
©non_trainable_variables
™layers
Ђmetrics
 ђlayer_regularization_losses
≠layer_metrics
4	variables
5trainable_variables
6regularization_losses
8__call__
*9&call_and_return_all_conditional_losses
&9"call_and_return_conditional_losses"
_generic_user_object
љ
Ѓtrace_0
ѓtrace_12В
)__inference_dropout_7_layer_call_fn_80150
)__inference_dropout_7_layer_call_fn_80155©
Ґ≤Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zЃtrace_0zѓtrace_1
у
∞trace_0
±trace_12Є
D__inference_dropout_7_layer_call_and_return_conditional_losses_80167
D__inference_dropout_7_layer_call_and_return_conditional_losses_80172©
Ґ≤Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z∞trace_0z±trace_1
"
_generic_user_object
5
Y0
Z1
[2"
trackable_list_wrapper
5
Y0
Z1
[2"
trackable_list_wrapper
 "
trackable_list_wrapper
њ
≤states
≥non_trainable_variables
іlayers
µmetrics
 ґlayer_regularization_losses
Јlayer_metrics
;	variables
<trainable_variables
=regularization_losses
?__call__
*@&call_and_return_all_conditional_losses
&@"call_and_return_conditional_losses"
_generic_user_object
а
Єtrace_0
єtrace_1
Їtrace_2
їtrace_32н
&__inference_lstm_8_layer_call_fn_80183
&__inference_lstm_8_layer_call_fn_80194
&__inference_lstm_8_layer_call_fn_80205
&__inference_lstm_8_layer_call_fn_80216 
√≤њ
FullArgSpec:
args2Ъ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsҐ

 
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zЄtrace_0zєtrace_1zЇtrace_2zїtrace_3
ћ
Љtrace_0
љtrace_1
Њtrace_2
њtrace_32ў
A__inference_lstm_8_layer_call_and_return_conditional_losses_80361
A__inference_lstm_8_layer_call_and_return_conditional_losses_80506
A__inference_lstm_8_layer_call_and_return_conditional_losses_80651
A__inference_lstm_8_layer_call_and_return_conditional_losses_80796 
√≤њ
FullArgSpec:
args2Ъ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsҐ

 
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zЉtrace_0zљtrace_1zЊtrace_2zњtrace_3
"
_generic_user_object
А
ј	variables
Ѕtrainable_variables
¬regularization_losses
√	keras_api
ƒ__call__
+≈&call_and_return_all_conditional_losses
∆_random_generator
«
state_size

Ykernel
Zrecurrent_kernel
[bias"
_tf_keras_layer
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
≤
»non_trainable_variables
…layers
 metrics
 Ћlayer_regularization_losses
ћlayer_metrics
D	variables
Etrainable_variables
Fregularization_losses
H__call__
*I&call_and_return_all_conditional_losses
&I"call_and_return_conditional_losses"
_generic_user_object
љ
Ќtrace_0
ќtrace_12В
)__inference_dropout_8_layer_call_fn_80801
)__inference_dropout_8_layer_call_fn_80806©
Ґ≤Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zЌtrace_0zќtrace_1
у
ѕtrace_0
–trace_12Є
D__inference_dropout_8_layer_call_and_return_conditional_losses_80818
D__inference_dropout_8_layer_call_and_return_conditional_losses_80823©
Ґ≤Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zѕtrace_0z–trace_1
"
_generic_user_object
.
Q0
R1"
trackable_list_wrapper
.
Q0
R1"
trackable_list_wrapper
 "
trackable_list_wrapper
≤
—non_trainable_variables
“layers
”metrics
 ‘layer_regularization_losses
’layer_metrics
K	variables
Ltrainable_variables
Mregularization_losses
O__call__
*P&call_and_return_all_conditional_losses
&P"call_and_return_conditional_losses"
_generic_user_object
г
÷trace_02ƒ
'__inference_dense_2_layer_call_fn_80832Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z÷trace_0
ю
„trace_02я
B__inference_dense_2_layer_call_and_return_conditional_losses_80842Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z„trace_0
 :
2dense_2/kernel
:2dense_2/bias
-:+	Р2lstm_6/lstm_cell_12/kernel
7:5	dР2$lstm_6/lstm_cell_12/recurrent_kernel
':%Р2lstm_6/lstm_cell_12/bias
-:+	d»2lstm_7/lstm_cell_13/kernel
7:5	2»2$lstm_7/lstm_cell_13/recurrent_kernel
':%»2lstm_7/lstm_cell_13/bias
,:*2(2lstm_8/lstm_cell_14/kernel
6:4
(2$lstm_8/lstm_cell_14/recurrent_kernel
&:$(2lstm_8/lstm_cell_14/bias
5
0
1
2"
trackable_list_wrapper
X
0
1
2
3
4
5
6
7"
trackable_list_wrapper
0
Ў0
ў1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
∞
i	capture_0
j	capture_1Bс
,__inference_sequential_2_layer_call_fn_77603input_3"µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zi	capture_0zj	capture_1
∞
i	capture_0
j	capture_1Bс
,__inference_sequential_2_layer_call_fn_77674input_3"µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zi	capture_0zj	capture_1
ѓ
i	capture_0
j	capture_1Bр
,__inference_sequential_2_layer_call_fn_77956inputs"µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zi	capture_0zj	capture_1
ѓ
i	capture_0
j	capture_1Bр
,__inference_sequential_2_layer_call_fn_77987inputs"µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zi	capture_0zj	capture_1
Ћ
i	capture_0
j	capture_1BМ
G__inference_sequential_2_layer_call_and_return_conditional_losses_77045input_3"µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zi	capture_0zj	capture_1
Ћ
i	capture_0
j	capture_1BМ
G__inference_sequential_2_layer_call_and_return_conditional_losses_77531input_3"µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zi	capture_0zj	capture_1
 
i	capture_0
j	capture_1BЛ
G__inference_sequential_2_layer_call_and_return_conditional_losses_78447inputs"µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zi	capture_0zj	capture_1
 
i	capture_0
j	capture_1BЛ
G__inference_sequential_2_layer_call_and_return_conditional_losses_78886inputs"µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zi	capture_0zj	capture_1
!J	
Const_1jtf.TrackableConstant
J
Constjtf.TrackableConstant
д
l0
Џ1
џ2
№3
Ё4
ё5
я6
а7
б8
в9
г10
д11
е12
ж13
з14
и15
й16
к17
л18
м19
н20
о21
п22"
trackable_list_wrapper
:	 2	iteration
: 2learning_rate
 "
trackable_dict_wrapper
y
Џ0
№1
ё2
а3
в4
д5
ж6
и7
к8
м9
о10"
trackable_list_wrapper
y
џ0
Ё1
я2
б3
г4
е5
з6
й7
л8
н9
п10"
trackable_list_wrapper
µ2≤ѓ
¶≤Ґ
FullArgSpec*
args"Ъ

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 0
Ж
i	capture_0
j	capture_1B«
#__inference_signature_wrapper_77880input_3"Ф
Н≤Й
FullArgSpec
argsЪ 
varargs
 
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zi	capture_0zj	capture_1
 B«
__inference_adapt_step_77925iterator"Ъ
У≤П
FullArgSpec
argsЪ

jiterator
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
"0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ДBБ
&__inference_lstm_6_layer_call_fn_78897inputs_0" 
√≤њ
FullArgSpec:
args2Ъ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsҐ

 
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ДBБ
&__inference_lstm_6_layer_call_fn_78908inputs_0" 
√≤њ
FullArgSpec:
args2Ъ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsҐ

 
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ВB€
&__inference_lstm_6_layer_call_fn_78919inputs" 
√≤њ
FullArgSpec:
args2Ъ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsҐ

 
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ВB€
&__inference_lstm_6_layer_call_fn_78930inputs" 
√≤њ
FullArgSpec:
args2Ъ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsҐ

 
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ЯBЬ
A__inference_lstm_6_layer_call_and_return_conditional_losses_79073inputs_0" 
√≤њ
FullArgSpec:
args2Ъ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsҐ

 
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ЯBЬ
A__inference_lstm_6_layer_call_and_return_conditional_losses_79216inputs_0" 
√≤њ
FullArgSpec:
args2Ъ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsҐ

 
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ЭBЪ
A__inference_lstm_6_layer_call_and_return_conditional_losses_79359inputs" 
√≤њ
FullArgSpec:
args2Ъ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsҐ

 
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ЭBЪ
A__inference_lstm_6_layer_call_and_return_conditional_losses_79502inputs" 
√≤њ
FullArgSpec:
args2Ъ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsҐ

 
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
5
S0
T1
U2"
trackable_list_wrapper
5
S0
T1
U2"
trackable_list_wrapper
 "
trackable_list_wrapper
Є
рnon_trainable_variables
сlayers
тmetrics
 уlayer_regularization_losses
фlayer_metrics
В	variables
Гtrainable_variables
Дregularization_losses
Ж__call__
+З&call_and_return_all_conditional_losses
'З"call_and_return_conditional_losses"
_generic_user_object
Ќ
хtrace_0
цtrace_12Т
,__inference_lstm_cell_12_layer_call_fn_80859
,__inference_lstm_cell_12_layer_call_fn_80876≥
ђ≤®
FullArgSpec+
args#Ъ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zхtrace_0zцtrace_1
Г
чtrace_0
шtrace_12»
G__inference_lstm_cell_12_layer_call_and_return_conditional_losses_80908
G__inference_lstm_cell_12_layer_call_and_return_conditional_losses_80940≥
ђ≤®
FullArgSpec+
args#Ъ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zчtrace_0zшtrace_1
"
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
trackable_list_wrapper
 "
trackable_dict_wrapper
дBб
)__inference_dropout_6_layer_call_fn_79507inputs"©
Ґ≤Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
дBб
)__inference_dropout_6_layer_call_fn_79512inputs"©
Ґ≤Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
€Bь
D__inference_dropout_6_layer_call_and_return_conditional_losses_79524inputs"©
Ґ≤Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
€Bь
D__inference_dropout_6_layer_call_and_return_conditional_losses_79529inputs"©
Ґ≤Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
20"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ДBБ
&__inference_lstm_7_layer_call_fn_79540inputs_0" 
√≤њ
FullArgSpec:
args2Ъ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsҐ

 
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ДBБ
&__inference_lstm_7_layer_call_fn_79551inputs_0" 
√≤њ
FullArgSpec:
args2Ъ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsҐ

 
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ВB€
&__inference_lstm_7_layer_call_fn_79562inputs" 
√≤њ
FullArgSpec:
args2Ъ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsҐ

 
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ВB€
&__inference_lstm_7_layer_call_fn_79573inputs" 
√≤њ
FullArgSpec:
args2Ъ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsҐ

 
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ЯBЬ
A__inference_lstm_7_layer_call_and_return_conditional_losses_79716inputs_0" 
√≤њ
FullArgSpec:
args2Ъ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsҐ

 
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ЯBЬ
A__inference_lstm_7_layer_call_and_return_conditional_losses_79859inputs_0" 
√≤њ
FullArgSpec:
args2Ъ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsҐ

 
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ЭBЪ
A__inference_lstm_7_layer_call_and_return_conditional_losses_80002inputs" 
√≤њ
FullArgSpec:
args2Ъ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsҐ

 
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ЭBЪ
A__inference_lstm_7_layer_call_and_return_conditional_losses_80145inputs" 
√≤њ
FullArgSpec:
args2Ъ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsҐ

 
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
5
V0
W1
X2"
trackable_list_wrapper
5
V0
W1
X2"
trackable_list_wrapper
 "
trackable_list_wrapper
Є
щnon_trainable_variables
ъlayers
ыmetrics
 ьlayer_regularization_losses
эlayer_metrics
°	variables
Ґtrainable_variables
£regularization_losses
•__call__
+¶&call_and_return_all_conditional_losses
'¶"call_and_return_conditional_losses"
_generic_user_object
Ќ
юtrace_0
€trace_12Т
,__inference_lstm_cell_13_layer_call_fn_80957
,__inference_lstm_cell_13_layer_call_fn_80974≥
ђ≤®
FullArgSpec+
args#Ъ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zюtrace_0z€trace_1
Г
Аtrace_0
Бtrace_12»
G__inference_lstm_cell_13_layer_call_and_return_conditional_losses_81006
G__inference_lstm_cell_13_layer_call_and_return_conditional_losses_81038≥
ђ≤®
FullArgSpec+
args#Ъ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zАtrace_0zБtrace_1
"
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
trackable_list_wrapper
 "
trackable_dict_wrapper
дBб
)__inference_dropout_7_layer_call_fn_80150inputs"©
Ґ≤Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
дBб
)__inference_dropout_7_layer_call_fn_80155inputs"©
Ґ≤Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
€Bь
D__inference_dropout_7_layer_call_and_return_conditional_losses_80167inputs"©
Ґ≤Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
€Bь
D__inference_dropout_7_layer_call_and_return_conditional_losses_80172inputs"©
Ґ≤Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
B0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ДBБ
&__inference_lstm_8_layer_call_fn_80183inputs_0" 
√≤њ
FullArgSpec:
args2Ъ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsҐ

 
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ДBБ
&__inference_lstm_8_layer_call_fn_80194inputs_0" 
√≤њ
FullArgSpec:
args2Ъ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsҐ

 
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ВB€
&__inference_lstm_8_layer_call_fn_80205inputs" 
√≤њ
FullArgSpec:
args2Ъ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsҐ

 
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ВB€
&__inference_lstm_8_layer_call_fn_80216inputs" 
√≤њ
FullArgSpec:
args2Ъ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsҐ

 
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ЯBЬ
A__inference_lstm_8_layer_call_and_return_conditional_losses_80361inputs_0" 
√≤њ
FullArgSpec:
args2Ъ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsҐ

 
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ЯBЬ
A__inference_lstm_8_layer_call_and_return_conditional_losses_80506inputs_0" 
√≤њ
FullArgSpec:
args2Ъ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsҐ

 
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ЭBЪ
A__inference_lstm_8_layer_call_and_return_conditional_losses_80651inputs" 
√≤њ
FullArgSpec:
args2Ъ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsҐ

 
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ЭBЪ
A__inference_lstm_8_layer_call_and_return_conditional_losses_80796inputs" 
√≤њ
FullArgSpec:
args2Ъ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsҐ

 
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
5
Y0
Z1
[2"
trackable_list_wrapper
5
Y0
Z1
[2"
trackable_list_wrapper
 "
trackable_list_wrapper
Є
Вnon_trainable_variables
Гlayers
Дmetrics
 Еlayer_regularization_losses
Жlayer_metrics
ј	variables
Ѕtrainable_variables
¬regularization_losses
ƒ__call__
+≈&call_and_return_all_conditional_losses
'≈"call_and_return_conditional_losses"
_generic_user_object
Ќ
Зtrace_0
Иtrace_12Т
,__inference_lstm_cell_14_layer_call_fn_81055
,__inference_lstm_cell_14_layer_call_fn_81072≥
ђ≤®
FullArgSpec+
args#Ъ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zЗtrace_0zИtrace_1
Г
Йtrace_0
Кtrace_12»
G__inference_lstm_cell_14_layer_call_and_return_conditional_losses_81104
G__inference_lstm_cell_14_layer_call_and_return_conditional_losses_81136≥
ђ≤®
FullArgSpec+
args#Ъ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zЙtrace_0zКtrace_1
"
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
trackable_list_wrapper
 "
trackable_dict_wrapper
дBб
)__inference_dropout_8_layer_call_fn_80801inputs"©
Ґ≤Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
дBб
)__inference_dropout_8_layer_call_fn_80806inputs"©
Ґ≤Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
€Bь
D__inference_dropout_8_layer_call_and_return_conditional_losses_80818inputs"©
Ґ≤Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
€Bь
D__inference_dropout_8_layer_call_and_return_conditional_losses_80823inputs"©
Ґ≤Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
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
—Bќ
'__inference_dense_2_layer_call_fn_80832inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
мBй
B__inference_dense_2_layer_call_and_return_conditional_losses_80842inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
R
Л	variables
М	keras_api

Нtotal

Оcount"
_tf_keras_metric
c
П	variables
Р	keras_api

Сtotal

Тcount
У
_fn_kwargs"
_tf_keras_metric
4:2	Р2#Adamax/m/lstm_6/lstm_cell_12/kernel
4:2	Р2#Adamax/u/lstm_6/lstm_cell_12/kernel
>:<	dР2-Adamax/m/lstm_6/lstm_cell_12/recurrent_kernel
>:<	dР2-Adamax/u/lstm_6/lstm_cell_12/recurrent_kernel
.:,Р2!Adamax/m/lstm_6/lstm_cell_12/bias
.:,Р2!Adamax/u/lstm_6/lstm_cell_12/bias
4:2	d»2#Adamax/m/lstm_7/lstm_cell_13/kernel
4:2	d»2#Adamax/u/lstm_7/lstm_cell_13/kernel
>:<	2»2-Adamax/m/lstm_7/lstm_cell_13/recurrent_kernel
>:<	2»2-Adamax/u/lstm_7/lstm_cell_13/recurrent_kernel
.:,»2!Adamax/m/lstm_7/lstm_cell_13/bias
.:,»2!Adamax/u/lstm_7/lstm_cell_13/bias
3:12(2#Adamax/m/lstm_8/lstm_cell_14/kernel
3:12(2#Adamax/u/lstm_8/lstm_cell_14/kernel
=:;
(2-Adamax/m/lstm_8/lstm_cell_14/recurrent_kernel
=:;
(2-Adamax/u/lstm_8/lstm_cell_14/recurrent_kernel
-:+(2!Adamax/m/lstm_8/lstm_cell_14/bias
-:+(2!Adamax/u/lstm_8/lstm_cell_14/bias
':%
2Adamax/m/dense_2/kernel
':%
2Adamax/u/dense_2/kernel
!:2Adamax/m/dense_2/bias
!:2Adamax/u/dense_2/bias
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
ЕBВ
,__inference_lstm_cell_12_layer_call_fn_80859inputsstates_0states_1"≥
ђ≤®
FullArgSpec+
args#Ъ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ЕBВ
,__inference_lstm_cell_12_layer_call_fn_80876inputsstates_0states_1"≥
ђ≤®
FullArgSpec+
args#Ъ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
†BЭ
G__inference_lstm_cell_12_layer_call_and_return_conditional_losses_80908inputsstates_0states_1"≥
ђ≤®
FullArgSpec+
args#Ъ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
†BЭ
G__inference_lstm_cell_12_layer_call_and_return_conditional_losses_80940inputsstates_0states_1"≥
ђ≤®
FullArgSpec+
args#Ъ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
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
ЕBВ
,__inference_lstm_cell_13_layer_call_fn_80957inputsstates_0states_1"≥
ђ≤®
FullArgSpec+
args#Ъ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ЕBВ
,__inference_lstm_cell_13_layer_call_fn_80974inputsstates_0states_1"≥
ђ≤®
FullArgSpec+
args#Ъ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
†BЭ
G__inference_lstm_cell_13_layer_call_and_return_conditional_losses_81006inputsstates_0states_1"≥
ђ≤®
FullArgSpec+
args#Ъ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
†BЭ
G__inference_lstm_cell_13_layer_call_and_return_conditional_losses_81038inputsstates_0states_1"≥
ђ≤®
FullArgSpec+
args#Ъ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
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
ЕBВ
,__inference_lstm_cell_14_layer_call_fn_81055inputsstates_0states_1"≥
ђ≤®
FullArgSpec+
args#Ъ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ЕBВ
,__inference_lstm_cell_14_layer_call_fn_81072inputsstates_0states_1"≥
ђ≤®
FullArgSpec+
args#Ъ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
†BЭ
G__inference_lstm_cell_14_layer_call_and_return_conditional_losses_81104inputsstates_0states_1"≥
ђ≤®
FullArgSpec+
args#Ъ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
†BЭ
G__inference_lstm_cell_14_layer_call_and_return_conditional_losses_81136inputsstates_0states_1"≥
ђ≤®
FullArgSpec+
args#Ъ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
0
Н0
О1"
trackable_list_wrapper
.
Л	variables"
_generic_user_object
:  (2total
:  (2count
0
С0
Т1"
trackable_list_wrapper
.
П	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapperЬ
 __inference__wrapped_model_75469xijSTUVWXYZ[QR4Ґ1
*Ґ'
%К"
input_3€€€€€€€€€
™ "1™.
,
dense_2!К
dense_2€€€€€€€€€i
__inference_adapt_step_77925I>Ґ;
4Ґ1
/Т,Ґ
К IteratorSpec 
™ "
 ©
B__inference_dense_2_layer_call_and_return_conditional_losses_80842cQR/Ґ,
%Ґ"
 К
inputs€€€€€€€€€

™ ",Ґ)
"К
tensor_0€€€€€€€€€
Ъ Г
'__inference_dense_2_layer_call_fn_80832XQR/Ґ,
%Ґ"
 К
inputs€€€€€€€€€

™ "!К
unknown€€€€€€€€€≥
D__inference_dropout_6_layer_call_and_return_conditional_losses_79524k7Ґ4
-Ґ*
$К!
inputs€€€€€€€€€d
p
™ "0Ґ-
&К#
tensor_0€€€€€€€€€d
Ъ ≥
D__inference_dropout_6_layer_call_and_return_conditional_losses_79529k7Ґ4
-Ґ*
$К!
inputs€€€€€€€€€d
p 
™ "0Ґ-
&К#
tensor_0€€€€€€€€€d
Ъ Н
)__inference_dropout_6_layer_call_fn_79507`7Ґ4
-Ґ*
$К!
inputs€€€€€€€€€d
p
™ "%К"
unknown€€€€€€€€€dН
)__inference_dropout_6_layer_call_fn_79512`7Ґ4
-Ґ*
$К!
inputs€€€€€€€€€d
p 
™ "%К"
unknown€€€€€€€€€d≥
D__inference_dropout_7_layer_call_and_return_conditional_losses_80167k7Ґ4
-Ґ*
$К!
inputs€€€€€€€€€2
p
™ "0Ґ-
&К#
tensor_0€€€€€€€€€2
Ъ ≥
D__inference_dropout_7_layer_call_and_return_conditional_losses_80172k7Ґ4
-Ґ*
$К!
inputs€€€€€€€€€2
p 
™ "0Ґ-
&К#
tensor_0€€€€€€€€€2
Ъ Н
)__inference_dropout_7_layer_call_fn_80150`7Ґ4
-Ґ*
$К!
inputs€€€€€€€€€2
p
™ "%К"
unknown€€€€€€€€€2Н
)__inference_dropout_7_layer_call_fn_80155`7Ґ4
-Ґ*
$К!
inputs€€€€€€€€€2
p 
™ "%К"
unknown€€€€€€€€€2Ђ
D__inference_dropout_8_layer_call_and_return_conditional_losses_80818c3Ґ0
)Ґ&
 К
inputs€€€€€€€€€

p
™ ",Ґ)
"К
tensor_0€€€€€€€€€

Ъ Ђ
D__inference_dropout_8_layer_call_and_return_conditional_losses_80823c3Ґ0
)Ґ&
 К
inputs€€€€€€€€€

p 
™ ",Ґ)
"К
tensor_0€€€€€€€€€

Ъ Е
)__inference_dropout_8_layer_call_fn_80801X3Ґ0
)Ґ&
 К
inputs€€€€€€€€€

p
™ "!К
unknown€€€€€€€€€
Е
)__inference_dropout_8_layer_call_fn_80806X3Ґ0
)Ґ&
 К
inputs€€€€€€€€€

p 
™ "!К
unknown€€€€€€€€€
„
A__inference_lstm_6_layer_call_and_return_conditional_losses_79073СSTUOҐL
EҐB
4Ъ1
/К,
inputs_0€€€€€€€€€€€€€€€€€€

 
p

 
™ "9Ґ6
/К,
tensor_0€€€€€€€€€€€€€€€€€€d
Ъ „
A__inference_lstm_6_layer_call_and_return_conditional_losses_79216СSTUOҐL
EҐB
4Ъ1
/К,
inputs_0€€€€€€€€€€€€€€€€€€

 
p 

 
™ "9Ґ6
/К,
tensor_0€€€€€€€€€€€€€€€€€€d
Ъ љ
A__inference_lstm_6_layer_call_and_return_conditional_losses_79359xSTU?Ґ<
5Ґ2
$К!
inputs€€€€€€€€€

 
p

 
™ "0Ґ-
&К#
tensor_0€€€€€€€€€d
Ъ љ
A__inference_lstm_6_layer_call_and_return_conditional_losses_79502xSTU?Ґ<
5Ґ2
$К!
inputs€€€€€€€€€

 
p 

 
™ "0Ґ-
&К#
tensor_0€€€€€€€€€d
Ъ ±
&__inference_lstm_6_layer_call_fn_78897ЖSTUOҐL
EҐB
4Ъ1
/К,
inputs_0€€€€€€€€€€€€€€€€€€

 
p

 
™ ".К+
unknown€€€€€€€€€€€€€€€€€€d±
&__inference_lstm_6_layer_call_fn_78908ЖSTUOҐL
EҐB
4Ъ1
/К,
inputs_0€€€€€€€€€€€€€€€€€€

 
p 

 
™ ".К+
unknown€€€€€€€€€€€€€€€€€€dЧ
&__inference_lstm_6_layer_call_fn_78919mSTU?Ґ<
5Ґ2
$К!
inputs€€€€€€€€€

 
p

 
™ "%К"
unknown€€€€€€€€€dЧ
&__inference_lstm_6_layer_call_fn_78930mSTU?Ґ<
5Ґ2
$К!
inputs€€€€€€€€€

 
p 

 
™ "%К"
unknown€€€€€€€€€d„
A__inference_lstm_7_layer_call_and_return_conditional_losses_79716СVWXOҐL
EҐB
4Ъ1
/К,
inputs_0€€€€€€€€€€€€€€€€€€d

 
p

 
™ "9Ґ6
/К,
tensor_0€€€€€€€€€€€€€€€€€€2
Ъ „
A__inference_lstm_7_layer_call_and_return_conditional_losses_79859СVWXOҐL
EҐB
4Ъ1
/К,
inputs_0€€€€€€€€€€€€€€€€€€d

 
p 

 
™ "9Ґ6
/К,
tensor_0€€€€€€€€€€€€€€€€€€2
Ъ љ
A__inference_lstm_7_layer_call_and_return_conditional_losses_80002xVWX?Ґ<
5Ґ2
$К!
inputs€€€€€€€€€d

 
p

 
™ "0Ґ-
&К#
tensor_0€€€€€€€€€2
Ъ љ
A__inference_lstm_7_layer_call_and_return_conditional_losses_80145xVWX?Ґ<
5Ґ2
$К!
inputs€€€€€€€€€d

 
p 

 
™ "0Ґ-
&К#
tensor_0€€€€€€€€€2
Ъ ±
&__inference_lstm_7_layer_call_fn_79540ЖVWXOҐL
EҐB
4Ъ1
/К,
inputs_0€€€€€€€€€€€€€€€€€€d

 
p

 
™ ".К+
unknown€€€€€€€€€€€€€€€€€€2±
&__inference_lstm_7_layer_call_fn_79551ЖVWXOҐL
EҐB
4Ъ1
/К,
inputs_0€€€€€€€€€€€€€€€€€€d

 
p 

 
™ ".К+
unknown€€€€€€€€€€€€€€€€€€2Ч
&__inference_lstm_7_layer_call_fn_79562mVWX?Ґ<
5Ґ2
$К!
inputs€€€€€€€€€d

 
p

 
™ "%К"
unknown€€€€€€€€€2Ч
&__inference_lstm_7_layer_call_fn_79573mVWX?Ґ<
5Ґ2
$К!
inputs€€€€€€€€€d

 
p 

 
™ "%К"
unknown€€€€€€€€€2 
A__inference_lstm_8_layer_call_and_return_conditional_losses_80361ДYZ[OҐL
EҐB
4Ъ1
/К,
inputs_0€€€€€€€€€€€€€€€€€€2

 
p

 
™ ",Ґ)
"К
tensor_0€€€€€€€€€

Ъ  
A__inference_lstm_8_layer_call_and_return_conditional_losses_80506ДYZ[OҐL
EҐB
4Ъ1
/К,
inputs_0€€€€€€€€€€€€€€€€€€2

 
p 

 
™ ",Ґ)
"К
tensor_0€€€€€€€€€

Ъ є
A__inference_lstm_8_layer_call_and_return_conditional_losses_80651tYZ[?Ґ<
5Ґ2
$К!
inputs€€€€€€€€€2

 
p

 
™ ",Ґ)
"К
tensor_0€€€€€€€€€

Ъ є
A__inference_lstm_8_layer_call_and_return_conditional_losses_80796tYZ[?Ґ<
5Ґ2
$К!
inputs€€€€€€€€€2

 
p 

 
™ ",Ґ)
"К
tensor_0€€€€€€€€€

Ъ £
&__inference_lstm_8_layer_call_fn_80183yYZ[OҐL
EҐB
4Ъ1
/К,
inputs_0€€€€€€€€€€€€€€€€€€2

 
p

 
™ "!К
unknown€€€€€€€€€
£
&__inference_lstm_8_layer_call_fn_80194yYZ[OҐL
EҐB
4Ъ1
/К,
inputs_0€€€€€€€€€€€€€€€€€€2

 
p 

 
™ "!К
unknown€€€€€€€€€
У
&__inference_lstm_8_layer_call_fn_80205iYZ[?Ґ<
5Ґ2
$К!
inputs€€€€€€€€€2

 
p

 
™ "!К
unknown€€€€€€€€€
У
&__inference_lstm_8_layer_call_fn_80216iYZ[?Ґ<
5Ґ2
$К!
inputs€€€€€€€€€2

 
p 

 
™ "!К
unknown€€€€€€€€€
а
G__inference_lstm_cell_12_layer_call_and_return_conditional_losses_80908ФSTUАҐ}
vҐs
 К
inputs€€€€€€€€€
KҐH
"К
states_0€€€€€€€€€d
"К
states_1€€€€€€€€€d
p
™ "ЙҐЕ
~Ґ{
$К!

tensor_0_0€€€€€€€€€d
SЪP
&К#
tensor_0_1_0€€€€€€€€€d
&К#
tensor_0_1_1€€€€€€€€€d
Ъ а
G__inference_lstm_cell_12_layer_call_and_return_conditional_losses_80940ФSTUАҐ}
vҐs
 К
inputs€€€€€€€€€
KҐH
"К
states_0€€€€€€€€€d
"К
states_1€€€€€€€€€d
p 
™ "ЙҐЕ
~Ґ{
$К!

tensor_0_0€€€€€€€€€d
SЪP
&К#
tensor_0_1_0€€€€€€€€€d
&К#
tensor_0_1_1€€€€€€€€€d
Ъ ≥
,__inference_lstm_cell_12_layer_call_fn_80859ВSTUАҐ}
vҐs
 К
inputs€€€€€€€€€
KҐH
"К
states_0€€€€€€€€€d
"К
states_1€€€€€€€€€d
p
™ "xҐu
"К
tensor_0€€€€€€€€€d
OЪL
$К!

tensor_1_0€€€€€€€€€d
$К!

tensor_1_1€€€€€€€€€d≥
,__inference_lstm_cell_12_layer_call_fn_80876ВSTUАҐ}
vҐs
 К
inputs€€€€€€€€€
KҐH
"К
states_0€€€€€€€€€d
"К
states_1€€€€€€€€€d
p 
™ "xҐu
"К
tensor_0€€€€€€€€€d
OЪL
$К!

tensor_1_0€€€€€€€€€d
$К!

tensor_1_1€€€€€€€€€dа
G__inference_lstm_cell_13_layer_call_and_return_conditional_losses_81006ФVWXАҐ}
vҐs
 К
inputs€€€€€€€€€d
KҐH
"К
states_0€€€€€€€€€2
"К
states_1€€€€€€€€€2
p
™ "ЙҐЕ
~Ґ{
$К!

tensor_0_0€€€€€€€€€2
SЪP
&К#
tensor_0_1_0€€€€€€€€€2
&К#
tensor_0_1_1€€€€€€€€€2
Ъ а
G__inference_lstm_cell_13_layer_call_and_return_conditional_losses_81038ФVWXАҐ}
vҐs
 К
inputs€€€€€€€€€d
KҐH
"К
states_0€€€€€€€€€2
"К
states_1€€€€€€€€€2
p 
™ "ЙҐЕ
~Ґ{
$К!

tensor_0_0€€€€€€€€€2
SЪP
&К#
tensor_0_1_0€€€€€€€€€2
&К#
tensor_0_1_1€€€€€€€€€2
Ъ ≥
,__inference_lstm_cell_13_layer_call_fn_80957ВVWXАҐ}
vҐs
 К
inputs€€€€€€€€€d
KҐH
"К
states_0€€€€€€€€€2
"К
states_1€€€€€€€€€2
p
™ "xҐu
"К
tensor_0€€€€€€€€€2
OЪL
$К!

tensor_1_0€€€€€€€€€2
$К!

tensor_1_1€€€€€€€€€2≥
,__inference_lstm_cell_13_layer_call_fn_80974ВVWXАҐ}
vҐs
 К
inputs€€€€€€€€€d
KҐH
"К
states_0€€€€€€€€€2
"К
states_1€€€€€€€€€2
p 
™ "xҐu
"К
tensor_0€€€€€€€€€2
OЪL
$К!

tensor_1_0€€€€€€€€€2
$К!

tensor_1_1€€€€€€€€€2а
G__inference_lstm_cell_14_layer_call_and_return_conditional_losses_81104ФYZ[АҐ}
vҐs
 К
inputs€€€€€€€€€2
KҐH
"К
states_0€€€€€€€€€

"К
states_1€€€€€€€€€

p
™ "ЙҐЕ
~Ґ{
$К!

tensor_0_0€€€€€€€€€

SЪP
&К#
tensor_0_1_0€€€€€€€€€

&К#
tensor_0_1_1€€€€€€€€€

Ъ а
G__inference_lstm_cell_14_layer_call_and_return_conditional_losses_81136ФYZ[АҐ}
vҐs
 К
inputs€€€€€€€€€2
KҐH
"К
states_0€€€€€€€€€

"К
states_1€€€€€€€€€

p 
™ "ЙҐЕ
~Ґ{
$К!

tensor_0_0€€€€€€€€€

SЪP
&К#
tensor_0_1_0€€€€€€€€€

&К#
tensor_0_1_1€€€€€€€€€

Ъ ≥
,__inference_lstm_cell_14_layer_call_fn_81055ВYZ[АҐ}
vҐs
 К
inputs€€€€€€€€€2
KҐH
"К
states_0€€€€€€€€€

"К
states_1€€€€€€€€€

p
™ "xҐu
"К
tensor_0€€€€€€€€€

OЪL
$К!

tensor_1_0€€€€€€€€€

$К!

tensor_1_1€€€€€€€€€
≥
,__inference_lstm_cell_14_layer_call_fn_81072ВYZ[АҐ}
vҐs
 К
inputs€€€€€€€€€2
KҐH
"К
states_0€€€€€€€€€

"К
states_1€€€€€€€€€

p 
™ "xҐu
"К
tensor_0€€€€€€€€€

OЪL
$К!

tensor_1_0€€€€€€€€€

$К!

tensor_1_1€€€€€€€€€
∆
G__inference_sequential_2_layer_call_and_return_conditional_losses_77045{ijSTUVWXYZ[QR<Ґ9
2Ґ/
%К"
input_3€€€€€€€€€
p

 
™ ",Ґ)
"К
tensor_0€€€€€€€€€
Ъ ∆
G__inference_sequential_2_layer_call_and_return_conditional_losses_77531{ijSTUVWXYZ[QR<Ґ9
2Ґ/
%К"
input_3€€€€€€€€€
p 

 
™ ",Ґ)
"К
tensor_0€€€€€€€€€
Ъ ≈
G__inference_sequential_2_layer_call_and_return_conditional_losses_78447zijSTUVWXYZ[QR;Ґ8
1Ґ.
$К!
inputs€€€€€€€€€
p

 
™ ",Ґ)
"К
tensor_0€€€€€€€€€
Ъ ≈
G__inference_sequential_2_layer_call_and_return_conditional_losses_78886zijSTUVWXYZ[QR;Ґ8
1Ґ.
$К!
inputs€€€€€€€€€
p 

 
™ ",Ґ)
"К
tensor_0€€€€€€€€€
Ъ †
,__inference_sequential_2_layer_call_fn_77603pijSTUVWXYZ[QR<Ґ9
2Ґ/
%К"
input_3€€€€€€€€€
p

 
™ "!К
unknown€€€€€€€€€†
,__inference_sequential_2_layer_call_fn_77674pijSTUVWXYZ[QR<Ґ9
2Ґ/
%К"
input_3€€€€€€€€€
p 

 
™ "!К
unknown€€€€€€€€€Я
,__inference_sequential_2_layer_call_fn_77956oijSTUVWXYZ[QR;Ґ8
1Ґ.
$К!
inputs€€€€€€€€€
p

 
™ "!К
unknown€€€€€€€€€Я
,__inference_sequential_2_layer_call_fn_77987oijSTUVWXYZ[QR;Ґ8
1Ґ.
$К!
inputs€€€€€€€€€
p 

 
™ "!К
unknown€€€€€€€€€Ђ
#__inference_signature_wrapper_77880ГijSTUVWXYZ[QR?Ґ<
Ґ 
5™2
0
input_3%К"
input_3€€€€€€€€€"1™.
,
dense_2!К
dense_2€€€€€€€€€