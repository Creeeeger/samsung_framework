package com.sec.internal.ims.cmstore.omanetapi.nms.data;

import com.google.gson.JsonArray;
import com.google.gson.JsonDeserializationContext;
import com.google.gson.JsonDeserializer;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParseException;
import com.google.gson.JsonParser;
import com.google.gson.JsonSerializationContext;
import com.google.gson.JsonSerializer;
import com.sec.internal.constants.ims.cmstore.data.AttributeNames;
import com.sec.internal.ims.cmstore.strategy.KorCmStrategy;
import com.sec.internal.omanetapi.nc.data.LongPollingData;
import com.sec.internal.omanetapi.nms.data.Attribute;
import java.lang.reflect.Type;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class GsonInterfaceAdapter<T> implements JsonSerializer<T>, JsonDeserializer<T> {
    private final Type mType;

    public GsonInterfaceAdapter(Class<?> cls) {
        this.mType = cls;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final JsonElement serialize(T t, Type type, JsonSerializationContext jsonSerializationContext) {
        if (this.mType.equals(LongPollingData.class)) {
            JsonObject asJsonObject = jsonSerializationContext.serialize(t).getAsJsonObject();
            asJsonObject.addProperty("type", t.getClass().getSimpleName());
            return asJsonObject;
        }
        if (this.mType.equals(Attribute.class)) {
            JsonObject jsonObject = new JsonObject();
            Attribute attribute = (Attribute) t;
            jsonObject.addProperty("name", attribute.name);
            if (!"TO".equalsIgnoreCase(attribute.name)) {
                if (AttributeNames.message_body.equalsIgnoreCase(attribute.name) || KorCmStrategy.KorAttributeNames.extended_rcs.equalsIgnoreCase(attribute.name) || AttributeNames.chip_list.equalsIgnoreCase(attribute.name)) {
                    jsonObject.add("value", new JsonParser().parse(attribute.value[0]));
                    return jsonObject;
                }
                jsonObject.addProperty("value", attribute.value[0]);
                return jsonObject;
            }
            JsonArray jsonArray = new JsonArray();
            for (String str : attribute.value) {
                jsonArray.add(str);
            }
            jsonObject.add("value", jsonArray);
            return jsonObject;
        }
        return jsonSerializationContext.serialize(t).getAsJsonObject();
    }

    /* JADX WARN: Type inference failed for: r1v3, types: [T, com.sec.internal.omanetapi.nms.data.Attribute] */
    public final T deserialize(JsonElement jsonElement, Type type, JsonDeserializationContext jsonDeserializationContext) throws JsonParseException {
        if (this.mType.equals(Attribute.class)) {
            ?? r1 = (T) new Attribute();
            JsonObject asJsonObject = jsonElement.getAsJsonObject();
            r1.name = asJsonObject.get("name").getAsString();
            if (asJsonObject.get("value").isJsonArray()) {
                JsonArray asJsonArray = asJsonObject.get("value").getAsJsonArray();
                ArrayList arrayList = new ArrayList();
                for (int i = 0; i < asJsonArray.size(); i++) {
                    arrayList.add(asJsonArray.get(i).getAsString());
                }
                r1.value = (String[]) arrayList.toArray(new String[arrayList.size()]);
            } else if (asJsonObject.get("value").isJsonPrimitive() && asJsonObject.get("value").getAsJsonPrimitive().isString()) {
                r1.value = new String[]{asJsonObject.get("value").getAsString()};
            } else {
                r1.value = new String[]{asJsonObject.get("value").toString()};
            }
            return r1;
        }
        return (T) jsonDeserializationContext.deserialize(jsonElement, this.mType);
    }
}
