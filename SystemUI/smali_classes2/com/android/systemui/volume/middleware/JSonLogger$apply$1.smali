.class public final Lcom/android/systemui/volume/middleware/JSonLogger$apply$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $action:Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

.field public final synthetic this$0:Lcom/android/systemui/volume/middleware/JSonLogger;


# direct methods
.method public constructor <init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Lcom/android/systemui/volume/middleware/JSonLogger;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/volume/middleware/JSonLogger$apply$1;->$action:Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/systemui/volume/middleware/JSonLogger$apply$1;->this$0:Lcom/android/systemui/volume/middleware/JSonLogger;

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
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Lcom/google/gson/Gson;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/systemui/volume/middleware/JSonLogger$apply$1;->$action:Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget-object p0, p0, Lcom/android/systemui/volume/middleware/JSonLogger$apply$1;->this$0:Lcom/android/systemui/volume/middleware/JSonLogger;

    .line 13
    .line 14
    iget-object p0, p0, Lcom/android/systemui/volume/middleware/JSonLogger;->log:Lcom/android/systemui/basic/util/LogWrapper;

    .line 15
    .line 16
    invoke-virtual {p0, v0}, Lcom/android/systemui/basic/util/LogWrapper;->p(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catch_0
    move-exception p0

    .line 21
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 22
    .line 23
    .line 24
    :goto_0
    return-void
.end method
