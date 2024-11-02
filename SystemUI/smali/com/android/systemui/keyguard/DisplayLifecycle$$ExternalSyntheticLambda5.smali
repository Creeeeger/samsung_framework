.class public final synthetic Lcom/android/systemui/keyguard/DisplayLifecycle$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/keyguard/DisplayLifecycle;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/keyguard/DisplayLifecycle;II)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/systemui/keyguard/DisplayLifecycle$$ExternalSyntheticLambda5;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/systemui/keyguard/DisplayLifecycle$$ExternalSyntheticLambda5;->f$0:Lcom/android/systemui/keyguard/DisplayLifecycle;

    .line 4
    .line 5
    iput p2, p0, Lcom/android/systemui/keyguard/DisplayLifecycle$$ExternalSyntheticLambda5;->f$1:I

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/systemui/keyguard/DisplayLifecycle$$ExternalSyntheticLambda5;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/keyguard/DisplayLifecycle$$ExternalSyntheticLambda5;->f$0:Lcom/android/systemui/keyguard/DisplayLifecycle;

    .line 8
    .line 9
    iget p0, p0, Lcom/android/systemui/keyguard/DisplayLifecycle$$ExternalSyntheticLambda5;->f$1:I

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    new-instance v1, Lcom/android/systemui/keyguard/DisplayLifecycle$$ExternalSyntheticLambda7;

    .line 15
    .line 16
    const/4 v2, 0x1

    .line 17
    invoke-direct {v1, p0, v2}, Lcom/android/systemui/keyguard/DisplayLifecycle$$ExternalSyntheticLambda7;-><init>(II)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/SecLifecycle;->dispatch(Ljava/util/function/Consumer;)V

    .line 21
    .line 22
    .line 23
    new-instance v1, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const-string/jumbo v2, "removeDisplay id = "

    .line 26
    .line 27
    .line 28
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    const-string v2, "DisplayLifecycle"

    .line 39
    .line 40
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    iget-object v1, v0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mDisplayHash:Ljava/util/Map;

    .line 44
    .line 45
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    check-cast v1, Ljava/util/HashMap;

    .line 50
    .line 51
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    iget-object v1, v0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mDisplaySizeHash:Landroid/util/SparseArray;

    .line 55
    .line 56
    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->remove(I)V

    .line 57
    .line 58
    .line 59
    iget-object v1, v0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mDisplayRealSizeHash:Landroid/util/SparseArray;

    .line 60
    .line 61
    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->remove(I)V

    .line 62
    .line 63
    .line 64
    iget-object v1, v0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mDisplayMetricsHash:Landroid/util/SparseArray;

    .line 65
    .line 66
    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->remove(I)V

    .line 67
    .line 68
    .line 69
    iget-object v0, v0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mDisplayRotationHash:Landroid/util/SparseIntArray;

    .line 70
    .line 71
    invoke-virtual {v0, p0}, Landroid/util/SparseIntArray;->delete(I)V

    .line 72
    .line 73
    .line 74
    return-void

    .line 75
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/keyguard/DisplayLifecycle$$ExternalSyntheticLambda5;->f$0:Lcom/android/systemui/keyguard/DisplayLifecycle;

    .line 76
    .line 77
    iget p0, p0, Lcom/android/systemui/keyguard/DisplayLifecycle$$ExternalSyntheticLambda5;->f$1:I

    .line 78
    .line 79
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 80
    .line 81
    .line 82
    new-instance v1, Lcom/android/systemui/keyguard/DisplayLifecycle$$ExternalSyntheticLambda7;

    .line 83
    .line 84
    const/4 v2, 0x0

    .line 85
    invoke-direct {v1, p0, v2}, Lcom/android/systemui/keyguard/DisplayLifecycle$$ExternalSyntheticLambda7;-><init>(II)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/SecLifecycle;->dispatch(Ljava/util/function/Consumer;)V

    .line 89
    .line 90
    .line 91
    return-void

    .line 92
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/keyguard/DisplayLifecycle$$ExternalSyntheticLambda5;->f$0:Lcom/android/systemui/keyguard/DisplayLifecycle;

    .line 93
    .line 94
    iget p0, p0, Lcom/android/systemui/keyguard/DisplayLifecycle$$ExternalSyntheticLambda5;->f$1:I

    .line 95
    .line 96
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 97
    .line 98
    .line 99
    new-instance v1, Lcom/android/systemui/keyguard/DisplayLifecycle$$ExternalSyntheticLambda7;

    .line 100
    .line 101
    const/4 v2, 0x2

    .line 102
    invoke-direct {v1, p0, v2}, Lcom/android/systemui/keyguard/DisplayLifecycle$$ExternalSyntheticLambda7;-><init>(II)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/SecLifecycle;->dispatch(Ljava/util/function/Consumer;)V

    .line 106
    .line 107
    .line 108
    return-void

    .line 109
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
