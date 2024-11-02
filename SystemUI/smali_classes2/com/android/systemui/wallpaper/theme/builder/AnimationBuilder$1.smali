.class public final Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;

.field public final synthetic val$view:Lcom/android/systemui/wallpaper/theme/view/FrameImageView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;Lcom/android/systemui/wallpaper/theme/view/FrameImageView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$1;->this$0:Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$1;->val$view:Lcom/android/systemui/wallpaper/theme/view/FrameImageView;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$1;->this$0:Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p1, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->isAnimationStarted:Z

    .line 5
    .line 6
    const-wide/16 v0, 0x0

    .line 7
    .line 8
    iput-wide v0, p1, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->startTime:J

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$1;->val$view:Lcom/android/systemui/wallpaper/theme/view/FrameImageView;

    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/systemui/wallpaper/theme/view/FrameImageView;->mQueue:Ljava/util/LinkedList;

    .line 13
    .line 14
    invoke-virtual {p0}, Ljava/util/LinkedList;->clear()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$1;->this$0:Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p1, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->isAnimationStarted:Z

    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$1;->val$view:Lcom/android/systemui/wallpaper/theme/view/FrameImageView;

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/systemui/wallpaper/theme/view/FrameImageView;->mQueue:Ljava/util/LinkedList;

    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/util/LinkedList;->clear()V

    .line 11
    .line 12
    .line 13
    return-void
.end method
