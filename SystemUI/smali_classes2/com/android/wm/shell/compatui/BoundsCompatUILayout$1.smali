.class public final Lcom/android/wm/shell/compatui/BoundsCompatUILayout$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/compatui/BoundsCompatUILayout;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/compatui/BoundsCompatUILayout;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/compatui/BoundsCompatUILayout$1;->this$0:Lcom/android/wm/shell/compatui/BoundsCompatUILayout;

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
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/compatui/BoundsCompatUILayout$1;->this$0:Lcom/android/wm/shell/compatui/BoundsCompatUILayout;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/wm/shell/compatui/BoundsCompatUILayout;->requestDismiss()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/wm/shell/compatui/BoundsCompatUILayout$1;->this$0:Lcom/android/wm/shell/compatui/BoundsCompatUILayout;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getRootView()Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget-object p0, p0, Lcom/android/wm/shell/compatui/BoundsCompatUILayout$1;->this$0:Lcom/android/wm/shell/compatui/BoundsCompatUILayout;

    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/wm/shell/compatui/BoundsCompatUILayout;->mFrameCommitCallback:Lcom/android/wm/shell/compatui/BoundsCompatUILayout$1;

    .line 19
    .line 20
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->unregisterFrameCommitCallback(Ljava/lang/Runnable;)Z

    .line 21
    .line 22
    .line 23
    return-void
.end method
