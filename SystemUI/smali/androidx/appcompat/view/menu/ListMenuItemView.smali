.class public Landroidx/appcompat/view/menu/ListMenuItemView;
.super Landroid/widget/LinearLayout;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroidx/appcompat/view/menu/MenuView$ItemView;
.implements Landroid/widget/AbsListView$SelectionBoundsAdjuster;


# instance fields
.field public final mBackground:Landroid/graphics/drawable/Drawable;

.field public mBadgeView:Landroid/widget/TextView;

.field public mCheckBox:Landroid/widget/CheckBox;

.field public mContent:Landroid/widget/LinearLayout;

.field public mDropDownItemTextView:Landroidx/appcompat/widget/SeslDropDownItemTextView;

.field public mForceShowIcon:Z

.field public mGroupDivider:Landroid/widget/ImageView;

.field public final mHasListDivider:Z

.field public mIconView:Landroid/widget/ImageView;

.field public mInflater:Landroid/view/LayoutInflater;

.field public mIsSubMenu:Z

.field public mItemData:Landroidx/appcompat/view/menu/MenuItemImpl;

.field public final mNumberFormat:Ljava/text/NumberFormat;

.field public mPreserveIconSpacing:Z

.field public mRadioButton:Landroid/widget/RadioButton;

.field public mShortcutView:Landroid/widget/TextView;

.field public final mSubMenuArrow:Landroid/graphics/drawable/Drawable;

.field public mSubMenuArrowView:Landroid/widget/ImageView;

.field public final mTextAppearance:I

.field public final mTextAppearanceContext:Landroid/content/Context;

.field public mTitleParent:Landroid/widget/LinearLayout;

