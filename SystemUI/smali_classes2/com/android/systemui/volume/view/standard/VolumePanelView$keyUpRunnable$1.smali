.class public final Lcom/android/systemui/volume/view/standard/VolumePanelView$keyUpRunnable$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/volume/view/standard/VolumePanelView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/volume/view/standard/VolumePanelView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/volume/view/standard/VolumePanelView$keyUpRunnable$1;->this$0:Lcom/android/systemui/volume/view/standard/VolumePanelView;

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
    iget-object p0, p0, Lcom/android/systemui/volume/view/standard/VolumePanelView$keyUpRunnable$1;->this$0:Lcom/android/systemui/volume/view/standard/VolumePanelView;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->isKeyDownAnimating:Z

    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->volumePanelMotion:Lcom/android/systemui/volume/view/VolumePanelMotion;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    move-object v0, v1

    .line 12
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->keyUpAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 13
    .line 14
    if-nez v2, :cond_1

    .line 15
    .line 16
    move-object v2, v1

    .line 17
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->keyDownAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 18
    .line 19
    if-nez p0, :cond_2

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_2
    move-object v1, p0

    .line 23
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    invoke-static {v2, v1}, Lcom/android/systemui/volume/view/VolumePanelMotion;->startSeekBarKeyUpAnimation(Landroidx/dynamicanimation/animation/SpringAnimation;Landroidx/dynamicanimation/animation/SpringAnimation;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method
