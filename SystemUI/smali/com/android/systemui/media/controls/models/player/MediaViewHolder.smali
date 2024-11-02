.class public final Lcom/android/systemui/media/controls/models/player/MediaViewHolder;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final Companion:Lcom/android/systemui/media/controls/models/player/MediaViewHolder$Companion;

.field public static final genericButtonIds:Ljava/util/Set;


# instance fields
.field public final seamless:Landroid/view/ViewGroup;

.field public final seamlessButton:Landroid/view/View;


# direct methods
.method public static constructor <clinit>()V
    .locals 32

    .line 1
    new-instance v0, Lcom/android/systemui/media/controls/models/player/MediaViewHolder$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/android/systemui/media/controls/models/player/MediaViewHolder$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/android/systemui/media/controls/models/player/MediaViewHolder;->Companion:Lcom/android/systemui/media/controls/models/player/MediaViewHolder$Companion;

    .line 8
    .line 9
    const v0, 0x7f0a04a2

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    .line 14
    .line 15
    move-result-object v16

    .line 16
    move-object/from16 v1, v16

    .line 17
    .line 18
    const v0, 0x7f0a00e3

    .line 19
    .line 20
    .line 21
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    const v0, 0x7f0a0485

    .line 26
    .line 27
    .line 28
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    move-object v3, v0

    .line 33
    const v4, 0x7f0a0479

    .line 34
    .line 35
    .line 36
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 37
    .line 38
    .line 39
    move-result-object v15

    .line 40
    move-object v4, v15

    .line 41
    const v5, 0x7f0a064e

    .line 42
    .line 43
    .line 44
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 45
    .line 46
    .line 47
    move-result-object v14

    .line 48
    move-object v5, v14

    .line 49
    const v6, 0x7f0a0665

    .line 50
    .line 51
    .line 52
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 53
    .line 54
    .line 55
    move-result-object v6

    .line 56
    const v7, 0x7f0a065b

    .line 57
    .line 58
    .line 59
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 60
    .line 61
    .line 62
    move-result-object v19

    .line 63
    move-object/from16 v7, v19

    .line 64
    .line 65
    const v8, 0x7f0a0058

    .line 66
    .line 67
    .line 68
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 69
    .line 70
    .line 71
    move-result-object v13

    .line 72
    move-object v8, v13

    .line 73
    const v9, 0x7f0a0057

    .line 74
    .line 75
    .line 76
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 77
    .line 78
    .line 79
    move-result-object v20

    .line 80
    move-object/from16 v9, v20

    .line 81
    .line 82
    const v10, 0x7f0a0059

    .line 83
    .line 84
    .line 85
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 86
    .line 87
    .line 88
    move-result-object v21

    .line 89
    move-object/from16 v10, v21

    .line 90
    .line 91
    const v11, 0x7f0a004f

    .line 92
    .line 93
    .line 94
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 95
    .line 96
    .line 97
    move-result-object v12

    .line 98
    move-object v11, v12

    .line 99
    const v17, 0x7f0a0050

    .line 100
    .line 101
    .line 102
    move-object/from16 v27, v0

    .line 103
    .line 104
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    move-object/from16 v28, v12

    .line 109
    .line 110
    move-object v12, v0

    .line 111
    const v17, 0x7f0a0051

    .line 112
    .line 113
    .line 114
    move-object/from16 v22, v0

    .line 115
    .line 116
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    move-object/from16 v29, v13

    .line 121
    .line 122
    move-object v13, v0

    .line 123
    const v17, 0x7f0a0052

    .line 124
    .line 125
    .line 126
    move-object/from16 v23, v0

    .line 127
    .line 128
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    move-object/from16 v30, v14

    .line 133
    .line 134
    move-object v14, v0

    .line 135
    const v17, 0x7f0a0053

    .line 136
    .line 137
    .line 138
    move-object/from16 v24, v0

    .line 139
    .line 140
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    move-object/from16 v31, v15

    .line 145
    .line 146
    move-object v15, v0

    .line 147
    const v17, 0x7f0a0663

    .line 148
    .line 149
    .line 150
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 151
    .line 152
    .line 153
    move-result-object v25

    .line 154
    move-object/from16 v17, v25

    .line 155
    .line 156
    const v18, 0x7f0a0664

    .line 157
    .line 158
    .line 159
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 160
    .line 161
    .line 162
    move-result-object v26

    .line 163
    move-object/from16 v18, v26

    .line 164
    .line 165
    filled-new-array/range {v1 .. v18}, [Ljava/lang/Integer;

    .line 166
    .line 167
    .line 168
    move-result-object v1

    .line 169
    invoke-static {v1}, Lkotlin/collections/SetsKt__SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    .line 170
    .line 171
    .line 172
    move-object/from16 v2, v22

    .line 173
    .line 174
    move-object/from16 v3, v23

    .line 175
    .line 176
    move-object/from16 v4, v24

    .line 177
    .line 178
    move-object/from16 v1, v28

    .line 179
    .line 180
    filled-new-array {v1, v2, v3, v4, v0}, [Ljava/lang/Integer;

    .line 181
    .line 182
    .line 183
    move-result-object v5

    .line 184
    invoke-static {v5}, Lkotlin/collections/SetsKt__SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    .line 185
    .line 186
    .line 187
    move-result-object v5

    .line 188
    sput-object v5, Lcom/android/systemui/media/controls/models/player/MediaViewHolder;->genericButtonIds:Ljava/util/Set;

    .line 189
    .line 190
    move-object/from16 v17, v19

    .line 191
    .line 192
    move-object/from16 v18, v21

    .line 193
    .line 194
    move-object/from16 v19, v20

    .line 195
    .line 196
    move-object/from16 v20, v1

    .line 197
    .line 198
    move-object/from16 v21, v2

    .line 199
    .line 200
    move-object/from16 v22, v3

    .line 201
    .line 202
    move-object/from16 v23, v4

    .line 203
    .line 204
    move-object/from16 v24, v0

    .line 205
    .line 206
    filled-new-array/range {v17 .. v26}, [Ljava/lang/Integer;

    .line 207
    .line 208
    .line 209
    move-result-object v0

    .line 210
    invoke-static {v0}, Lkotlin/collections/SetsKt__SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    .line 211
    .line 212
    .line 213
    move-object/from16 v0, v27

    .line 214
    .line 215
    move-object/from16 v3, v29

    .line 216
    .line 217
    move-object/from16 v2, v30

    .line 218
    .line 219
    move-object/from16 v1, v31

    .line 220
    .line 221
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Integer;

    .line 222
    .line 223
    .line 224
    move-result-object v0

    .line 225
    invoke-static {v0}, Lkotlin/collections/SetsKt__SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    .line 226
    .line 227
    .line 228
    const v0, 0x7f0a00ae

    .line 229
    .line 230
    .line 231
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 232
    .line 233
    .line 234
    move-result-object v0

    .line 235
    const v1, 0x7f0a0c40

    .line 236
    .line 237
    .line 238
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 239
    .line 240
    .line 241
    move-result-object v1

    .line 242
    const v2, 0x7f0a0c12

    .line 243
    .line 244
    .line 245
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 246
    .line 247
    .line 248
    move-result-object v2

    .line 249
    filled-new-array {v0, v1, v2}, [Ljava/lang/Integer;

    .line 250
    .line 251
    .line 252
    move-result-object v0

    .line 253
    invoke-static {v0}, Lkotlin/collections/SetsKt__SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    .line 254
    .line 255
    .line 256
    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    move-object v0, p1

    .line 5
    check-cast v0, Lcom/android/systemui/util/animation/TransitionLayout;

    .line 6
    .line 7
    const v0, 0x7f0a00ae

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Landroid/widget/ImageView;

    .line 15
    .line 16
    const v0, 0x7f0a0c12

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Lcom/android/systemui/surfaceeffects/ripple/MultiRippleView;

    .line 24
    .line 25
    const v0, 0x7f0a0c40

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseView;

    .line 33
    .line 34
    const v0, 0x7f0a04a2

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    check-cast v0, Landroid/widget/ImageView;

    .line 42
    .line 43
    const v0, 0x7f0a0485

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    check-cast v0, Landroid/widget/TextView;

    .line 51
    .line 52
    const v0, 0x7f0a0479

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    check-cast v0, Landroid/widget/TextView;

    .line 60
    .line 61
    const v0, 0x7f0a064e

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    check-cast v0, Lcom/android/internal/widget/CachingIconView;

    .line 69
    .line 70
    const v0, 0x7f0a0665

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    check-cast v0, Landroid/view/ViewGroup;

    .line 78
    .line 79
    iput-object v0, p0, Lcom/android/systemui/media/controls/models/player/MediaViewHolder;->seamless:Landroid/view/ViewGroup;

    .line 80
    .line 81
    const v0, 0x7f0a0667

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    check-cast v0, Landroid/widget/ImageView;

    .line 89
    .line 90
    const v0, 0x7f0a0668

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    check-cast v0, Landroid/widget/TextView;

    .line 98
    .line 99
    const v0, 0x7f0a0666

    .line 100
    .line 101
    .line 102
    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    iput-object v0, p0, Lcom/android/systemui/media/controls/models/player/MediaViewHolder;->seamlessButton:Landroid/view/View;

    .line 107
    .line 108
    const p0, 0x7f0a065b

    .line 109
    .line 110
    .line 111
    invoke-virtual {p1, p0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    .line 112
    .line 113
    .line 114
    move-result-object p0

    .line 115
    check-cast p0, Landroid/widget/SeekBar;

    .line 116
    .line 117
    const p0, 0x7f0a0663

    .line 118
    .line 119
    .line 120
    invoke-virtual {p1, p0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    .line 121
    .line 122
    .line 123
    move-result-object p0

    .line 124
    check-cast p0, Landroid/widget/TextView;

    .line 125
    .line 126
    const p0, 0x7f0a0664

    .line 127
    .line 128
    .line 129
    invoke-virtual {p1, p0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    .line 130
    .line 131
    .line 132
    move-result-object p0

    .line 133
    check-cast p0, Landroid/widget/TextView;

    .line 134
    .line 135
    new-instance p0, Lcom/android/systemui/media/controls/models/GutsViewHolder;

    .line 136
    .line 137
    invoke-direct {p0, p1}, Lcom/android/systemui/media/controls/models/GutsViewHolder;-><init>(Landroid/view/View;)V

    .line 138
    .line 139
    .line 140
    const p0, 0x7f0a0058

    .line 141
    .line 142
    .line 143
    invoke-virtual {p1, p0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    .line 144
    .line 145
    .line 146
    move-result-object p0

    .line 147
    check-cast p0, Landroid/widget/ImageButton;

    .line 148
    .line 149
    const p0, 0x7f0a0057

    .line 150
    .line 151
    .line 152
    invoke-virtual {p1, p0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    .line 153
    .line 154
    .line 155
    move-result-object p0

    .line 156
    check-cast p0, Landroid/widget/ImageButton;

    .line 157
    .line 158
    const p0, 0x7f0a0059

    .line 159
    .line 160
    .line 161
    invoke-virtual {p1, p0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    .line 162
    .line 163
    .line 164
    move-result-object p0

    .line 165
    check-cast p0, Landroid/widget/ImageButton;

    .line 166
    .line 167
    const p0, 0x7f0a004f

    .line 168
    .line 169
    .line 170
    invoke-virtual {p1, p0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    .line 171
    .line 172
    .line 173
    move-result-object p0

    .line 174
    check-cast p0, Landroid/widget/ImageButton;

    .line 175
    .line 176
    const p0, 0x7f0a0050

    .line 177
    .line 178
    .line 179
    invoke-virtual {p1, p0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    .line 180
    .line 181
    .line 182
    move-result-object p0

    .line 183
    check-cast p0, Landroid/widget/ImageButton;

    .line 184
    .line 185
    const p0, 0x7f0a0051

    .line 186
    .line 187
    .line 188
    invoke-virtual {p1, p0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    .line 189
    .line 190
    .line 191
    move-result-object p0

    .line 192
    check-cast p0, Landroid/widget/ImageButton;

    .line 193
    .line 194
    const p0, 0x7f0a0052

    .line 195
    .line 196
    .line 197
    invoke-virtual {p1, p0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    .line 198
    .line 199
    .line 200
    move-result-object p0

    .line 201
    check-cast p0, Landroid/widget/ImageButton;

    .line 202
    .line 203
    const p0, 0x7f0a0053

    .line 204
    .line 205
    .line 206
    invoke-virtual {p1, p0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    .line 207
    .line 208
    .line 209
    move-result-object p0

    .line 210
    check-cast p0, Landroid/widget/ImageButton;

    .line 211
    .line 212
    const p0, 0x7f0a0638

    .line 213
    .line 214
    .line 215
    invoke-virtual {p1, p0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    .line 216
    .line 217
    .line 218
    move-result-object p0

    .line 219
    check-cast p0, Landroidx/constraintlayout/widget/Barrier;

    .line 220
    .line 221
    return-void
.end method
