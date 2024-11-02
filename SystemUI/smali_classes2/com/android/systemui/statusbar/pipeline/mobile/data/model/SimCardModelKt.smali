.class public abstract Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimCardModelKt;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final NO_SIM_MODEL:Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimCardModel;

.field public static final SIM_OFF_MODEL:Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimCardModel;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimCardModel;

    .line 2
    .line 3
    sget-object v1, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimType;->OFF:Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimType;

    .line 4
    .line 5
    const-string v2, "OFF STATE"

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimCardModel;-><init>(Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimType;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimCardModelKt;->SIM_OFF_MODEL:Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimCardModel;

    .line 11
    .line 12
    new-instance v0, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimCardModel;

    .line 13
    .line 14
    sget-object v1, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimType;->NO_SIM:Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimType;

    .line 15
    .line 16
    const-string v2, "NO SIM STATE"

    .line 17
    .line 18
    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimCardModel;-><init>(Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimType;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    sput-object v0, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimCardModelKt;->NO_SIM_MODEL:Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimCardModel;

    .line 22
    .line 23
    return-void
.end method
