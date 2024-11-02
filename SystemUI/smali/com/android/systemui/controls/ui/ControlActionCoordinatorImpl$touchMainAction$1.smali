.class final Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$touchMainAction$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation


# instance fields
.field final synthetic $control:Landroid/service/controls/Control;

.field final synthetic $cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

.field final synthetic $showFullScreen:Lkotlin/jvm/internal/Ref$BooleanRef;

.field final synthetic $templateId:Ljava/lang/String;

.field final synthetic $usePanel:Z

.field final synthetic this$0:Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/ui/ControlViewHolder;Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;ZLandroid/service/controls/Control;Lkotlin/jvm/internal/Ref$BooleanRef;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$touchMainAction$1;->$cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$touchMainAction$1;->this$0:Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;

    .line 4
    .line 5
    iput-boolean p3, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$touchMainAction$1;->$usePanel:Z

    .line 6
    .line 7
    iput-object p4, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$touchMainAction$1;->$control:Landroid/service/controls/Control;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$touchMainAction$1;->$showFullScreen:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 10
    .line 11
    iput-object p6, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$touchMainAction$1;->$templateId:Ljava/lang/String;

    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 15
    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$touchMainAction$1;->$cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getCustomControlViewHolder()Lcom/android/systemui/controls/ui/CustomControlViewHolder;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v0, v0, Lcom/android/systemui/controls/ui/CustomControlViewHolder;->actionIcon:Lcom/android/systemui/controls/ui/view/ActionIconView;

    .line 8
    .line 9
    if-eqz v0, :cond_5

    .line 10
    .line 11
    iget-object v1, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$touchMainAction$1;->this$0:Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;

    .line 12
    .line 13
    iget-object v2, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$touchMainAction$1;->$cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

    .line 14
    .line 15
    iget-boolean v3, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$touchMainAction$1;->$usePanel:Z

    .line 16
    .line 17
    iget-object v4, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$touchMainAction$1;->$control:Landroid/service/controls/Control;

    .line 18
    .line 19
    iget-object v5, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$touchMainAction$1;->$showFullScreen:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 20
    .line 21
    iget-object p0, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$touchMainAction$1;->$templateId:Ljava/lang/String;

    .line 22
    .line 23
    sget-boolean v6, Lcom/android/systemui/BasicRune;->CONTROLS_CUSTOM_MAIN_ACTION_ICON_PROGRESS:Z

    .line 24
    .line 25
    const/4 v7, 0x0

    .line 26
    if-eqz v6, :cond_1

    .line 27
    .line 28
    iget-object v6, v0, Lcom/android/systemui/controls/ui/view/ActionIconView;->actionIconProgress:Landroid/widget/ProgressBar;

    .line 29
    .line 30
    if-nez v6, :cond_0

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    invoke-virtual {v6, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 34
    .line 35
    .line 36
    :cond_1
    :goto_0
    sget-boolean v6, Lcom/android/systemui/BasicRune;->CONTROLS_AUI:Z

    .line 37
    .line 38
    if-eqz v6, :cond_3

    .line 39
    .line 40
    iget-object v6, v1, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;->auiFacade:Lcom/android/systemui/controls/ui/util/AUIFacade;

    .line 41
    .line 42
    invoke-virtual {v2}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getCws()Lcom/android/systemui/controls/ui/ControlWithState;

    .line 43
    .line 44
    .line 45
    move-result-object v8

    .line 46
    iget-object v8, v8, Lcom/android/systemui/controls/ui/ControlWithState;->control:Landroid/service/controls/Control;

    .line 47
    .line 48
    if-eqz v8, :cond_2

    .line 49
    .line 50
    invoke-virtual {v8}, Landroid/service/controls/Control;->getCustomControl()Landroid/service/controls/CustomControl;

    .line 51
    .line 52
    .line 53
    move-result-object v8

    .line 54
    if-eqz v8, :cond_2

    .line 55
    .line 56
    invoke-virtual {v8}, Landroid/service/controls/CustomControl;->getCustomSound()I

    .line 57
    .line 58
    .line 59
    move-result v7

    .line 60
    :cond_2
    invoke-virtual {v2}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getCws()Lcom/android/systemui/controls/ui/ControlWithState;

    .line 61
    .line 62
    .line 63
    move-result-object v8

    .line 64
    iget-object v8, v8, Lcom/android/systemui/controls/ui/ControlWithState;->ci:Lcom/android/systemui/controls/controller/ControlInfo;

    .line 65
    .line 66
    iget v8, v8, Lcom/android/systemui/controls/controller/ControlInfo;->deviceType:I

    .line 67
    .line 68
    check-cast v6, Lcom/android/systemui/controls/ui/util/AUIFacadeImpl;

    .line 69
    .line 70
    iget-object v0, v0, Lcom/android/systemui/controls/ui/view/ActionIconView;->actionIcon:Landroid/widget/ImageView;

    .line 71
    .line 72
    const/4 v9, 0x1

    .line 73
    invoke-virtual {v6, v7, v8, v0, v9}, Lcom/android/systemui/controls/ui/util/AUIFacadeImpl;->playClick(IILandroid/view/View;Z)V

    .line 74
    .line 75
    .line 76
    :cond_3
    if-eqz v3, :cond_4

    .line 77
    .line 78
    invoke-virtual {v4}, Landroid/service/controls/Control;->getAppIntent()Landroid/app/PendingIntent;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    iget-boolean v0, v5, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 83
    .line 84
    sget v3, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;->$r8$clinit:I

    .line 85
    .line 86
    invoke-virtual {v1, v2, p0, v0}, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;->showDetail(Lcom/android/systemui/controls/ui/ControlViewHolder;Landroid/app/PendingIntent;Z)V

    .line 87
    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_4
    new-instance v0, Landroid/service/controls/actions/CommandAction;

    .line 91
    .line 92
    invoke-direct {v0, p0}, Landroid/service/controls/actions/CommandAction;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v2, v0}, Lcom/android/systemui/controls/ui/ControlViewHolder;->action(Landroid/service/controls/actions/ControlAction;)V

    .line 96
    .line 97
    .line 98
    :cond_5
    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 99
    .line 100
    return-object p0
.end method
