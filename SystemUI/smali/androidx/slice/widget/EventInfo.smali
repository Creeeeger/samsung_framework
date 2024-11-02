.class public final Landroidx/slice/widget/EventInfo;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public actionCount:I

.field public actionIndex:I

.field public actionPosition:I

.field public final actionType:I

.field public final rowIndex:I

.field public final rowTemplateType:I

.field public final sliceMode:I

.field public state:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Landroidx/slice/widget/EventInfo;->sliceMode:I

    .line 5
    .line 6
    iput p2, p0, Landroidx/slice/widget/EventInfo;->actionType:I

    .line 7
    .line 8
    iput p3, p0, Landroidx/slice/widget/EventInfo;->rowTemplateType:I

    .line 9
    .line 10
    iput p4, p0, Landroidx/slice/widget/EventInfo;->rowIndex:I

    .line 11
    .line 12
    const/4 p1, -0x1

    .line 13
    iput p1, p0, Landroidx/slice/widget/EventInfo;->actionPosition:I

    .line 14
    .line 15
    iput p1, p0, Landroidx/slice/widget/EventInfo;->actionIndex:I

    .line 16
    .line 17
    iput p1, p0, Landroidx/slice/widget/EventInfo;->actionCount:I

    .line 18
    .line 19
    iput p1, p0, Landroidx/slice/widget/EventInfo;->state:I

    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 10

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "mode="

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    sget-object v1, Landroidx/slice/widget/SliceView;->SLICE_ACTION_PRIORITY_COMPARATOR:Landroidx/slice/widget/SliceView$3;

    .line 10
    .line 11
    const/4 v1, 0x2

    .line 12
    const/4 v2, 0x1

    .line 13
    iget v3, p0, Landroidx/slice/widget/EventInfo;->sliceMode:I

    .line 14
    .line 15
    if-eq v3, v2, :cond_2

    .line 16
    .line 17
    if-eq v3, v1, :cond_1

    .line 18
    .line 19
    const/4 v4, 0x3

    .line 20
    if-eq v3, v4, :cond_0

    .line 21
    .line 22
    const-string/jumbo v4, "unknown mode: "

    .line 23
    .line 24
    .line 25
    invoke-static {v4, v3}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const-string v3, "MODE SHORTCUT"

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    const-string v3, "MODE LARGE"

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_2
    const-string v3, "MODE SMALL"

    .line 37
    .line 38
    :goto_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v3, ", actionType="

    .line 42
    .line 43
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v3, "TIME_PICK"

    .line 47
    .line 48
    const-string v4, "DATE_PICK"

    .line 49
    .line 50
    const-string v5, "SELECTION"

    .line 51
    .line 52
    const-string v6, "SLIDER"

    .line 53
    .line 54
    const-string v7, "TOGGLE"

    .line 55
    .line 56
    iget v8, p0, Landroidx/slice/widget/EventInfo;->actionType:I

    .line 57
    .line 58
    packed-switch v8, :pswitch_data_0

    .line 59
    .line 60
    .line 61
    const-string/jumbo v9, "unknown action: "

    .line 62
    .line 63
    .line 64
    invoke-static {v9, v8}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v8

    .line 68
    goto :goto_1

    .line 69
    :pswitch_0
    move-object v8, v3

    .line 70
    goto :goto_1

    .line 71
    :pswitch_1
    move-object v8, v4

    .line 72
    goto :goto_1

    .line 73
    :pswitch_2
    move-object v8, v5

    .line 74
    goto :goto_1

    .line 75
    :pswitch_3
    const-string v8, "SEE MORE"

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :pswitch_4
    const-string v8, "CONTENT"

    .line 79
    .line 80
    goto :goto_1

    .line 81
    :pswitch_5
    move-object v8, v6

    .line 82
    goto :goto_1

    .line 83
    :pswitch_6
    const-string v8, "BUTTON"

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :pswitch_7
    move-object v8, v7

    .line 87
    :goto_1
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    const-string v8, ", rowTemplateType="

    .line 91
    .line 92
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    iget v8, p0, Landroidx/slice/widget/EventInfo;->rowTemplateType:I

    .line 96
    .line 97
    packed-switch v8, :pswitch_data_1

    .line 98
    .line 99
    .line 100
    const-string/jumbo v3, "unknown row type: "

    .line 101
    .line 102
    .line 103
    invoke-static {v3, v8}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v3

    .line 107
    goto :goto_2

    .line 108
    :pswitch_8
    move-object v3, v4

    .line 109
    goto :goto_2

    .line 110
    :pswitch_9
    move-object v3, v5

    .line 111
    goto :goto_2

    .line 112
    :pswitch_a
    const-string v3, "PROGRESS"

    .line 113
    .line 114
    goto :goto_2

    .line 115
    :pswitch_b
    move-object v3, v6

    .line 116
    goto :goto_2

    .line 117
    :pswitch_c
    move-object v3, v7

    .line 118
    goto :goto_2

    .line 119
    :pswitch_d
    const-string v3, "MESSAGING"

    .line 120
    .line 121
    goto :goto_2

    .line 122
    :pswitch_e
    const-string v3, "GRID"

    .line 123
    .line 124
    goto :goto_2

    .line 125
    :pswitch_f
    const-string v3, "LIST"

    .line 126
    .line 127
    goto :goto_2

    .line 128
    :pswitch_10
    const-string v3, "SHORTCUT"

    .line 129
    .line 130
    :goto_2
    :pswitch_11
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    const-string v3, ", rowIndex="

    .line 134
    .line 135
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    iget v3, p0, Landroidx/slice/widget/EventInfo;->rowIndex:I

    .line 139
    .line 140
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    const-string v3, ", actionPosition="

    .line 144
    .line 145
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    iget v3, p0, Landroidx/slice/widget/EventInfo;->actionPosition:I

    .line 149
    .line 150
    if-eqz v3, :cond_5

    .line 151
    .line 152
    if-eq v3, v2, :cond_4

    .line 153
    .line 154
    if-eq v3, v1, :cond_3

    .line 155
    .line 156
    const-string/jumbo v1, "unknown position: "

    .line 157
    .line 158
    .line 159
    invoke-static {v1, v3}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    goto :goto_3

    .line 164
    :cond_3
    const-string v1, "CELL"

    .line 165
    .line 166
    goto :goto_3

    .line 167
    :cond_4
    const-string v1, "END"

    .line 168
    .line 169
    goto :goto_3

    .line 170
    :cond_5
    const-string v1, "START"

    .line 171
    .line 172
    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    const-string v1, ", actionIndex="

    .line 176
    .line 177
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    iget v1, p0, Landroidx/slice/widget/EventInfo;->actionIndex:I

    .line 181
    .line 182
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    const-string v1, ", actionCount="

    .line 186
    .line 187
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    iget v1, p0, Landroidx/slice/widget/EventInfo;->actionCount:I

    .line 191
    .line 192
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    const-string v1, ", state="

    .line 196
    .line 197
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    iget p0, p0, Landroidx/slice/widget/EventInfo;->state:I

    .line 201
    .line 202
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object p0

    .line 209
    return-object p0

    .line 210
    nop

    .line 211
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    :pswitch_data_1
    .packed-switch -0x1
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_11
    .end packed-switch
.end method
