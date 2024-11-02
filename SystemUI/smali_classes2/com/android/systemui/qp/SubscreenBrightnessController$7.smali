.class public final Lcom/android/systemui/qp/SubscreenBrightnessController$7;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qp/SubscreenBrightnessController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qp/SubscreenBrightnessController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qp/SubscreenBrightnessController$7;->this$0:Lcom/android/systemui/qp/SubscreenBrightnessController;

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
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qp/SubscreenBrightnessController$7;->this$0:Lcom/android/systemui/qp/SubscreenBrightnessController;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/android/systemui/qp/SubscreenBrightnessController;->mListening:Z

    .line 4
    .line 5
    if-nez v1, :cond_1

    .line 6
    .line 7
    sget-boolean v1, Lcom/android/systemui/QpRune;->QUICK_PANEL_SUBSCREEN:Z

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v1, 0x1

    .line 13
    iput-boolean v1, v0, Lcom/android/systemui/qp/SubscreenBrightnessController;->mListening:Z

    .line 14
    .line 15
    const-class v1, Lcom/android/systemui/qp/util/SubscreenUtil;

    .line 16
    .line 17
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lcom/android/systemui/qp/util/SubscreenUtil;

    .line 22
    .line 23
    iget-object v2, p0, Lcom/android/systemui/qp/SubscreenBrightnessController$7;->this$0:Lcom/android/systemui/qp/SubscreenBrightnessController;

    .line 24
    .line 25
    iget-object v2, v2, Lcom/android/systemui/qp/SubscreenBrightnessController;->mContext:Landroid/content/Context;

    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    invoke-static {v2}, Lcom/android/systemui/qp/util/SubscreenUtil;->getSubDisplay(Landroid/content/Context;)Landroid/view/Display;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    iput-object v1, v0, Lcom/android/systemui/qp/SubscreenBrightnessController;->mDisplay:Landroid/view/Display;

    .line 35
    .line 36
    iget-object v0, p0, Lcom/android/systemui/qp/SubscreenBrightnessController$7;->this$0:Lcom/android/systemui/qp/SubscreenBrightnessController;

    .line 37
    .line 38
    iget-object v1, v0, Lcom/android/systemui/qp/SubscreenBrightnessController;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 39
    .line 40
    iget-object v2, v0, Lcom/android/systemui/qp/SubscreenBrightnessController;->mHandler:Lcom/android/systemui/qp/SubscreenBrightnessController$3;

    .line 41
    .line 42
    const-wide/16 v3, 0x8

    .line 43
    .line 44
    iget-object v0, v0, Lcom/android/systemui/qp/SubscreenBrightnessController;->mDisplayListener:Lcom/android/systemui/qp/SubscreenBrightnessController$1;

    .line 45
    .line 46
    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;J)V

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lcom/android/systemui/qp/SubscreenBrightnessController$7;->this$0:Lcom/android/systemui/qp/SubscreenBrightnessController;

    .line 50
    .line 51
    iget-object v1, v0, Lcom/android/systemui/qp/SubscreenBrightnessController;->mView:Lcom/android/systemui/qp/SubroomBrightnessSettingsView;

    .line 52
    .line 53
    iget-object v1, v1, Lcom/android/systemui/qp/SubroomBrightnessSettingsView;->mSeekBar:Lcom/android/systemui/qp/SubScreenBrightnessToggleSeekBar;

    .line 54
    .line 55
    iget-object v0, v0, Lcom/android/systemui/qp/SubscreenBrightnessController;->mSeekListener:Lcom/android/systemui/qp/SubscreenBrightnessController$4;

    .line 56
    .line 57
    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 58
    .line 59
    .line 60
    iget-object p0, p0, Lcom/android/systemui/qp/SubscreenBrightnessController$7;->this$0:Lcom/android/systemui/qp/SubscreenBrightnessController;

    .line 61
    .line 62
    iget-object p0, p0, Lcom/android/systemui/qp/SubscreenBrightnessController;->mBrightnessObserver:Lcom/android/systemui/qp/SubscreenBrightnessController$BrightnessObserver;

    .line 63
    .line 64
    iget-object v0, p0, Lcom/android/systemui/qp/SubscreenBrightnessController$BrightnessObserver;->mCr:Landroid/content/ContentResolver;

    .line 65
    .line 66
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 67
    .line 68
    .line 69
    iget-object v0, p0, Lcom/android/systemui/qp/SubscreenBrightnessController$BrightnessObserver;->mCr:Landroid/content/ContentResolver;

    .line 70
    .line 71
    sget-object v1, Lcom/android/systemui/qp/SubscreenBrightnessController;->HIGH_BRIGHTNESS_MODE_ENTER_URI:Landroid/net/Uri;

    .line 72
    .line 73
    const/4 v2, 0x0

    .line 74
    const/4 v3, -0x1

    .line 75
    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 76
    .line 77
    .line 78
    :cond_1
    :goto_0
    return-void
.end method
