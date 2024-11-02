.class public final Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$CustomHolder$bindData$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $isPanelType:Z

.field public final synthetic $service:Lcom/android/systemui/controls/ControlsServiceInfo;

.field public final synthetic this$0:Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$CustomHolder;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$CustomHolder;ZLcom/android/systemui/controls/ControlsServiceInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$CustomHolder$bindData$1;->this$0:Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$CustomHolder;

    .line 2
    .line 3
    iput-boolean p2, p0, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$CustomHolder$bindData$1;->$isPanelType:Z

    .line 4
    .line 5
    iput-object p3, p0, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$CustomHolder$bindData$1;->$service:Lcom/android/systemui/controls/ControlsServiceInfo;

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
    iget-object p1, p0, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$CustomHolder$bindData$1;->this$0:Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$CustomHolder;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$CustomHolder;->onOff:Landroidx/appcompat/widget/SwitchCompat;

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isEnabled()Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_2

    .line 10
    .line 11
    iget-object p1, p0, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$CustomHolder$bindData$1;->this$0:Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$CustomHolder;

    .line 12
    .line 13
    iget-object p1, p1, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$CustomHolder;->onOff:Landroidx/appcompat/widget/SwitchCompat;

    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    xor-int/lit8 p1, p1, 0x1

    .line 20
    .line 21
    iget-object v0, p0, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$CustomHolder$bindData$1;->this$0:Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$CustomHolder;

    .line 22
    .line 23
    iget-object v0, v0, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$CustomHolder;->onOff:Landroidx/appcompat/widget/SwitchCompat;

    .line 24
    .line 25
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 26
    .line 27
    .line 28
    iget-boolean v0, p0, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$CustomHolder$bindData$1;->$isPanelType:Z

    .line 29
    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    iget-object v0, p0, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$CustomHolder$bindData$1;->this$0:Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$CustomHolder;

    .line 33
    .line 34
    iget-object v0, v0, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$CustomHolder;->favRenderer:Lcom/android/systemui/controls/management/adapter/CustomFavoritesRenderer;

    .line 35
    .line 36
    iget-object v0, v0, Lcom/android/systemui/controls/management/adapter/CustomFavoritesRenderer;->setActivePanelFlag:Lkotlin/jvm/functions/Function2;

    .line 37
    .line 38
    iget-object v1, p0, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$CustomHolder$bindData$1;->$service:Lcom/android/systemui/controls/ControlsServiceInfo;

    .line 39
    .line 40
    iget-object v1, v1, Lcom/android/settingslib/applications/DefaultAppInfo;->componentName:Landroid/content/ComponentName;

    .line 41
    .line 42
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-interface {v0, v1, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$CustomHolder$bindData$1;->this$0:Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$CustomHolder;

    .line 51
    .line 52
    iget-object v0, v0, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$CustomHolder;->favRenderer:Lcom/android/systemui/controls/management/adapter/CustomFavoritesRenderer;

    .line 53
    .line 54
    iget-object v0, v0, Lcom/android/systemui/controls/management/adapter/CustomFavoritesRenderer;->setActiveFlag:Lkotlin/jvm/functions/Function2;

    .line 55
    .line 56
    iget-object v1, p0, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$CustomHolder$bindData$1;->$service:Lcom/android/systemui/controls/ControlsServiceInfo;

    .line 57
    .line 58
    iget-object v1, v1, Lcom/android/settingslib/applications/DefaultAppInfo;->componentName:Landroid/content/ComponentName;

    .line 59
    .line 60
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    invoke-interface {v0, v1, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$CustomHolder$bindData$1;->this$0:Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$CustomHolder;

    .line 68
    .line 69
    iget-object v1, v0, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$CustomHolder;->switchCallback:Lkotlin/jvm/functions/Function1;

    .line 70
    .line 71
    iget-object v0, v0, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$CustomHolder;->title:Landroid/widget/TextView;

    .line 72
    .line 73
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    sget-boolean v0, Lcom/android/systemui/BasicRune;->CONTROLS_SAMSUNG_ANALYTICS:Z

    .line 85
    .line 86
    if-eqz v0, :cond_3

    .line 87
    .line 88
    iget-object p0, p0, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$CustomHolder$bindData$1;->this$0:Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$CustomHolder;

    .line 89
    .line 90
    iget-object v0, p0, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$CustomHolder;->saLogger:Lcom/android/systemui/controls/ui/util/SALogger;

    .line 91
    .line 92
    iget-boolean p0, p0, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$CustomHolder;->isOOBE:Z

    .line 93
    .line 94
    if-eqz p0, :cond_1

    .line 95
    .line 96
    new-instance p0, Lcom/android/systemui/controls/ui/util/SALogger$Event$ChooseAppOnOff;

    .line 97
    .line 98
    invoke-direct {p0, p1}, Lcom/android/systemui/controls/ui/util/SALogger$Event$ChooseAppOnOff;-><init>(Z)V

    .line 99
    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_1
    new-instance p0, Lcom/android/systemui/controls/ui/util/SALogger$Event$ChooseAppOnOffOnManageApps;

    .line 103
    .line 104
    invoke-direct {p0, p1}, Lcom/android/systemui/controls/ui/util/SALogger$Event$ChooseAppOnOffOnManageApps;-><init>(Z)V

    .line 105
    .line 106
    .line 107
    :goto_1
    invoke-virtual {v0, p0}, Lcom/android/systemui/controls/ui/util/SALogger;->sendEvent(Lcom/android/systemui/controls/ui/util/SALogger$Event;)V

    .line 108
    .line 109
    .line 110
    goto :goto_2

    .line 111
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$CustomHolder$bindData$1;->this$0:Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$CustomHolder;

    .line 112
    .line 113
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 114
    .line 115
    invoke-virtual {p0}, Landroid/view/View;->performClick()Z

    .line 116
    .line 117
    .line 118
    :cond_3
    :goto_2
    return-void
.end method
