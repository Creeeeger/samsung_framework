.class public final Lcom/android/systemui/controls/ui/TouchBehavior$bind$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/controls/ui/TouchBehavior;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/ui/TouchBehavior;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/controls/ui/TouchBehavior$bind$1;->this$0:Lcom/android/systemui/controls/ui/TouchBehavior;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/android/systemui/controls/ui/TouchBehavior$bind$1;->this$0:Lcom/android/systemui/controls/ui/TouchBehavior;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/android/systemui/controls/ui/TouchBehavior;->getCvh()Lcom/android/systemui/controls/ui/ControlViewHolder;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getCustomControlViewHolder()Lcom/android/systemui/controls/ui/CustomControlViewHolder;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iget-object p1, p1, Lcom/android/systemui/controls/ui/CustomControlViewHolder;->customControlActionCoordinator:Lcom/android/systemui/controls/ui/CustomControlActionCoordinator;

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/android/systemui/controls/ui/TouchBehavior$bind$1;->this$0:Lcom/android/systemui/controls/ui/TouchBehavior;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/android/systemui/controls/ui/TouchBehavior;->getCvh()Lcom/android/systemui/controls/ui/ControlViewHolder;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget-object v1, p0, Lcom/android/systemui/controls/ui/TouchBehavior$bind$1;->this$0:Lcom/android/systemui/controls/ui/TouchBehavior;

    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/android/systemui/controls/ui/TouchBehavior;->getTemplate()Landroid/service/controls/templates/ControlTemplate;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v1}, Landroid/service/controls/templates/ControlTemplate;->getTemplateId()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget-object v2, p0, Lcom/android/systemui/controls/ui/TouchBehavior$bind$1;->this$0:Lcom/android/systemui/controls/ui/TouchBehavior;

    .line 32
    .line 33
    invoke-virtual {v2}, Lcom/android/systemui/controls/ui/TouchBehavior;->getControl()Landroid/service/controls/Control;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    check-cast p1, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;

    .line 38
    .line 39
    invoke-virtual {p1, v0, v1, v2}, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;->touchMainAction(Lcom/android/systemui/controls/ui/ControlViewHolder;Ljava/lang/String;Landroid/service/controls/Control;)V

    .line 40
    .line 41
    .line 42
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/controls/ui/TouchBehavior$bind$1;->this$0:Lcom/android/systemui/controls/ui/TouchBehavior;

    .line 43
    .line 44
    invoke-virtual {p1}, Lcom/android/systemui/controls/ui/TouchBehavior;->getTemplate()Landroid/service/controls/templates/ControlTemplate;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    instance-of p1, p1, Landroid/service/controls/templates/StatelessTemplate;

    .line 49
    .line 50
    if-eqz p1, :cond_1

    .line 51
    .line 52
    iget-object p1, p0, Lcom/android/systemui/controls/ui/TouchBehavior$bind$1;->this$0:Lcom/android/systemui/controls/ui/TouchBehavior;

    .line 53
    .line 54
    const/4 v0, 0x1

    .line 55
    iput-boolean v0, p1, Lcom/android/systemui/controls/ui/TouchBehavior;->statelessTouch:Z

    .line 56
    .line 57
    invoke-virtual {p1}, Lcom/android/systemui/controls/ui/TouchBehavior;->getCvh()Lcom/android/systemui/controls/ui/ControlViewHolder;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    iget-object v1, p0, Lcom/android/systemui/controls/ui/TouchBehavior$bind$1;->this$0:Lcom/android/systemui/controls/ui/TouchBehavior;

    .line 62
    .line 63
    invoke-virtual {v1}, Lcom/android/systemui/controls/ui/TouchBehavior;->getEnabled()Z

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    iget-object v2, p0, Lcom/android/systemui/controls/ui/TouchBehavior$bind$1;->this$0:Lcom/android/systemui/controls/ui/TouchBehavior;

    .line 68
    .line 69
    iget v2, v2, Lcom/android/systemui/controls/ui/TouchBehavior;->lastColorOffset:I

    .line 70
    .line 71
    invoke-virtual {p1, v2, v1, v0}, Lcom/android/systemui/controls/ui/ControlViewHolder;->applyRenderInfo$frameworks__base__packages__SystemUI__android_common__SystemUI_core(IZZ)V

    .line 72
    .line 73
    .line 74
    iget-object p1, p0, Lcom/android/systemui/controls/ui/TouchBehavior$bind$1;->this$0:Lcom/android/systemui/controls/ui/TouchBehavior;

    .line 75
    .line 76
    invoke-virtual {p1}, Lcom/android/systemui/controls/ui/TouchBehavior;->getCvh()Lcom/android/systemui/controls/ui/ControlViewHolder;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    iget-object p1, p1, Lcom/android/systemui/controls/ui/ControlViewHolder;->uiExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 81
    .line 82
    new-instance v0, Lcom/android/systemui/controls/ui/TouchBehavior$bind$1$1;

    .line 83
    .line 84
    iget-object p0, p0, Lcom/android/systemui/controls/ui/TouchBehavior$bind$1;->this$0:Lcom/android/systemui/controls/ui/TouchBehavior;

    .line 85
    .line 86
    invoke-direct {v0, p0}, Lcom/android/systemui/controls/ui/TouchBehavior$bind$1$1;-><init>(Lcom/android/systemui/controls/ui/TouchBehavior;)V

    .line 87
    .line 88
    .line 89
    const-wide/16 v1, 0xbb8

    .line 90
    .line 91
    invoke-interface {p1, v1, v2, v0}, Lcom/android/systemui/util/concurrency/DelayableExecutor;->executeDelayed(JLjava/lang/Runnable;)Lcom/android/systemui/util/concurrency/ExecutorImpl$ExecutionToken;

    .line 92
    .line 93
    .line 94
    :cond_1
    return-void
.end method
