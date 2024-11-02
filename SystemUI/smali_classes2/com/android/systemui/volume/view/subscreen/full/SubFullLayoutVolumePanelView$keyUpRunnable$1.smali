.class public final Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView$keyUpRunnable$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView$keyUpRunnable$1;->this$0:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;

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
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView$keyUpRunnable$1;->this$0:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->isKeyDownAnimating:Z

    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->volumePanelMotion:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    move-object v1, v2

    .line 12
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->keyUpAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 13
    .line 14
    if-nez v3, :cond_1

    .line 15
    .line 16
    move-object v3, v2

    .line 17
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->keyDownAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 18
    .line 19
    if-nez p0, :cond_2

    .line 20
    .line 21
    move-object p0, v2

    .line 22
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    if-eqz p0, :cond_5

    .line 26
    .line 27
    iget-boolean v1, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mRunning:Z

    .line 28
    .line 29
    if-eqz v1, :cond_3

    .line 30
    .line 31
    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->canSkipToEnd()Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_3

    .line 36
    .line 37
    const/4 v0, 0x1

    .line 38
    :cond_3
    if-eqz v0, :cond_4

    .line 39
    .line 40
    move-object v2, p0

    .line 41
    :cond_4
    if-eqz v2, :cond_5

    .line 42
    .line 43
    invoke-virtual {v2}, Landroidx/dynamicanimation/animation/SpringAnimation;->skipToEnd()V

    .line 44
    .line 45
    .line 46
    :cond_5
    const/high16 p0, 0x3f800000    # 1.0f

    .line 47
    .line 48
    invoke-virtual {v3, p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    .line 49
    .line 50
    .line 51
    return-void
.end method
