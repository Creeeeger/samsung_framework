.class public Lcom/samsung/android/desktopsystemui/sharedlib/system/PermissionManagerWrapper$PermissionGroupUsageItem;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/desktopsystemui/sharedlib/system/PermissionManagerWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PermissionGroupUsageItem"
.end annotation


# instance fields
.field mActive:Z

.field mAttributionLabel:Ljava/lang/CharSequence;

.field mAttributionTag:Ljava/lang/CharSequence;

.field mLastAccessTimeMillis:J

.field mPackageName:Ljava/lang/String;

.field mPermissionGroupName:Ljava/lang/String;

.field mPhoneCall:Z

.field mProxyLabel:Ljava/lang/CharSequence;

.field mUid:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/permission/PermissionGroupUsage;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/permission/PermissionGroupUsage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/PermissionManagerWrapper$PermissionGroupUsageItem;->mPackageName:Ljava/lang/String;

    .line 3
    invoke-virtual {p1}, Landroid/permission/PermissionGroupUsage;->getUid()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/PermissionManagerWrapper$PermissionGroupUsageItem;->mUid:I

    .line 4
    invoke-virtual {p1}, Landroid/permission/PermissionGroupUsage;->getLastAccessTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/PermissionManagerWrapper$PermissionGroupUsageItem;->mLastAccessTimeMillis:J

    .line 5
    invoke-virtual {p1}, Landroid/permission/PermissionGroupUsage;->getPermissionGroupName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/PermissionManagerWrapper$PermissionGroupUsageItem;->mPermissionGroupName:Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Landroid/permission/PermissionGroupUsage;->isActive()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/PermissionManagerWrapper$PermissionGroupUsageItem;->mActive:Z

    .line 7
    invoke-virtual {p1}, Landroid/permission/PermissionGroupUsage;->isPhoneCall()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/PermissionManagerWrapper$PermissionGroupUsageItem;->mPhoneCall:Z

    .line 8
    invoke-virtual {p1}, Landroid/permission/PermissionGroupUsage;->getAttributionTag()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/PermissionManagerWrapper$PermissionGroupUsageItem;->mAttributionTag:Ljava/lang/CharSequence;

    .line 9
    invoke-virtual {p1}, Landroid/permission/PermissionGroupUsage;->getAttributionLabel()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/PermissionManagerWrapper$PermissionGroupUsageItem;->mAttributionLabel:Ljava/lang/CharSequence;

    .line 10
    invoke-virtual {p1}, Landroid/permission/PermissionGroupUsage;->getProxyLabel()Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/PermissionManagerWrapper$PermissionGroupUsageItem;->mProxyLabel:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public getAttributionLabel()Ljava/lang/CharSequence;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/PermissionManagerWrapper$PermissionGroupUsageItem;->mAttributionLabel:Ljava/lang/CharSequence;

    .line 2
    .line 3
    return-object p0
.end method

.method public getAttributionTag()Ljava/lang/CharSequence;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/PermissionManagerWrapper$PermissionGroupUsageItem;->mAttributionTag:Ljava/lang/CharSequence;

    .line 2
    .line 3
    return-object p0
.end method

.method public getLastAccessTimeMillis()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/PermissionManagerWrapper$PermissionGroupUsageItem;->mLastAccessTimeMillis:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/PermissionManagerWrapper$PermissionGroupUsageItem;->mPackageName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public getPermissionGroupName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/PermissionManagerWrapper$PermissionGroupUsageItem;->mPermissionGroupName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public getProxyLabel()Ljava/lang/CharSequence;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/PermissionManagerWrapper$PermissionGroupUsageItem;->mProxyLabel:Ljava/lang/CharSequence;

    .line 2
    .line 3
    return-object p0
.end method

.method public getUid()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/PermissionManagerWrapper$PermissionGroupUsageItem;->mUid:I

    .line 2
    .line 3
    return p0
.end method

.method public isActive()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/PermissionManagerWrapper$PermissionGroupUsageItem;->mActive:Z

    .line 2
    .line 3
    return p0
.end method

.method public isPhoneCall()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/PermissionManagerWrapper$PermissionGroupUsageItem;->mPhoneCall:Z

    .line 2
    .line 3
    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "PermissionGroupUsage { packageName = "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/PermissionManagerWrapper$PermissionGroupUsageItem;->mPackageName:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", uid = "

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget v1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/PermissionManagerWrapper$PermissionGroupUsageItem;->mUid:I

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", lastAccessTimeMillis = "

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-wide v1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/PermissionManagerWrapper$PermissionGroupUsageItem;->mLastAccessTimeMillis:J

    .line 29
    .line 30
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", permissionGroupName = "

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/PermissionManagerWrapper$PermissionGroupUsageItem;->mPermissionGroupName:Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, ", active = "

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-boolean v1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/PermissionManagerWrapper$PermissionGroupUsageItem;->mActive:Z

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v1, ", phoneCall = "

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget-boolean v1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/PermissionManagerWrapper$PermissionGroupUsageItem;->mPhoneCall:Z

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v1, ", attributionTag = "

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    iget-object v1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/PermissionManagerWrapper$PermissionGroupUsageItem;->mAttributionTag:Ljava/lang/CharSequence;

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string v1, ", attributionLabel = "

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    iget-object v1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/PermissionManagerWrapper$PermissionGroupUsageItem;->mAttributionLabel:Ljava/lang/CharSequence;

    .line 79
    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const-string v1, ", proxyLabel = "

    .line 84
    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/PermissionManagerWrapper$PermissionGroupUsageItem;->mProxyLabel:Ljava/lang/CharSequence;

    .line 89
    .line 90
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    const-string p0, " }"

    .line 94
    .line 95
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p0

    .line 102
    return-object p0
.end method
