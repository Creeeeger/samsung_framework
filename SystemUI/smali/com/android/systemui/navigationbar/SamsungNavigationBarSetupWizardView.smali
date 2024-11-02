.class public final Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;
.super Landroid/widget/FrameLayout;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView$NavigationBarSetupWizardButton;
    }
.end annotation


# instance fields
.field public a11yBtn:Landroid/widget/ImageView;

.field public a11yLayout:Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView$NavigationBarSetupWizardButton;

.field public a11yRipple:Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;

.field public backAltRipple:Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;

.field public backRipple:Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;

.field public hints:I

.field public imeBtn:Landroid/widget/ImageView;

.field public imeBtnLayout:Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView$NavigationBarSetupWizardButton;

.field public final layoutInflater:Landroid/view/LayoutInflater;

.field public prevBtn:Landroid/widget/ImageView;

.field public prevBtnLayout:Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView$NavigationBarSetupWizardButton;

.field public setupWizardView:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;->layoutInflater:Landroid/view/LayoutInflater;

    .line 9
    .line 10
    return-void
.end method

.method public static sendEvent$default(Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;I)V
    .locals 13

    .line 1
    const/4 v6, 0x4

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 3
    .line 4
    .line 5
    move-result-wide v3

    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    new-instance p0, Landroid/view/KeyEvent;

    .line 10
    .line 11
    const/4 v7, 0x0

    .line 12
    const/4 v8, 0x0

    .line 13
    const/4 v9, -0x1

    .line 14
    const/4 v10, 0x0

    .line 15
    const/16 v11, 0x48

    .line 16
    .line 17
    const/16 v12, 0x101

    .line 18
    .line 19
    move-object v0, p0

    .line 20
    move-wide v1, v3

    .line 21
    move v5, p1

    .line 22
    invoke-direct/range {v0 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 23
    .line 24
    .line 25
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    const/4 v0, 0x0

    .line 30
    invoke-virtual {p1, p0, v0}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 31
    .line 32
    .line 33
    return-void
.end method


# virtual methods
.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;->updateResources()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final onFinishInflate()V
    .locals 6

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;->layoutInflater:Landroid/view/LayoutInflater;

    .line 8
    .line 9
    const v1, 0x7f0d030c

    .line 10
    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Landroid/widget/FrameLayout;

    .line 18
    .line 19
    iput-object v0, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;->setupWizardView:Landroid/widget/FrameLayout;

    .line 20
    .line 21
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;->setupWizardView:Landroid/widget/FrameLayout;

    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    if-nez v0, :cond_0

    .line 28
    .line 29
    move-object v0, v1

    .line 30
    :cond_0
    const v2, 0x7f0a080a

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView$NavigationBarSetupWizardButton;

    .line 38
    .line 39
    iput-object v0, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;->prevBtnLayout:Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView$NavigationBarSetupWizardButton;

    .line 40
    .line 41
    new-instance v0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;

    .line 42
    .line 43
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    iget-object v3, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;->prevBtnLayout:Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView$NavigationBarSetupWizardButton;

    .line 48
    .line 49
    if-nez v3, :cond_1

    .line 50
    .line 51
    move-object v3, v1

    .line 52
    :cond_1
    const v4, 0x7f0703f1

    .line 53
    .line 54
    .line 55
    const/high16 v5, 0x3f800000    # 1.0f

    .line 56
    .line 57
    invoke-direct {v0, v2, v3, v4, v5}, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;-><init>(Landroid/content/Context;Landroid/view/View;IF)V

    .line 58
    .line 59
    .line 60
    iput-object v0, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;->backRipple:Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;

    .line 61
    .line 62
    iget-object v2, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;->prevBtnLayout:Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView$NavigationBarSetupWizardButton;

    .line 63
    .line 64
    if-nez v2, :cond_2

    .line 65
    .line 66
    move-object v2, v1

    .line 67
    :cond_2
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 68
    .line 69
    .line 70
    iget-object v0, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;->setupWizardView:Landroid/widget/FrameLayout;

    .line 71
    .line 72
    if-nez v0, :cond_3

    .line 73
    .line 74
    move-object v0, v1

    .line 75
    :cond_3
    const v2, 0x7f0a080e

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    check-cast v0, Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView$NavigationBarSetupWizardButton;

    .line 83
    .line 84
    iput-object v0, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;->imeBtnLayout:Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView$NavigationBarSetupWizardButton;

    .line 85
    .line 86
    new-instance v0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;

    .line 87
    .line 88
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    iget-object v3, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;->imeBtnLayout:Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView$NavigationBarSetupWizardButton;

    .line 93
    .line 94
    if-nez v3, :cond_4

    .line 95
    .line 96
    move-object v3, v1

    .line 97
    :cond_4
    invoke-direct {v0, v2, v3, v4, v5}, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;-><init>(Landroid/content/Context;Landroid/view/View;IF)V

    .line 98
    .line 99
    .line 100
    iput-object v0, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;->backAltRipple:Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;

    .line 101
    .line 102
    iget-object v2, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;->imeBtnLayout:Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView$NavigationBarSetupWizardButton;

    .line 103
    .line 104
    if-nez v2, :cond_5

    .line 105
    .line 106
    move-object v2, v1

    .line 107
    :cond_5
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 108
    .line 109
    .line 110
    iget-object v0, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;->setupWizardView:Landroid/widget/FrameLayout;

    .line 111
    .line 112
    if-nez v0, :cond_6

    .line 113
    .line 114
    move-object v0, v1

    .line 115
    :cond_6
    const v2, 0x7f0a0016

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    check-cast v0, Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView$NavigationBarSetupWizardButton;

    .line 123
    .line 124
    iput-object v0, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;->a11yLayout:Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView$NavigationBarSetupWizardButton;

    .line 125
    .line 126
    new-instance v0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;

    .line 127
    .line 128
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 129
    .line 130
    .line 131
    move-result-object v2

    .line 132
    iget-object v3, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;->a11yLayout:Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView$NavigationBarSetupWizardButton;

    .line 133
    .line 134
    if-nez v3, :cond_7

    .line 135
    .line 136
    move-object v3, v1

    .line 137
    :cond_7
    invoke-direct {v0, v2, v3, v4, v5}, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;-><init>(Landroid/content/Context;Landroid/view/View;IF)V

    .line 138
    .line 139
    .line 140
    iput-object v0, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;->a11yRipple:Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;

    .line 141
    .line 142
    iget-object v2, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;->a11yLayout:Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView$NavigationBarSetupWizardButton;

    .line 143
    .line 144
    if-nez v2, :cond_8

    .line 145
    .line 146
    move-object v2, v1

    .line 147
    :cond_8
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 148
    .line 149
    .line 150
    iget-object v0, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;->setupWizardView:Landroid/widget/FrameLayout;

    .line 151
    .line 152
    if-nez v0, :cond_9

    .line 153
    .line 154
    move-object v0, v1

    .line 155
    :cond_9
    const v2, 0x7f0a080b

    .line 156
    .line 157
    .line 158
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    check-cast v0, Landroid/widget/ImageView;

    .line 163
    .line 164
    iput-object v0, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;->prevBtn:Landroid/widget/ImageView;

    .line 165
    .line 166
    iget-object v0, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;->setupWizardView:Landroid/widget/FrameLayout;

    .line 167
    .line 168
    if-nez v0, :cond_a

    .line 169
    .line 170
    move-object v0, v1

    .line 171
    :cond_a
    const v2, 0x7f0a04c1

    .line 172
    .line 173
    .line 174
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    check-cast v0, Landroid/widget/ImageView;

    .line 179
    .line 180
    iput-object v0, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;->imeBtn:Landroid/widget/ImageView;

    .line 181
    .line 182
    iget-object v0, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;->setupWizardView:Landroid/widget/FrameLayout;

    .line 183
    .line 184
    if-nez v0, :cond_b

    .line 185
    .line 186
    move-object v0, v1

    .line 187
    :cond_b
    const v2, 0x7f0a0017

    .line 188
    .line 189
    .line 190
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    check-cast v0, Landroid/widget/ImageView;

    .line 195
    .line 196
    iput-object v0, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;->a11yBtn:Landroid/widget/ImageView;

    .line 197
    .line 198
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;->updateResources()V

    .line 199
    .line 200
    .line 201
    new-instance v0, Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView$onFinishInflate$clickListener$1;

    .line 202
    .line 203
    invoke-direct {v0, p0}, Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView$onFinishInflate$clickListener$1;-><init>(Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;)V

    .line 204
    .line 205
    .line 206
    iget-object v2, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;->prevBtnLayout:Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView$NavigationBarSetupWizardButton;

    .line 207
    .line 208
    if-nez v2, :cond_c

    .line 209
    .line 210
    move-object v2, v1

    .line 211
    :cond_c
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 212
    .line 213
    .line 214
    iget-object v2, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;->imeBtnLayout:Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView$NavigationBarSetupWizardButton;

    .line 215
    .line 216
    if-nez v2, :cond_d

    .line 217
    .line 218
    move-object v2, v1

    .line 219
    :cond_d
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 220
    .line 221
    .line 222
    iget-object v0, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;->a11yLayout:Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView$NavigationBarSetupWizardButton;

    .line 223
    .line 224
    if-nez v0, :cond_e

    .line 225
    .line 226
    move-object v0, v1

    .line 227
    :cond_e
    new-instance v2, Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView$onFinishInflate$1;

    .line 228
    .line 229
    invoke-direct {v2, p0}, Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView$onFinishInflate$1;-><init>(Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;)V

    .line 230
    .line 231
    .line 232
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 233
    .line 234
    .line 235
    iget-object p0, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;->a11yLayout:Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView$NavigationBarSetupWizardButton;

    .line 236
    .line 237
    if-nez p0, :cond_f

    .line 238
    .line 239
    goto :goto_0

    .line 240
    :cond_f
    move-object v1, p0

    .line 241
    :goto_0
    sget-object p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView$onFinishInflate$2;->INSTANCE:Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView$onFinishInflate$2;

    .line 242
    .line 243
    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 244
    .line 245
    .line 246
    return-void
.end method

.method public final updateResources()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;->prevBtn:Landroid/widget/ImageView;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    move-object v0, v1

    .line 7
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    const v3, 0x7f080a79

    .line 12
    .line 13
    .line 14
    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;->imeBtn:Landroid/widget/ImageView;

    .line 22
    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    move-object v0, v1

    .line 26
    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    const v3, 0x7f080a7d

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;->a11yBtn:Landroid/widget/ImageView;

    .line 41
    .line 42
    if-nez v0, :cond_2

    .line 43
    .line 44
    move-object v0, v1

    .line 45
    :cond_2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    const v3, 0x7f080a77

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 57
    .line 58
    .line 59
    iget-object v0, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;->prevBtnLayout:Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView$NavigationBarSetupWizardButton;

    .line 60
    .line 61
    if-nez v0, :cond_3

    .line 62
    .line 63
    move-object v0, v1

    .line 64
    :cond_3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    const v3, 0x7f130e54

    .line 73
    .line 74
    .line 75
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 80
    .line 81
    .line 82
    iget-object v0, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;->imeBtnLayout:Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView$NavigationBarSetupWizardButton;

    .line 83
    .line 84
    if-nez v0, :cond_4

    .line 85
    .line 86
    move-object v0, v1

    .line 87
    :cond_4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 100
    .line 101
    .line 102
    iget-object v0, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;->a11yLayout:Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView$NavigationBarSetupWizardButton;

    .line 103
    .line 104
    if-nez v0, :cond_5

    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_5
    move-object v1, v0

    .line 108
    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 109
    .line 110
    .line 111
    move-result-object p0

    .line 112
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 113
    .line 114
    .line 115
    move-result-object p0

    .line 116
    const v0, 0x7f130031

    .line 117
    .line 118
    .line 119
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    .line 120
    .line 121
    .line 122
    move-result-object p0

    .line 123
    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 124
    .line 125
    .line 126
    return-void
.end method
