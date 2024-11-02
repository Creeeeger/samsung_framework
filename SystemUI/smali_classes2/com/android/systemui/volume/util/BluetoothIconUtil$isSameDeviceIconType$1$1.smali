.class public final Lcom/android/systemui/volume/util/BluetoothIconUtil$isSameDeviceIconType$1$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic $samsungIconType:S


# direct methods
.method public constructor <init>(S)V
    .locals 0

    .line 1
    iput-short p1, p0, Lcom/android/systemui/volume/util/BluetoothIconUtil$isSameDeviceIconType$1$1;->$samsungIconType:S

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Short;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    iget-short p0, p0, Lcom/android/systemui/volume/util/BluetoothIconUtil$isSameDeviceIconType$1$1;->$samsungIconType:S

    .line 10
    .line 11
    if-ne p1, p0, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    :goto_0
    return p0
.end method