.field public mTitleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x7f04038d

    .line 1
    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/view/menu/ListMenuItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mIsSubMenu:Z

    .line 4
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroidx/appcompat/R$styleable;->MenuView:[I

    invoke-static {v1, p2, v2, p3, v0}, Landroidx/appcompat/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/TintTypedArray;

    move-result-object p2

    const/4 p3, 0x5

    .line 5
    invoke-virtual {p2, p3}, Landroidx/appcompat/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mBackground:Landroid/graphics/drawable/Drawable;

    const/4 p3, 0x1

    const/4 v1, -0x1

    .line 6
    invoke-virtual {p2, p3, v1}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mTextAppearance:I

    const/4 p3, 0x7

    .line 7
    invoke-virtual {p2, p3, v0}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mPreserveIconSpacing:Z

    .line 8
    iput-object p1, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mTextAppearanceContext:Landroid/content/Context;

    const/16 p3, 0x8

    .line 9
    invoke-virtual {p2, p3}, Landroidx/appcompat/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mSubMenuArrow:Landroid/graphics/drawable/Drawable;

    .line 10
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    const p3, 0x1010129

    filled-new-array {p3}, [I

    move-result-object p3

    const v1, 0x7f0401d4

    const/4 v2, 0x0

    .line 11
    invoke-virtual {p1, v2, p3, v1, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 12
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    iput-boolean p3, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mHasListDivider:Z

    .line 13
    invoke-virtual {p2}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    .line 14
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 15
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-static {p1}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mNumberFormat:Ljava/text/NumberFormat;

    return-void
.end method


# virtual methods
.method public final adjustListItemSelectionBounds(Landroid/graphics/Rect;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mGroupDivider:Landroid/widget/ImageView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mGroupDivider:Landroid/widget/ImageView;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 18
    .line 19
    iget v1, p1, Landroid/graphics/Rect;->top:I

    .line 20
    .line 21
    iget-object p0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mGroupDivider:Landroid/widget/ImageView;

    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    iget v2, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 28
    .line 29
    add-int/2addr p0, v2

    .line 30
    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 31
    .line 32
    add-int/2addr p0, v0

    .line 33
    add-int/2addr p0, v1

    .line 34
    iput p0, p1, Landroid/graphics/Rect;->top:I

    .line 35
    .line 36
    :cond_0
    return-void
.end method

.method public final getInflater()Landroid/view/LayoutInflater;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mInflater:Landroid/view/LayoutInflater;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mInflater:Landroid/view/LayoutInflater;

    .line 14
    .line 15
    :cond_0
    iget-object p0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mInflater:Landroid/view/LayoutInflater;

    .line 16
    .line 17
    return-object p0
.end method

.method public final getItemData()Landroidx/appcompat/view/menu/MenuItemImpl;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mItemData:Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 2
    .line 3
    return-object p0
.end method

.method public final initialize(Landroidx/appcompat/view/menu/MenuItemImpl;)V
    .locals 13

    .line 1
    iput-object p1, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mItemData:Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuItemImpl;->isVisible()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    const/16 v2, 0x8

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    move v0, v1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move v0, v2

    .line 15
    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p1, Landroidx/appcompat/view/menu/MenuItemImpl;->mTitle:Ljava/lang/CharSequence;

    .line 19
    .line 20
    iget-boolean v3, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mIsSubMenu:Z

    .line 21
    .line 22
    if-eqz v3, :cond_2

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    iget-object v3, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mDropDownItemTextView:Landroidx/appcompat/widget/SeslDropDownItemTextView;

    .line 27
    .line 28
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mDropDownItemTextView:Landroidx/appcompat/widget/SeslDropDownItemTextView;

    .line 32
    .line 33
    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_4

    .line 38
    .line 39
    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mDropDownItemTextView:Landroidx/appcompat/widget/SeslDropDownItemTextView;

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SeslCheckedTextView;->setVisibility(I)V

    .line 42
    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mDropDownItemTextView:Landroidx/appcompat/widget/SeslDropDownItemTextView;

    .line 46
    .line 47
    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-eq v0, v2, :cond_4

    .line 52
    .line 53
    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mDropDownItemTextView:Landroidx/appcompat/widget/SeslDropDownItemTextView;

    .line 54
    .line 55
    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/SeslCheckedTextView;->setVisibility(I)V

    .line 56
    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_2
    if-eqz v0, :cond_3

    .line 60
    .line 61
    iget-object v3, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mTitleView:Landroid/widget/TextView;

    .line 62
    .line 63
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    .line 65
    .line 66
    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mTitleView:Landroid/widget/TextView;

    .line 67
    .line 68
    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    if-eqz v0, :cond_4

    .line 73
    .line 74
    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mTitleView:Landroid/widget/TextView;

    .line 75
    .line 76
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 77
    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_3
    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mTitleView:Landroid/widget/TextView;

    .line 81
    .line 82
    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    if-eq v0, v2, :cond_4

    .line 87
    .line 88
    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mTitleView:Landroid/widget/TextView;

    .line 89
    .line 90
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 91
    .line 92
    .line 93
    :cond_4
    :goto_1
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuItemImpl;->isCheckable()Z

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    const/4 v3, 0x4

    .line 98
    const/4 v4, 0x1

    .line 99
    const/4 v5, -0x1

    .line 100
    if-nez v0, :cond_5

    .line 101
    .line 102
    iget-object v6, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    .line 103
    .line 104
    if-nez v6, :cond_5

    .line 105
    .line 106
    iget-object v6, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    .line 107
    .line 108
    if-nez v6, :cond_5

    .line 109
    .line 110
    goto/16 :goto_6

    .line 111
    .line 112
    :cond_5
    iget-boolean v6, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mIsSubMenu:Z

    .line 113
    .line 114
    if-eqz v6, :cond_6

    .line 115
    .line 116
    if-eqz v0, :cond_10

    .line 117
    .line 118
    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mDropDownItemTextView:Landroidx/appcompat/widget/SeslDropDownItemTextView;

    .line 119
    .line 120
    iget-object v6, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mItemData:Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 121
    .line 122
    invoke-virtual {v6}, Landroidx/appcompat/view/menu/MenuItemImpl;->isChecked()Z

    .line 123
    .line 124
    .line 125
    move-result v6

    .line 126
    invoke-virtual {v0, v6}, Landroidx/appcompat/widget/SeslDropDownItemTextView;->setChecked(Z)V

    .line 127
    .line 128
    .line 129
    goto/16 :goto_6

    .line 130
    .line 131
    :cond_6
    iget-object v6, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mItemData:Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 132
    .line 133
    iget v6, v6, Landroidx/appcompat/view/menu/MenuItemImpl;->mFlags:I

    .line 134
    .line 135
    and-int/2addr v6, v3

    .line 136
    if-eqz v6, :cond_7

    .line 137
    .line 138
    move v6, v4

    .line 139
    goto :goto_2

    .line 140
    :cond_7
    move v6, v1

    .line 141
    :goto_2
    if-eqz v6, :cond_a

    .line 142
    .line 143
    iget-object v6, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    .line 144
    .line 145
    if-nez v6, :cond_9

    .line 146
    .line 147
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/ListMenuItemView;->getInflater()Landroid/view/LayoutInflater;

    .line 148
    .line 149
    .line 150
    move-result-object v6

    .line 151
    const v7, 0x7f0d03c9

    .line 152
    .line 153
    .line 154
    invoke-virtual {v6, v7, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 155
    .line 156
    .line 157
    move-result-object v6

    .line 158
    check-cast v6, Landroid/widget/RadioButton;

    .line 159
    .line 160
    iput-object v6, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    .line 161
    .line 162
    iget-object v7, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mContent:Landroid/widget/LinearLayout;

    .line 163
    .line 164
    if-eqz v7, :cond_8

    .line 165
    .line 166
    invoke-virtual {v7, v6, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 167
    .line 168
    .line 169
    goto :goto_3

    .line 170
    :cond_8
    invoke-virtual {p0, v6, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 171
    .line 172
    .line 173
    :cond_9
    :goto_3
    iget-object v6, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    .line 174
    .line 175
    iget-object v7, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    .line 176
    .line 177
    goto :goto_5

    .line 178
    :cond_a
    iget-object v6, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    .line 179
    .line 180
    if-nez v6, :cond_c

    .line 181
    .line 182
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/ListMenuItemView;->getInflater()Landroid/view/LayoutInflater;

    .line 183
    .line 184
    .line 185
    move-result-object v6

    .line 186
    const v7, 0x7f0d03c7

    .line 187
    .line 188
    .line 189
    invoke-virtual {v6, v7, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 190
    .line 191
    .line 192
    move-result-object v6

    .line 193
    check-cast v6, Landroid/widget/CheckBox;

    .line 194
    .line 195
    iput-object v6, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    .line 196
    .line 197
    iget-object v7, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mContent:Landroid/widget/LinearLayout;

    .line 198
    .line 199
    if-eqz v7, :cond_b

    .line 200
    .line 201
    invoke-virtual {v7, v6, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 202
    .line 203
    .line 204
    goto :goto_4

    .line 205
    :cond_b
    invoke-virtual {p0, v6, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 206
    .line 207
    .line 208
    :cond_c
    :goto_4
    iget-object v6, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    .line 209
    .line 210
    iget-object v7, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    .line 211
    .line 212
    :goto_5
    if-eqz v0, :cond_e

    .line 213
    .line 214
    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mItemData:Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 215
    .line 216
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuItemImpl;->isChecked()Z

    .line 217
    .line 218
    .line 219
    move-result v0

    .line 220
    invoke-virtual {v6, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {v6}, Landroid/widget/CompoundButton;->getVisibility()I

    .line 224
    .line 225
    .line 226
    move-result v0

    .line 227
    if-eqz v0, :cond_d

    .line 228
    .line 229
    invoke-virtual {v6, v1}, Landroid/widget/CompoundButton;->setVisibility(I)V

    .line 230
    .line 231
    .line 232
    :cond_d
    if-eqz v7, :cond_10

    .line 233
    .line 234
    invoke-virtual {v7}, Landroid/widget/CompoundButton;->getVisibility()I

    .line 235
    .line 236
    .line 237
    move-result v0

    .line 238
    if-eq v0, v2, :cond_10

    .line 239
    .line 240
    invoke-virtual {v7, v2}, Landroid/widget/CompoundButton;->setVisibility(I)V

    .line 241
    .line 242
    .line 243
    goto :goto_6

    .line 244
    :cond_e
    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    .line 245
    .line 246
    if-eqz v0, :cond_f

    .line 247
    .line 248
    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 249
    .line 250
    .line 251
    :cond_f
    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    .line 252
    .line 253
    if-eqz v0, :cond_10

    .line 254
    .line 255
    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 256
    .line 257
    .line 258
    :cond_10
    :goto_6
    iget-object v0, p1, Landroidx/appcompat/view/menu/MenuItemImpl;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 259
    .line 260
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuBuilder;->isShortcutsVisible()Z

    .line 261
    .line 262
    .line 263
    move-result v0

    .line 264
    if-eqz v0, :cond_12

    .line 265
    .line 266
    iget-object v0, p1, Landroidx/appcompat/view/menu/MenuItemImpl;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 267
    .line 268
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuBuilder;->isQwertyMode()Z

    .line 269
    .line 270
    .line 271
    move-result v0

    .line 272
    if-eqz v0, :cond_11

    .line 273
    .line 274
    iget-char v0, p1, Landroidx/appcompat/view/menu/MenuItemImpl;->mShortcutAlphabeticChar:C

    .line 275
    .line 276
    goto :goto_7

    .line 277
    :cond_11
    iget-char v0, p1, Landroidx/appcompat/view/menu/MenuItemImpl;->mShortcutNumericChar:C

    .line 278
    .line 279
    :goto_7
    if-eqz v0, :cond_12

    .line 280
    .line 281
    move v0, v4

    .line 282
    goto :goto_8

    .line 283
    :cond_12
    move v0, v1

    .line 284
    :goto_8
    iget-object v6, p1, Landroidx/appcompat/view/menu/MenuItemImpl;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 285
    .line 286
    invoke-virtual {v6}, Landroidx/appcompat/view/menu/MenuBuilder;->isQwertyMode()Z

    .line 287
    .line 288
    .line 289
    iget-boolean v6, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mIsSubMenu:Z

    .line 290
    .line 291
    if-eqz v6, :cond_13

    .line 292
    .line 293
    goto/16 :goto_10

    .line 294
    .line 295
    :cond_13
    if-eqz v0, :cond_16

    .line 296
    .line 297
    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mItemData:Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 298
    .line 299
    iget-object v6, v0, Landroidx/appcompat/view/menu/MenuItemImpl;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 300
    .line 301
    invoke-virtual {v6}, Landroidx/appcompat/view/menu/MenuBuilder;->isShortcutsVisible()Z

    .line 302
    .line 303
    .line 304
    move-result v6

    .line 305
    if-eqz v6, :cond_15

    .line 306
    .line 307
    iget-object v6, v0, Landroidx/appcompat/view/menu/MenuItemImpl;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 308
    .line 309
    invoke-virtual {v6}, Landroidx/appcompat/view/menu/MenuBuilder;->isQwertyMode()Z

    .line 310
    .line 311
    .line 312
    move-result v6

    .line 313
    if-eqz v6, :cond_14

    .line 314
    .line 315
    iget-char v0, v0, Landroidx/appcompat/view/menu/MenuItemImpl;->mShortcutAlphabeticChar:C

    .line 316
    .line 317
    goto :goto_9

    .line 318
    :cond_14
    iget-char v0, v0, Landroidx/appcompat/view/menu/MenuItemImpl;->mShortcutNumericChar:C

    .line 319
    .line 320
    :goto_9
    if-eqz v0, :cond_15

    .line 321
    .line 322
    move v0, v4

    .line 323
    goto :goto_a

    .line 324
    :cond_15
    move v0, v1

    .line 325
    :goto_a
    if-eqz v0, :cond_16

    .line 326
    .line 327
    move v0, v1

    .line 328
    goto :goto_b

    .line 329
    :cond_16
    move v0, v2

    .line 330
    :goto_b
    if-nez v0, :cond_1e

    .line 331
    .line 332
    iget-object v6, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mShortcutView:Landroid/widget/TextView;

    .line 333
    .line 334
    iget-object v7, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mItemData:Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 335
    .line 336
    iget-object v8, v7, Landroidx/appcompat/view/menu/MenuItemImpl;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 337
    .line 338
    invoke-virtual {v8}, Landroidx/appcompat/view/menu/MenuBuilder;->isQwertyMode()Z

    .line 339
    .line 340
    .line 341
    move-result v8

    .line 342
    if-eqz v8, :cond_17

    .line 343
    .line 344
    iget-char v8, v7, Landroidx/appcompat/view/menu/MenuItemImpl;->mShortcutAlphabeticChar:C

    .line 345
    .line 346
    goto :goto_c

    .line 347
    :cond_17
    iget-char v8, v7, Landroidx/appcompat/view/menu/MenuItemImpl;->mShortcutNumericChar:C

    .line 348
    .line 349
    :goto_c
    if-nez v8, :cond_18

    .line 350
    .line 351
    const-string v3, ""

    .line 352
    .line 353
    goto/16 :goto_f

    .line 354
    .line 355
    :cond_18
    iget-object v9, v7, Landroidx/appcompat/view/menu/MenuItemImpl;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 356
    .line 357
    iget-object v9, v9, Landroidx/appcompat/view/menu/MenuBuilder;->mContext:Landroid/content/Context;

    .line 358
    .line 359
    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 360
    .line 361
    .line 362
    move-result-object v9

    .line 363
    new-instance v10, Ljava/lang/StringBuilder;

    .line 364
    .line 365
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 366
    .line 367
    .line 368
    iget-object v11, v7, Landroidx/appcompat/view/menu/MenuItemImpl;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 369
    .line 370
    iget-object v11, v11, Landroidx/appcompat/view/menu/MenuBuilder;->mContext:Landroid/content/Context;

    .line 371
    .line 372
    invoke-static {v11}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 373
    .line 374
    .line 375
    move-result-object v11

    .line 376
    invoke-virtual {v11}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    .line 377
    .line 378
    .line 379
    move-result v11

    .line 380
    if-eqz v11, :cond_19

    .line 381
    .line 382
    const v11, 0x7f130019

    .line 383
    .line 384
    .line 385
    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 386
    .line 387
    .line 388
    move-result-object v11

    .line 389
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    .line 391
    .line 392
    :cond_19
    iget-object v11, v7, Landroidx/appcompat/view/menu/MenuItemImpl;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 393
    .line 394
    invoke-virtual {v11}, Landroidx/appcompat/view/menu/MenuBuilder;->isQwertyMode()Z

    .line 395
    .line 396
    .line 397
    move-result v11

    .line 398
    if-eqz v11, :cond_1a

    .line 399
    .line 400
    iget v7, v7, Landroidx/appcompat/view/menu/MenuItemImpl;->mShortcutAlphabeticModifiers:I

    .line 401
    .line 402
    goto :goto_d

    .line 403
    :cond_1a
    iget v7, v7, Landroidx/appcompat/view/menu/MenuItemImpl;->mShortcutNumericModifiers:I

    .line 404
    .line 405
    :goto_d
    const v11, 0x7f130015

    .line 406
    .line 407
    .line 408
    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 409
    .line 410
    .line 411
    move-result-object v11

    .line 412
    const/high16 v12, 0x10000

    .line 413
    .line 414
    invoke-static {v7, v12, v11, v10}, Landroidx/appcompat/view/menu/MenuItemImpl;->appendModifier(IILjava/lang/String;Ljava/lang/StringBuilder;)V

    .line 415
    .line 416
    .line 417
    const v11, 0x7f130011

    .line 418
    .line 419
    .line 420
    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 421
    .line 422
    .line 423
    move-result-object v11

    .line 424
    const/16 v12, 0x1000

    .line 425
    .line 426
    invoke-static {v7, v12, v11, v10}, Landroidx/appcompat/view/menu/MenuItemImpl;->appendModifier(IILjava/lang/String;Ljava/lang/StringBuilder;)V

    .line 427
    .line 428
    .line 429
    const v11, 0x7f130010

    .line 430
    .line 431
    .line 432
    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 433
    .line 434
    .line 435
    move-result-object v11

    .line 436
    const/4 v12, 0x2

    .line 437
    invoke-static {v7, v12, v11, v10}, Landroidx/appcompat/view/menu/MenuItemImpl;->appendModifier(IILjava/lang/String;Ljava/lang/StringBuilder;)V

    .line 438
    .line 439
    .line 440
    const v11, 0x7f130016

    .line 441
    .line 442
    .line 443
    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 444
    .line 445
    .line 446
    move-result-object v11

    .line 447
    invoke-static {v7, v4, v11, v10}, Landroidx/appcompat/view/menu/MenuItemImpl;->appendModifier(IILjava/lang/String;Ljava/lang/StringBuilder;)V

    .line 448
    .line 449
    .line 450
    const v11, 0x7f130018

    .line 451
    .line 452
    .line 453
    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 454
    .line 455
    .line 456
    move-result-object v11

    .line 457
    invoke-static {v7, v3, v11, v10}, Landroidx/appcompat/view/menu/MenuItemImpl;->appendModifier(IILjava/lang/String;Ljava/lang/StringBuilder;)V

    .line 458
    .line 459
    .line 460
    const v3, 0x7f130014

    .line 461
    .line 462
    .line 463
    invoke-virtual {v9, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 464
    .line 465
    .line 466
    move-result-object v3

    .line 467
    invoke-static {v7, v2, v3, v10}, Landroidx/appcompat/view/menu/MenuItemImpl;->appendModifier(IILjava/lang/String;Ljava/lang/StringBuilder;)V

    .line 468
    .line 469
    .line 470
    if-eq v8, v2, :cond_1d

    .line 471
    .line 472
    const/16 v3, 0xa

    .line 473
    .line 474
    if-eq v8, v3, :cond_1c

    .line 475
    .line 476
    const/16 v3, 0x20

    .line 477
    .line 478
    if-eq v8, v3, :cond_1b

    .line 479
    .line 480
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 481
    .line 482
    .line 483
    goto :goto_e

    .line 484
    :cond_1b
    const v3, 0x7f130017

    .line 485
    .line 486
    .line 487
    invoke-virtual {v9, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 488
    .line 489
    .line 490
    move-result-object v3

    .line 491
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 492
    .line 493
    .line 494
    goto :goto_e

    .line 495
    :cond_1c
    const v3, 0x7f130013

    .line 496
    .line 497
    .line 498
    invoke-virtual {v9, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 499
    .line 500
    .line 501
    move-result-object v3

    .line 502
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 503
    .line 504
    .line 505
    goto :goto_e

    .line 506
    :cond_1d
    const v3, 0x7f130012

    .line 507
    .line 508
    .line 509
    invoke-virtual {v9, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 510
    .line 511
    .line 512
    move-result-object v3

    .line 513
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 514
    .line 515
    .line 516
    :goto_e
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 517
    .line 518
    .line 519
    move-result-object v3

    .line 520
    :goto_f
    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 521
    .line 522
    .line 523
    :cond_1e
    iget-object v3, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mShortcutView:Landroid/widget/TextView;

    .line 524
    .line 525
    invoke-virtual {v3}, Landroid/widget/TextView;->getVisibility()I

    .line 526
    .line 527
    .line 528
    move-result v3

    .line 529
    if-eq v3, v0, :cond_1f

    .line 530
    .line 531
    iget-object v3, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mShortcutView:Landroid/widget/TextView;

    .line 532
    .line 533
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 534
    .line 535
    .line 536
    :cond_1f
    :goto_10
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    .line 537
    .line 538
    .line 539
    move-result-object v0

    .line 540
    iget-boolean v3, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mIsSubMenu:Z

    .line 541
    .line 542
    if-eqz v3, :cond_20

    .line 543
    .line 544
    goto/16 :goto_16

    .line 545
    .line 546
    :cond_20
    iget-object v6, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mItemData:Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 547
    .line 548
    iget-object v6, v6, Landroidx/appcompat/view/menu/MenuItemImpl;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 549
    .line 550
    iget-boolean v6, v6, Landroidx/appcompat/view/menu/MenuBuilder;->mOptionalIconsVisible:Z

    .line 551
    .line 552
    if-nez v6, :cond_22

    .line 553
    .line 554
    iget-boolean v6, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mForceShowIcon:Z

    .line 555
    .line 556
    if-eqz v6, :cond_21

    .line 557
    .line 558
    goto :goto_11

    .line 559
    :cond_21
    move v6, v1

    .line 560
    goto :goto_12

    .line 561
    :cond_22
    :goto_11
    move v6, v4

    .line 562
    :goto_12
    if-nez v6, :cond_23

    .line 563
    .line 564
    iget-boolean v7, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mPreserveIconSpacing:Z

    .line 565
    .line 566
    if-nez v7, :cond_23

    .line 567
    .line 568
    goto :goto_16

    .line 569
    :cond_23
    iget-object v7, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    .line 570
    .line 571
    if-nez v7, :cond_24

    .line 572
    .line 573
    if-nez v0, :cond_24

    .line 574
    .line 575
    iget-boolean v8, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mPreserveIconSpacing:Z

    .line 576
    .line 577
    if-nez v8, :cond_24

    .line 578
    .line 579
    goto :goto_16

    .line 580
    :cond_24
    if-nez v7, :cond_27

    .line 581
    .line 582
    if-eqz v3, :cond_25

    .line 583
    .line 584
    goto :goto_13

    .line 585
    :cond_25
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/ListMenuItemView;->getInflater()Landroid/view/LayoutInflater;

    .line 586
    .line 587
    .line 588
    move-result-object v3

    .line 589
    const v7, 0x7f0d0006

    .line 590
    .line 591
    .line 592
    invoke-virtual {v3, v7, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 593
    .line 594
    .line 595
    move-result-object v3

    .line 596
    check-cast v3, Landroid/widget/ImageView;

    .line 597
    .line 598
    iput-object v3, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    .line 599
    .line 600
    iget-object v7, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mContent:Landroid/widget/LinearLayout;

    .line 601
    .line 602
    if-eqz v7, :cond_26

    .line 603
    .line 604
    invoke-virtual {v7, v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 605
    .line 606
    .line 607
    goto :goto_13

    .line 608
    :cond_26
    invoke-virtual {p0, v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 609
    .line 610
    .line 611
    :cond_27
    :goto_13
    if-nez v0, :cond_29

    .line 612
    .line 613
    iget-boolean v3, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mPreserveIconSpacing:Z

    .line 614
    .line 615
    if-eqz v3, :cond_28

    .line 616
    .line 617
    goto :goto_14

    .line 618
    :cond_28
    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    .line 619
    .line 620
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 621
    .line 622
    .line 623
    goto :goto_16

    .line 624
    :cond_29
    :goto_14
    iget-object v3, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    .line 625
    .line 626
    if-eqz v6, :cond_2a

    .line 627
    .line 628
    goto :goto_15

    .line 629
    :cond_2a
    const/4 v0, 0x0

    .line 630
    :goto_15
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 631
    .line 632
    .line 633
    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    .line 634
    .line 635
    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    .line 636
    .line 637
    .line 638
    move-result v0

    .line 639
    if-eqz v0, :cond_2b

    .line 640
    .line 641
    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    .line 642
    .line 643
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 644
    .line 645
    .line 646
    :cond_2b
    :goto_16
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuItemImpl;->isEnabled()Z

    .line 647
    .line 648
    .line 649
    move-result v0

    .line 650
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 651
    .line 652
    .line 653
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuItemImpl;->hasSubMenu()Z

    .line 654
    .line 655
    .line 656
    move-result v0

    .line 657
    iget-object v3, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mSubMenuArrowView:Landroid/widget/ImageView;

    .line 658
    .line 659
    if-eqz v3, :cond_2d

    .line 660
    .line 661
    iget-boolean v6, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mIsSubMenu:Z

    .line 662
    .line 663
    if-nez v6, :cond_2d

    .line 664
    .line 665
    if-eqz v0, :cond_2c

    .line 666
    .line 667
    move v0, v1

    .line 668
    goto :goto_17

    .line 669
    :cond_2c
    move v0, v2

    .line 670
    :goto_17
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 671
    .line 672
    .line 673
    :cond_2d
    iget-object v0, p1, Landroidx/appcompat/view/menu/MenuItemImpl;->mContentDescription:Ljava/lang/CharSequence;

    .line 674
    .line 675
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 676
    .line 677
    .line 678
    iget-object p1, p1, Landroidx/appcompat/view/menu/MenuItemImpl;->mBadgeText:Ljava/lang/String;

    .line 679
    .line 680
    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mBadgeView:Landroid/widget/TextView;

    .line 681
    .line 682
    if-nez v0, :cond_2e

    .line 683
    .line 684
    const v0, 0x7f0a067f

    .line 685
    .line 686
    .line 687
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 688
    .line 689
    .line 690
    move-result-object v0

    .line 691
    check-cast v0, Landroid/widget/TextView;

    .line 692
    .line 693
    iput-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mBadgeView:Landroid/widget/TextView;

    .line 694
    .line 695
    :cond_2e
    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mBadgeView:Landroid/widget/TextView;

    .line 696
    .line 697
    const-string v3, "ListMenuItemView"

    .line 698
    .line 699
    if-nez v0, :cond_2f

    .line 700
    .line 701
    const-string p0, "SUB_MENU_ITEM_LAYOUT case, mBadgeView is null"

    .line 702
    .line 703
    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    .line 705
    .line 706
    goto/16 :goto_1c

    .line 707
    .line 708
    :cond_2f
    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mTitleParent:Landroid/widget/LinearLayout;

    .line 709
    .line 710
    if-nez v0, :cond_30

    .line 711
    .line 712
    const-string/jumbo p0, "mTitleParent is null"

    .line 713
    .line 714
    .line 715
    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    .line 717
    .line 718
    goto/16 :goto_1c

    .line 719
    .line 720
    :cond_30
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 721
    .line 722
    .line 723
    move-result-object v0

    .line 724
    const v3, 0x7f070f5c

    .line 725
    .line 726
    .line 727
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    .line 728
    .line 729
    .line 730
    move-result v3

    .line 731
    iget-object v6, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mBadgeView:Landroid/widget/TextView;

    .line 732
    .line 733
    invoke-virtual {v6}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 734
    .line 735
    .line 736
    move-result-object v6

    .line 737
    check-cast v6, Landroid/widget/RelativeLayout$LayoutParams;

    .line 738
    .line 739
    iget-object v7, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mTitleParent:Landroid/widget/LinearLayout;

    .line 740
    .line 741
    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 742
    .line 743
    .line 744
    move-result-object v7

    .line 745
    check-cast v7, Landroid/widget/RelativeLayout$LayoutParams;

    .line 746
    .line 747
    if-nez p1, :cond_31

    .line 748
    .line 749
    goto :goto_18

    .line 750
    :cond_31
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 751
    .line 752
    .line 753
    goto :goto_19

    .line 754
    :catch_0
    :goto_18
    move v4, v1

    .line 755
    :goto_19
    if-eqz v4, :cond_33

    .line 756
    .line 757
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 758
    .line 759
    .line 760
    move-result v4

    .line 761
    const/16 v7, 0x63

    .line 762
    .line 763
    invoke-static {v4, v7}, Ljava/lang/Math;->min(II)I

    .line 764
    .line 765
    .line 766
    move-result v4

    .line 767
    iget-object v7, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mNumberFormat:Ljava/text/NumberFormat;

    .line 768
    .line 769
    int-to-long v8, v4

    .line 770
    invoke-virtual {v7, v8, v9}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    .line 771
    .line 772
    .line 773
    move-result-object v4

    .line 774
    const v7, 0x7f071071

    .line 775
    .line 776
    .line 777
    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 778
    .line 779
    .line 780
    move-result v7

    .line 781
    iget-object v8, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mBadgeView:Landroid/widget/TextView;

    .line 782
    .line 783
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 784
    .line 785
    .line 786
    move-result-object v9

    .line 787
    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 788
    .line 789
    .line 790
    move-result-object v9

    .line 791
    iget v9, v9, Landroid/content/res/Configuration;->fontScale:F

    .line 792
    .line 793
    const v10, 0x3f99999a    # 1.2f

    .line 794
    .line 795
    .line 796
    cmpl-float v11, v9, v10

    .line 797
    .line 798
    if-lez v11, :cond_32

    .line 799
    .line 800
    int-to-float v7, v7

    .line 801
    div-float/2addr v7, v9

    .line 802
    mul-float/2addr v7, v10

    .line 803
    invoke-virtual {v8, v1, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 804
    .line 805
    .line 806
    :cond_32
    iget-object v7, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mBadgeView:Landroid/widget/TextView;

    .line 807
    .line 808
    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 809
    .line 810
    .line 811
    const v7, 0x7f070f5d

    .line 812
    .line 813
    .line 814
    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDimension(I)F

    .line 815
    .line 816
    .line 817
    move-result v8

    .line 818
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 819
    .line 820
    .line 821
    move-result v4

    .line 822
    int-to-float v4, v4

    .line 823
    mul-float/2addr v4, v3

    .line 824
    add-float/2addr v4, v8

    .line 825
    float-to-int v4, v4

    .line 826
    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDimension(I)F

    .line 827
    .line 828
    .line 829
    move-result v0

    .line 830
    add-float/2addr v0, v3

    .line 831
    float-to-int v0, v0

    .line 832
    iput v4, v6, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 833
    .line 834
    iput v0, v6, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 835
    .line 836
    const/16 v0, 0xf

    .line 837
    .line 838
    invoke-virtual {v6, v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 839
    .line 840
    .line 841
    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mBadgeView:Landroid/widget/TextView;

    .line 842
    .line 843
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 844
    .line 845
    .line 846
    goto :goto_1a

    .line 847
    :cond_33
    const v3, 0x7f071063

    .line 848
    .line 849
    .line 850
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    .line 851
    .line 852
    .line 853
    move-result v0

    .line 854
    float-to-int v0, v0

    .line 855
    iput v0, v6, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 856
    .line 857
    const/4 v0, -0x2

    .line 858
    iput v0, v7, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 859
    .line 860
    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mTitleParent:Landroid/widget/LinearLayout;

    .line 861
    .line 862
    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 863
    .line 864
    .line 865
    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mBadgeView:Landroid/widget/TextView;

    .line 866
    .line 867
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 868
    .line 869
    .line 870
    :goto_1a
    iget v0, v6, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 871
    .line 872
    if-eqz p1, :cond_34

    .line 873
    .line 874
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 875
    .line 876
    .line 877
    move-result-object v3

    .line 878
    const v4, 0x7f071062

    .line 879
    .line 880
    .line 881
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 882
    .line 883
    .line 884
    move-result v3

    .line 885
    add-int/2addr v3, v0

    .line 886
    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mTitleParent:Landroid/widget/LinearLayout;

    .line 887
    .line 888
    invoke-virtual {v0, v1, v1, v3, v1}, Landroid/widget/LinearLayout;->setPaddingRelative(IIII)V

    .line 889
    .line 890
    .line 891
    :cond_34
    iget-object p0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mBadgeView:Landroid/widget/TextView;

    .line 892
    .line 893
    if-eqz p1, :cond_35

    .line 894
    .line 895
    goto :goto_1b

    .line 896
    :cond_35
    move v1, v2

    .line 897
    :goto_1b
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 898
    .line 899
    .line 900
    :goto_1c
    return-void
.end method

.method public final onFinishInflate()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 5
    .line 6
    sget-object v1, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 7
    .line 8
    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat$Api16Impl;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 9
    .line 10
    .line 11
    const v0, 0x7f0a0af5

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Landroidx/appcompat/widget/SeslDropDownItemTextView;

    .line 19
    .line 20
    iput-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mDropDownItemTextView:Landroidx/appcompat/widget/SeslDropDownItemTextView;

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    const/4 v0, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    move v0, v1

    .line 28
    :goto_0
    iput-boolean v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mIsSubMenu:Z

    .line 29
    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    return-void

    .line 33
    :cond_1
    const v0, 0x7f0a0bd9

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Landroid/widget/TextView;

    .line 41
    .line 42
    iput-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mTitleView:Landroid/widget/TextView;

    .line 43
    .line 44
    iget v2, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mTextAppearance:I

    .line 45
    .line 46
    const/4 v3, -0x1

    .line 47
    if-eq v2, v3, :cond_2

    .line 48
    .line 49
    iget-object v3, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mTextAppearanceContext:Landroid/content/Context;

    .line 50
    .line 51
    invoke-virtual {v0, v3, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 52
    .line 53
    .line 54
    :cond_2
    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mTitleView:Landroid/widget/TextView;

    .line 55
    .line 56
    if-eqz v0, :cond_3

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 59
    .line 60
    .line 61
    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mTitleView:Landroid/widget/TextView;

    .line 62
    .line 63
    const/4 v1, 0x2

    .line 64
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 65
    .line 66
    .line 67
    :cond_3
    const v0, 0x7f0a0a22

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    check-cast v0, Landroid/widget/TextView;

    .line 75
    .line 76
    iput-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mShortcutView:Landroid/widget/TextView;

    .line 77
    .line 78
    const v0, 0x7f0a0b08

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    check-cast v0, Landroid/widget/ImageView;

    .line 86
    .line 87
    iput-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mSubMenuArrowView:Landroid/widget/ImageView;

    .line 88
    .line 89
    if-eqz v0, :cond_4

    .line 90
    .line 91
    iget-object v1, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mSubMenuArrow:Landroid/graphics/drawable/Drawable;

    .line 92
    .line 93
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 94
    .line 95
    .line 96
    :cond_4
    const v0, 0x7f0a044c

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    check-cast v0, Landroid/widget/ImageView;

    .line 104
    .line 105
    iput-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mGroupDivider:Landroid/widget/ImageView;

    .line 106
    .line 107
    const v0, 0x7f0a0297

    .line 108
    .line 109
    .line 110
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    check-cast v0, Landroid/widget/LinearLayout;

    .line 115
    .line 116
    iput-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mContent:Landroid/widget/LinearLayout;

    .line 117
    .line 118
    const v0, 0x7f0a0bdf

    .line 119
    .line 120
    .line 121
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    check-cast v0, Landroid/widget/LinearLayout;

    .line 126
    .line 127
    iput-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mTitleParent:Landroid/widget/LinearLayout;

    .line 128
    .line 129
    return-void
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mBadgeView:Landroid/widget/TextView;

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mBadgeView:Landroid/widget/TextView;

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/widget/TextView;->getWidth()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-lez v0, :cond_1

    .line 21
    .line 22
    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mItemData:Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 23
    .line 24
    iget-object v0, v0, Landroidx/appcompat/view/menu/MenuItemImpl;->mTitle:Ljava/lang/CharSequence;

    .line 25
    .line 26
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContentDescription()Ljava/lang/CharSequence;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-nez v1, :cond_0

    .line 35
    .line 36
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContentDescription()Ljava/lang/CharSequence;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string v0, " , "

    .line 53
    .line 54
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    const v0, 0x7f130fd2

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 76
    .line 77
    .line 78
    :cond_1
    :goto_0
    return-void
.end method

.method public final onMeasure(II)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mPreserveIconSpacing:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-boolean v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mIsSubMenu:Z

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object v1, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    .line 18
    .line 19
    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 24
    .line 25
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 26
    .line 27
    if-lez v0, :cond_0

    .line 28
    .line 29
    iget v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 30
    .line 31
    if-gtz v2, :cond_0

    .line 32
    .line 33
    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 34
    .line 35
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 36
    .line 37
    .line 38
    return-void
.end method
