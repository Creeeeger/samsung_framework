.class public final Lcom/android/systemui/facewidget/plugin/FaceWidgetWallpaperUtilsWrapper$FaceWidgetSystemUIWidgetCallbackWrapper;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/widget/SystemUIWidgetCallback;


# instance fields
.field public final mCallback:Lcom/android/systemui/plugins/keyguardstatusview/PluginSystemUIWidgetCallback;


# direct methods
.method public constructor <init>(Lcom/android/systemui/plugins/keyguardstatusview/PluginSystemUIWidgetCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetWallpaperUtilsWrapper$FaceWidgetSystemUIWidgetCallbackWrapper;->mCallback:Lcom/android/systemui/plugins/keyguardstatusview/PluginSystemUIWidgetCallback;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final updateStyle(JLandroid/app/SemWallpaperColors;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetWallpaperUtilsWrapper$FaceWidgetSystemUIWidgetCallbackWrapper;->mCallback:Lcom/android/systemui/plugins/keyguardstatusview/PluginSystemUIWidgetCallback;

    .line 2
    .line 3
    if-eqz p0, :cond_1

    .line 4
    .line 5
    long-to-int p1, p1

    .line 6
    int-to-long v0, p1

    .line 7
    invoke-static {v0, v1}, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->getChangeFlagsString(J)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    const-string/jumbo v0, "updateStyle: updateFlag = "

    .line 12
    .line 13
    .line 14
    const-string v1, ", colors = "

    .line 15
    .line 16
    invoke-static {v0, p2, v1}, Landroidx/activity/result/ActivityResultRegistry$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    if-nez p3, :cond_0

    .line 21
    .line 22
    const-string/jumbo v0, "null"

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-virtual {p3}, Landroid/app/SemWallpaperColors;->toSimpleString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    :goto_0
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    const-string v0, "FaceWidgetWallpaperUtilsWrapper"

    .line 38
    .line 39
    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    invoke-interface {p0, p1, p3}, Lcom/android/systemui/plugins/keyguardstatusview/PluginSystemUIWidgetCallback;->updateStyle(ILjava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    :cond_1
    return-void
.end method
