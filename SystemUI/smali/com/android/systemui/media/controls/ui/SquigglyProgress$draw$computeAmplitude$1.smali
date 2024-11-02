.class final Lcom/android/systemui/media/controls/ui/SquigglyProgress$draw$computeAmplitude$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2;"
    }
.end annotation


# instance fields
.field final synthetic $waveProgressPx:F

.field final synthetic this$0:Lcom/android/systemui/media/controls/ui/SquigglyProgress;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/controls/ui/SquigglyProgress;F)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/media/controls/ui/SquigglyProgress$draw$computeAmplitude$1;->this$0:Lcom/android/systemui/media/controls/ui/SquigglyProgress;

    .line 2
    .line 3
    iput p2, p0, Lcom/android/systemui/media/controls/ui/SquigglyProgress$draw$computeAmplitude$1;->$waveProgressPx:F

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    check-cast p1, Ljava/lang/Number;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    check-cast p2, Ljava/lang/Number;

    .line 8
    .line 9
    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    .line 10
    .line 11
    .line 12
    move-result p2

    .line 13
    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/SquigglyProgress$draw$computeAmplitude$1;->this$0:Lcom/android/systemui/media/controls/ui/SquigglyProgress;

    .line 14
    .line 15
    iget-boolean v1, v0, Lcom/android/systemui/media/controls/ui/SquigglyProgress;->transitionEnabled:Z

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    iget v0, v0, Lcom/android/systemui/media/controls/ui/SquigglyProgress;->transitionPeriods:F

    .line 21
    .line 22
    mul-float/2addr v0, v2

    .line 23
    iget v1, p0, Lcom/android/systemui/media/controls/ui/SquigglyProgress$draw$computeAmplitude$1;->$waveProgressPx:F

    .line 24
    .line 25
    const/high16 v3, 0x40000000    # 2.0f

    .line 26
    .line 27
    div-float/2addr v0, v3

    .line 28
    add-float v3, v1, v0

    .line 29
    .line 30
    sub-float/2addr v1, v0

    .line 31
    invoke-static {v3, v1, p1}, Landroid/util/MathUtils;->lerpInvSat(FFF)F

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/SquigglyProgress$draw$computeAmplitude$1;->this$0:Lcom/android/systemui/media/controls/ui/SquigglyProgress;

    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    mul-float/2addr p2, v2

    .line 41
    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/SquigglyProgress$draw$computeAmplitude$1;->this$0:Lcom/android/systemui/media/controls/ui/SquigglyProgress;

    .line 42
    .line 43
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    mul-float/2addr p2, v2

    .line 47
    mul-float/2addr p2, p1

    .line 48
    goto :goto_0

    .line 49
    :cond_0
    mul-float/2addr p2, v2

    .line 50
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    mul-float/2addr p2, v2

    .line 54
    :goto_0
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    return-object p0
.end method
