.class public final Lcom/android/wm/shell/fullscreen/AffordanceAnimController$AnimTarget;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# static fields
.field public static final X:Lcom/android/wm/shell/fullscreen/AffordanceAnimController$AnimTarget$1;

.field public static final Y:Lcom/android/wm/shell/fullscreen/AffordanceAnimController$AnimTarget$2;


# instance fields
.field public final mLeash:Landroid/view/SurfaceControl;

.field public final mTransaction:Landroid/view/SurfaceControl$Transaction;

.field public x:F

.field public y:F


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/wm/shell/fullscreen/AffordanceAnimController$AnimTarget$1;

    .line 2
    .line 3
    const-string/jumbo v1, "x"

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Lcom/android/wm/shell/fullscreen/AffordanceAnimController$AnimTarget$1;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/android/wm/shell/fullscreen/AffordanceAnimController$AnimTarget;->X:Lcom/android/wm/shell/fullscreen/AffordanceAnimController$AnimTarget$1;

    .line 10
    .line 11
    new-instance v0, Lcom/android/wm/shell/fullscreen/AffordanceAnimController$AnimTarget$2;

    .line 12
    .line 13
    const-string/jumbo v1, "y"

    .line 14
    .line 15
    .line 16
    invoke-direct {v0, v1}, Lcom/android/wm/shell/fullscreen/AffordanceAnimController$AnimTarget$2;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lcom/android/wm/shell/fullscreen/AffordanceAnimController$AnimTarget;->Y:Lcom/android/wm/shell/fullscreen/AffordanceAnimController$AnimTarget$2;

    .line 20
    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/view/SurfaceControl;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/wm/shell/fullscreen/AffordanceAnimController$AnimTarget;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/wm/shell/fullscreen/AffordanceAnimController$AnimTarget;->mLeash:Landroid/view/SurfaceControl;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "("

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Lcom/android/wm/shell/fullscreen/AffordanceAnimController$AnimTarget;->x:F

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", "

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget v1, p0, Lcom/android/wm/shell/fullscreen/AffordanceAnimController$AnimTarget;->y:F

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ") playTime="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    .line 29
    .line 30
    .line 31
    move-result-wide v1

    .line 32
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    const-string v0, "AffordanceAnimController"

    .line 40
    .line 41
    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    iget-object p1, p0, Lcom/android/wm/shell/fullscreen/AffordanceAnimController$AnimTarget;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 45
    .line 46
    iget-object v0, p0, Lcom/android/wm/shell/fullscreen/AffordanceAnimController$AnimTarget;->mLeash:Landroid/view/SurfaceControl;

    .line 47
    .line 48
    iget v1, p0, Lcom/android/wm/shell/fullscreen/AffordanceAnimController$AnimTarget;->x:F

    .line 49
    .line 50
    iget v2, p0, Lcom/android/wm/shell/fullscreen/AffordanceAnimController$AnimTarget;->y:F

    .line 51
    .line 52
    invoke-virtual {p1, v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 53
    .line 54
    .line 55
    iget-object p0, p0, Lcom/android/wm/shell/fullscreen/AffordanceAnimController$AnimTarget;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 56
    .line 57
    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 58
    .line 59
    .line 60
    return-void
.end method
