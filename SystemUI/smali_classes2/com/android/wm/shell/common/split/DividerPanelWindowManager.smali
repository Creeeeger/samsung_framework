.class public final Lcom/android/wm/shell/common/split/DividerPanelWindowManager;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public mDividerView:Lcom/android/wm/shell/common/split/DividerView;

.field public mLp:Landroid/view/WindowManager$LayoutParams;

.field public mView:Landroid/view/View;

.field public final mWm:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string/jumbo v0, "window"

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Landroid/view/WindowManager;

    .line 12
    .line 13
    iput-object p1, p0, Lcom/android/wm/shell/common/split/DividerPanelWindowManager;->mWm:Landroid/view/WindowManager;

    .line 14
    .line 15
    return-void
.end method
