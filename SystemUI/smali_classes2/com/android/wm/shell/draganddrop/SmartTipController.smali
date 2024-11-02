.class public final Lcom/android/wm/shell/draganddrop/SmartTipController;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mDisplayBounds:Landroid/graphics/Rect;

.field public mGapWithContent:I

.field public final mHelpTip:Lcom/android/wm/shell/draganddrop/SmartTip;

.field public mInitialX:I

.field public mShown:Z

.field public mSurfaceHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 9

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
    iput-object v0, p0, Lcom/android/wm/shell/draganddrop/SmartTipController;->mDisplayBounds:Landroid/graphics/Rect;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/wm/shell/draganddrop/SmartTipController;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    new-instance v0, Lcom/android/wm/shell/draganddrop/SmartTip;

    .line 14
    .line 15
    const-string v3, "ctwHelpTip"

    .line 16
    .line 17
    const-string v4, "CtwSmartTipPopup"

    .line 18
    .line 19
    const-string v5, "helpTipCount"

    .line 20
    .line 21
    const v6, 0x7f1304d3

    .line 22
    .line 23
    .line 24
    const v7, 0x7f0b0043

    .line 25
    .line 26
    .line 27
    const v8, 0x7f0d00d9

    .line 28
    .line 29
    .line 30
    move-object v1, v0

    .line 31
    move-object v2, p1

    .line 32
    invoke-direct/range {v1 .. v8}, Lcom/android/wm/shell/draganddrop/SmartTip;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    .line 33
    .line 34
    .line 35
    iput-object v0, p0, Lcom/android/wm/shell/draganddrop/SmartTipController;->mHelpTip:Lcom/android/wm/shell/draganddrop/SmartTip;

    .line 36
    .line 37
    return-void
.end method


# virtual methods
.method public final dismissHelpTipIfPossible()V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/wm/shell/draganddrop/SmartTipController;->mShown:Z

    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/SmartTipController;->mHelpTip:Lcom/android/wm/shell/draganddrop/SmartTip;

    .line 5
    .line 6
    iget-boolean v1, p0, Lcom/android/wm/shell/draganddrop/SmartTip;->mShowRequested:Z

    .line 7
    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    goto :goto_1

    .line 11
    :cond_0
    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/SmartTip;->mTipPopup:Lcom/samsung/android/widget/SemTipPopup;

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    const/4 v3, 0x1

    .line 17
    invoke-virtual {v1, v3}, Lcom/samsung/android/widget/SemTipPopup;->dismiss(Z)V

    .line 18
    .line 19
    .line 20
    iput-object v2, p0, Lcom/android/wm/shell/draganddrop/SmartTip;->mTipPopup:Lcom/samsung/android/widget/SemTipPopup;

    .line 21
    .line 22
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    const-string v3, "SmartTip"

    .line 25
    .line 26
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-object v3, p0, Lcom/android/wm/shell/draganddrop/SmartTip;->mTitle:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    new-instance v3, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    const-string/jumbo v4, "removeView: mView="

    .line 41
    .line 42
    .line 43
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    iget-object v4, p0, Lcom/android/wm/shell/draganddrop/SmartTip;->mRootView:Landroid/view/View;

    .line 47
    .line 48
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/SmartTip;->mRootView:Landroid/view/View;

    .line 59
    .line 60
    if-nez v1, :cond_2

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_2
    iget-object v3, p0, Lcom/android/wm/shell/draganddrop/SmartTip;->mWindowManager:Landroid/view/WindowManager;

    .line 64
    .line 65
    invoke-interface {v3, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 66
    .line 67
    .line 68
    iput-object v2, p0, Lcom/android/wm/shell/draganddrop/SmartTip;->mRootView:Landroid/view/View;

    .line 69
    .line 70
    :goto_0
    iput-boolean v0, p0, Lcom/android/wm/shell/draganddrop/SmartTip;->mShowRequested:Z

    .line 71
    .line 72
    :goto_1
    return-void
.end method
