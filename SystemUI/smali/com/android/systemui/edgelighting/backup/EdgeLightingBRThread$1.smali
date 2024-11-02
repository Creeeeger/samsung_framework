.class public final Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread;


# direct methods
.method public constructor <init>(Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread$1;->this$0:Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread;

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
    iget-object v0, p0, Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread$1;->this$0:Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/android/systemui/edgelighting/backup/BRUtils;->getInstance(Landroid/content/Context;)Lcom/android/systemui/edgelighting/backup/BRUtils;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread$1;->this$0:Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread;

    .line 10
    .line 11
    iget-boolean v1, v1, Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread;->mLoopEnable:Z

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    if-nez v1, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    sget-boolean v1, Lcom/android/systemui/edgelighting/Feature;->FEATURE_SUPPORT_EDGE_LIGHTING:Z

    .line 20
    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    iget-object v0, v0, Lcom/android/systemui/edgelighting/backup/BRUtils;->mContext:Landroid/content/Context;

    .line 24
    .line 25
    invoke-static {v0}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->initColorTypeIndex(Landroid/content/Context;)V

    .line 26
    .line 27
    .line 28
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread$1;->this$0:Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread;

    .line 29
    .line 30
    const/4 v0, 0x0

    .line 31
    invoke-virtual {p0, v0, v0}, Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread;->sendResponse(II)V

    .line 32
    .line 33
    .line 34
    return-void
.end method
