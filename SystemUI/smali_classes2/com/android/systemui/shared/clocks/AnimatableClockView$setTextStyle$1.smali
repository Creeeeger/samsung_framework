.class public final Lcom/android/systemui/shared/clocks/AnimatableClockView$setTextStyle$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $color:Ljava/lang/Integer;

.field public final synthetic $delay:J

.field public final synthetic $duration:J

.field public final synthetic $interpolator:Landroid/animation/TimeInterpolator;

.field public final synthetic $onAnimationEnd:Ljava/lang/Runnable;

.field public final synthetic $textSize:F

.field public final synthetic $weight:I

.field public final synthetic this$0:Lcom/android/systemui/shared/clocks/AnimatableClockView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shared/clocks/AnimatableClockView;IFLjava/lang/Integer;JLandroid/animation/TimeInterpolator;JLjava/lang/Runnable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/shared/clocks/AnimatableClockView$setTextStyle$1;->this$0:Lcom/android/systemui/shared/clocks/AnimatableClockView;

    .line 2
    .line 3
    iput p2, p0, Lcom/android/systemui/shared/clocks/AnimatableClockView$setTextStyle$1;->$weight:I

    .line 4
    .line 5
    iput p3, p0, Lcom/android/systemui/shared/clocks/AnimatableClockView$setTextStyle$1;->$textSize:F

    .line 6
    .line 7
    iput-object p4, p0, Lcom/android/systemui/shared/clocks/AnimatableClockView$setTextStyle$1;->$color:Ljava/lang/Integer;

    .line 8
    .line 9
    iput-wide p5, p0, Lcom/android/systemui/shared/clocks/AnimatableClockView$setTextStyle$1;->$duration:J

    .line 10
    .line 11
    iput-object p7, p0, Lcom/android/systemui/shared/clocks/AnimatableClockView$setTextStyle$1;->$interpolator:Landroid/animation/TimeInterpolator;

    .line 12
    .line 13
    iput-wide p8, p0, Lcom/android/systemui/shared/clocks/AnimatableClockView$setTextStyle$1;->$delay:J

    .line 14
    .line 15
    iput-object p10, p0, Lcom/android/systemui/shared/clocks/AnimatableClockView$setTextStyle$1;->$onAnimationEnd:Ljava/lang/Runnable;

    .line 16
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/android/systemui/shared/clocks/AnimatableClockView$setTextStyle$1;->this$0:Lcom/android/systemui/shared/clocks/AnimatableClockView;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/systemui/shared/clocks/AnimatableClockView;->textAnimator:Lcom/android/systemui/animation/TextAnimator;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    iget v2, p0, Lcom/android/systemui/shared/clocks/AnimatableClockView$setTextStyle$1;->$weight:I

    .line 8
    .line 9
    iget v3, p0, Lcom/android/systemui/shared/clocks/AnimatableClockView$setTextStyle$1;->$textSize:F

    .line 10
    .line 11
    iget-object v4, p0, Lcom/android/systemui/shared/clocks/AnimatableClockView$setTextStyle$1;->$color:Ljava/lang/Integer;

    .line 12
    .line 13
    const/4 v5, 0x0

    .line 14
    iget-wide v6, p0, Lcom/android/systemui/shared/clocks/AnimatableClockView$setTextStyle$1;->$duration:J

    .line 15
    .line 16
    iget-object v8, p0, Lcom/android/systemui/shared/clocks/AnimatableClockView$setTextStyle$1;->$interpolator:Landroid/animation/TimeInterpolator;

    .line 17
    .line 18
    iget-wide v9, p0, Lcom/android/systemui/shared/clocks/AnimatableClockView$setTextStyle$1;->$delay:J

    .line 19
    .line 20
    iget-object v11, p0, Lcom/android/systemui/shared/clocks/AnimatableClockView$setTextStyle$1;->$onAnimationEnd:Ljava/lang/Runnable;

    .line 21
    .line 22
    invoke-static/range {v1 .. v11}, Lcom/android/systemui/animation/TextAnimator;->setTextStyle$default(Lcom/android/systemui/animation/TextAnimator;IFLjava/lang/Integer;ZJLandroid/animation/TimeInterpolator;JLjava/lang/Runnable;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/shared/clocks/AnimatableClockView$setTextStyle$1;->this$0:Lcom/android/systemui/shared/clocks/AnimatableClockView;

    .line 26
    .line 27
    iget-object v1, v0, Lcom/android/systemui/shared/clocks/AnimatableClockView;->textAnimator:Lcom/android/systemui/animation/TextAnimator;

    .line 28
    .line 29
    if-nez v1, :cond_1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    iget-object v2, v0, Lcom/android/systemui/shared/clocks/AnimatableClockView;->glyphFilter:Lkotlin/jvm/functions/Function2;

    .line 33
    .line 34
    iget-object v1, v1, Lcom/android/systemui/animation/TextAnimator;->textInterpolator:Lcom/android/systemui/animation/TextInterpolator;

    .line 35
    .line 36
    iput-object v2, v1, Lcom/android/systemui/animation/TextInterpolator;->glyphFilter:Lkotlin/jvm/functions/Function2;

    .line 37
    .line 38
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/shared/clocks/AnimatableClockView$setTextStyle$1;->$color:Ljava/lang/Integer;

    .line 39
    .line 40
    if-eqz p0, :cond_2

    .line 41
    .line 42
    iget-boolean v1, v0, Lcom/android/systemui/shared/clocks/AnimatableClockView;->isAnimationEnabled:Z

    .line 43
    .line 44
    if-nez v1, :cond_2

    .line 45
    .line 46
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 47
    .line 48
    .line 49
    move-result p0

    .line 50
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 51
    .line 52
    .line 53
    :cond_2
    return-void
.end method
