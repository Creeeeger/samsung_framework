.class public final Lcom/android/systemui/controls/ui/TouchBehavior$bind$1$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/controls/ui/TouchBehavior;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/ui/TouchBehavior;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/controls/ui/TouchBehavior$bind$1$1;->this$0:Lcom/android/systemui/controls/ui/TouchBehavior;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/controls/ui/TouchBehavior$bind$1$1;->this$0:Lcom/android/systemui/controls/ui/TouchBehavior;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iput-boolean v1, v0, Lcom/android/systemui/controls/ui/TouchBehavior;->statelessTouch:Z

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/android/systemui/controls/ui/TouchBehavior;->getCvh()Lcom/android/systemui/controls/ui/ControlViewHolder;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-object v1, p0, Lcom/android/systemui/controls/ui/TouchBehavior$bind$1$1;->this$0:Lcom/android/systemui/controls/ui/TouchBehavior;

    .line 11
    .line 12
    invoke-virtual {v1}, Lcom/android/systemui/controls/ui/TouchBehavior;->getEnabled()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    iget-object p0, p0, Lcom/android/systemui/controls/ui/TouchBehavior$bind$1$1;->this$0:Lcom/android/systemui/controls/ui/TouchBehavior;

    .line 17
    .line 18
    iget p0, p0, Lcom/android/systemui/controls/ui/TouchBehavior;->lastColorOffset:I

    .line 19
    .line 20
    sget-object v2, Lcom/android/systemui/controls/ui/ControlViewHolder;->FORCE_PANEL_DEVICES:Ljava/util/Set;

    .line 21
    .line 22
    const/4 v2, 0x1

    .line 23
    invoke-virtual {v0, p0, v1, v2}, Lcom/android/systemui/controls/ui/ControlViewHolder;->applyRenderInfo$frameworks__base__packages__SystemUI__android_common__SystemUI_core(IZZ)V

    .line 24
    .line 25
    .line 26
    return-void
.end method
