.class public abstract Lcom/android/systemui/statusbar/pipeline/mobile/data/model/MobileServiceStateKt;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final DEFAULT_SERVICE_STATE:Lcom/android/systemui/statusbar/pipeline/mobile/data/model/MobileServiceState;


# direct methods
.method public static constructor <clinit>()V
    .locals 13

    .line 1
    new-instance v12, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/MobileServiceState;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x0

    .line 6
    const/4 v4, 0x0

    .line 7
    const/4 v5, 0x0

    .line 8
    const/4 v6, 0x0

    .line 9
    const/4 v7, 0x0

    .line 10
    new-instance v8, Landroid/telephony/TelephonyDisplayInfo;

    .line 11
    .line 12
    const/16 v0, 0xd

    .line 13
    .line 14
    const/4 v9, 0x2

    .line 15
    invoke-direct {v8, v0, v9}, Landroid/telephony/TelephonyDisplayInfo;-><init>(II)V

    .line 16
    .line 17
    .line 18
    const/4 v9, 0x0

    .line 19
    const/16 v10, 0x100

    .line 20
    .line 21
    const/4 v11, 0x0

    .line 22
    move-object v0, v12

    .line 23
    invoke-direct/range {v0 .. v11}, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/MobileServiceState;-><init>(IZIIIIILandroid/telephony/TelephonyDisplayInfo;Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimCardModel;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 24
    .line 25
    .line 26
    sput-object v12, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/MobileServiceStateKt;->DEFAULT_SERVICE_STATE:Lcom/android/systemui/statusbar/pipeline/mobile/data/model/MobileServiceState;

    .line 27
    .line 28
    return-void
.end method
