package com.samsung.vekit.Common.Object;

import android.hardware.scontext.SContextConstants;
import com.samsung.vekit.Common.Type.AxisType;

/* loaded from: classes6.dex */
public class Quaternion {
    public static final float EPSILON = 1.0E-5f;
    public double w;
    public double x;
    public double y;
    public double z;
    public static final Quaternion ZERO = new Quaternion(0.0f, 0.0f, 0.0f, 0.0f);
    public static final Quaternion IDENTITY = new Quaternion(0.0f, 0.0f, 0.0f, 1.0f);

    public Quaternion() {
        this.w = SContextConstants.ENVIRONMENT_VALUE_UNKNOWN;
        this.z = SContextConstants.ENVIRONMENT_VALUE_UNKNOWN;
        this.y = SContextConstants.ENVIRONMENT_VALUE_UNKNOWN;
        this.x = SContextConstants.ENVIRONMENT_VALUE_UNKNOWN;
    }

    public Quaternion(float x, float y, float z, float w) {
        this.x = x;
        this.y = y;
        this.z = z;
        this.w = w;
    }

    public Quaternion(double x, double y, double z, double w) {
        this.x = x;
        this.y = y;
        this.z = z;
        this.w = w;
    }

    public Quaternion(Quaternion quaternion) {
        this.x = quaternion.x;
        this.y = quaternion.y;
        this.z = quaternion.z;
        this.w = quaternion.w;
    }

    public Quaternion(Vector3<Float> axis, float angle) {
        setRotation(axis, angle);
    }

    public void set(float x, float y, float z, float w) {
        this.x = x;
        this.y = y;
        this.z = z;
        this.w = w;
    }

    public void set(double x, double y, double z, double w) {
        this.x = x;
        this.y = y;
        this.z = z;
        this.w = w;
    }

    public void setRotation(float eulerX, float eulerY, float eulerZ) {
        double radianX = Math.toRadians(eulerX);
        double radianY = Math.toRadians(eulerY);
        double radianZ = Math.toRadians(eulerZ);
        double c1 = Math.cos(radianY / 2.0d);
        double s1 = Math.sin(radianY / 2.0d);
        double c2 = Math.cos(radianZ / 2.0d);
        double s2 = Math.sin(radianZ / 2.0d);
        double c3 = Math.cos(radianX / 2.0d);
        double s3 = Math.sin(radianX / 2.0d);
        double c1c2 = c1 * c2;
        double s1s2 = s1 * s2;
        this.w = (c1c2 * c3) - (s1s2 * s3);
        this.x = (c1c2 * s3) + (s1s2 * c3);
        this.y = (s1 * c2 * c3) + (c1 * s2 * s3);
        this.z = ((c1 * s2) * c3) - ((s1 * c2) * s3);
    }

    public Vector3<Float> getRotation() {
        Float valueOf = Float.valueOf(0.0f);
        Vector3<Float> angles = new Vector3<>(valueOf, valueOf, valueOf);
        double d = this.w;
        double sqw = d * d;
        double d2 = this.x;
        double sqx = d2 * d2;
        double d3 = this.y;
        double sqy = d3 * d3;
        double d4 = this.z;
        double sqz = d4 * d4;
        double unit = sqx + sqy + sqz + sqw;
        double checker = (d2 * d3) + (d4 * d);
        if (checker > 0.49999d * unit) {
            double yaw = Math.atan2(d2, d) * 2.0d;
            Float valueOf2 = Float.valueOf((float) Math.toDegrees(SContextConstants.ENVIRONMENT_VALUE_UNKNOWN));
            double pitch = Math.toDegrees(yaw);
            Float valueOf3 = Float.valueOf((float) pitch);
            double yaw2 = Math.toDegrees(1.5707963267948966d);
            angles.set(valueOf2, valueOf3, Float.valueOf((float) yaw2));
            return angles;
        }
        if (checker < (-0.49999d) * unit) {
            double yaw3 = Math.atan2(d2, d) * (-2.0d);
            Float valueOf4 = Float.valueOf((float) Math.toDegrees(SContextConstants.ENVIRONMENT_VALUE_UNKNOWN));
            double pitch2 = Math.toDegrees(yaw3);
            Float valueOf5 = Float.valueOf((float) pitch2);
            double yaw4 = Math.toDegrees(-1.5707963267948966d);
            angles.set(valueOf4, valueOf5, Float.valueOf((float) yaw4));
            return angles;
        }
        double yaw5 = Math.atan2(((d3 * 2.0d) * d) - ((d2 * 2.0d) * d4), ((sqx - sqy) - sqz) + sqw);
        double roll = Math.asin((checker * 2.0d) / unit);
        double d5 = this.x * 2.0d * this.w;
        double d6 = this.y * 2.0d;
        double roll2 = this.z;
        double pitch3 = Math.atan2(d5 - (d6 * roll2), (((-sqx) + sqy) - sqz) + sqw);
        angles.set(Float.valueOf((float) Math.toDegrees(pitch3)), Float.valueOf((float) Math.toDegrees(yaw5)), Float.valueOf((float) Math.toDegrees(roll)));
        return angles;
    }

