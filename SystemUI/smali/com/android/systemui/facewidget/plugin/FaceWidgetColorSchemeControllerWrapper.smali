.class public final Lcom/android/systemui/facewidget/plugin/FaceWidgetColorSchemeControllerWrapper;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetColorSchemeController;


# instance fields
.field public final mCallbackList:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetColorSchemeControllerWrapper;->mCallbackList:Ljava/util/List;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final registerCallback(Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetColorSchemeCallback;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetColorSchemeControllerWrapper;->mCallbackList:Ljava/util/List;

    .line 2
    .line 3
    move-object v0, p0

    .line 4
    check-cast v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    check-cast p0, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public final unregisterAllCallbacks()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetColorSchemeControllerWrapper;->mCallbackList:Ljava/util/List;

    .line 2
    .line 3
    check-cast p0, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final unregisterCallback(Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetColorSchemeCallback;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetColorSchemeControllerWrapper;->mCallbackList:Ljava/util/List;

    .line 2
    .line 3
    check-cast p0, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    return-void
.end method
