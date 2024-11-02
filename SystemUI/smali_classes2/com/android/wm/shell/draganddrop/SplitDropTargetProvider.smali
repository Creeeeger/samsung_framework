.class public abstract Lcom/android/wm/shell/draganddrop/SplitDropTargetProvider;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mPolicy:Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;

.field public final mSplitScreen:Lcom/android/wm/shell/splitscreen/SplitScreenController;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/wm/shell/draganddrop/SplitDropTargetProvider;->mPolicy:Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;

    .line 5
    .line 6
    iget-object p1, p1, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mSplitScreen:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 7
    .line 8
    iput-object p1, p0, Lcom/android/wm/shell/draganddrop/SplitDropTargetProvider;->mSplitScreen:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 9
    .line 10
    iput-object p2, p0, Lcom/android/wm/shell/draganddrop/SplitDropTargetProvider;->mContext:Landroid/content/Context;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public abstract addSplitTargets(Landroid/graphics/Rect;ZZFLjava/util/ArrayList;)V
.end method
