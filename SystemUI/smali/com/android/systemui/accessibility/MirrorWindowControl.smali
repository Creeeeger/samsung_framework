.class public abstract Lcom/android/systemui/accessibility/MirrorWindowControl;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final DBG:Z


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mControlPosition:Landroid/graphics/Point;

.field public mControlsView:Landroid/view/View;

.field public final mDraggableBound:Landroid/graphics/Rect;

.field public final mTmpPoint:Landroid/graphics/Point;

.field public final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "MirrorWindowControl"

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    or-int/lit8 v0, v0, 0x0

    .line 9
    .line 10
    sput-boolean v0, Lcom/android/systemui/accessibility/MirrorWindowControl;->DBG:Z

    .line 11
    .line 12
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/graphics/Rect;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/systemui/accessibility/MirrorWindowControl;->mDraggableBound:Landroid/graphics/Rect;

    .line 10
    .line 11
    new-instance v0, Landroid/graphics/Point;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/systemui/accessibility/MirrorWindowControl;->mTmpPoint:Landroid/graphics/Point;

    .line 17
    .line 18
    new-instance v0, Landroid/graphics/Point;

    .line 19
    .line 20
    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/android/systemui/accessibility/MirrorWindowControl;->mControlPosition:Landroid/graphics/Point;

    .line 24
    .line 25
    iput-object p1, p0, Lcom/android/systemui/accessibility/MirrorWindowControl;->mContext:Landroid/content/Context;

    .line 26
    .line 27
    const-string/jumbo v0, "window"

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    check-cast p1, Landroid/view/WindowManager;

    .line 35
    .line 36
    iput-object p1, p0, Lcom/android/systemui/accessibility/MirrorWindowControl;->mWindowManager:Landroid/view/WindowManager;

    .line 37
    .line 38
    return-void
.end method


# virtual methods
.method public abstract getWindowTitle()Ljava/lang/String;
.end method

.method public abstract onCreateView()Landroid/view/View;
.end method
