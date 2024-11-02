.class public abstract Lcom/android/systemui/controls/management/adapter/ControlCommonCustomHolder;
.super Lcom/android/systemui/controls/management/adapter/CustomHolder;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final canUseIconPredicate:Lcom/android/systemui/controls/ui/CanUseIconPredicate;

.field public final controlsRuneWrapper:Lcom/android/systemui/controls/util/ControlsRuneWrapper;

.field public final controlsUtil:Lcom/android/systemui/controls/ui/util/ControlsUtil;

.field public final favorite:Landroid/widget/CheckBox;

.field public final favoriteCallback:Lkotlin/jvm/functions/Function2;

.field public final icon:Landroid/widget/ImageView;

.field public final overlayCustomIcon:Landroid/widget/ImageView;

.field public final removed:Landroid/widget/TextView;

.field public final title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;IILcom/android/systemui/controls/ui/util/ControlsUtil;Lcom/android/systemui/controls/util/ControlsRuneWrapper;Lkotlin/jvm/functions/Function2;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "II",
            "Lcom/android/systemui/controls/ui/util/ControlsUtil;",
            "Lcom/android/systemui/controls/util/ControlsRuneWrapper;",
            "Lkotlin/jvm/functions/Function2;",
            ")V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/controls/management/adapter/CustomHolder;-><init>(Landroid/view/View;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 3
    .line 4
    .line 5
    iput-object p4, p0, Lcom/android/systemui/controls/management/adapter/ControlCommonCustomHolder;->controlsUtil:Lcom/android/systemui/controls/ui/util/ControlsUtil;

    .line 6
    .line 7
    iput-object p5, p0, Lcom/android/systemui/controls/management/adapter/ControlCommonCustomHolder;->controlsRuneWrapper:Lcom/android/systemui/controls/util/ControlsRuneWrapper;

    .line 8
    .line 9
    iput-object p6, p0, Lcom/android/systemui/controls/management/adapter/ControlCommonCustomHolder;->favoriteCallback:Lkotlin/jvm/functions/Function2;

    .line 10
    .line 11
    iget-object p5, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 12
    .line 13
    const p6, 0x7f0a04a2

    .line 14
    .line 15
    .line 16
    invoke-virtual {p5, p6}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object p5

    .line 20
    check-cast p5, Landroid/widget/ImageView;

    .line 21
    .line 22
    iput-object p5, p0, Lcom/android/systemui/controls/management/adapter/ControlCommonCustomHolder;->icon:Landroid/widget/ImageView;

    .line 23
    .line 24
    iget-object p6, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 25
    .line 26
    const v0, 0x7f0a0bd9

    .line 27
    .line 28
    .line 29
    invoke-virtual {p6, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    .line 30
    .line 31
    .line 32
    move-result-object p6

    .line 33
    check-cast p6, Landroid/widget/TextView;

    .line 34
    .line 35
    sget-object v0, Lcom/android/systemui/controls/ui/util/ControlsUtil;->Companion:Lcom/android/systemui/controls/ui/util/ControlsUtil$Companion;

    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    const v0, 0x7f070200

    .line 41
    .line 42
    .line 43
    const v1, 0x3f8ccccd    # 1.1f

    .line 44
    .line 45
    .line 46
    invoke-static {p6, v0, v1}, Lcom/android/systemui/controls/ui/util/ControlsUtil$Companion;->updateFontSize(Landroid/widget/TextView;IF)V

    .line 47
    .line 48
    .line 49
    iput-object p6, p0, Lcom/android/systemui/controls/management/adapter/ControlCommonCustomHolder;->title:Landroid/widget/TextView;

    .line 50
    .line 51
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 52
    .line 53
    const v3, 0x7f0a0acb

    .line 54
    .line 55
    .line 56
    invoke-virtual {v2, v3}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    check-cast v2, Landroid/widget/TextView;

    .line 61
    .line 62
    invoke-static {v2, v0, v1}, Lcom/android/systemui/controls/ui/util/ControlsUtil$Companion;->updateFontSize(Landroid/widget/TextView;IF)V

    .line 63
    .line 64
    .line 65
    iput-object v2, p0, Lcom/android/systemui/controls/management/adapter/ControlCommonCustomHolder;->removed:Landroid/widget/TextView;

    .line 66
    .line 67
    new-instance v0, Lcom/android/systemui/controls/ui/CanUseIconPredicate;

    .line 68
    .line 69
    invoke-direct {v0, p2}, Lcom/android/systemui/controls/ui/CanUseIconPredicate;-><init>(I)V

    .line 70
    .line 71
    .line 72
    iput-object v0, p0, Lcom/android/systemui/controls/management/adapter/ControlCommonCustomHolder;->canUseIconPredicate:Lcom/android/systemui/controls/ui/CanUseIconPredicate;

    .line 73
    .line 74
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 75
    .line 76
    invoke-virtual {p2, p3}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    .line 77
    .line 78
    .line 79
    move-result-object p2

    .line 80
    check-cast p2, Landroid/view/ViewStub;

    .line 81
    .line 82
    const p3, 0x7f0d008c

    .line 83
    .line 84
    .line 85
    invoke-virtual {p2, p3}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 89
    .line 90
    .line 91
    move-result-object p2

    .line 92
    check-cast p2, Landroid/widget/CheckBox;

    .line 93
    .line 94
    iput-object p2, p0, Lcom/android/systemui/controls/management/adapter/ControlCommonCustomHolder;->favorite:Landroid/widget/CheckBox;

    .line 95
    .line 96
    sget-boolean p2, Lcom/android/systemui/BasicRune;->CONTROLS_OVERLAY_CUSTOM_ICON:Z

    .line 97
    .line 98
    if-eqz p2, :cond_0

    .line 99
    .line 100
    iget-object p3, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 101
    .line 102
    const v0, 0x7f0a07a9

    .line 103
    .line 104
    .line 105
    invoke-virtual {p3, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    .line 106
    .line 107
    .line 108
    move-result-object p3

    .line 109
    check-cast p3, Landroid/widget/ImageView;

    .line 110
    .line 111
    iput-object p3, p0, Lcom/android/systemui/controls/management/adapter/ControlCommonCustomHolder;->overlayCustomIcon:Landroid/widget/ImageView;

    .line 112
    .line 113
    :cond_0
    sget-boolean p3, Lcom/android/systemui/BasicRune;->CONTROLS_SAMSUNG_STYLE_FOLD:Z

    .line 114
    .line 115
    if-eqz p3, :cond_2

    .line 116
    .line 117
    iget-object p3, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 118
    .line 119
    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 120
    .line 121
    .line 122
    move-result-object p3

    .line 123
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 124
    .line 125
    .line 126
    invoke-static {p3}, Lcom/android/systemui/controls/ui/util/ControlsUtil;->isFoldDelta(Landroid/content/Context;)Z

    .line 127
    .line 128
    .line 129
    move-result p3

    .line 130
    if-eqz p3, :cond_2

    .line 131
    .line 132
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 133
    .line 134
    .line 135
    move-result-object p3

    .line 136
    const p4, 0x7f0701f7

    .line 137
    .line 138
    .line 139
    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 140
    .line 141
    .line 142
    move-result p4

    .line 143
    invoke-static {p1, p4, p4}, Lcom/android/systemui/controls/ui/util/ControlsUtil$Companion;->setSize(Landroid/view/View;II)V

    .line 144
    .line 145
    .line 146
    const p1, 0x7f0701fc

    .line 147
    .line 148
    .line 149
    invoke-virtual {p3, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 150
    .line 151
    .line 152
    move-result p1

    .line 153
    invoke-static {p5, p1, p1}, Lcom/android/systemui/controls/ui/util/ControlsUtil$Companion;->setSize(Landroid/view/View;II)V

    .line 154
    .line 155
    .line 156
    if-eqz p2, :cond_1

    .line 157
    .line 158
    iget-object p0, p0, Lcom/android/systemui/controls/management/adapter/ControlCommonCustomHolder;->overlayCustomIcon:Landroid/widget/ImageView;

    .line 159
    .line 160
    if-eqz p0, :cond_1

    .line 161
    .line 162
    invoke-static {p0, p1, p1}, Lcom/android/systemui/controls/ui/util/ControlsUtil$Companion;->setSize(Landroid/view/View;II)V

    .line 163
    .line 164
    .line 165
    :cond_1
    const p0, 0x7f070201

    .line 166
    .line 167
    .line 168
    invoke-virtual {p3, p0}, Landroid/content/res/Resources;->getDimension(I)F

    .line 169
    .line 170
    .line 171
    move-result p0

    .line 172
    const/4 p1, 0x0

    .line 173
    invoke-virtual {p6, p1, p0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v2, p1, p0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 177
    .line 178
    .line 179
    :cond_2
    return-void
.end method

.method public static synthetic getIcon$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method public static synthetic getOverlayCustomIcon$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method public static synthetic getRemoved$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method public static synthetic getTitle$annotations()V
    .locals 0

    .line 1
    return-void
.end method


# virtual methods
.method public final bindData(Lcom/android/systemui/controls/management/model/CustomElementWrapper;)V
    .locals 14

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/controls/management/adapter/ControlCommonCustomHolder;->resetForReuse()V

    .line 2
    .line 3
    .line 4
    move-object v0, p1

    .line 5
    check-cast v0, Lcom/android/systemui/controls/ControlInterface;

    .line 6
    .line 7
    check-cast p1, Lcom/android/systemui/controls/CustomControlInterface;

    .line 8
    .line 9
    invoke-interface {v0}, Lcom/android/systemui/controls/ControlInterface;->getTitle()Ljava/lang/CharSequence;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget-object v2, p0, Lcom/android/systemui/controls/management/adapter/ControlCommonCustomHolder;->title:Landroid/widget/TextView;

    .line 14
    .line 15
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    .line 17
    .line 18
    invoke-interface {v0}, Lcom/android/systemui/controls/ControlInterface;->getSubtitle()Ljava/lang/CharSequence;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {p0, v1}, Lcom/android/systemui/controls/management/adapter/ControlCommonCustomHolder;->setSubtitleText(Ljava/lang/CharSequence;)V

    .line 23
    .line 24
    .line 25
    invoke-interface {v0}, Lcom/android/systemui/controls/ControlInterface;->getFavorite()Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    invoke-virtual {p0, v1}, Lcom/android/systemui/controls/management/adapter/ControlCommonCustomHolder;->updateFavorite(Z)V

    .line 30
    .line 31
    .line 32
    invoke-interface {v0}, Lcom/android/systemui/controls/ControlInterface;->getRemoved()Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 37
    .line 38
    if-eqz v1, :cond_0

    .line 39
    .line 40
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    const v4, 0x7f1303b1

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    goto :goto_0

    .line 52
    :cond_0
    const-string v1, ""

    .line 53
    .line 54
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/controls/management/adapter/ControlCommonCustomHolder;->removed:Landroid/widget/TextView;

    .line 55
    .line 56
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    .line 58
    .line 59
    iget-object v1, p0, Lcom/android/systemui/controls/management/adapter/ControlCommonCustomHolder;->favorite:Landroid/widget/CheckBox;

    .line 60
    .line 61
    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/controls/management/adapter/ControlCommonCustomHolder;->setContentDescription(Landroid/widget/CheckBox;Landroid/widget/TextView;)V

    .line 62
    .line 63
    .line 64
    new-instance v1, Lcom/android/systemui/controls/management/adapter/ControlCommonCustomHolder$bindData$1;

    .line 65
    .line 66
    invoke-direct {v1, p0, v0}, Lcom/android/systemui/controls/management/adapter/ControlCommonCustomHolder$bindData$1;-><init>(Lcom/android/systemui/controls/management/adapter/ControlCommonCustomHolder;Lcom/android/systemui/controls/ControlInterface;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v3, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    .line 71
    .line 72
    invoke-interface {v0}, Lcom/android/systemui/controls/ControlInterface;->getComponent()Landroid/content/ComponentName;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-interface {v0}, Lcom/android/systemui/controls/ControlInterface;->getDeviceType()I

    .line 77
    .line 78
    .line 79
    move-result v2

    .line 80
    sget-object v4, Lcom/android/systemui/controls/ui/RenderInfo;->Companion:Lcom/android/systemui/controls/ui/RenderInfo$Companion;

    .line 81
    .line 82
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 83
    .line 84
    .line 85
    move-result-object v5

    .line 86
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 87
    .line 88
    .line 89
    const/4 v4, 0x0

    .line 90
    invoke-static {v5, v1, v2, v4}, Lcom/android/systemui/controls/ui/RenderInfo$Companion;->lookup(Landroid/content/Context;Landroid/content/ComponentName;II)Lcom/android/systemui/controls/ui/RenderInfo;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    iget-object v5, p0, Lcom/android/systemui/controls/management/adapter/ControlCommonCustomHolder;->icon:Landroid/widget/ImageView;

    .line 99
    .line 100
    const/4 v6, 0x0

    .line 101
    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 102
    .line 103
    .line 104
    invoke-interface {v0}, Lcom/android/systemui/controls/ControlInterface;->getCustomIcon()Landroid/graphics/drawable/Icon;

    .line 105
    .line 106
    .line 107
    move-result-object v7

    .line 108
    iget-object v8, p0, Lcom/android/systemui/controls/management/adapter/ControlCommonCustomHolder;->controlsRuneWrapper:Lcom/android/systemui/controls/util/ControlsRuneWrapper;

    .line 109
    .line 110
    iget-object v9, p0, Lcom/android/systemui/controls/management/adapter/ControlCommonCustomHolder;->controlsUtil:Lcom/android/systemui/controls/ui/util/ControlsUtil;

    .line 111
    .line 112
    if-eqz v7, :cond_6

    .line 113
    .line 114
    iget-object v10, p0, Lcom/android/systemui/controls/management/adapter/ControlCommonCustomHolder;->canUseIconPredicate:Lcom/android/systemui/controls/ui/CanUseIconPredicate;

    .line 115
    .line 116
    invoke-virtual {v10, v7}, Lcom/android/systemui/controls/ui/CanUseIconPredicate;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v10

    .line 120
    check-cast v10, Ljava/lang/Boolean;

    .line 121
    .line 122
    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    .line 123
    .line 124
    .line 125
    move-result v10

    .line 126
    if-eqz v10, :cond_1

    .line 127
    .line 128
    goto :goto_1

    .line 129
    :cond_1
    move-object v7, v6

    .line 130
    :goto_1
    if-eqz v7, :cond_6

    .line 131
    .line 132
    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setImageIcon(Landroid/graphics/drawable/Icon;)V

    .line 133
    .line 134
    .line 135
    sget-boolean v7, Lcom/android/systemui/BasicRune;->CONTROLS_USE_CUSTOM_ICON_WITHOUT_PADDING:Z

    .line 136
    .line 137
    if-eqz v7, :cond_2

    .line 138
    .line 139
    invoke-interface {p1}, Lcom/android/systemui/controls/CustomControlInterface;->getUseCustomIconWithoutPadding()Z

    .line 140
    .line 141
    .line 142
    move-result v7

    .line 143
    if-eqz v7, :cond_2

    .line 144
    .line 145
    invoke-virtual {v5, v4, v4, v4, v4}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 146
    .line 147
    .line 148
    :cond_2
    sget-boolean v7, Lcom/android/systemui/BasicRune;->CONTROLS_USE_CUSTOM_ICON_WITHOUT_SHADOW_BG:Z

    .line 149
    .line 150
    if-eqz v7, :cond_5

    .line 151
    .line 152
    invoke-interface {p1}, Lcom/android/systemui/controls/CustomControlInterface;->getUseCustomIconWithoutShadowBg()Z

    .line 153
    .line 154
    .line 155
    move-result v7

    .line 156
    if-nez v7, :cond_5

    .line 157
    .line 158
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 159
    .line 160
    .line 161
    move-result-object v7

    .line 162
    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 163
    .line 164
    .line 165
    move-result-object v7

    .line 166
    iget v7, v7, Landroid/content/res/Configuration;->uiMode:I

    .line 167
    .line 168
    and-int/lit8 v7, v7, 0x30

    .line 169
    .line 170
    const/16 v10, 0x10

    .line 171
    .line 172
    if-ne v7, v10, :cond_5

    .line 173
    .line 174
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 175
    .line 176
    .line 177
    move-result-object v7

    .line 178
    const v10, 0x7f080725

    .line 179
    .line 180
    .line 181
    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 182
    .line 183
    .line 184
    move-result-object v11

    .line 185
    invoke-virtual {v7, v10, v11}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    .line 186
    .line 187
    .line 188
    move-result-object v7

    .line 189
    move-object v10, v8

    .line 190
    check-cast v10, Lcom/android/systemui/controls/util/ControlsRuneWrapperImpl;

    .line 191
    .line 192
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 193
    .line 194
    .line 195
    sget-boolean v10, Lcom/android/systemui/BasicRune;->CONTROLS_SAMSUNG_STYLE_FOLD:Z

    .line 196
    .line 197
    if-eqz v10, :cond_4

    .line 198
    .line 199
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 200
    .line 201
    .line 202
    invoke-static {v2}, Lcom/android/systemui/controls/ui/util/ControlsUtil;->isFoldDelta(Landroid/content/Context;)Z

    .line 203
    .line 204
    .line 205
    move-result v10

    .line 206
    if-eqz v10, :cond_4

    .line 207
    .line 208
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 209
    .line 210
    .line 211
    move-result-object v10

    .line 212
    const v11, 0x7f0701fc

    .line 213
    .line 214
    .line 215
    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 216
    .line 217
    .line 218
    move-result v10

    .line 219
    instance-of v11, v7, Landroid/graphics/drawable/BitmapDrawable;

    .line 220
    .line 221
    if-eqz v11, :cond_3

    .line 222
    .line 223
    move-object v11, v7

    .line 224
    check-cast v11, Landroid/graphics/drawable/BitmapDrawable;

    .line 225
    .line 226
    goto :goto_2

    .line 227
    :cond_3
    move-object v11, v6

    .line 228
    :goto_2
    if-eqz v11, :cond_4

    .line 229
    .line 230
    new-instance v7, Landroid/graphics/drawable/BitmapDrawable;

    .line 231
    .line 232
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 233
    .line 234
    .line 235
    move-result-object v12

    .line 236
    invoke-virtual {v11}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    .line 237
    .line 238
    .line 239
    move-result-object v11

    .line 240
    const/4 v13, 0x1

    .line 241
    invoke-static {v11, v10, v10, v13}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    .line 242
    .line 243
    .line 244
    move-result-object v10

    .line 245
    invoke-direct {v7, v12, v10}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 246
    .line 247
    .line 248
    :cond_4
    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 249
    .line 250
    .line 251
    :cond_5
    sget-object v7, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 252
    .line 253
    goto :goto_3

    .line 254
    :cond_6
    move-object v7, v6

    .line 255
    :goto_3
    if-nez v7, :cond_8

    .line 256
    .line 257
    iget-object v7, v1, Lcom/android/systemui/controls/ui/RenderInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 258
    .line 259
    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 260
    .line 261
    .line 262
    invoke-interface {v0}, Lcom/android/systemui/controls/ControlInterface;->getDeviceType()I

    .line 263
    .line 264
    .line 265
    move-result v0

    .line 266
    const/16 v7, 0x34

    .line 267
    .line 268
    if-eq v0, v7, :cond_7

    .line 269
    .line 270
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 271
    .line 272
    .line 273
    move-result-object v0

    .line 274
    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 275
    .line 276
    .line 277
    move-result-object v7

    .line 278
    iget v1, v1, Lcom/android/systemui/controls/ui/RenderInfo;->foreground:I

    .line 279
    .line 280
    invoke-virtual {v0, v1, v7}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    .line 281
    .line 282
    .line 283
    move-result-object v0

    .line 284
    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 285
    .line 286
    .line 287
    :cond_7
    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 288
    .line 289
    .line 290
    :cond_8
    invoke-virtual {v3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 291
    .line 292
    .line 293
    move-result-object v0

    .line 294
    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    .line 295
    .line 296
    invoke-interface {p1}, Lcom/android/systemui/controls/CustomControlInterface;->getCustomColor()Landroid/content/res/ColorStateList;

    .line 297
    .line 298
    .line 299
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 300
    .line 301
    .line 302
    invoke-virtual {v0}, Landroid/graphics/drawable/LayerDrawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 303
    .line 304
    .line 305
    const v1, 0x7f0a011e

    .line 306
    .line 307
    .line 308
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    .line 309
    .line 310
    .line 311
    move-result-object v0

    .line 312
    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    .line 313
    .line 314
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 315
    .line 316
    .line 317
    move-result-object v1

    .line 318
    const v3, 0x7f0600c6

    .line 319
    .line 320
    .line 321
    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 322
    .line 323
    .line 324
    move-result-object v2

    .line 325
    invoke-virtual {v1, v3, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    .line 326
    .line 327
    .line 328
    move-result v1

    .line 329
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 330
    .line 331
    .line 332
    sget-boolean v0, Lcom/android/systemui/BasicRune;->CONTROLS_LOTTIE_ICON_ANIMATION:Z

    .line 333
    .line 334
    if-eqz v0, :cond_9

    .line 335
    .line 336
    invoke-virtual {p0, p1}, Lcom/android/systemui/controls/management/adapter/ControlCommonCustomHolder;->updateLottieIcon(Lcom/android/systemui/controls/CustomControlInterface;)V

    .line 337
    .line 338
    .line 339
    :cond_9
    check-cast v8, Lcom/android/systemui/controls/util/ControlsRuneWrapperImpl;

    .line 340
    .line 341
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 342
    .line 343
    .line 344
    sget-boolean v0, Lcom/android/systemui/BasicRune;->CONTROLS_OVERLAY_CUSTOM_ICON:Z

    .line 345
    .line 346
    if-eqz v0, :cond_e

    .line 347
    .line 348
    invoke-interface {p1}, Lcom/android/systemui/controls/CustomControlInterface;->getOverlayCustomIcon()Landroid/graphics/drawable/Icon;

    .line 349
    .line 350
    .line 351
    move-result-object p1

    .line 352
    iget-object p0, p0, Lcom/android/systemui/controls/management/adapter/ControlCommonCustomHolder;->overlayCustomIcon:Landroid/widget/ImageView;

    .line 353
    .line 354
    if-eqz p1, :cond_c

    .line 355
    .line 356
    if-eqz p0, :cond_a

    .line 357
    .line 358
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageIcon(Landroid/graphics/drawable/Icon;)V

    .line 359
    .line 360
    .line 361
    :cond_a
    if-nez p0, :cond_b

    .line 362
    .line 363
    goto :goto_4

    .line 364
    :cond_b
    invoke-virtual {p0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 365
    .line 366
    .line 367
    :goto_4
    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 368
    .line 369
    :cond_c
    if-nez v6, :cond_e

    .line 370
    .line 371
    if-nez p0, :cond_d

    .line 372
    .line 373
    goto :goto_5

    .line 374
    :cond_d
    const/16 p1, 0x8

    .line 375
    .line 376
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 377
    .line 378
    .line 379
    :cond_e
    :goto_5
    return-void
.end method

.method public resetForReuse()V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/android/systemui/BasicRune;->CONTROLS_USE_CUSTOM_ICON_WITHOUT_PADDING:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/android/systemui/controls/management/adapter/ControlCommonCustomHolder;->controlsUtil:Lcom/android/systemui/controls/ui/util/ControlsUtil;

    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    const v1, 0x7f0701f9

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    iget-object p0, p0, Lcom/android/systemui/controls/management/adapter/ControlCommonCustomHolder;->icon:Landroid/widget/ImageView;

    .line 28
    .line 29
    invoke-virtual {p0, v0, v0, v0, v0}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 30
    .line 31
    .line 32
    :cond_0
    return-void
.end method

.method public setContentDescription(Landroid/widget/CheckBox;Landroid/widget/TextView;)V
    .locals 0

    .line 1
    const/4 p0, 0x2

    .line 2
    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setImportantForAccessibility(I)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {p1, p0}, Landroid/widget/CheckBox;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public setSubtitleText(Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final updateFavorite(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/controls/management/adapter/ControlCommonCustomHolder;->favorite:Landroid/widget/CheckBox;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public updateLottieIcon(Lcom/android/systemui/controls/CustomControlInterface;)V
    .locals 0

    .line 1
    return-void
.end method
