.class public final Lcom/android/systemui/navigationbar/NavigationBarController$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field public final synthetic val$display:Landroid/view/Display;

.field public final synthetic val$navBar:Lcom/android/systemui/navigationbar/NavigationBar;

.field public final synthetic val$result:Lcom/android/internal/statusbar/RegisterStatusBarResult;


# direct methods
.method public constructor <init>(Lcom/android/systemui/navigationbar/NavigationBarController;Lcom/android/internal/statusbar/RegisterStatusBarResult;Lcom/android/systemui/navigationbar/NavigationBar;Landroid/view/Display;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p2, p0, Lcom/android/systemui/navigationbar/NavigationBarController$1;->val$result:Lcom/android/internal/statusbar/RegisterStatusBarResult;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/android/systemui/navigationbar/NavigationBarController$1;->val$navBar:Lcom/android/systemui/navigationbar/NavigationBar;

    .line 4
    .line 5
    iput-object p4, p0, Lcom/android/systemui/navigationbar/NavigationBarController$1;->val$display:Landroid/view/Display;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 6

    .line 1
    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBarController$1;->val$result:Lcom/android/internal/statusbar/RegisterStatusBarResult;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarController$1;->val$navBar:Lcom/android/systemui/navigationbar/NavigationBar;

    .line 6
    .line 7
    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBarController$1;->val$display:Landroid/view/Display;

    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarController$1;->val$result:Lcom/android/internal/statusbar/RegisterStatusBarResult;

    .line 14
    .line 15
    iget-object v2, p0, Lcom/android/internal/statusbar/RegisterStatusBarResult;->mImeToken:Landroid/os/IBinder;

    .line 16
    .line 17
    iget v3, p0, Lcom/android/internal/statusbar/RegisterStatusBarResult;->mImeWindowVis:I

    .line 18
    .line 19
    iget v4, p0, Lcom/android/internal/statusbar/RegisterStatusBarResult;->mImeBackDisposition:I

    .line 20
    .line 21
    iget-boolean v5, p0, Lcom/android/internal/statusbar/RegisterStatusBarResult;->mShowImeSwitcher:Z

    .line 22
    .line 23
    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/navigationbar/NavigationBar;->setImeWindowStatus(ILandroid/os/IBinder;IIZ)V

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
