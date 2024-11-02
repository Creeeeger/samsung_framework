.class public final Lcom/android/systemui/screenshot/ScreenshotController$13$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$1:Lcom/android/systemui/screenshot/ScreenshotController$13;

.field public final synthetic val$rect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Lcom/android/systemui/screenshot/ScreenshotController$13;Landroid/graphics/Rect;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotController$13$1;->this$1:Lcom/android/systemui/screenshot/ScreenshotController$13;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/systemui/screenshot/ScreenshotController$13$1;->val$rect:Landroid/graphics/Rect;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotController$13$1;->this$1:Lcom/android/systemui/screenshot/ScreenshotController$13;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/systemui/screenshot/ScreenshotController$13;->val$bundle:Landroid/os/Bundle;

    .line 4
    .line 5
    const-string/jumbo v1, "rect"

    .line 6
    .line 7
    .line 8
    iget-object v2, p0, Lcom/android/systemui/screenshot/ScreenshotController$13$1;->val$rect:Landroid/graphics/Rect;

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 11
    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotController$13$1;->this$1:Lcom/android/systemui/screenshot/ScreenshotController$13;

    .line 14
    .line 15
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotController$13;->this$0:Lcom/android/systemui/screenshot/ScreenshotController;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/android/systemui/screenshot/ScreenshotController$13;->val$screenshotData:Lcom/android/systemui/screenshot/ScreenshotData;

    .line 18
    .line 19
    iget-object v2, p0, Lcom/android/systemui/screenshot/ScreenshotController$13;->val$finisher:Ljava/util/function/Consumer;

    .line 20
    .line 21
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotController$13;->val$requestCallback:Lcom/android/systemui/screenshot/TakeScreenshotService$RequestCallback;

    .line 22
    .line 23
    invoke-virtual {v0, v1, p0, v2}, Lcom/android/systemui/screenshot/ScreenshotController;->handleScreenshot(Lcom/android/systemui/screenshot/ScreenshotData;Lcom/android/systemui/screenshot/TakeScreenshotService$RequestCallback;Ljava/util/function/Consumer;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method
