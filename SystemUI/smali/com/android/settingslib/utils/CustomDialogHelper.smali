.class public final Lcom/android/settingslib/utils/CustomDialogHelper;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mBackButton:Landroid/widget/Button;

.field public final mContentPanel:Landroid/widget/FrameLayout;

.field public final mContext:Landroid/content/Context;

.field public final mCustomLayout:Landroid/widget/FrameLayout;

.field public final mCustomPanel:Landroid/widget/FrameLayout;

.field public mDialog:Landroid/app/Dialog;

.field public final mDialogContent:Landroid/view/View;

.field public final mDialogIcon:Landroid/widget/ImageView;

.field public final mDialogMessage:Landroid/widget/TextView;

.field public final mDialogTitle:Landroidx/appcompat/widget/DialogTitle;

.field public final mDivider1:Landroid/view/View;

.field public final mDivider2:Landroid/view/View;

.field public final mNegativeButton:Landroid/widget/Button;

.field public final mPositiveButton:Landroid/widget/Button;

.field public final mTitleTemplete:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/settingslib/utils/CustomDialogHelper;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const v1, 0x7f0d032c

    .line 11
    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, Lcom/android/settingslib/utils/CustomDialogHelper;->mDialogContent:Landroid/view/View;

    .line 19
    .line 20
    const v1, 0x7f0a0334

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Landroid/widget/ImageView;

    .line 28
    .line 29
    iput-object v1, p0, Lcom/android/settingslib/utils/CustomDialogHelper;->mDialogIcon:Landroid/widget/ImageView;

    .line 30
    .line 31
    const v1, 0x7f0a0336

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    check-cast v1, Landroidx/appcompat/widget/DialogTitle;

    .line 39
    .line 40
    iput-object v1, p0, Lcom/android/settingslib/utils/CustomDialogHelper;->mDialogTitle:Landroidx/appcompat/widget/DialogTitle;

    .line 41
    .line 42
    const v1, 0x7f0a0335

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    check-cast v1, Landroid/widget/TextView;

    .line 50
    .line 51
    iput-object v1, p0, Lcom/android/settingslib/utils/CustomDialogHelper;->mDialogMessage:Landroid/widget/TextView;

    .line 52
    .line 53
    const v1, 0x7f0a02e7

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    check-cast v1, Landroid/widget/FrameLayout;

    .line 61
    .line 62
    iput-object v1, p0, Lcom/android/settingslib/utils/CustomDialogHelper;->mCustomLayout:Landroid/widget/FrameLayout;

    .line 63
    .line 64
    const v1, 0x7f0a0201

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    check-cast v1, Landroid/widget/Button;

    .line 72
    .line 73
    iput-object v1, p0, Lcom/android/settingslib/utils/CustomDialogHelper;->mPositiveButton:Landroid/widget/Button;

    .line 74
    .line 75
    const v1, 0x7f0a01f7

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    check-cast v1, Landroid/widget/Button;

    .line 83
    .line 84
    iput-object v1, p0, Lcom/android/settingslib/utils/CustomDialogHelper;->mNegativeButton:Landroid/widget/Button;

    .line 85
    .line 86
    const v1, 0x7f0a01f5

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    check-cast v1, Landroid/widget/Button;

    .line 94
    .line 95
    iput-object v1, p0, Lcom/android/settingslib/utils/CustomDialogHelper;->mBackButton:Landroid/widget/Button;

    .line 96
    .line 97
    const v1, 0x7f0a02e1

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    check-cast v1, Landroid/widget/FrameLayout;

    .line 105
    .line 106
    iput-object v1, p0, Lcom/android/settingslib/utils/CustomDialogHelper;->mCustomPanel:Landroid/widget/FrameLayout;

    .line 107
    .line 108
    const v1, 0x7f0a0298

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    check-cast v1, Landroid/widget/FrameLayout;

    .line 116
    .line 117
    iput-object v1, p0, Lcom/android/settingslib/utils/CustomDialogHelper;->mContentPanel:Landroid/widget/FrameLayout;

    .line 118
    .line 119
    const v1, 0x7f0a0be2

    .line 120
    .line 121
    .line 122
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    check-cast v1, Landroid/widget/LinearLayout;

    .line 127
    .line 128
    iput-object v1, p0, Lcom/android/settingslib/utils/CustomDialogHelper;->mTitleTemplete:Landroid/widget/LinearLayout;

    .line 129
    .line 130
    const v1, 0x7f0a09d4

    .line 131
    .line 132
    .line 133
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    iput-object v1, p0, Lcom/android/settingslib/utils/CustomDialogHelper;->mDivider1:Landroid/view/View;

    .line 138
    .line 139
    const v1, 0x7f0a09d5

    .line 140
    .line 141
    .line 142
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    iput-object v1, p0, Lcom/android/settingslib/utils/CustomDialogHelper;->mDivider2:Landroid/view/View;

    .line 147
    .line 148
    new-instance v1, Landroid/app/AlertDialog$Builder;

    .line 149
    .line 150
    invoke-direct {v1, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    const/4 v0, 0x1

    .line 158
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 159
    .line 160
    .line 161
    move-result-object p1

    .line 162
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    iput-object p1, p0, Lcom/android/settingslib/utils/CustomDialogHelper;->mDialog:Landroid/app/Dialog;

    .line 167
    .line 168
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 169
    .line 170
    .line 171
    move-result-object p0

    .line 172
    const/4 p1, 0x4

    .line 173
    invoke-virtual {p0, p1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 174
    .line 175
    .line 176
    return-void
.end method


# virtual methods
.method public final checkMaxFontScale(ILandroid/widget/TextView;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/settingslib/utils/CustomDialogHelper;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    iget p0, p0, Landroid/content/res/Configuration;->fontScale:F

    .line 12
    .line 13
    const v0, 0x3fa66666    # 1.3f

    .line 14
    .line 15
    .line 16
    cmpl-float v1, p0, v0

    .line 17
    .line 18
    if-lez v1, :cond_0

    .line 19
    .line 20
    int-to-float p1, p1

    .line 21
    div-float/2addr p1, p0

    .line 22
    const/4 p0, 0x0

    .line 23
    mul-float/2addr p1, v0

    .line 24
    invoke-virtual {p2, p0, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void
.end method

.method public final setButton(IILcom/android/settingslib/users/CreateUserDialogController$$ExternalSyntheticLambda2;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/settingslib/utils/CustomDialogHelper;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const v1, 0x7f070de9

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x4

    .line 15
    iget-object v2, p0, Lcom/android/settingslib/utils/CustomDialogHelper;->mDivider2:Landroid/view/View;

    .line 16
    .line 17
    const/16 v3, 0x8

    .line 18
    .line 19
    iget-object v4, p0, Lcom/android/settingslib/utils/CustomDialogHelper;->mDivider1:Landroid/view/View;

    .line 20
    .line 21
    const/4 v5, 0x0

    .line 22
    if-eq p1, v1, :cond_2

    .line 23
    .line 24
    const/4 v1, 0x5

    .line 25
    if-eq p1, v1, :cond_1

    .line 26
    .line 27
    const/4 v1, 0x6

    .line 28
    if-eq p1, v1, :cond_0

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    iget-object p1, p0, Lcom/android/settingslib/utils/CustomDialogHelper;->mPositiveButton:Landroid/widget/Button;

    .line 32
    .line 33
    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(I)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    .line 41
    .line 42
    int-to-float p2, v0

    .line 43
    invoke-virtual {p1, v5, p2}, Landroid/widget/Button;->setTextSize(IF)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0, v0, p1}, Lcom/android/settingslib/utils/CustomDialogHelper;->checkMaxFontScale(ILandroid/widget/TextView;)V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    iget-object p1, p0, Lcom/android/settingslib/utils/CustomDialogHelper;->mNegativeButton:Landroid/widget/Button;

    .line 51
    .line 52
    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(I)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    .line 60
    .line 61
    int-to-float p2, v0

    .line 62
    invoke-virtual {p1, v5, p2}, Landroid/widget/Button;->setTextSize(IF)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0, v0, p1}, Lcom/android/settingslib/utils/CustomDialogHelper;->checkMaxFontScale(ILandroid/widget/TextView;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_2
    iget-object p1, p0, Lcom/android/settingslib/utils/CustomDialogHelper;->mBackButton:Landroid/widget/Button;

    .line 76
    .line 77
    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(I)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    .line 85
    .line 86
    int-to-float p2, v0

    .line 87
    invoke-virtual {p1, v5, p2}, Landroid/widget/Button;->setTextSize(IF)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0, v0, p1}, Lcom/android/settingslib/utils/CustomDialogHelper;->checkMaxFontScale(ILandroid/widget/TextView;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 97
    .line 98
    .line 99
    :goto_0
    return-void
.end method

.method public final setTitle(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/settingslib/utils/CustomDialogHelper;->mDialogTitle:Landroidx/appcompat/widget/DialogTitle;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/android/settingslib/utils/CustomDialogHelper;->mContext:Landroid/content/Context;

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    const v1, 0x7f070ded

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    invoke-virtual {p0, p1, v0}, Lcom/android/settingslib/utils/CustomDialogHelper;->checkMaxFontScale(ILandroid/widget/TextView;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final setVisibility(IZ)V
    .locals 0

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    const/4 p2, 0x0

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    const/16 p2, 0x8

    .line 6
    .line 7
    :goto_0
    packed-switch p1, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    :pswitch_0
    goto :goto_1

    .line 11
    :pswitch_1
    iget-object p0, p0, Lcom/android/settingslib/utils/CustomDialogHelper;->mTitleTemplete:Landroid/widget/LinearLayout;

    .line 12
    .line 13
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 14
    .line 15
    .line 16
    goto :goto_1

    .line 17
    :pswitch_2
    iget-object p0, p0, Lcom/android/settingslib/utils/CustomDialogHelper;->mContentPanel:Landroid/widget/FrameLayout;

    .line 18
    .line 19
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 20
    .line 21
    .line 22
    goto :goto_1

    .line 23
    :pswitch_3
    iget-object p0, p0, Lcom/android/settingslib/utils/CustomDialogHelper;->mCustomPanel:Landroid/widget/FrameLayout;

    .line 24
    .line 25
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 26
    .line 27
    .line 28
    goto :goto_1

    .line 29
    :pswitch_4
    iget-object p0, p0, Lcom/android/settingslib/utils/CustomDialogHelper;->mPositiveButton:Landroid/widget/Button;

    .line 30
    .line 31
    invoke-virtual {p0, p2}, Landroid/widget/Button;->setVisibility(I)V

    .line 32
    .line 33
    .line 34
    goto :goto_1

    .line 35
    :pswitch_5
    iget-object p0, p0, Lcom/android/settingslib/utils/CustomDialogHelper;->mNegativeButton:Landroid/widget/Button;

    .line 36
    .line 37
    invoke-virtual {p0, p2}, Landroid/widget/Button;->setVisibility(I)V

    .line 38
    .line 39
    .line 40
    goto :goto_1

    .line 41
    :pswitch_6
    iget-object p0, p0, Lcom/android/settingslib/utils/CustomDialogHelper;->mBackButton:Landroid/widget/Button;

    .line 42
    .line 43
    invoke-virtual {p0, p2}, Landroid/widget/Button;->setVisibility(I)V

    .line 44
    .line 45
    .line 46
    goto :goto_1

    .line 47
    :pswitch_7
    iget-object p0, p0, Lcom/android/settingslib/utils/CustomDialogHelper;->mDialogMessage:Landroid/widget/TextView;

    .line 48
    .line 49
    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 50
    .line 51
    .line 52
    goto :goto_1

    .line 53
    :pswitch_8
    iget-object p0, p0, Lcom/android/settingslib/utils/CustomDialogHelper;->mDialogTitle:Landroidx/appcompat/widget/DialogTitle;

    .line 54
    .line 55
    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 56
    .line 57
    .line 58
    goto :goto_1

    .line 59
    :pswitch_9
    iget-object p0, p0, Lcom/android/settingslib/utils/CustomDialogHelper;->mDialogIcon:Landroid/widget/ImageView;

    .line 60
    .line 61
    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 62
    .line 63
    .line 64
    :goto_1
    return-void

    .line 65
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final setupDialogPaddings()V
    .locals 10

    .line 1
    const v0, 0x7f0a07c8

    .line 2
    .line 3
    .line 4
    iget-object v1, p0, Lcom/android/settingslib/utils/CustomDialogHelper;->mDialogContent:Landroid/view/View;

    .line 5
    .line 6
    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const v2, 0x7f0a0be2

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    const v3, 0x7f0a094d

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    const v4, 0x7f0a0bf9

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    const v5, 0x7f0a01f2

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 35
    .line 36
    .line 37
    move-result-object v5

    .line 38
    const v6, 0x7f0a02e1

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 42
    .line 43
    .line 44
    move-result-object v6

    .line 45
    const v7, 0x7f0a0298

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    const/4 v7, 0x1

    .line 53
    const/16 v8, 0x8

    .line 54
    .line 55
    const/4 v9, 0x0

    .line 56
    if-eqz v6, :cond_0

    .line 57
    .line 58
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    .line 59
    .line 60
    .line 61
    move-result v6

    .line 62
    if-eq v6, v8, :cond_0

    .line 63
    .line 64
    move v6, v7

    .line 65
    goto :goto_0

    .line 66
    :cond_0
    move v6, v9

    .line 67
    :goto_0
    if-eqz v4, :cond_1

    .line 68
    .line 69
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    .line 70
    .line 71
    .line 72
    move-result v4

    .line 73
    if-eq v4, v8, :cond_1

    .line 74
    .line 75
    move v4, v7

    .line 76
    goto :goto_1

    .line 77
    :cond_1
    move v4, v9

    .line 78
    :goto_1
    if-eqz v1, :cond_2

    .line 79
    .line 80
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    if-eq v1, v8, :cond_2

    .line 85
    .line 86
    goto :goto_2

    .line 87
    :cond_2
    move v7, v9

    .line 88
    :goto_2
    iget-object p0, p0, Lcom/android/settingslib/utils/CustomDialogHelper;->mContext:Landroid/content/Context;

    .line 89
    .line 90
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    if-eqz v6, :cond_4

    .line 95
    .line 96
    if-nez v4, :cond_4

    .line 97
    .line 98
    if-eqz v7, :cond_3

    .line 99
    .line 100
    goto :goto_3

    .line 101
    :cond_3
    invoke-virtual {v0, v9, v9, v9, v9}, Landroid/view/View;->setPadding(IIII)V

    .line 102
    .line 103
    .line 104
    goto :goto_4

    .line 105
    :cond_4
    :goto_3
    const v1, 0x7f070dec

    .line 106
    .line 107
    .line 108
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 109
    .line 110
    .line 111
    move-result v1

    .line 112
    invoke-virtual {v0, v9, v1, v9, v9}, Landroid/view/View;->setPadding(IIII)V

    .line 113
    .line 114
    .line 115
    :goto_4
    if-eqz v2, :cond_6

    .line 116
    .line 117
    const v0, 0x7f070dea

    .line 118
    .line 119
    .line 120
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 121
    .line 122
    .line 123
    move-result v0

    .line 124
    if-eqz v6, :cond_5

    .line 125
    .line 126
    if-eqz v4, :cond_5

    .line 127
    .line 128
    if-nez v7, :cond_5

    .line 129
    .line 130
    invoke-virtual {v2, v0, v9, v0, v9}, Landroid/view/View;->setPadding(IIII)V

    .line 131
    .line 132
    .line 133
    goto :goto_5

    .line 134
    :cond_5
    const v1, 0x7f070deb

    .line 135
    .line 136
    .line 137
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 138
    .line 139
    .line 140
    move-result v1

    .line 141
    invoke-virtual {v2, v0, v9, v0, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 142
    .line 143
    .line 144
    :cond_6
    :goto_5
    if-eqz v3, :cond_7

    .line 145
    .line 146
    const v0, 0x7f070de5

    .line 147
    .line 148
    .line 149
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 150
    .line 151
    .line 152
    move-result v0

    .line 153
    const v1, 0x7f070de4

    .line 154
    .line 155
    .line 156
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 157
    .line 158
    .line 159
    move-result v1

    .line 160
    const v2, 0x7f070de3

    .line 161
    .line 162
    .line 163
    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 164
    .line 165
    .line 166
    move-result v2

    .line 167
    invoke-virtual {v3, v0, v9, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 168
    .line 169
    .line 170
    :cond_7
    if-eqz v5, :cond_8

    .line 171
    .line 172
    const v0, 0x7f070de8

    .line 173
    .line 174
    .line 175
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 176
    .line 177
    .line 178
    move-result v0

    .line 179
    const v1, 0x7f070de7

    .line 180
    .line 181
    .line 182
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 183
    .line 184
    .line 185
    move-result p0

    .line 186
    invoke-virtual {v5, v0, v9, v0, p0}, Landroid/view/View;->setPadding(IIII)V

    .line 187
    .line 188
    .line 189
    :cond_8
    return-void
.end method
