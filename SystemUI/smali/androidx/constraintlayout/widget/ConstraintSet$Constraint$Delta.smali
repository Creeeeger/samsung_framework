.class public final Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public mCountBoolean:I

.field public mCountFloat:I

.field public mCountInt:I

.field public mCountString:I

.field public mTypeBoolean:[I

.field public mTypeFloat:[I

.field public mTypeInt:[I

.field public mTypeString:[I

.field public mValueBoolean:[Z

.field public mValueFloat:[F

.field public mValueInt:[I

.field public mValueString:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0xa

    .line 5
    .line 6
    new-array v1, v0, [I

    .line 7
    .line 8
    iput-object v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->mTypeInt:[I

    .line 9
    .line 10
    new-array v1, v0, [I

    .line 11
    .line 12
    iput-object v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->mValueInt:[I

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->mCountInt:I

    .line 16
    .line 17
    new-array v2, v0, [I

    .line 18
    .line 19
    iput-object v2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->mTypeFloat:[I

    .line 20
    .line 21
    new-array v0, v0, [F

    .line 22
    .line 23
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->mValueFloat:[F

    .line 24
    .line 25
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->mCountFloat:I

    .line 26
    .line 27
    const/4 v0, 0x5

    .line 28
    new-array v2, v0, [I

    .line 29
    .line 30
    iput-object v2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->mTypeString:[I

    .line 31
    .line 32
    new-array v0, v0, [Ljava/lang/String;

    .line 33
    .line 34
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->mValueString:[Ljava/lang/String;

    .line 35
    .line 36
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->mCountString:I

    .line 37
    .line 38
    const/4 v0, 0x4

    .line 39
    new-array v2, v0, [I

    .line 40
    .line 41
    iput-object v2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->mTypeBoolean:[I

    .line 42
    .line 43
    new-array v0, v0, [Z

    .line 44
    .line 45
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->mValueBoolean:[Z

    .line 46
    .line 47
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->mCountBoolean:I

    .line 48
    .line 49
    return-void
.end method


# virtual methods
.method public final add(FI)V
    .locals 3

    .line 6
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->mCountFloat:I

    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->mTypeFloat:[I

    array-length v2, v1

    if-lt v0, v2, :cond_0

    .line 7
    array-length v0, v1

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->mTypeFloat:[I

    .line 8
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->mValueFloat:[F

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->mValueFloat:[F

    .line 9
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->mTypeFloat:[I

    iget v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->mCountFloat:I

    aput p2, v0, v1

    .line 10
    iget-object p2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->mValueFloat:[F

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->mCountFloat:I

    aput p1, p2, v1

    return-void
.end method

.method public final add(II)V
    .locals 3

    .line 1
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->mCountInt:I

    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->mTypeInt:[I

    array-length v2, v1

    if-lt v0, v2, :cond_0

    .line 2
    array-length v0, v1

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->mTypeInt:[I

    .line 3
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->mValueInt:[I

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->mValueInt:[I

    .line 4
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->mTypeInt:[I

    iget v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->mCountInt:I

    aput p1, v0, v1

    .line 5
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->mValueInt:[I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->mCountInt:I

    aput p2, p1, v1

    return-void
.end method

.method public final add(ILjava/lang/String;)V
    .locals 3

    .line 11
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->mCountString:I

    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->mTypeString:[I

    array-length v2, v1

    if-lt v0, v2, :cond_0

    .line 12
    array-length v0, v1

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->mTypeString:[I

    .line 13
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->mValueString:[Ljava/lang/String;

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->mValueString:[Ljava/lang/String;

    .line 14
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->mTypeString:[I

    iget v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->mCountString:I

    aput p1, v0, v1

    .line 15
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->mValueString:[Ljava/lang/String;

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->mCountString:I

    aput-object p2, p1, v1

    return-void
.end method

.method public final add(IZ)V
    .locals 3

    .line 16
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->mCountBoolean:I

    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->mTypeBoolean:[I

    array-length v2, v1

    if-lt v0, v2, :cond_0

    .line 17
    array-length v0, v1

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->mTypeBoolean:[I

    .line 18
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->mValueBoolean:[Z

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->mValueBoolean:[Z

    .line 19
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->mTypeBoolean:[I

    iget v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->mCountBoolean:I

    aput p1, v0, v1

    .line 20
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->mValueBoolean:[Z

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->mCountBoolean:I

    aput-boolean p2, p1, v1

    return-void
.end method

.method public final applyDelta(Landroidx/constraintlayout/widget/ConstraintSet$Constraint;)V
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    iget v2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->mCountInt:I

    .line 4
    .line 5
    const-string v3, "Unknown attribute 0x"

    .line 6
    .line 7
    const-string v4, "ConstraintSet"

    .line 8
    .line 9
    if-ge v1, v2, :cond_16

    .line 10
    .line 11
    iget-object v2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->mTypeInt:[I

    .line 12
    .line 13
    aget v2, v2, v1

    .line 14
    .line 15
    iget-object v5, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->mValueInt:[I

    .line 16
    .line 17
    aget v5, v5, v1

    .line 18
    .line 19
    sget-object v6, Landroidx/constraintlayout/widget/ConstraintSet;->VISIBILITY_FLAGS:[I

    .line 20
    .line 21
    const/4 v6, 0x6

    .line 22
    if-eq v2, v6, :cond_15

    .line 23
    .line 24
    const/4 v6, 0x7

    .line 25
    if-eq v2, v6, :cond_14

    .line 26
    .line 27
    const/16 v6, 0x8

    .line 28
    .line 29
    if-eq v2, v6, :cond_13

    .line 30
    .line 31
    const/16 v6, 0x1b

    .line 32
    .line 33
    if-eq v2, v6, :cond_12

    .line 34
    .line 35
    const/16 v6, 0x1c

    .line 36
    .line 37
    if-eq v2, v6, :cond_11

    .line 38
    .line 39
    const/16 v6, 0x29

    .line 40
    .line 41
    if-eq v2, v6, :cond_10

    .line 42
    .line 43
    const/16 v6, 0x2a

    .line 44
    .line 45
    if-eq v2, v6, :cond_f

    .line 46
    .line 47
    const/16 v6, 0x3d

    .line 48
    .line 49
    if-eq v2, v6, :cond_e

    .line 50
    .line 51
    const/16 v6, 0x3e

    .line 52
    .line 53
    if-eq v2, v6, :cond_d

    .line 54
    .line 55
    const/16 v6, 0x48

    .line 56
    .line 57
    if-eq v2, v6, :cond_c

    .line 58
    .line 59
    const/16 v6, 0x49

    .line 60
    .line 61
    if-eq v2, v6, :cond_b

    .line 62
    .line 63
    const/4 v6, 0x2

    .line 64
    if-eq v2, v6, :cond_a

    .line 65
    .line 66
    const/16 v6, 0x1f

    .line 67
    .line 68
    if-eq v2, v6, :cond_9

    .line 69
    .line 70
    const/16 v6, 0x22

    .line 71
    .line 72
    if-eq v2, v6, :cond_8

    .line 73
    .line 74
    const/16 v6, 0x26

    .line 75
    .line 76
    if-eq v2, v6, :cond_7

    .line 77
    .line 78
    const/16 v6, 0x40

    .line 79
    .line 80
    if-eq v2, v6, :cond_6

    .line 81
    .line 82
    const/16 v6, 0x42

    .line 83
    .line 84
    if-eq v2, v6, :cond_5

    .line 85
    .line 86
    const/16 v6, 0x4c

    .line 87
    .line 88
    if-eq v2, v6, :cond_4

    .line 89
    .line 90
    const/16 v6, 0x4e

    .line 91
    .line 92
    if-eq v2, v6, :cond_3

    .line 93
    .line 94
    const/16 v6, 0x61

    .line 95
    .line 96
    if-eq v2, v6, :cond_2

    .line 97
    .line 98
    const/16 v6, 0x5d

    .line 99
    .line 100
    if-eq v2, v6, :cond_1

    .line 101
    .line 102
    const/16 v6, 0x5e

    .line 103
    .line 104
    if-eq v2, v6, :cond_0

    .line 105
    .line 106
    packed-switch v2, :pswitch_data_0

    .line 107
    .line 108
    .line 109
    packed-switch v2, :pswitch_data_1

    .line 110
    .line 111
    .line 112
    packed-switch v2, :pswitch_data_2

    .line 113
    .line 114
    .line 115
    packed-switch v2, :pswitch_data_3

    .line 116
    .line 117
    .line 118
    packed-switch v2, :pswitch_data_4

    .line 119
    .line 120
    .line 121
    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    .line 123
    .line 124
    goto/16 :goto_1

    .line 125
    .line 126
    :pswitch_0
    iget-object v2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    .line 127
    .line 128
    iput v5, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->guideEnd:I

    .line 129
    .line 130
    goto/16 :goto_1

    .line 131
    .line 132
    :pswitch_1
    iget-object v2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    .line 133
    .line 134
    iput v5, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->guideBegin:I

    .line 135
    .line 136
    goto/16 :goto_1

    .line 137
    .line 138
    :pswitch_2
    iget-object v2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    .line 139
    .line 140
    iput v5, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneTopMargin:I

    .line 141
    .line 142
    goto/16 :goto_1

    .line 143
    .line 144
    :pswitch_3
    iget-object v2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    .line 145
    .line 146
    iput v5, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneStartMargin:I

    .line 147
    .line 148
    goto/16 :goto_1

    .line 149
    .line 150
    :pswitch_4
    iget-object v2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    .line 151
    .line 152
    iput v5, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneRightMargin:I

    .line 153
    .line 154
    goto/16 :goto_1

    .line 155
    .line 156
    :pswitch_5
    iget-object v2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    .line 157
    .line 158
    iput v5, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneLeftMargin:I

    .line 159
    .line 160
    goto/16 :goto_1

    .line 161
    .line 162
    :pswitch_6
    iget-object v2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    .line 163
    .line 164
    iput v5, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneEndMargin:I

    .line 165
    .line 166
    goto/16 :goto_1

    .line 167
    .line 168
    :pswitch_7
    iget-object v2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    .line 169
    .line 170
    iput v5, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneBottomMargin:I

    .line 171
    .line 172
    goto/16 :goto_1

    .line 173
    .line 174
    :pswitch_8
    iget-object v2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    .line 175
    .line 176
    iput v5, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->leftMargin:I

    .line 177
    .line 178
    goto/16 :goto_1

    .line 179
    .line 180
    :pswitch_9
    iget-object v2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    .line 181
    .line 182
    iput v5, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mWidth:I

    .line 183
    .line 184
    goto/16 :goto_1

    .line 185
    .line 186
    :pswitch_a
    iget-object v2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->propertySet:Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;

    .line 187
    .line 188
    iput v5, v2, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->visibility:I

    .line 189
    .line 190
    goto/16 :goto_1

    .line 191
    .line 192
    :pswitch_b
    iget-object v2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    .line 193
    .line 194
    iput v5, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mHeight:I

    .line 195
    .line 196
    goto/16 :goto_1

    .line 197
    .line 198
    :pswitch_c
    iget-object v2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    .line 199
    .line 200
    iput v5, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->heightMin:I

    .line 201
    .line 202
    goto/16 :goto_1

    .line 203
    .line 204
    :pswitch_d
    iget-object v2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    .line 205
    .line 206
    iput v5, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->widthMin:I

    .line 207
    .line 208
    goto/16 :goto_1

    .line 209
    .line 210
    :pswitch_e
    iget-object v2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    .line 211
    .line 212
    iput v5, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->heightMax:I

    .line 213
    .line 214
    goto/16 :goto_1

    .line 215
    .line 216
    :pswitch_f
    iget-object v2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    .line 217
    .line 218
    iput v5, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->widthMax:I

    .line 219
    .line 220
    goto/16 :goto_1

    .line 221
    .line 222
    :pswitch_10
    iget-object v2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    .line 223
    .line 224
    iput v5, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->heightDefault:I

    .line 225
    .line 226
    goto/16 :goto_1

    .line 227
    .line 228
    :pswitch_11
    iget-object v2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    .line 229
    .line 230
    iput v5, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->widthDefault:I

    .line 231
    .line 232
    goto/16 :goto_1

    .line 233
    .line 234
    :pswitch_12
    iget-object v2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->motion:Landroidx/constraintlayout/widget/ConstraintSet$Motion;

    .line 235
    .line 236
    iput v5, v2, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mQuantizeMotionSteps:I

    .line 237
    .line 238
    goto/16 :goto_1

    .line 239
    .line 240
    :pswitch_13
    iget-object v2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    .line 241
    .line 242
    iput v5, v2, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->transformPivotTarget:I

    .line 243
    .line 244
    goto/16 :goto_1

    .line 245
    .line 246
    :pswitch_14
    iget-object v2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->motion:Landroidx/constraintlayout/widget/ConstraintSet$Motion;

    .line 247
    .line 248
    iput v5, v2, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mAnimateCircleAngleTo:I

    .line 249
    .line 250
    goto/16 :goto_1

    .line 251
    .line 252
    :pswitch_15
    iget-object v2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->motion:Landroidx/constraintlayout/widget/ConstraintSet$Motion;

    .line 253
    .line 254
    iput v5, v2, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mQuantizeInterpolatorID:I

    .line 255
    .line 256
    goto/16 :goto_1

    .line 257
    .line 258
    :pswitch_16
    iget-object v2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->motion:Landroidx/constraintlayout/widget/ConstraintSet$Motion;

    .line 259
    .line 260
    iput v5, v2, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mQuantizeInterpolatorType:I

    .line 261
    .line 262
    goto/16 :goto_1

    .line 263
    .line 264
    :cond_0
    iget-object v2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    .line 265
    .line 266
    iput v5, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneBaselineMargin:I

    .line 267
    .line 268
    goto/16 :goto_1

    .line 269
    .line 270
    :cond_1
    iget-object v2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    .line 271
    .line 272
    iput v5, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineMargin:I

    .line 273
    .line 274
    goto/16 :goto_1

    .line 275
    .line 276
    :cond_2
    iget-object v2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    .line 277
    .line 278
    iput v5, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mWrapBehavior:I

    .line 279
    .line 280
    goto/16 :goto_1

    .line 281
    .line 282
    :cond_3
    iget-object v2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->propertySet:Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;

    .line 283
    .line 284
    iput v5, v2, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->mVisibilityMode:I

    .line 285
    .line 286
    goto :goto_1

    .line 287
    :cond_4
    iget-object v2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->motion:Landroidx/constraintlayout/widget/ConstraintSet$Motion;

    .line 288
    .line 289
    iput v5, v2, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mPathMotionArc:I

    .line 290
    .line 291
    goto :goto_1

    .line 292
    :cond_5
    iget-object v2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->motion:Landroidx/constraintlayout/widget/ConstraintSet$Motion;

    .line 293
    .line 294
    iput v5, v2, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mDrawPath:I

    .line 295
    .line 296
    goto :goto_1

    .line 297
    :cond_6
    iget-object v2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->motion:Landroidx/constraintlayout/widget/ConstraintSet$Motion;

    .line 298
    .line 299
    iput v5, v2, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mAnimateRelativeTo:I

    .line 300
    .line 301
    goto :goto_1

    .line 302
    :cond_7
    iput v5, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mViewId:I

    .line 303
    .line 304
    goto :goto_1

    .line 305
    :cond_8
    iget-object v2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    .line 306
    .line 307
    iput v5, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topMargin:I

    .line 308
    .line 309
    goto :goto_1

    .line 310
    :cond_9
    iget-object v2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    .line 311
    .line 312
    iput v5, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->startMargin:I

    .line 313
    .line 314
    goto :goto_1

    .line 315
    :cond_a
    iget-object v2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    .line 316
    .line 317
    iput v5, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomMargin:I

    .line 318
    .line 319
    goto :goto_1

    .line 320
    :cond_b
    iget-object v2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    .line 321
    .line 322
    iput v5, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mBarrierMargin:I

    .line 323
    .line 324
    goto :goto_1

    .line 325
    :cond_c
    iget-object v2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    .line 326
    .line 327
    iput v5, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mBarrierDirection:I

    .line 328
    .line 329
    goto :goto_1

    .line 330
    :cond_d
    iget-object v2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    .line 331
    .line 332
    iput v5, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->circleRadius:I

    .line 333
    .line 334
    goto :goto_1

    .line 335
    :cond_e
    iget-object v2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    .line 336
    .line 337
    iput v5, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->circleConstraint:I

    .line 338
    .line 339
    goto :goto_1

    .line 340
    :cond_f
    iget-object v2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    .line 341
    .line 342
    iput v5, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->verticalChainStyle:I

    .line 343
    .line 344
    goto :goto_1

    .line 345
    :cond_10
    iget-object v2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    .line 346
    .line 347
    iput v5, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->horizontalChainStyle:I

    .line 348
    .line 349
    goto :goto_1

    .line 350
    :cond_11
    iget-object v2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    .line 351
    .line 352
    iput v5, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->rightMargin:I

    .line 353
    .line 354
    goto :goto_1

    .line 355
    :cond_12
    iget-object v2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    .line 356
    .line 357
    iput v5, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->orientation:I

    .line 358
    .line 359
    goto :goto_1

    .line 360
    :cond_13
    iget-object v2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    .line 361
    .line 362
    iput v5, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->endMargin:I

    .line 363
    .line 364
    goto :goto_1

    .line 365
    :cond_14
    iget-object v2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    .line 366
    .line 367
    iput v5, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->editorAbsoluteY:I

    .line 368
    .line 369
    goto :goto_1

    .line 370
    :cond_15
    iget-object v2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    .line 371
    .line 372
    iput v5, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->editorAbsoluteX:I

    .line 373
    .line 374
    :goto_1
    :pswitch_17
    add-int/lit8 v1, v1, 0x1

    .line 375
    .line 376
    goto/16 :goto_0

    .line 377
    .line 378
    :cond_16
    move v1, v0

    .line 379
    :goto_2
    iget v2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->mCountFloat:I

    .line 380
    .line 381
    const/16 v5, 0x57

    .line 382
    .line 383
    if-ge v1, v2, :cond_21

    .line 384
    .line 385
    iget-object v2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->mTypeFloat:[I

    .line 386
    .line 387
    aget v2, v2, v1

    .line 388
    .line 389
    iget-object v6, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->mValueFloat:[F

    .line 390
    .line 391
    aget v6, v6, v1

    .line 392
    .line 393
    sget-object v7, Landroidx/constraintlayout/widget/ConstraintSet;->VISIBILITY_FLAGS:[I

    .line 394
    .line 395
    const/16 v7, 0x13

    .line 396
    .line 397
    if-eq v2, v7, :cond_1f

    .line 398
    .line 399
    const/16 v7, 0x14

    .line 400
    .line 401
    if-eq v2, v7, :cond_1e

    .line 402
    .line 403
    const/16 v7, 0x25

    .line 404
    .line 405
    if-eq v2, v7, :cond_1d

    .line 406
    .line 407
    const/16 v7, 0x3c

    .line 408
    .line 409
    if-eq v2, v7, :cond_1c

    .line 410
    .line 411
    const/16 v7, 0x3f

    .line 412
    .line 413
    if-eq v2, v7, :cond_1b

    .line 414
    .line 415
    const/16 v7, 0x4f

    .line 416
    .line 417
    if-eq v2, v7, :cond_1a

    .line 418
    .line 419
    const/16 v7, 0x55

    .line 420
    .line 421
    if-eq v2, v7, :cond_19

    .line 422
    .line 423
    if-eq v2, v5, :cond_20

    .line 424
    .line 425
    const/16 v5, 0x27

    .line 426
    .line 427
    if-eq v2, v5, :cond_18

    .line 428
    .line 429
    const/16 v5, 0x28

    .line 430
    .line 431
    if-eq v2, v5, :cond_17

    .line 432
    .line 433
    packed-switch v2, :pswitch_data_5

    .line 434
    .line 435
    .line 436
    packed-switch v2, :pswitch_data_6

    .line 437
    .line 438
    .line 439
    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    .line 441
    .line 442
    goto/16 :goto_3

    .line 443
    .line 444
    :pswitch_18
    iget-object v2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    .line 445
    .line 446
    iput v6, v2, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->translationZ:F

    .line 447
    .line 448
    goto/16 :goto_3

    .line 449
    .line 450
    :pswitch_19
    iget-object v2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    .line 451
    .line 452
    iput v6, v2, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->translationY:F

    .line 453
    .line 454
    goto/16 :goto_3

    .line 455
    .line 456
    :pswitch_1a
    iget-object v2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    .line 457
    .line 458
    iput v6, v2, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->translationX:F

    .line 459
    .line 460
    goto/16 :goto_3

    .line 461
    .line 462
    :pswitch_1b
    iget-object v2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    .line 463
    .line 464
    iput v6, v2, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->transformPivotY:F

    .line 465
    .line 466
    goto/16 :goto_3

    .line 467
    .line 468
    :pswitch_1c
    iget-object v2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    .line 469
    .line 470
    iput v6, v2, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->transformPivotX:F

    .line 471
    .line 472
    goto/16 :goto_3

    .line 473
    .line 474
    :pswitch_1d
    iget-object v2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    .line 475
    .line 476
    iput v6, v2, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->scaleY:F

    .line 477
    .line 478
    goto/16 :goto_3

    .line 479
    .line 480
    :pswitch_1e
    iget-object v2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    .line 481
    .line 482
    iput v6, v2, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->scaleX:F

    .line 483
    .line 484
    goto :goto_3

    .line 485
    :pswitch_1f
    iget-object v2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    .line 486
    .line 487
    iput v6, v2, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->rotationY:F

    .line 488
    .line 489
    goto :goto_3

    .line 490
    :pswitch_20
    iget-object v2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    .line 491
    .line 492
    iput v6, v2, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->rotationX:F

    .line 493
    .line 494
    goto :goto_3

    .line 495
    :pswitch_21
    iget-object v2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    .line 496
    .line 497
    iput v6, v2, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->elevation:F

    .line 498
    .line 499
    const/4 v5, 0x1

    .line 500
    iput-boolean v5, v2, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->applyElevation:Z

    .line 501
    .line 502
    goto :goto_3

    .line 503
    :pswitch_22
    iget-object v2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->propertySet:Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;

    .line 504
    .line 505
    iput v6, v2, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->alpha:F

    .line 506
    .line 507
    goto :goto_3

    .line 508
    :pswitch_23
    iget-object v2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    .line 509
    .line 510
    iput v6, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->heightPercent:F

    .line 511
    .line 512
    goto :goto_3

    .line 513
    :pswitch_24
    iget-object v2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    .line 514
    .line 515
    iput v6, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->widthPercent:F

    .line 516
    .line 517
    goto :goto_3

    .line 518
    :pswitch_25
    iget-object v2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->propertySet:Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;

    .line 519
    .line 520
    iput v6, v2, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->mProgress:F

    .line 521
    .line 522
    goto :goto_3

    .line 523
    :pswitch_26
    iget-object v2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->motion:Landroidx/constraintlayout/widget/ConstraintSet$Motion;

    .line 524
    .line 525
    iput v6, v2, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mPathRotate:F

    .line 526
    .line 527
    goto :goto_3

    .line 528
    :cond_17
    iget-object v2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    .line 529
    .line 530
    iput v6, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->verticalWeight:F

    .line 531
    .line 532
    goto :goto_3

    .line 533
    :cond_18
    iget-object v2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    .line 534
    .line 535
    iput v6, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->horizontalWeight:F

    .line 536
    .line 537
    goto :goto_3

    .line 538
    :cond_19
    iget-object v2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->motion:Landroidx/constraintlayout/widget/ConstraintSet$Motion;

    .line 539
    .line 540
    iput v6, v2, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mQuantizeMotionPhase:F

    .line 541
    .line 542
    goto :goto_3

    .line 543
    :cond_1a
    iget-object v2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->motion:Landroidx/constraintlayout/widget/ConstraintSet$Motion;

    .line 544
    .line 545
    iput v6, v2, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mMotionStagger:F

    .line 546
    .line 547
    goto :goto_3

    .line 548
    :cond_1b
    iget-object v2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    .line 549
    .line 550
    iput v6, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->circleAngle:F

    .line 551
    .line 552
    goto :goto_3

    .line 553
    :cond_1c
    iget-object v2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    .line 554
    .line 555
    iput v6, v2, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->rotation:F

    .line 556
    .line 557
    goto :goto_3

    .line 558
    :cond_1d
    iget-object v2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    .line 559
    .line 560
    iput v6, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->verticalBias:F

    .line 561
    .line 562
    goto :goto_3

    .line 563
    :cond_1e
    iget-object v2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    .line 564
    .line 565
    iput v6, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->horizontalBias:F

    .line 566
    .line 567
    goto :goto_3

    .line 568
    :cond_1f
    iget-object v2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    .line 569
    .line 570
    iput v6, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->guidePercent:F

    .line 571
    .line 572
    :cond_20
    :goto_3
    add-int/lit8 v1, v1, 0x1

    .line 573
    .line 574
    goto/16 :goto_2

    .line 575
    .line 576
    :cond_21
    move v1, v0

    .line 577
    :goto_4
    iget v2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->mCountString:I

    .line 578
    .line 579
    if-ge v1, v2, :cond_28

    .line 580
    .line 581
    iget-object v2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->mTypeString:[I

    .line 582
    .line 583
    aget v2, v2, v1

    .line 584
    .line 585
    iget-object v6, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->mValueString:[Ljava/lang/String;

    .line 586
    .line 587
    aget-object v6, v6, v1

    .line 588
    .line 589
    sget-object v7, Landroidx/constraintlayout/widget/ConstraintSet;->VISIBILITY_FLAGS:[I

    .line 590
    .line 591
    const/4 v7, 0x5

    .line 592
    if-eq v2, v7, :cond_26

    .line 593
    .line 594
    const/16 v7, 0x41

    .line 595
    .line 596
    if-eq v2, v7, :cond_25

    .line 597
    .line 598
    const/16 v7, 0x4a

    .line 599
    .line 600
    if-eq v2, v7, :cond_24

    .line 601
    .line 602
    const/16 v7, 0x4d

    .line 603
    .line 604
    if-eq v2, v7, :cond_23

    .line 605
    .line 606
    if-eq v2, v5, :cond_27

    .line 607
    .line 608
    const/16 v7, 0x5a

    .line 609
    .line 610
    if-eq v2, v7, :cond_22

    .line 611
    .line 612
    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    .line 614
    .line 615
    goto :goto_5

    .line 616
    :cond_22
    iget-object v2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->motion:Landroidx/constraintlayout/widget/ConstraintSet$Motion;

    .line 617
    .line 618
    iput-object v6, v2, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mQuantizeInterpolatorString:Ljava/lang/String;

    .line 619
    .line 620
    goto :goto_5

    .line 621
    :cond_23
    iget-object v2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    .line 622
    .line 623
    iput-object v6, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mConstraintTag:Ljava/lang/String;

    .line 624
    .line 625
    goto :goto_5

    .line 626
    :cond_24
    iget-object v2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    .line 627
    .line 628
    iput-object v6, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mReferenceIdString:Ljava/lang/String;

    .line 629
    .line 630
    const/4 v6, 0x0

    .line 631
    iput-object v6, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mReferenceIds:[I

    .line 632
    .line 633
    goto :goto_5

    .line 634
    :cond_25
    iget-object v2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->motion:Landroidx/constraintlayout/widget/ConstraintSet$Motion;

    .line 635
    .line 636
    iput-object v6, v2, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mTransitionEasing:Ljava/lang/String;

    .line 637
    .line 638
    goto :goto_5

    .line 639
    :cond_26
    iget-object v2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    .line 640
    .line 641
    iput-object v6, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->dimensionRatio:Ljava/lang/String;

    .line 642
    .line 643
    :cond_27
    :goto_5
    add-int/lit8 v1, v1, 0x1

    .line 644
    .line 645
    goto :goto_4

    .line 646
    :cond_28
    :goto_6
    iget v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->mCountBoolean:I

    .line 647
    .line 648
    if-ge v0, v1, :cond_2e

    .line 649
    .line 650
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->mTypeBoolean:[I

    .line 651
    .line 652
    aget v1, v1, v0

    .line 653
    .line 654
    iget-object v2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->mValueBoolean:[Z

    .line 655
    .line 656
    aget-boolean v2, v2, v0

    .line 657
    .line 658
    sget-object v6, Landroidx/constraintlayout/widget/ConstraintSet;->VISIBILITY_FLAGS:[I

    .line 659
    .line 660
    const/16 v6, 0x2c

    .line 661
    .line 662
    if-eq v1, v6, :cond_2c

    .line 663
    .line 664
    const/16 v6, 0x4b

    .line 665
    .line 666
    if-eq v1, v6, :cond_2b

    .line 667
    .line 668
    if-eq v1, v5, :cond_2d

    .line 669
    .line 670
    const/16 v6, 0x50

    .line 671
    .line 672
    if-eq v1, v6, :cond_2a

    .line 673
    .line 674
    const/16 v6, 0x51

    .line 675
    .line 676
    if-eq v1, v6, :cond_29

    .line 677
    .line 678
    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    .line 680
    .line 681
    goto :goto_7

    .line 682
    :cond_29
    iget-object v1, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    .line 683
    .line 684
    iput-boolean v2, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->constrainedHeight:Z

    .line 685
    .line 686
    goto :goto_7

    .line 687
    :cond_2a
    iget-object v1, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    .line 688
    .line 689
    iput-boolean v2, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->constrainedWidth:Z

    .line 690
    .line 691
    goto :goto_7

    .line 692
    :cond_2b
    iget-object v1, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    .line 693
    .line 694
    iput-boolean v2, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mBarrierAllowsGoneWidgets:Z

    .line 695
    .line 696
    goto :goto_7

    .line 697
    :cond_2c
    iget-object v1, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    .line 698
    .line 699
    iput-boolean v2, v1, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->applyElevation:Z

    .line 700
    .line 701
    :cond_2d
    :goto_7
    add-int/lit8 v0, v0, 0x1

    .line 702
    .line 703
    goto :goto_6

    .line 704
    :cond_2e
    return-void

    .line 705
    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 706
    .line 707
    .line 708
    .line 709
    :pswitch_data_1
    .packed-switch 0x15
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x36
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x52
        :pswitch_14
        :pswitch_13
        :pswitch_12
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x57
        :pswitch_17
        :pswitch_16
        :pswitch_15
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x2b
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x43
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
    .end packed-switch
.end method
