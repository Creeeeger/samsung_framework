.class Lcom/android/systemui/bixby2/controller/ScreenController$6;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/bixby2/controller/ScreenController;->setBrightness(Landroid/content/Context;I)Lcom/android/systemui/bixby2/CommandActionResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/bixby2/controller/ScreenController;

.field final synthetic val$brightnessSeekBar:Landroid/widget/SeekBar;

.field final synthetic val$brightnessValue:I


# direct methods
.method public constructor <init>(Lcom/android/systemui/bixby2/controller/ScreenController;Landroid/widget/SeekBar;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/systemui/bixby2/controller/ScreenController$6;->this$0:Lcom/android/systemui/bixby2/controller/ScreenController;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/systemui/bixby2/controller/ScreenController$6;->val$brightnessSeekBar:Landroid/widget/SeekBar;

    .line 4
    .line 5
    iput p3, p0, Lcom/android/systemui/bixby2/controller/ScreenController$6;->val$brightnessValue:I

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    sget-boolean v0, Lcom/android/systemui/BasicRune;->VOLUME_SUB_DISPLAY_FULL_LAYOUT_VOLUME_DIALOG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/systemui/bixby2/controller/ScreenController$6;->this$0:Lcom/android/systemui/bixby2/controller/ScreenController;

    .line 6
    .line 7
    invoke-static {v0}, Lcom/android/systemui/bixby2/controller/ScreenController;->-$$Nest$misFolderClosed(Lcom/android/systemui/bixby2/controller/ScreenController;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/systemui/bixby2/controller/ScreenController$6;->val$brightnessSeekBar:Landroid/widget/SeekBar;

    .line 14
    .line 15
    iget p0, p0, Lcom/android/systemui/bixby2/controller/ScreenController$6;->val$brightnessValue:I

    .line 16
    .line 17
    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 18
    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/bixby2/controller/ScreenController$6;->this$0:Lcom/android/systemui/bixby2/controller/ScreenController;

    .line 22
    .line 23
    invoke-static {v0}, Lcom/android/systemui/bixby2/controller/ScreenController;->-$$Nest$fgetmBrightnessMirrorController(Lcom/android/systemui/bixby2/controller/ScreenController;)Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iget p0, p0, Lcom/android/systemui/bixby2/controller/ScreenController$6;->val$brightnessValue:I

    .line 28
    .line 29
    const/4 v1, 0x0

    .line 30
    :goto_0
    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirrorListeners:Landroid/util/ArraySet;

    .line 31
    .line 32
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    if-ge v1, v3, :cond_1

    .line 37
    .line 38
    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    check-cast v2, Lcom/android/systemui/qs/bar/BrightnessBar$2;

    .line 43
    .line 44
    iget-object v2, v2, Lcom/android/systemui/qs/bar/BrightnessBar$2;->this$0:Lcom/android/systemui/qs/bar/BrightnessBar;

    .line 45
    .line 46
    iget-object v2, v2, Lcom/android/systemui/qs/bar/BrightnessBar;->mBrightnessSliderController:Lcom/android/systemui/settings/brightness/BrightnessSliderController;

    .line 47
    .line 48
    invoke-virtual {v2, p0}, Lcom/android/systemui/settings/brightness/BrightnessSliderController;->setValue(I)V

    .line 49
    .line 50
    .line 51
    add-int/lit8 v1, v1, 0x1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    :goto_1
    return-void
.end method
