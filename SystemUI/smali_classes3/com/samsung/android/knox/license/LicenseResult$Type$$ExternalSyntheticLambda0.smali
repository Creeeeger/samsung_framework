.class public final synthetic Lcom/samsung/android/knox/license/LicenseResult$Type$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(II)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/samsung/android/knox/license/LicenseResult$Type$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput p1, p0, Lcom/samsung/android/knox/license/LicenseResult$Type$$ExternalSyntheticLambda0;->f$0:I

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/samsung/android/knox/license/LicenseResult$Type$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :pswitch_0
    iget p0, p0, Lcom/samsung/android/knox/license/LicenseResult$Type$$ExternalSyntheticLambda0;->f$0:I

    .line 8
    .line 9
    check-cast p1, Lcom/samsung/android/knox/license/LicenseResult$Type;

    .line 10
    .line 11
    invoke-static {p0, p1}, Lcom/samsung/android/knox/license/LicenseResult$Type;->lambda$fromKlmStatus$1(ILcom/samsung/android/knox/license/LicenseResult$Type;)Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0

    .line 16
    :goto_0
    iget p0, p0, Lcom/samsung/android/knox/license/LicenseResult$Type$$ExternalSyntheticLambda0;->f$0:I

    .line 17
    .line 18
    check-cast p1, Lcom/samsung/android/knox/license/LicenseResult$Type;

    .line 19
    .line 20
    invoke-static {p0, p1}, Lcom/samsung/android/knox/license/LicenseResult$Type;->lambda$fromElmStatus$0(ILcom/samsung/android/knox/license/LicenseResult$Type;)Z

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    return p0

    .line 25
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
