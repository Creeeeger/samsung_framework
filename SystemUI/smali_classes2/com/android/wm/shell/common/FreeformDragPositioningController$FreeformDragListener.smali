.class public final Lcom/android/wm/shell/common/FreeformDragPositioningController$FreeformDragListener;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mDismissButtonManager:Lcom/android/wm/shell/common/DismissButtonManager;

.field public final mTmpPoint:Landroid/graphics/PointF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/graphics/PointF;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/wm/shell/common/FreeformDragPositioningController$FreeformDragListener;->mTmpPoint:Landroid/graphics/PointF;

    .line 10
    .line 11
    new-instance v0, Lcom/android/wm/shell/common/DismissButtonManager;

    .line 12
    .line 13
    const/4 v1, 0x3

    .line 14
    invoke-direct {v0, p1, v1}, Lcom/android/wm/shell/common/DismissButtonManager;-><init>(Landroid/content/Context;I)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/android/wm/shell/common/FreeformDragPositioningController$FreeformDragListener;->mDismissButtonManager:Lcom/android/wm/shell/common/DismissButtonManager;

    .line 18
    .line 19
    const-string p0, "dismiss-button-freeform"

    .line 20
    .line 21
    iput-object p0, v0, Lcom/android/wm/shell/common/DismissButtonManager;->mTitle:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/android/wm/shell/common/DismissButtonManager;->createDismissButtonView()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/android/wm/shell/common/DismissButtonManager;->createOrUpdateWrapper()V

    .line 27
    .line 28
    .line 29
    return-void
.end method