    public void setRotation(Vector3<Float> axis, float degree) {
        float divider = (float) Math.sqrt((axis.getX().floatValue() * axis.getX().floatValue()) + (axis.getY().floatValue() * axis.getY().floatValue()) + (axis.getZ().floatValue() * axis.getZ().floatValue()));
        Vector3<Float> normalizeAxis = new Vector3<>(Float.valueOf(axis.getX().floatValue() / divider), Float.valueOf(axis.getY().floatValue() / divider), Float.valueOf(axis.getZ().floatValue() / divider));
        float sinVal = (float) Math.sin(Math.toRadians(degree) * 0.5d);
        float cosVal = (float) Math.cos(Math.toRadians(degree) * 0.5d);
        this.x = normalizeAxis.getX().floatValue() * sinVal;
        this.y = normalizeAxis.getY().floatValue() * sinVal;
        this.z = normalizeAxis.getZ().floatValue() * sinVal;
        this.w = cosVal;
    }

    /* renamed from: com.samsung.vekit.Common.Object.Quaternion$1, reason: invalid class name */
    /* loaded from: classes6.dex */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$samsung$vekit$Common$Type$AxisType;

        static {
            int[] iArr = new int[AxisType.values().length];
            $SwitchMap$com$samsung$vekit$Common$Type$AxisType = iArr;
            try {
                iArr[AxisType.X.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$com$samsung$vekit$Common$Type$AxisType[AxisType.Y.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$com$samsung$vekit$Common$Type$AxisType[AxisType.Z.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    public void setRotation(AxisType axisType, float degree) {
        int i = AnonymousClass1.$SwitchMap$com$samsung$vekit$Common$Type$AxisType[axisType.ordinal()];
        Float valueOf = Float.valueOf(1.0f);
        Float valueOf2 = Float.valueOf(0.0f);
        switch (i) {
            case 1:
                setRotation(new Vector3<>(valueOf, valueOf2, valueOf2), degree);
                return;
            case 2:
                setRotation(new Vector3<>(valueOf2, valueOf, valueOf2), degree);
                return;
            case 3:
                setRotation(new Vector3<>(valueOf2, valueOf2, valueOf), degree);
                return;
            default:
                return;
        }
    }

    public void setMatrix(Matrix4 matrix) {
        float wLocal = ((float) Math.sqrt(matrix.get(0, 0) + matrix.get(1, 1) + matrix.get(2, 2))) * 0.5f;
        float s = 0.25f / wLocal;
        this.x = (matrix.get(1, 2) - matrix.get(2, 1)) * s;
        this.y = (matrix.get(2, 0) - matrix.get(0, 2)) * s;
        this.z = (matrix.get(0, 1) - matrix.get(1, 0)) * s;
        this.w = wLocal;
    }

    public Matrix4 getMatrix() {
        double d = this.x;
        double xx = d * d;
        double d2 = this.y;
        double xy = d * d2;
        double yy = d2 * d2;
        double d3 = this.z;
        double xz = d * d3;
        double yz = d2 * d3;
        double zz = d3 * d3;
        double xz2 = this.w;
        double xw = d * xz2;
        double yw = d2 * xz2;
        double zw = d3 * xz2;
        double ww = xz2 * xz2;
        Matrix4 matrix = new Matrix4();
        matrix.set(0, 0, (float) (((xx - yy) - zz) + ww));
        matrix.set(0, 1, (float) (xy + zw + xy + zw));
        matrix.set(0, 2, (float) (((xz - yw) + xz) - yw));
        matrix.set(0, 3, 0.0f);
        matrix.set(1, 0, (float) (((xy - zw) + xy) - zw));
        matrix.set(1, 1, (float) ((((-xx) + yy) - zz) + ww));
        matrix.set(1, 2, (float) (yz + xw + yz + xw));
        matrix.set(1, 3, 0.0f);
        matrix.set(2, 0, (float) (xz + yw + xz + yw));
        matrix.set(2, 1, (float) (((yz - xw) + yz) - xw));
        matrix.set(2, 2, (float) (((-xx) - yy) + zz + ww));
        matrix.set(2, 3, 0.0f);
        matrix.set(3, 0, 0.0f);
        matrix.set(3, 1, 0.0f);
        matrix.set(3, 2, 0.0f);
        matrix.set(3, 3, 1.0f);
        return matrix;
    }

    public double getRoll() {
        double d = this.x;
        double d2 = this.y;
        double d3 = this.w;
        double d4 = this.z;
        return Math.atan2(((d * d2) + (d3 * d4)) * 2.0d, (((d3 * d3) + (d * d)) - (d2 * d2)) - (d4 * d4));
    }

    public double getPitch() {
        return Math.asin(((this.w * this.y) - (this.x * this.z)) * (-2.0d));
    }

    public double getYaw() {
        double d = this.y;
        double d2 = this.z;
        double d3 = this.w;
        double d4 = this.x;
        return Math.atan2(((d * d2) + (d3 * d4)) * 2.0d, (((d3 * d3) - (d4 * d4)) - (d * d)) + (d2 * d2));
    }

    public float length() {
        double d = this.x;
        double d2 = this.y;
        double d3 = (d * d) + (d2 * d2);
        double d4 = this.z;
        double d5 = d3 + (d4 * d4);
        double d6 = this.w;
        return (float) Math.sqrt(d5 + (d6 * d6));
    }

    public Quaternion divide(float scalar) {
        Quaternion quaternion = new Quaternion();
        if (Math.abs(scalar) < 1.0E-5f) {
            return quaternion;
        }
        float invScalar = 1.0f / scalar;
        float newX = ((float) this.x) * invScalar;
        float newY = ((float) this.y) * invScalar;
        float newZ = ((float) this.z) * invScalar;
        float newW = ((float) this.w) * invScalar;
        quaternion.set(newX, newY, newZ, newW);
        return quaternion;
    }

    public Quaternion multiply(Quaternion quaternion) {
        double d = this.w;
        double d2 = quaternion.x;
        double d3 = this.x;
        double d4 = quaternion.w;
        double d5 = (d * d2) + (d3 * d4);
        double d6 = this.y;
        double d7 = quaternion.z;
        double d8 = this.z;
        double d9 = quaternion.y;
        return new Quaternion((d5 + (d6 * d7)) - (d8 * d9), ((d * d9) - (d3 * d7)) + (d6 * d4) + (d8 * d2), (((d * d7) + (d3 * d9)) - (d6 * d2)) + (d8 * d4), (((d * d4) - (d3 * d2)) - (d6 * d9)) - (d8 * d7));
    }

    public Quaternion multiply(float scalar) {
        return new Quaternion(this.x * scalar, this.y * scalar, this.z * scalar, this.w * scalar);
    }

    public float lengthSquared() {
        double d = this.x;
        double d2 = this.y;
        double d3 = (d * d) + (d2 * d2);
        double d4 = this.z;
        double d5 = d3 + (d4 * d4);
        double d6 = this.w;
        return (float) (d5 + (d6 * d6));
    }

    public Quaternion add(Quaternion quaternion) {
        return new Quaternion(this.x + quaternion.x, this.y + quaternion.y, this.z + quaternion.z, this.w + quaternion.w);
    }

    public Quaternion substract(Quaternion quaternion) {
        return new Quaternion(this.x - quaternion.x, this.y - quaternion.y, this.z - quaternion.z, this.w - quaternion.w);
    }

    public float dot(Quaternion quaternion) {
        return (float) ((this.x * quaternion.x) + (this.y * quaternion.y) + (this.z * quaternion.z) + (this.w * quaternion.w));
    }

    public void conjugate() {
        this.x = -this.x;
        this.y = -this.y;
        this.z = -this.z;
        this.w = -this.w;
    }

    public Quaternion invert() {
        Quaternion quaternion = new Quaternion(this);
        quaternion.conjugate();
        return quaternion.divide(lengthSquared());
    }

    public void normalize() {
        float vectorLength = length();
        if (vectorLength == 0.0f) {
            return;
        }
        this.x /= vectorLength;
        this.y /= vectorLength;
        this.z /= vectorLength;
        this.w /= vectorLength;
    }

    public Quaternion normalized() {
        Quaternion retVector = new Quaternion(this);
        retVector.normalize();
        return retVector;
    }

    public double getX() {
        return this.x;
    }

    public void setX(double x) {
        this.x = x;
    }

    public double getY() {
        return this.y;
    }

    public void setY(double y) {
        this.y = y;
    }

    public double getZ() {
        return this.z;
    }

    public void setZ(double z) {
        this.z = z;
    }

    public double getW() {
        return this.w;
    }

    public void setW(double w) {
        this.w = w;
    }
}
