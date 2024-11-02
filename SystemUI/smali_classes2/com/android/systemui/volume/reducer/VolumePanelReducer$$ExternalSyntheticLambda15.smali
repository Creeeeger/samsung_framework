.class public final synthetic Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda15;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Z

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(IZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda15;->f$0:I

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda15;->f$1:Z

    .line 7
    .line 8
    iput-boolean p3, p0, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda15;->f$2:Z

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda15;->f$0:I

    .line 2
    .line 3
    iget-boolean v1, p0, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda15;->f$1:Z

    .line 4
    .line 5
    iget-boolean p0, p0, Lcom/android/systemui/volume/reducer/VolumePanelReducer$$ExternalSyntheticLambda15;->f$2:Z

    .line 6
    .line 7
    check-cast p1, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    .line 8
    .line 9
    new-instance v2, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    .line 10
    .line 11
    invoke-direct {v2, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V

    .line 12
    .line 13
    .line 14
    invoke-static {p1, v0, v1, p0}, Lcom/android/systemui/volume/reducer/VolumePanelReducer;->determineRowPriority(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;IZZ)I

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    invoke-virtual {v2, p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->priority(I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    return-object p0
.end method
