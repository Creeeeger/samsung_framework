.class public final Lcom/android/systemui/qp/SubscreenBrightnessController$8;
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
    iput-object p1, p0, Lcom/android/systemui/qp/SubscreenBrightnessController$8;->this$0:Lcom/android/systemui/qp/SubscreenBrightnessController;

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
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qp/SubscreenBrightnessController$8;->this$0:Lcom/android/systemui/qp/SubscreenBrightnessController;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/android/systemui/qp/SubscreenBrightnessController;->mListening:Z

    .line 4
    .line 5
    if-eqz v1, :cond_1

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
    const/4 v1, 0x0

    .line 13
    iput-boolean v1, v0, Lcom/android/systemui/qp/SubscreenBrightnessController;->mListening:Z

    .line 14
    .line 15
    iget-object v1, v0, Lcom/android/systemui/qp/SubscreenBrightnessController;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 16
    .line 17
    iget-object v0, v0, Lcom/android/systemui/qp/SubscreenBrightnessController;->mDisplayListener:Lcom/android/systemui/qp/SubscreenBrightnessController$1;

    .line 18
    .line 19
    invoke-virtual {v1, v0}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/android/systemui/qp/SubscreenBrightnessController$8;->this$0:Lcom/android/systemui/qp/SubscreenBrightnessController;

    .line 23
    .line 24
    iget-object v0, v0, Lcom/android/systemui/qp/SubscreenBrightnessController;->mView:Lcom/android/systemui/qp/SubroomBrightnessSettingsView;

    .line 25
    .line 26
    iget-object v0, v0, Lcom/android/systemui/qp/SubroomBrightnessSettingsView;->mSeekBar:Lcom/android/systemui/qp/SubScreenBrightnessToggleSeekBar;

    .line 27
    .line 28
    const/4 v1, 0x0

    .line 29
    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 30
    .line 31
    .line 32
    iget-object p0, p0, Lcom/android/systemui/qp/SubscreenBrightnessController$8;->this$0:Lcom/android/systemui/qp/SubscreenBrightnessController;

    .line 33
    .line 34
    iget-object p0, p0, Lcom/android/systemui/qp/SubscreenBrightnessController;->mBrightnessObserver:Lcom/android/systemui/qp/SubscreenBrightnessController$BrightnessObserver;

    .line 35
    .line 36
    iget-object v0, p0, Lcom/android/systemui/qp/SubscreenBrightnessController$BrightnessObserver;->mCr:Landroid/content/ContentResolver;

    .line 37
    .line 38
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 39
    .line 40
    .line 41
    :cond_1
    :goto_0
    return-void
.end method
