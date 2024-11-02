.class public final Lcom/android/systemui/keyguard/animator/FullScreenViewController$setFullScreenMode$1$1;
.super Lcom/android/systemui/keyguard/animator/FullScreenViewController$CustomAnimatorListenerAdapter;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic $enabled:Z

.field public final synthetic this$0:Lcom/android/systemui/keyguard/animator/FullScreenViewController;


# direct methods
.method public constructor <init>(ZLcom/android/systemui/keyguard/animator/FullScreenViewController;)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/systemui/keyguard/animator/FullScreenViewController$setFullScreenMode$1$1;->$enabled:Z

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/systemui/keyguard/animator/FullScreenViewController$setFullScreenMode$1$1;->this$0:Lcom/android/systemui/keyguard/animator/FullScreenViewController;

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/android/systemui/keyguard/animator/FullScreenViewController$CustomAnimatorListenerAdapter;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    iget-boolean p1, p0, Lcom/android/systemui/keyguard/animator/FullScreenViewController$setFullScreenMode$1$1;->$enabled:Z

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget-boolean p1, p0, Lcom/android/systemui/keyguard/animator/FullScreenViewController$CustomAnimatorListenerAdapter;->isCancelled:Z

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/systemui/keyguard/animator/FullScreenViewController$setFullScreenMode$1$1;->this$0:Lcom/android/systemui/keyguard/animator/FullScreenViewController;

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    iput-boolean p1, p0, Lcom/android/systemui/keyguard/animator/FullScreenViewController;->isFullScreenModeShown:Z

    .line 13
    .line 14
    :cond_0
    return-void
.end method
