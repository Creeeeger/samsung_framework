.class public final synthetic Lcom/android/systemui/edgelighting/EdgeLightingService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Lcom/samsung/android/edge/SemEdgeLightingInfo;

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/String;Lcom/samsung/android/edge/SemEdgeLightingInfo;II)V
    .locals 0

    .line 1
    iput p5, p0, Lcom/android/systemui/edgelighting/EdgeLightingService$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/systemui/edgelighting/EdgeLightingService$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/android/systemui/edgelighting/EdgeLightingService$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p3, p0, Lcom/android/systemui/edgelighting/EdgeLightingService$$ExternalSyntheticLambda0;->f$2:Lcom/samsung/android/edge/SemEdgeLightingInfo;

    .line 8
    .line 9
    iput p4, p0, Lcom/android/systemui/edgelighting/EdgeLightingService$$ExternalSyntheticLambda0;->f$3:I

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, Lcom/android/systemui/edgelighting/EdgeLightingService;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/android/systemui/edgelighting/EdgeLightingService$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v2, p0, Lcom/android/systemui/edgelighting/EdgeLightingService$$ExternalSyntheticLambda0;->f$2:Lcom/samsung/android/edge/SemEdgeLightingInfo;

    .line 14
    .line 15
    iget p0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService$$ExternalSyntheticLambda0;->f$3:I

    .line 16
    .line 17
    sget-boolean v3, Lcom/android/systemui/edgelighting/EdgeLightingService;->sConfigured:Z

    .line 18
    .line 19
    invoke-virtual {v0, v1, v2, p0}, Lcom/android/systemui/edgelighting/EdgeLightingService;->startEdgeLighting(Ljava/lang/String;Lcom/samsung/android/edge/SemEdgeLightingInfo;I)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v0, Lcom/android/systemui/edgelighting/EdgeLightingService$3;

    .line 26
    .line 27
    iget-object v1, p0, Lcom/android/systemui/edgelighting/EdgeLightingService$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    .line 28
    .line 29
    iget-object v2, p0, Lcom/android/systemui/edgelighting/EdgeLightingService$$ExternalSyntheticLambda0;->f$2:Lcom/samsung/android/edge/SemEdgeLightingInfo;

    .line 30
    .line 31
    iget p0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService$$ExternalSyntheticLambda0;->f$3:I

    .line 32
    .line 33
    iget-object v0, v0, Lcom/android/systemui/edgelighting/EdgeLightingService$3;->this$0:Lcom/android/systemui/edgelighting/EdgeLightingService;

    .line 34
    .line 35
    sget-boolean v3, Lcom/android/systemui/edgelighting/EdgeLightingService;->sConfigured:Z

    .line 36
    .line 37
    invoke-virtual {v0, v1, v2, p0}, Lcom/android/systemui/edgelighting/EdgeLightingService;->startEdgeLighting(Ljava/lang/String;Lcom/samsung/android/edge/SemEdgeLightingInfo;I)V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
