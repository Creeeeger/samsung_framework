.class public final Lcom/android/systemui/qs/customize/setting/SecQSSettingEditTilesActivity$onCreate$2;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/customize/setting/SecQSSettingEditTilesActivity;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/customize/setting/SecQSSettingEditTilesActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditTilesActivity$onCreate$2;->this$0:Lcom/android/systemui/qs/customize/setting/SecQSSettingEditTilesActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditTilesActivity$onCreate$2;->this$0:Lcom/android/systemui/qs/customize/setting/SecQSSettingEditTilesActivity;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 12
    .line 13
    iget-object v1, p0, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditTilesActivity$onCreate$2;->this$0:Lcom/android/systemui/qs/customize/setting/SecQSSettingEditTilesActivity;

    .line 14
    .line 15
    iget-object v2, v1, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditTilesActivity;->editResources:Lcom/android/systemui/qs/customize/setting/SecQSSettingEditResources;

    .line 16
    .line 17
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    invoke-static {v1, p2}, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditResources;->getBottomPadding(Landroidx/activity/ComponentActivity;Landroid/view/WindowInsets;)I

    .line 21
    .line 22
    .line 23
    move-result p2

    .line 24
    iget-object v1, p0, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditTilesActivity$onCreate$2;->this$0:Lcom/android/systemui/qs/customize/setting/SecQSSettingEditTilesActivity;

    .line 25
    .line 26
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    const v2, 0x7f07124b

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    iget-object v2, p0, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditTilesActivity$onCreate$2;->this$0:Lcom/android/systemui/qs/customize/setting/SecQSSettingEditTilesActivity;

    .line 38
    .line 39
    iget v3, v2, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditTilesActivity;->currentDensity:F

    .line 40
    .line 41
    cmpg-float v4, v0, v3

    .line 42
    .line 43
    const/4 v5, 0x0

    .line 44
    if-nez v4, :cond_0

    .line 45
    .line 46
    const/4 v4, 0x1

    .line 47
    goto :goto_0

    .line 48
    :cond_0
    move v4, v5

    .line 49
    :goto_0
    if-nez v4, :cond_1

    .line 50
    .line 51
    int-to-float p2, p2

    .line 52
    div-float/2addr p2, v0

    .line 53
    mul-float/2addr p2, v3

    .line 54
    float-to-int p2, p2

    .line 55
    int-to-float v1, v1

    .line 56
    div-float/2addr v1, v0

    .line 57
    mul-float/2addr v1, v3

    .line 58
    float-to-int v1, v1

    .line 59
    :cond_1
    const v0, 0x7f0a0394

    .line 60
    .line 61
    .line 62
    invoke-virtual {v2, v0}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    const/4 v2, -0x1

    .line 67
    if-eqz v0, :cond_3

    .line 68
    .line 69
    sget-boolean v3, Lcom/android/systemui/QpRune;->QUICK_TABLET:Z

    .line 70
    .line 71
    if-eqz v3, :cond_2

    .line 72
    .line 73
    invoke-virtual {v0, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 74
    .line 75
    .line 76
    :cond_2
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 77
    .line 78
    invoke-direct {v3, v2, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 82
    .line 83
    .line 84
    :cond_3
    iget-object p2, p0, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditTilesActivity$onCreate$2;->this$0:Lcom/android/systemui/qs/customize/setting/SecQSSettingEditTilesActivity;

    .line 85
    .line 86
    const v0, 0x7f0a0399

    .line 87
    .line 88
    .line 89
    invoke-virtual {p2, v0}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    .line 90
    .line 91
    .line 92
    move-result-object p2

    .line 93
    if-nez p2, :cond_4

    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_4
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 97
    .line 98
    invoke-direct {v0, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 102
    .line 103
    .line 104
    :goto_1
    iget-object p2, p0, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditTilesActivity$onCreate$2;->this$0:Lcom/android/systemui/qs/customize/setting/SecQSSettingEditTilesActivity;

    .line 105
    .line 106
    const v0, 0x7f0a084b

    .line 107
    .line 108
    .line 109
    invoke-virtual {p2, v0}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    .line 110
    .line 111
    .line 112
    move-result-object p2

    .line 113
    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    sget-boolean v1, Lcom/android/systemui/QpRune;->QUICK_TABLET:Z

    .line 118
    .line 119
    if-eqz v1, :cond_5

    .line 120
    .line 121
    const v2, 0x7f070bbf

    .line 122
    .line 123
    .line 124
    goto :goto_2

    .line 125
    :cond_5
    const v2, 0x7f070ba4

    .line 126
    .line 127
    .line 128
    :goto_2
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 129
    .line 130
    .line 131
    move-result v0

    .line 132
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 133
    .line 134
    .line 135
    move-result-object v2

    .line 136
    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 137
    .line 138
    .line 139
    move-result-object v3

    .line 140
    const v4, 0x7f070bad

    .line 141
    .line 142
    .line 143
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 144
    .line 145
    .line 146
    move-result v3

    .line 147
    add-int/2addr v3, v0

    .line 148
    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 149
    .line 150
    invoke-virtual {p2, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {p2}, Landroid/view/View;->getPaddingLeft()I

    .line 154
    .line 155
    .line 156
    move-result v2

    .line 157
    invoke-virtual {p2}, Landroid/view/View;->getPaddingTop()I

    .line 158
    .line 159
    .line 160
    move-result v3

    .line 161
    invoke-virtual {p2}, Landroid/view/View;->getPaddingRight()I

    .line 162
    .line 163
    .line 164
    move-result v4

    .line 165
    invoke-virtual {p2, v2, v3, v4, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 166
    .line 167
    .line 168
    if-eqz v1, :cond_6

    .line 169
    .line 170
    invoke-virtual {p2, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    const v1, 0x7f080d83

    .line 178
    .line 179
    .line 180
    const/4 v2, 0x0

    .line 181
    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    invoke-virtual {p2, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 186
    .line 187
    .line 188
    :cond_6
    iget-object p2, p0, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditTilesActivity$onCreate$2;->this$0:Lcom/android/systemui/qs/customize/setting/SecQSSettingEditTilesActivity;

    .line 189
    .line 190
    iget-object v0, p2, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditTilesActivity;->editResources:Lcom/android/systemui/qs/customize/setting/SecQSSettingEditResources;

    .line 191
    .line 192
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 193
    .line 194
    .line 195
    invoke-static {p2}, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditResources;->getSidePadding(Landroidx/activity/ComponentActivity;)I

    .line 196
    .line 197
    .line 198
    move-result p2

    .line 199
    iget-object p0, p0, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditTilesActivity$onCreate$2;->this$0:Lcom/android/systemui/qs/customize/setting/SecQSSettingEditTilesActivity;

    .line 200
    .line 201
    iget-object v0, p0, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditTilesActivity;->editResources:Lcom/android/systemui/qs/customize/setting/SecQSSettingEditResources;

    .line 202
    .line 203
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 204
    .line 205
    .line 206
    invoke-static {p0}, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditResources;->getSidePadding(Landroidx/activity/ComponentActivity;)I

    .line 207
    .line 208
    .line 209
    move-result p0

    .line 210
    invoke-virtual {p1, p2, v5, p0, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 211
    .line 212
    .line 213
    sget-object p0, Landroid/view/WindowInsets;->CONSUMED:Landroid/view/WindowInsets;

    .line 214
    .line 215
    return-object p0
.end method
