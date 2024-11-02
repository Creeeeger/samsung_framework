.class public final Landroidx/appcompat/app/AlertController$2$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$1:Landroidx/appcompat/app/AlertController$2;


# direct methods
.method public constructor <init>(Landroidx/appcompat/app/AlertController$2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/appcompat/app/AlertController$2$1;->this$1:Landroidx/appcompat/app/AlertController$2;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/AlertController$2$1;->this$1:Landroidx/appcompat/app/AlertController$2;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/appcompat/app/AlertController$2;->this$0:Landroidx/appcompat/app/AlertController;

    .line 4
    .line 5
    iget-object v0, v0, Landroidx/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 16
    .line 17
    iget-object v1, p0, Landroidx/appcompat/app/AlertController$2$1;->this$1:Landroidx/appcompat/app/AlertController$2;

    .line 18
    .line 19
    iget-object v1, v1, Landroidx/appcompat/app/AlertController$2;->this$0:Landroidx/appcompat/app/AlertController;

    .line 20
    .line 21
    iget v2, v1, Landroidx/appcompat/app/AlertController;->mLastOrientation:I

    .line 22
    .line 23
    if-eq v0, v2, :cond_b

    .line 24
    .line 25
    iget-object v0, v1, Landroidx/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    .line 26
    .line 27
    const v2, 0x7f0a07c8

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const v2, 0x7f0a0be2

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    const v3, 0x7f0a094d

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    const v4, 0x7f0a0bf9

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    const v5, 0x7f0a01f2

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 59
    .line 60
    .line 61
    move-result-object v5

    .line 62
    const v6, 0x7f0a02e1

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 66
    .line 67
    .line 68
    move-result-object v6

    .line 69
    const v7, 0x7f0a0298

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 73
    .line 74
    .line 75
    move-result-object v7

    .line 76
    const/4 v8, 0x1

    .line 77
    const/16 v9, 0x8

    .line 78
    .line 79
    const/4 v10, 0x0

    .line 80
    if-eqz v6, :cond_0

    .line 81
    .line 82
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    .line 83
    .line 84
    .line 85
    move-result v6

    .line 86
    if-eq v6, v9, :cond_0

    .line 87
    .line 88
    move v6, v8

    .line 89
    goto :goto_0

    .line 90
    :cond_0
    move v6, v10

    .line 91
    :goto_0
    if-eqz v4, :cond_1

    .line 92
    .line 93
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    .line 94
    .line 95
    .line 96
    move-result v4

    .line 97
    if-eq v4, v9, :cond_1

    .line 98
    .line 99
    move v4, v8

    .line 100
    goto :goto_1

    .line 101
    :cond_1
    move v4, v10

    .line 102
    :goto_1
    if-eqz v7, :cond_2

    .line 103
    .line 104
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    .line 105
    .line 106
    .line 107
    move-result v7

    .line 108
    if-eq v7, v9, :cond_2

    .line 109
    .line 110
    move v7, v8

    .line 111
    goto :goto_2

    .line 112
    :cond_2
    move v7, v10

    .line 113
    :goto_2
    iget-object v11, v1, Landroidx/appcompat/app/AlertController;->mCustomTitleView:Landroid/view/View;

    .line 114
    .line 115
    if-eqz v11, :cond_3

    .line 116
    .line 117
    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    .line 118
    .line 119
    .line 120
    move-result v11

    .line 121
    if-eq v11, v9, :cond_3

    .line 122
    .line 123
    goto :goto_3

    .line 124
    :cond_3
    move v8, v10

    .line 125
    :goto_3
    iget-object v1, v1, Landroidx/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    .line 126
    .line 127
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    if-eqz v6, :cond_4

    .line 132
    .line 133
    if-nez v4, :cond_4

    .line 134
    .line 135
    if-eqz v7, :cond_5

    .line 136
    .line 137
    :cond_4
    if-eqz v8, :cond_6

    .line 138
    .line 139
    :cond_5
    invoke-virtual {v0, v10, v10, v10, v10}, Landroid/view/View;->setPadding(IIII)V

    .line 140
    .line 141
    .line 142
    goto :goto_4

    .line 143
    :cond_6
    const v8, 0x7f071034

    .line 144
    .line 145
    .line 146
    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 147
    .line 148
    .line 149
    move-result v8

    .line 150
    invoke-virtual {v0, v10, v8, v10, v10}, Landroid/view/View;->setPadding(IIII)V

    .line 151
    .line 152
    .line 153
    :goto_4
    if-eqz v2, :cond_8

    .line 154
    .line 155
    const v0, 0x7f071030

    .line 156
    .line 157
    .line 158
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 159
    .line 160
    .line 161
    move-result v0

    .line 162
    if-eqz v6, :cond_7

    .line 163
    .line 164
    if-eqz v4, :cond_7

    .line 165
    .line 166
    if-nez v7, :cond_7

    .line 167
    .line 168
    invoke-virtual {v2, v0, v10, v0, v10}, Landroid/view/View;->setPadding(IIII)V

    .line 169
    .line 170
    .line 171
    goto :goto_5

    .line 172
    :cond_7
    const v4, 0x7f071033

    .line 173
    .line 174
    .line 175
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 176
    .line 177
    .line 178
    move-result v4

    .line 179
    invoke-virtual {v2, v0, v10, v0, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 180
    .line 181
    .line 182
    :cond_8
    :goto_5
    if-eqz v3, :cond_9

    .line 183
    .line 184
    const v0, 0x7f071015

    .line 185
    .line 186
    .line 187
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 188
    .line 189
    .line 190
    move-result v0

    .line 191
    const v2, 0x7f071014

    .line 192
    .line 193
    .line 194
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 195
    .line 196
    .line 197
    move-result v2

    .line 198
    const v4, 0x7f071010

    .line 199
    .line 200
    .line 201
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 202
    .line 203
    .line 204
    move-result v4

    .line 205
    invoke-virtual {v3, v0, v10, v2, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 206
    .line 207
    .line 208
    :cond_9
    if-eqz v5, :cond_a

    .line 209
    .line 210
    const v0, 0x7f071019

    .line 211
    .line 212
    .line 213
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 214
    .line 215
    .line 216
    move-result v0

    .line 217
    const v2, 0x7f071018

    .line 218
    .line 219
    .line 220
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 221
    .line 222
    .line 223
    move-result v1

    .line 224
    invoke-virtual {v5, v0, v10, v0, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 225
    .line 226
    .line 227
    :cond_a
    iget-object v0, p0, Landroidx/appcompat/app/AlertController$2$1;->this$1:Landroidx/appcompat/app/AlertController$2;

    .line 228
    .line 229
    iget-object v0, v0, Landroidx/appcompat/app/AlertController$2;->val$parentPanel:Landroid/view/View;

    .line 230
    .line 231
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 232
    .line 233
    .line 234
    :cond_b
    iget-object p0, p0, Landroidx/appcompat/app/AlertController$2$1;->this$1:Landroidx/appcompat/app/AlertController$2;

    .line 235
    .line 236
    iget-object p0, p0, Landroidx/appcompat/app/AlertController$2;->this$0:Landroidx/appcompat/app/AlertController;

    .line 237
    .line 238
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    .line 239
    .line 240
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 241
    .line 242
    .line 243
    move-result-object v0

    .line 244
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 245
    .line 246
    .line 247
    move-result-object v0

    .line 248
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 249
    .line 250
    iput v0, p0, Landroidx/appcompat/app/AlertController;->mLastOrientation:I

    .line 251
    .line 252
    return-void
.end method
