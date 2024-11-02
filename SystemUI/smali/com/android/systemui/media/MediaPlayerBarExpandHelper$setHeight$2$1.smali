.class public final Lcom/android/systemui/media/MediaPlayerBarExpandHelper$setHeight$2$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/media/MediaPlayerBarExpandHelper;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/MediaPlayerBarExpandHelper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/media/MediaPlayerBarExpandHelper$setHeight$2$1;->this$0:Lcom/android/systemui/media/MediaPlayerBarExpandHelper;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/media/MediaPlayerBarExpandHelper$setHeight$2$1;->this$0:Lcom/android/systemui/media/MediaPlayerBarExpandHelper;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Ljava/lang/Float;

    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    sget v0, Lcom/android/systemui/media/MediaPlayerBarExpandHelper;->$r8$clinit:I

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/media/MediaPlayerBarExpandHelper;->setPlayerBarExpansion(FZ)V

    .line 17
    .line 18
    .line 19
    return-void
.end method
