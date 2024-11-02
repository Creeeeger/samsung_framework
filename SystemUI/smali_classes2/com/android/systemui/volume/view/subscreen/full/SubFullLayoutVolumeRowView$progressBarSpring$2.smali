.class final Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView$progressBarSpring$2;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView$progressBarSpring$2;->this$0:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    .line 1
    new-instance v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 2
    .line 3
    new-instance v1, Landroidx/dynamicanimation/animation/FloatValueHolder;

    .line 4
    .line 5
    invoke-direct {v1}, Landroidx/dynamicanimation/animation/FloatValueHolder;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Landroidx/dynamicanimation/animation/FloatValueHolder;)V

    .line 9
    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView$progressBarSpring$2;->this$0:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;

    .line 12
    .line 13
    new-instance v1, Landroidx/dynamicanimation/animation/SpringForce;

    .line 14
    .line 15
    invoke-direct {v1}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    .line 16
    .line 17
    .line 18
    const/high16 v2, 0x3f800000    # 1.0f

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)V

    .line 21
    .line 22
    .line 23
    const/high16 v3, 0x43e10000    # 450.0f

    .line 24
    .line 25
    invoke-virtual {v1, v3}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)V

    .line 26
    .line 27
    .line 28
    iput-object v1, v0, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    .line 29
    .line 30
    const/4 v1, 0x0

    .line 31
    iput v1, v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mVelocity:F

    .line 32
    .line 33
    iget-object v1, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->seekBar:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeSeekBar;

    .line 34
    .line 35
    if-nez v1, :cond_0

    .line 36
    .line 37
    const/4 v1, 0x0

    .line 38
    :cond_0
    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    int-to-float v1, v1

    .line 43
    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartValue(F)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v2}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setMinimumVisibleChange(F)V

    .line 47
    .line 48
    .line 49
    new-instance v1, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView$progressBarSpring$2$1$2;

    .line 50
    .line 51
    invoke-direct {v1, p0}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView$progressBarSpring$2$1$2;-><init>(Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addUpdateListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)V

    .line 55
    .line 56
    .line 57
    return-object v0
.end method
