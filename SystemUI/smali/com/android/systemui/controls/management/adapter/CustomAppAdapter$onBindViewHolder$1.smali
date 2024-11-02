.class public final Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$onBindViewHolder$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $holder:Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$CustomHolder;

.field public final synthetic $index:I

.field public final synthetic this$0:Lcom/android/systemui/controls/management/adapter/CustomAppAdapter;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/management/adapter/CustomAppAdapter;ILcom/android/systemui/controls/management/adapter/CustomAppAdapter$CustomHolder;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$onBindViewHolder$1;->this$0:Lcom/android/systemui/controls/management/adapter/CustomAppAdapter;

    .line 2
    .line 3
    iput p2, p0, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$onBindViewHolder$1;->$index:I

    .line 4
    .line 5
    iput-object p3, p0, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$onBindViewHolder$1;->$holder:Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$CustomHolder;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$onBindViewHolder$1;->this$0:Lcom/android/systemui/controls/management/adapter/CustomAppAdapter;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter;->listOfServices:Ljava/util/List;

    .line 4
    .line 5
    iget v0, p0, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$onBindViewHolder$1;->$index:I

    .line 6
    .line 7
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Lcom/android/systemui/controls/ControlsServiceInfo;

    .line 12
    .line 13
    iget-object p1, p1, Lcom/android/systemui/controls/ControlsServiceInfo;->panelActivity:Landroid/content/ComponentName;

    .line 14
    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    iget-object p1, p0, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$onBindViewHolder$1;->$holder:Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$CustomHolder;

    .line 18
    .line 19
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 20
    .line 21
    const v0, 0x7f0a0786

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    check-cast p1, Landroidx/appcompat/widget/SwitchCompat;

    .line 29
    .line 30
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    xor-int/lit8 v0, v0, 0x1

    .line 35
    .line 36
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 37
    .line 38
    .line 39
    iget-object p1, p0, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$onBindViewHolder$1;->this$0:Lcom/android/systemui/controls/management/adapter/CustomAppAdapter;

    .line 40
    .line 41
    iget-object v1, p1, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter;->favoritesRenderer:Lcom/android/systemui/controls/management/adapter/CustomFavoritesRenderer;

    .line 42
    .line 43
    iget-object v1, v1, Lcom/android/systemui/controls/management/adapter/CustomFavoritesRenderer;->setActivePanelFlag:Lkotlin/jvm/functions/Function2;

    .line 44
    .line 45
    iget-object p1, p1, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter;->listOfServices:Ljava/util/List;

    .line 46
    .line 47
    iget v2, p0, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$onBindViewHolder$1;->$index:I

    .line 48
    .line 49
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    check-cast p1, Lcom/android/systemui/controls/ControlsServiceInfo;

    .line 54
    .line 55
    iget-object p1, p1, Lcom/android/settingslib/applications/DefaultAppInfo;->componentName:Landroid/content/ComponentName;

    .line 56
    .line 57
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-interface {v1, p1, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$onBindViewHolder$1;->this$0:Lcom/android/systemui/controls/management/adapter/CustomAppAdapter;

    .line 66
    .line 67
    iget-object v0, p1, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter;->onAppSelected:Lkotlin/jvm/functions/Function1;

    .line 68
    .line 69
    iget-object p1, p1, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter;->listOfServices:Ljava/util/List;

    .line 70
    .line 71
    iget v1, p0, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$onBindViewHolder$1;->$index:I

    .line 72
    .line 73
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    check-cast p1, Lcom/android/systemui/controls/ControlsServiceInfo;

    .line 78
    .line 79
    iget-object v1, p1, Lcom/android/settingslib/applications/DefaultAppInfo;->componentName:Landroid/content/ComponentName;

    .line 80
    .line 81
    if-eqz v1, :cond_1

    .line 82
    .line 83
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    goto :goto_0

    .line 88
    :cond_1
    iget-object p1, p1, Lcom/android/settingslib/applications/DefaultAppInfo;->packageItemInfo:Landroid/content/pm/PackageItemInfo;

    .line 89
    .line 90
    if-eqz p1, :cond_2

    .line 91
    .line 92
    iget-object p1, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_2
    const/4 p1, 0x0

    .line 96
    :goto_0
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    :goto_1
    sget-boolean p1, Lcom/android/systemui/BasicRune;->CONTROLS_SAMSUNG_ANALYTICS:Z

    .line 104
    .line 105
    if-eqz p1, :cond_4

    .line 106
    .line 107
    iget-object p0, p0, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$onBindViewHolder$1;->this$0:Lcom/android/systemui/controls/management/adapter/CustomAppAdapter;

    .line 108
    .line 109
    iget-object p1, p0, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter;->saLogger:Lcom/android/systemui/controls/ui/util/SALogger;

    .line 110
    .line 111
    iget-boolean p0, p0, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter;->isOOBE:Z

    .line 112
    .line 113
    if-eqz p0, :cond_3

    .line 114
    .line 115
    sget-object p0, Lcom/android/systemui/controls/ui/util/SALogger$Event$TapAppList;->INSTANCE:Lcom/android/systemui/controls/ui/util/SALogger$Event$TapAppList;

    .line 116
    .line 117
    goto :goto_2

    .line 118
    :cond_3
    sget-object p0, Lcom/android/systemui/controls/ui/util/SALogger$Event$TapAppListOnManageApps;->INSTANCE:Lcom/android/systemui/controls/ui/util/SALogger$Event$TapAppListOnManageApps;

    .line 119
    .line 120
    :goto_2
    invoke-virtual {p1, p0}, Lcom/android/systemui/controls/ui/util/SALogger;->sendEvent(Lcom/android/systemui/controls/ui/util/SALogger$Event;)V

    .line 121
    .line 122
    .line 123
    :cond_4
    return-void
.end method
