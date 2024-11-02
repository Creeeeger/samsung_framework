.class public final Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration$8;
.super Landroid/animation/AnimatorListenerAdapter;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration$8;->this$0:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration$8;->this$0:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mHandleMenu:Lcom/android/wm/shell/windowdecor/WindowDecoration$AdditionalWindow;

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/android/wm/shell/windowdecor/WindowDecoration$AdditionalWindow;->releaseView()V

    .line 8
    .line 9
    .line 10
    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration$8;->this$0:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;

    .line 11
    .line 12
    const/4 p1, 0x0

    .line 13
    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mHandleMenu:Lcom/android/wm/shell/windowdecor/WindowDecoration$AdditionalWindow;

    .line 14
    .line 15
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration$8;->this$0:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mIsHandleMenuShowing:Z

    .line 5
    .line 6
    return-void
.end method
