.class public final synthetic Landroidx/appcompat/app/AlertController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/widget/LinearLayout;

.field public final synthetic f$1:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/LinearLayout;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/appcompat/app/AlertController$$ExternalSyntheticLambda1;->f$0:Landroid/widget/LinearLayout;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/appcompat/app/AlertController$$ExternalSyntheticLambda1;->f$1:Ljava/util/ArrayList;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/AlertController$$ExternalSyntheticLambda1;->f$0:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/appcompat/app/AlertController$$ExternalSyntheticLambda1;->f$1:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    goto/16 :goto_5

    .line 13
    .line 14
    :cond_0
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getHeight()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getWidth()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    new-instance v3, Landroid/graphics/Rect;

    .line 23
    .line 24
    const/4 v4, 0x0

    .line 25
    invoke-direct {v3, v4, v4, v2, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 26
    .line 27
    .line 28
    new-instance v5, Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 31
    .line 32
    .line 33
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 34
    .line 35
    .line 36
    move-result-object v6

    .line 37
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    .line 39
    .line 40
    move-result v7

    .line 41
    if-eqz v7, :cond_1

    .line 42
    .line 43
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v7

    .line 47
    check-cast v7, Landroid/view/View;

    .line 48
    .line 49
    invoke-static {v0, v7}, Landroidx/core/view/SeslTouchTargetDelegate;->calculateViewBounds(Landroid/view/View;Landroid/view/View;)Landroid/graphics/Rect;

    .line 50
    .line 51
    .line 52
    move-result-object v7

    .line 53
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getOrientation()I

    .line 58
    .line 59
    .line 60
    move-result v6

    .line 61
    const/4 v7, 0x1

    .line 62
    if-nez v6, :cond_2

    .line 63
    .line 64
    new-instance v6, Landroidx/core/view/SeslTouchDelegateFactory$$ExternalSyntheticLambda0;

    .line 65
    .line 66
    invoke-direct {v6, v3, v4}, Landroidx/core/view/SeslTouchDelegateFactory$$ExternalSyntheticLambda0;-><init>(Landroid/graphics/Rect;I)V

    .line 67
    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_2
    new-instance v6, Landroidx/core/view/SeslTouchDelegateFactory$$ExternalSyntheticLambda0;

    .line 71
    .line 72
    invoke-direct {v6, v3, v7}, Landroidx/core/view/SeslTouchDelegateFactory$$ExternalSyntheticLambda0;-><init>(Landroid/graphics/Rect;I)V

    .line 73
    .line 74
    .line 75
    :goto_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 76
    .line 77
    .line 78
    move-result v3

    .line 79
    sub-int/2addr v3, v7

    .line 80
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    check-cast v3, Landroid/graphics/Rect;

    .line 85
    .line 86
    new-instance v7, Landroid/graphics/Rect;

    .line 87
    .line 88
    iget v8, v3, Landroid/graphics/Rect;->right:I

    .line 89
    .line 90
    sub-int v8, v2, v8

    .line 91
    .line 92
    invoke-static {v4, v8}, Ljava/lang/Math;->max(II)I

    .line 93
    .line 94
    .line 95
    move-result v8

    .line 96
    add-int/2addr v8, v2

    .line 97
    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    .line 98
    .line 99
    sub-int v3, v1, v3

    .line 100
    .line 101
    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    .line 102
    .line 103
    .line 104
    move-result v3

    .line 105
    add-int/2addr v3, v1

    .line 106
    invoke-direct {v7, v8, v3, v2, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    new-instance v1, Landroid/graphics/Rect;

    .line 113
    .line 114
    invoke-direct {v1, v4, v4, v4, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 115
    .line 116
    .line 117
    new-instance v2, Landroidx/core/view/SeslTouchTargetDelegate$Builder;

    .line 118
    .line 119
    invoke-direct {v2, v0}, Landroidx/core/view/SeslTouchTargetDelegate$Builder;-><init>(Landroid/view/View;)V

    .line 120
    .line 121
    .line 122
    move v0, v4

    .line 123
    :goto_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 124
    .line 125
    .line 126
    move-result v3

    .line 127
    if-ge v0, v3, :cond_3

    .line 128
    .line 129
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v3

    .line 133
    check-cast v3, Landroid/graphics/Rect;

    .line 134
    .line 135
    add-int/lit8 v7, v0, 0x1

    .line 136
    .line 137
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v8

    .line 141
    check-cast v8, Landroid/graphics/Rect;

    .line 142
    .line 143
    iget v9, v6, Landroidx/core/view/SeslTouchDelegateFactory$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 144
    .line 145
    iget-object v10, v6, Landroidx/core/view/SeslTouchDelegateFactory$$ExternalSyntheticLambda0;->f$0:Landroid/graphics/Rect;

    .line 146
    .line 147
    packed-switch v9, :pswitch_data_0

    .line 148
    .line 149
    .line 150
    goto :goto_3

    .line 151
    :pswitch_0
    iget v9, v3, Landroid/graphics/Rect;->left:I

    .line 152
    .line 153
    iget v1, v1, Landroid/graphics/Rect;->right:I

    .line 154
    .line 155
    sub-int/2addr v9, v1

    .line 156
    iget v1, v3, Landroid/graphics/Rect;->top:I

    .line 157
    .line 158
    iget v11, v10, Landroid/graphics/Rect;->top:I

    .line 159
    .line 160
    sub-int/2addr v1, v11

    .line 161
    iget v8, v8, Landroid/graphics/Rect;->left:I

    .line 162
    .line 163
    iget v11, v3, Landroid/graphics/Rect;->right:I

    .line 164
    .line 165
    sub-int/2addr v8, v11

    .line 166
    invoke-static {v4, v8}, Ljava/lang/Math;->max(II)I

    .line 167
    .line 168
    .line 169
    move-result v8

    .line 170
    div-int/lit8 v8, v8, 0x2

    .line 171
    .line 172
    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    .line 173
    .line 174
    iget v11, v3, Landroid/graphics/Rect;->bottom:I

    .line 175
    .line 176
    sub-int/2addr v10, v11

    .line 177
    invoke-static {v9, v1, v8, v10}, Landroidx/core/view/SeslTouchTargetDelegate$ExtraInsets;->of(IIII)Landroidx/core/view/SeslTouchTargetDelegate$ExtraInsets;

    .line 178
    .line 179
    .line 180
    move-result-object v1

    .line 181
    goto :goto_4

    .line 182
    :goto_3
    iget v9, v3, Landroid/graphics/Rect;->left:I

    .line 183
    .line 184
    iget v11, v10, Landroid/graphics/Rect;->left:I

    .line 185
    .line 186
    sub-int/2addr v9, v11

    .line 187
    iget v11, v3, Landroid/graphics/Rect;->top:I

    .line 188
    .line 189
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    .line 190
    .line 191
    sub-int/2addr v11, v1

    .line 192
    iget v1, v10, Landroid/graphics/Rect;->right:I

    .line 193
    .line 194
    iget v10, v3, Landroid/graphics/Rect;->right:I

    .line 195
    .line 196
    sub-int/2addr v1, v10

    .line 197
    iget v8, v8, Landroid/graphics/Rect;->top:I

    .line 198
    .line 199
    iget v10, v3, Landroid/graphics/Rect;->bottom:I

    .line 200
    .line 201
    sub-int/2addr v8, v10

    .line 202
    invoke-static {v4, v8}, Ljava/lang/Math;->max(II)I

    .line 203
    .line 204
    .line 205
    move-result v8

    .line 206
    div-int/lit8 v8, v8, 0x2

    .line 207
    .line 208
    invoke-static {v9, v11, v1, v8}, Landroidx/core/view/SeslTouchTargetDelegate$ExtraInsets;->of(IIII)Landroidx/core/view/SeslTouchTargetDelegate$ExtraInsets;

    .line 209
    .line 210
    .line 211
    move-result-object v1

    .line 212
    :goto_4
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 213
    .line 214
    .line 215
    move-result-object v0

    .line 216
    check-cast v0, Landroid/view/View;

    .line 217
    .line 218
    iget-object v8, v2, Landroidx/core/view/SeslTouchTargetDelegate$Builder;->mQueue:Ljava/util/Queue;

    .line 219
    .line 220
    new-instance v9, Landroidx/core/view/SeslTouchTargetDelegate$Builder$$ExternalSyntheticLambda1;

    .line 221
    .line 222
    invoke-direct {v9, v0, v1}, Landroidx/core/view/SeslTouchTargetDelegate$Builder$$ExternalSyntheticLambda1;-><init>(Landroid/view/View;Landroidx/core/view/SeslTouchTargetDelegate$ExtraInsets;)V

    .line 223
    .line 224
    .line 225
    check-cast v8, Ljava/util/LinkedList;

    .line 226
    .line 227
    invoke-virtual {v8, v9}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 228
    .line 229
    .line 230
    move-object v1, v3

    .line 231
    move v0, v7

    .line 232
    goto :goto_2

    .line 233
    :cond_3
    move-object p0, v2

    .line 234
    :goto_5
    if-eqz p0, :cond_4

    .line 235
    .line 236
    iget-object v0, p0, Landroidx/core/view/SeslTouchTargetDelegate$Builder;->mAnchorView:Landroid/view/View;

    .line 237
    .line 238
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    .line 240
    .line 241
    new-instance v1, Landroidx/core/view/SeslTouchTargetDelegate$Builder$$ExternalSyntheticLambda0;

    .line 242
    .line 243
    invoke-direct {v1, v0}, Landroidx/core/view/SeslTouchTargetDelegate$Builder$$ExternalSyntheticLambda0;-><init>(Landroid/view/View;)V

    .line 244
    .line 245
    .line 246
    new-instance v2, Landroidx/core/view/SeslTouchTargetDelegate$Builder$$ExternalSyntheticLambda2;

    .line 247
    .line 248
    invoke-direct {v2, p0, v1}, Landroidx/core/view/SeslTouchTargetDelegate$Builder$$ExternalSyntheticLambda2;-><init>(Landroidx/core/view/SeslTouchTargetDelegate$Builder;Landroidx/core/view/SeslTouchTargetDelegate$Builder$$ExternalSyntheticLambda0;)V

    .line 249
    .line 250
    .line 251
    invoke-virtual {v0, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 252
    .line 253
    .line 254
    :cond_4
    return-void

    .line 255
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
