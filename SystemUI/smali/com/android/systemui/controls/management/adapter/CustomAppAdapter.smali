.class public final Lcom/android/systemui/controls/management/adapter/CustomAppAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final badgeProvider:Lcom/android/systemui/controls/controller/util/BadgeProvider;

.field public final context:Landroid/content/Context;

.field public final controlsUtil:Lcom/android/systemui/controls/ui/util/ControlsUtil;

.field public final favoritesRenderer:Lcom/android/systemui/controls/management/adapter/CustomFavoritesRenderer;

.field public final isOOBE:Z

.field public final layoutInflater:Landroid/view/LayoutInflater;

.field public listOfServices:Ljava/util/List;

.field public final onAppSelected:Lkotlin/jvm/functions/Function1;

.field public final resources:Landroid/content/res/Resources;

.field public final saLogger:Lcom/android/systemui/controls/ui/util/SALogger;

.field public final switchCallback:Lkotlin/jvm/functions/Function1;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Landroidx/lifecycle/Lifecycle;Lcom/android/systemui/controls/management/ControlsListingController;Landroid/view/LayoutInflater;Lkotlin/jvm/functions/Function1;Lcom/android/systemui/controls/management/adapter/CustomFavoritesRenderer;Landroid/content/Context;Lcom/android/systemui/controls/ui/util/ControlsUtil;Lcom/android/systemui/controls/ui/util/SALogger;Lcom/android/systemui/controls/controller/util/BadgeProvider;Landroid/content/res/Resources;Ljava/util/Set;Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/Executor;",
            "Landroidx/lifecycle/Lifecycle;",
            "Lcom/android/systemui/controls/management/ControlsListingController;",
            "Landroid/view/LayoutInflater;",
            "Lkotlin/jvm/functions/Function1;",
            "Lcom/android/systemui/controls/management/adapter/CustomFavoritesRenderer;",
            "Landroid/content/Context;",
            "Lcom/android/systemui/controls/ui/util/ControlsUtil;",
            "Lcom/android/systemui/controls/ui/util/SALogger;",
            "Lcom/android/systemui/controls/controller/util/BadgeProvider;",
            "Landroid/content/res/Resources;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/jvm/functions/Function1;",
            ")V"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 5
    iput-object p5, p0, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    .line 6
    iput-object p6, p0, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter;->onAppSelected:Lkotlin/jvm/functions/Function1;

    .line 7
    iput-object p7, p0, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter;->favoritesRenderer:Lcom/android/systemui/controls/management/adapter/CustomFavoritesRenderer;

    .line 8
    iput-object p8, p0, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter;->context:Landroid/content/Context;

    .line 9
    iput-object p9, p0, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter;->controlsUtil:Lcom/android/systemui/controls/ui/util/ControlsUtil;

    .line 10
    iput-object p10, p0, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter;->saLogger:Lcom/android/systemui/controls/ui/util/SALogger;

    .line 11
    iput-object p11, p0, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter;->badgeProvider:Lcom/android/systemui/controls/controller/util/BadgeProvider;

    .line 12
    iput-object p12, p0, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter;->resources:Landroid/content/res/Resources;

    .line 13
    iput-object p14, p0, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter;->switchCallback:Lkotlin/jvm/functions/Function1;

    .line 14
    sget-object p5, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 15
    iput-object p5, p0, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter;->listOfServices:Ljava/util/List;

    .line 16
    new-instance p5, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$callback$1;

    invoke-direct {p5, p1, p0, p2}, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$callback$1;-><init>(Ljava/util/concurrent/Executor;Lcom/android/systemui/controls/management/adapter/CustomAppAdapter;Ljava/util/concurrent/Executor;)V

    .line 17
    invoke-interface {p4, p3, p5}, Lcom/android/systemui/statusbar/policy/CallbackController;->observe(Landroidx/lifecycle/Lifecycle;Ljava/lang/Object;)V

    .line 18
    invoke-virtual {p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p1, "ControlsOOBEManageAppsCompleted"

    const/4 p2, 0x0

    .line 19
    invoke-static {p8, p1, p2}, Lcom/android/systemui/Prefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    .line 20
    iput-boolean p1, p0, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter;->isOOBE:Z

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Landroidx/lifecycle/Lifecycle;Lcom/android/systemui/controls/management/ControlsListingController;Landroid/view/LayoutInflater;Lkotlin/jvm/functions/Function1;Lcom/android/systemui/controls/management/adapter/CustomFavoritesRenderer;Landroid/content/Context;Lcom/android/systemui/controls/ui/util/ControlsUtil;Lcom/android/systemui/controls/ui/util/SALogger;Lcom/android/systemui/controls/controller/util/BadgeProvider;Landroid/content/res/Resources;Ljava/util/Set;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 17

    move/from16 v0, p15

    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_0

    .line 1
    sget-object v1, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$1;->INSTANCE:Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$1;

    move-object v8, v1

    goto :goto_0

    :cond_0
    move-object/from16 v8, p6

    :goto_0
    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_1

    .line 2
    sget-object v0, Lkotlin/collections/EmptySet;->INSTANCE:Lkotlin/collections/EmptySet;

    move-object v15, v0

    goto :goto_1

    :cond_1
    move-object/from16 v15, p13

    :goto_1
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    move-object/from16 v14, p12

    move-object/from16 v16, p14

    .line 3
    invoke-direct/range {v2 .. v16}, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Landroidx/lifecycle/Lifecycle;Lcom/android/systemui/controls/management/ControlsListingController;Landroid/view/LayoutInflater;Lkotlin/jvm/functions/Function1;Lcom/android/systemui/controls/management/adapter/CustomFavoritesRenderer;Landroid/content/Context;Lcom/android/systemui/controls/ui/util/ControlsUtil;Lcom/android/systemui/controls/ui/util/SALogger;Lcom/android/systemui/controls/controller/util/BadgeProvider;Landroid/content/res/Resources;Ljava/util/Set;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method


# virtual methods
.method public final getItemCount()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter;->listOfServices:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final getTotalFavoriteAndActiveAppCount()I
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter;->listOfServices:Ljava/util/List;

    .line 2
    .line 3
    new-instance v1, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_4

    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    move-object v3, v2

    .line 23
    check-cast v3, Lcom/android/systemui/controls/ControlsServiceInfo;

    .line 24
    .line 25
    iget-object v4, v3, Lcom/android/settingslib/applications/DefaultAppInfo;->componentName:Landroid/content/ComponentName;

    .line 26
    .line 27
    iget-object v5, p0, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter;->favoritesRenderer:Lcom/android/systemui/controls/management/adapter/CustomFavoritesRenderer;

    .line 28
    .line 29
    iget-object v6, v5, Lcom/android/systemui/controls/management/adapter/CustomFavoritesRenderer;->favoriteFunction:Lkotlin/jvm/functions/Function1;

    .line 30
    .line 31
    invoke-interface {v6, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    check-cast v4, Ljava/lang/Number;

    .line 36
    .line 37
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    if-lez v4, :cond_1

    .line 42
    .line 43
    iget-object v4, v5, Lcom/android/systemui/controls/management/adapter/CustomFavoritesRenderer;->getActiveFlag:Lkotlin/jvm/functions/Function1;

    .line 44
    .line 45
    iget-object v5, v3, Lcom/android/settingslib/applications/DefaultAppInfo;->componentName:Landroid/content/ComponentName;

    .line 46
    .line 47
    invoke-interface {v4, v5}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    check-cast v4, Ljava/lang/Boolean;

    .line 52
    .line 53
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    if-nez v4, :cond_2

    .line 58
    .line 59
    :cond_1
    iget-object v3, v3, Lcom/android/systemui/controls/ControlsServiceInfo;->panelActivity:Landroid/content/ComponentName;

    .line 60
    .line 61
    if-eqz v3, :cond_3

    .line 62
    .line 63
    :cond_2
    const/4 v3, 0x1

    .line 64
    goto :goto_1

    .line 65
    :cond_3
    const/4 v3, 0x0

    .line 66
    :goto_1
    if-eqz v3, :cond_0

    .line 67
    .line 68
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 73
    .line 74
    .line 75
    move-result p0

    .line 76
    return p0
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 12

    .line 1
    check-cast p1, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$CustomHolder;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter;->listOfServices:Ljava/util/List;

    .line 4
    .line 5
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/android/systemui/controls/ControlsServiceInfo;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/android/systemui/controls/ControlsServiceInfo;->loadIcon()Landroid/graphics/drawable/Drawable;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    iget-object v2, p1, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$CustomHolder;->icon:Landroid/widget/ImageView;

    .line 16
    .line 17
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/android/systemui/controls/ControlsServiceInfo;->loadLabel()Ljava/lang/CharSequence;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    iget-object v2, p1, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$CustomHolder;->title:Landroid/widget/TextView;

    .line 25
    .line 26
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 27
    .line 28
    .line 29
    iget-object v1, v0, Lcom/android/systemui/controls/ControlsServiceInfo;->panelActivity:Landroid/content/ComponentName;

    .line 30
    .line 31
    const/4 v3, 0x1

    .line 32
    const/4 v4, 0x0

    .line 33
    if-eqz v1, :cond_0

    .line 34
    .line 35
    move v1, v3

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    move v1, v4

    .line 38
    :goto_0
    iget-object v5, p1, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$CustomHolder;->favRenderer:Lcom/android/systemui/controls/management/adapter/CustomFavoritesRenderer;

    .line 39
    .line 40
    iget-object v6, v0, Lcom/android/settingslib/applications/DefaultAppInfo;->componentName:Landroid/content/ComponentName;

    .line 41
    .line 42
    if-nez v1, :cond_2

    .line 43
    .line 44
    iget-object v7, v5, Lcom/android/systemui/controls/management/adapter/CustomFavoritesRenderer;->favoriteFunction:Lkotlin/jvm/functions/Function1;

    .line 45
    .line 46
    invoke-interface {v7, v6}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v7

    .line 50
    check-cast v7, Ljava/lang/Number;

    .line 51
    .line 52
    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    .line 53
    .line 54
    .line 55
    move-result v7

    .line 56
    iget-object v8, v5, Lcom/android/systemui/controls/management/adapter/CustomFavoritesRenderer;->resources:Landroid/content/res/Resources;

    .line 57
    .line 58
    if-eqz v7, :cond_1

    .line 59
    .line 60
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 61
    .line 62
    .line 63
    move-result-object v9

    .line 64
    filled-new-array {v9}, [Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v9

    .line 68
    const v10, 0x7f110003

    .line 69
    .line 70
    .line 71
    invoke-virtual {v8, v10, v7, v9}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v7

    .line 75
    goto :goto_1

    .line 76
    :cond_1
    const v7, 0x7f1303ea

    .line 77
    .line 78
    .line 79
    invoke-virtual {v8, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v7

    .line 83
    goto :goto_1

    .line 84
    :cond_2
    const/4 v7, 0x0

    .line 85
    :goto_1
    iget-object v8, p1, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$CustomHolder;->favorites:Landroid/widget/TextView;

    .line 86
    .line 87
    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v8, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0}, Lcom/android/systemui/controls/ControlsServiceInfo;->loadLabel()Ljava/lang/CharSequence;

    .line 94
    .line 95
    .line 96
    move-result-object v7

    .line 97
    iget-object v9, p1, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$CustomHolder;->onOff:Landroidx/appcompat/widget/SwitchCompat;

    .line 98
    .line 99
    invoke-virtual {v9, v7}, Landroid/widget/CompoundButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 100
    .line 101
    .line 102
    iget-object v7, v5, Lcom/android/systemui/controls/management/adapter/CustomFavoritesRenderer;->favoriteFunction:Lkotlin/jvm/functions/Function1;

    .line 103
    .line 104
    invoke-interface {v7, v6}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v7

    .line 108
    check-cast v7, Ljava/lang/Number;

    .line 109
    .line 110
    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    .line 111
    .line 112
    .line 113
    move-result v7

    .line 114
    if-gtz v7, :cond_4

    .line 115
    .line 116
    if-eqz v1, :cond_3

    .line 117
    .line 118
    goto :goto_2

    .line 119
    :cond_3
    move v7, v4

    .line 120
    goto :goto_3

    .line 121
    :cond_4
    :goto_2
    move v7, v3

    .line 122
    :goto_3
    invoke-virtual {v9, v7}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v9}, Landroid/widget/CompoundButton;->isEnabled()Z

    .line 126
    .line 127
    .line 128
    move-result v7

    .line 129
    iget-object v10, v5, Lcom/android/systemui/controls/management/adapter/CustomFavoritesRenderer;->getActiveFlag:Lkotlin/jvm/functions/Function1;

    .line 130
    .line 131
    if-eqz v7, :cond_5

    .line 132
    .line 133
    invoke-interface {v10, v6}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v7

    .line 137
    check-cast v7, Ljava/lang/Boolean;

    .line 138
    .line 139
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    .line 140
    .line 141
    .line 142
    move-result v7

    .line 143
    if-eqz v7, :cond_5

    .line 144
    .line 145
    move v7, v3

    .line 146
    goto :goto_4

    .line 147
    :cond_5
    move v7, v4

    .line 148
    :goto_4
    invoke-virtual {v9, v7}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 149
    .line 150
    .line 151
    const/16 v7, 0x8

    .line 152
    .line 153
    if-eqz v1, :cond_6

    .line 154
    .line 155
    iget-object v9, p1, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$CustomHolder;->switchDivder:Landroid/view/View;

    .line 156
    .line 157
    invoke-virtual {v9, v7}, Landroid/view/View;->setVisibility(I)V

    .line 158
    .line 159
    .line 160
    iget-object v9, p1, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$CustomHolder;->this$0:Lcom/android/systemui/controls/management/adapter/CustomAppAdapter;

    .line 161
    .line 162
    iget-object v9, v9, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter;->resources:Landroid/content/res/Resources;

    .line 163
    .line 164
    const v11, 0x7f070214

    .line 165
    .line 166
    .line 167
    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 168
    .line 169
    .line 170
    move-result v9

    .line 171
    iget-object v11, p1, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$CustomHolder;->appInfoContainer:Landroid/widget/LinearLayout;

    .line 172
    .line 173
    invoke-virtual {v11, v4, v9, v4, v9}, Landroid/widget/LinearLayout;->setPaddingRelative(IIII)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 177
    .line 178
    .line 179
    :cond_6
    if-nez v1, :cond_7

    .line 180
    .line 181
    iget-object v9, v5, Lcom/android/systemui/controls/management/adapter/CustomFavoritesRenderer;->favoriteFunction:Lkotlin/jvm/functions/Function1;

    .line 182
    .line 183
    invoke-interface {v9, v6}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    move-result-object v9

    .line 187
    check-cast v9, Ljava/lang/Number;

    .line 188
    .line 189
    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    .line 190
    .line 191
    .line 192
    move-result v9

    .line 193
    if-nez v9, :cond_7

    .line 194
    .line 195
    invoke-interface {v10, v6}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    move-result-object v9

    .line 199
    check-cast v9, Ljava/lang/Boolean;

    .line 200
    .line 201
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    .line 202
    .line 203
    .line 204
    move-result v9

    .line 205
    if-eqz v9, :cond_7

    .line 206
    .line 207
    iget-object v5, v5, Lcom/android/systemui/controls/management/adapter/CustomFavoritesRenderer;->setActiveFlag:Lkotlin/jvm/functions/Function2;

    .line 208
    .line 209
    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 210
    .line 211
    invoke-interface {v5, v6, v9}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    :cond_7
    new-instance v5, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$CustomHolder$bindData$1;

    .line 215
    .line 216
    invoke-direct {v5, p1, v1, v0}, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$CustomHolder$bindData$1;-><init>(Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$CustomHolder;ZLcom/android/systemui/controls/ControlsServiceInfo;)V

    .line 217
    .line 218
    .line 219
    iget-object v0, p1, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$CustomHolder;->onOffLayout:Landroid/widget/LinearLayout;

    .line 220
    .line 221
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 222
    .line 223
    .line 224
    sget-boolean v0, Lcom/android/systemui/BasicRune;->CONTROLS_BADGE:Z

    .line 225
    .line 226
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 227
    .line 228
    if-eqz v0, :cond_9

    .line 229
    .line 230
    iget-object v0, p1, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$CustomHolder;->badgeProvider:Lcom/android/systemui/controls/controller/util/BadgeProvider;

    .line 231
    .line 232
    check-cast v0, Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;

    .line 233
    .line 234
    iget-object v5, v0, Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;->badgeRequiredSet:Ljava/util/Set;

    .line 235
    .line 236
    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v9

    .line 240
    invoke-interface {v5, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 241
    .line 242
    .line 243
    move-result v5

    .line 244
    iget-object v9, p1, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$CustomHolder;->badge:Landroid/view/View;

    .line 245
    .line 246
    if-eqz v5, :cond_8

    .line 247
    .line 248
    invoke-virtual {v9, v4}, Landroid/view/View;->setVisibility(I)V

    .line 249
    .line 250
    .line 251
    goto :goto_5

    .line 252
    :cond_8
    invoke-virtual {v9, v7}, Landroid/view/View;->setVisibility(I)V

    .line 253
    .line 254
    .line 255
    :goto_5
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 256
    .line 257
    .line 258
    move-result-object v2

    .line 259
    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 260
    .line 261
    .line 262
    move-result-object v4

    .line 263
    new-instance v5, Ljava/lang/StringBuilder;

    .line 264
    .line 265
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 266
    .line 267
    .line 268
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 269
    .line 270
    .line 271
    const-string v2, ", "

    .line 272
    .line 273
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    .line 275
    .line 276
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 277
    .line 278
    .line 279
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object v2

    .line 283
    invoke-virtual {v0, v6, v1, v2}, Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;->setDescription(Landroid/content/ComponentName;Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 284
    .line 285
    .line 286
    :cond_9
    new-instance v0, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$onBindViewHolder$1;

    .line 287
    .line 288
    invoke-direct {v0, p0, p2, p1}, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$onBindViewHolder$1;-><init>(Lcom/android/systemui/controls/management/adapter/CustomAppAdapter;ILcom/android/systemui/controls/management/adapter/CustomAppAdapter$CustomHolder;)V

    .line 289
    .line 290
    .line 291
    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 292
    .line 293
    .line 294
    iget-object p0, p0, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter;->listOfServices:Ljava/util/List;

    .line 295
    .line 296
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 297
    .line 298
    .line 299
    move-result p0

    .line 300
    add-int/2addr p2, v3

    .line 301
    if-gt p0, p2, :cond_a

    .line 302
    .line 303
    const p0, 0x7f0a05cc

    .line 304
    .line 305
    .line 306
    invoke-virtual {v1, p0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    .line 307
    .line 308
    .line 309
    move-result-object p0

    .line 310
    invoke-virtual {p0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 311
    .line 312
    .line 313
    :cond_a
    return-void
.end method

.method public final onCreateViewHolder(Landroidx/recyclerview/widget/RecyclerView;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 8

    .line 1
    new-instance p2, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$CustomHolder;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    .line 4
    .line 5
    const v1, 0x7f0d008e

    .line 6
    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    iget-object v3, p0, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter;->favoritesRenderer:Lcom/android/systemui/controls/management/adapter/CustomFavoritesRenderer;

    .line 14
    .line 15
    iget-object v4, p0, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter;->switchCallback:Lkotlin/jvm/functions/Function1;

    .line 16
    .line 17
    iget-boolean v5, p0, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter;->isOOBE:Z

    .line 18
    .line 19
    iget-object v6, p0, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter;->saLogger:Lcom/android/systemui/controls/ui/util/SALogger;

    .line 20
    .line 21
    iget-object v7, p0, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter;->badgeProvider:Lcom/android/systemui/controls/controller/util/BadgeProvider;

    .line 22
    .line 23
    move-object v0, p2

    .line 24
    move-object v1, p0

    .line 25
    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$CustomHolder;-><init>(Lcom/android/systemui/controls/management/adapter/CustomAppAdapter;Landroid/view/View;Lcom/android/systemui/controls/management/adapter/CustomFavoritesRenderer;Lkotlin/jvm/functions/Function1;ZLcom/android/systemui/controls/ui/util/SALogger;Lcom/android/systemui/controls/controller/util/BadgeProvider;)V

    .line 26
    .line 27
    .line 28
    return-object p2
.end method
