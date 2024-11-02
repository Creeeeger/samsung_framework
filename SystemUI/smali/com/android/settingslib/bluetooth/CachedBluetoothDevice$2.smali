.class public abstract synthetic Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$2;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final synthetic $SwitchMap$com$samsung$android$bluetooth$SmepTag:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/samsung/android/bluetooth/SmepTag;->values()[Lcom/samsung/android/bluetooth/SmepTag;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    array-length v0, v0

    .line 6
    new-array v0, v0, [I

    .line 7
    .line 8
    sput-object v0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$2;->$SwitchMap$com$samsung$android$bluetooth$SmepTag:[I

    .line 9
    .line 10
    :try_start_0
    sget-object v1, Lcom/samsung/android/bluetooth/SmepTag;->FEATURE_AURACAST:Lcom/samsung/android/bluetooth/SmepTag;

    .line 11
    .line 12
    invoke-virtual {v1}, Lcom/samsung/android/bluetooth/SmepTag;->ordinal()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    const/4 v2, 0x1

    .line 17
    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    .line 19
    :catch_0
    return-void
.end method
