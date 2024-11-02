.class public final Lcom/android/wm/shell/pip/tv/TvPipMenuController$2;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/pip/tv/TvPipMenuController;

.field public final synthetic val$zOrderRelativeToPip:I


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/pip/tv/TvPipMenuController;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController$2;->this$0:Lcom/android/wm/shell/pip/tv/TvPipMenuController;

    .line 2
    .line 3
    iput p2, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController$2;->val$zOrderRelativeToPip:I

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/android/wm/shell/pip/tv/TvPipMenuController$PipMenuSurfaceChangedCallback;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController$2;->this$0:Lcom/android/wm/shell/pip/tv/TvPipMenuController;

    .line 8
    .line 9
    iget p0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController$2;->val$zOrderRelativeToPip:I

    .line 10
    .line 11
    invoke-direct {v1, v2, p1, p0}, Lcom/android/wm/shell/pip/tv/TvPipMenuController$PipMenuSurfaceChangedCallback;-><init>(Lcom/android/wm/shell/pip/tv/TvPipMenuController;Landroid/view/View;I)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl;->addSurfaceChangedCallback(Landroid/view/ViewRootImpl$SurfaceChangedCallback;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    .line 1
    return-void
.end method
