.class public final enum Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseKeyVersion;
.super Ljava/lang/Enum;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/EnterpriseDeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EnterpriseKeyVersion"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseKeyVersion;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseKeyVersion;

.field public static final enum ENTERPRISE_KEY_VERSION_1:Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseKeyVersion;


# direct methods
.method public static synthetic $values()[Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseKeyVersion;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseKeyVersion;->ENTERPRISE_KEY_VERSION_1:Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseKeyVersion;

    .line 2
    .line 3
    filled-new-array {v0}, [Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseKeyVersion;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseKeyVersion;

    .line 2
    .line 3
    const-string v1, "ENTERPRISE_KEY_VERSION_1"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseKeyVersion;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseKeyVersion;->ENTERPRISE_KEY_VERSION_1:Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseKeyVersion;

    .line 10
    .line 11
    invoke-static {}, Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseKeyVersion;->$values()[Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseKeyVersion;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseKeyVersion;->$VALUES:[Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseKeyVersion;

    .line 16
    .line 17
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseKeyVersion;
    .locals 1

    .line 1
    const-class v0, Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseKeyVersion;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseKeyVersion;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseKeyVersion;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseKeyVersion;->$VALUES:[Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseKeyVersion;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseKeyVersion;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseKeyVersion;

    .line 8
    .line 9
    return-object v0
.end method
