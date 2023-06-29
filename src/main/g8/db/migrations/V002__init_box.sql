INSERT INTO $dbBoxSchema$.labels (lang, key, label) VALUES ('en', 'popup.close', 'Close');
INSERT INTO $dbBoxSchema$.labels (lang, key, label) VALUES ('en', 'table.filter.between', 'Between');
INSERT INTO $dbBoxSchema$.labels (lang, key, label) VALUES ('en', 'table.filter.contains', 'Contains');
INSERT INTO $dbBoxSchema$.labels (lang, key, label) VALUES ('en', 'table.filter.equals', '=');
INSERT INTO $dbBoxSchema$.labels (lang, key, label) VALUES ('en', 'table.filter.gt', 'Greater');
INSERT INTO $dbBoxSchema$.labels (lang, key, label) VALUES ('en', 'table.filter.gte', 'Greater or equals');
INSERT INTO $dbBoxSchema$.labels (lang, key, label) VALUES ('en', 'table.filter.in', 'In');
INSERT INTO $dbBoxSchema$.labels (lang, key, label) VALUES ('en', 'table.filter.lt', 'Less');
INSERT INTO $dbBoxSchema$.labels (lang, key, label) VALUES ('en', 'table.filter.lte', 'Less or equals');
INSERT INTO $dbBoxSchema$.labels (lang, key, label) VALUES ('en', 'table.filter.none', 'None');
INSERT INTO $dbBoxSchema$.labels (lang, key, label) VALUES ('en', 'table.filter.not', 'Not');
INSERT INTO $dbBoxSchema$.labels (lang, key, label) VALUES ('en', 'table.filter.notin', 'Not in');
INSERT INTO $dbBoxSchema$.labels (lang, key, label) VALUES ('en', 'table.filters', 'Filters');
INSERT INTO $dbBoxSchema$.labels (lang, key, label) VALUES ('en', 'table.filter.without', 'Without');
INSERT INTO $dbBoxSchema$.labels (lang, key, label) VALUES ('en', 'table.revert', 'Revert');
INSERT INTO $dbBoxSchema$.labels (lang, key, label) VALUES ('en', 'table.xls', 'Download XLS');
INSERT INTO $dbBoxSchema$.labels (lang, key, label) VALUES ('en', 'form.print', null);
INSERT INTO $dbBoxSchema$.labels (lang, key, label) VALUES ('en', 'form.drop', null);
INSERT INTO $dbBoxSchema$.labels (lang, key, label) VALUES ('en', 'ui.map.addLine', null);
INSERT INTO $dbBoxSchema$.labels (lang, key, label) VALUES ('en', 'ui.map.addPoint', null);
INSERT INTO $dbBoxSchema$.labels (lang, key, label) VALUES ('en', 'ui.map.addPolygon', null);
INSERT INTO $dbBoxSchema$.labels (lang, key, label) VALUES ('en', 'ui.map.goTo', null);
INSERT INTO $dbBoxSchema$.labels (lang, key, label) VALUES ('en', 'ui.map.panZoom', null);
INSERT INTO $dbBoxSchema$.labels (lang, key, label) VALUES ('en', 'ui.map.move', null);
INSERT INTO $dbBoxSchema$.labels (lang, key, label) VALUES ('en', 'ui.map.delete', null);
INSERT INTO $dbBoxSchema$.labels (lang, key, label) VALUES ('en', 'ui.map.edit', null);
INSERT INTO $dbBoxSchema$.labels (lang, key, label) VALUES ('en', 'form.insert.mail.mismatch', null);
INSERT INTO $dbBoxSchema$.labels (lang, key, label) VALUES ('en', 'ui.map.insertPointGPS', null);
INSERT INTO $dbBoxSchema$.labels (lang, key, label) VALUES ('en', 'user.form.save', null);
INSERT INTO $dbBoxSchema$.labels (lang, key, label) VALUES ('en', 'ui.map.goToGPS', null);
INSERT INTO $dbBoxSchema$.labels (lang, key, label) VALUES ('en', 'ui.map.insertPoint', null);
INSERT INTO $dbBoxSchema$.labels (lang, key, label) VALUES ('en', 'ui.map.drawOnMap', null);
INSERT INTO $dbBoxSchema$.labels (lang, key, label) VALUES ('en', 'ui.map.addPolygonHole', null);
INSERT INTO $dbBoxSchema$.labels (lang, key, label) VALUES ('en', 'ui.map.drawOrEnter', null);
INSERT INTO $dbBoxSchema$.labels (lang, key, label) VALUES ('en', 'ui.map.addPointGPS', null);
INSERT INTO $dbBoxSchema$.labels (lang, key, label) VALUES ('en', 'form.back', null);
INSERT INTO $dbBoxSchema$.labels (lang, key, label) VALUES ('en', 'validation.suspiction_no_result', null);
INSERT INTO $dbBoxSchema$.labels (lang, key, label) VALUES ('en', 'validation.any_result', null);
INSERT INTO $dbBoxSchema$.labels (lang, key, label) VALUES ('en', 'validation.closed_case', null);
INSERT INTO $dbBoxSchema$.labels (lang, key, label) VALUES ('en', 'form.trueLabel', null);
INSERT INTO $dbBoxSchema$.labels (lang, key, label) VALUES ('en', 'form.falseLabel', null);
INSERT INTO $dbBoxSchema$.labels (lang, key, label) VALUES ('en', 'table.showMore', null);
INSERT INTO $dbBoxSchema$.labels (lang, key, label) VALUES ('en', 'table.showLess', null);
INSERT INTO $dbBoxSchema$.labels (lang, key, label) VALUES ('en', 'entity.back', null);
INSERT INTO $dbBoxSchema$.labels (lang, key, label) VALUES ('en', 'entity.table_back', null);
INSERT INTO $dbBoxSchema$.labels (lang, key, label) VALUES ('en', 'popup.remove', null);
INSERT INTO $dbBoxSchema$.labels (lang, key, label) VALUES ('en', 'boolean.yes', null);
INSERT INTO $dbBoxSchema$.labels (lang, key, label) VALUES ('en', 'boolean.no', null);
INSERT INTO $dbBoxSchema$.labels (lang, key, label) VALUES ('en', 'table.shp', null);


INSERT INTO $dbBoxSchema$.ui (key, value, access_level_id) VALUES ('index.page', 'home', 1);
INSERT INTO $dbBoxSchema$.form (name, entity, description, layout, "tabularFields", query, exportfields, guest_user, edit_key_field, show_navigation, props, form_uuid, params) VALUES ('home', 'box_static_page', null, '{"blocks":[{"title":null,"width":6,"distribute":null,"fields":["intro"],"tab":null,"tabGroup":null}]}', null, null, null, null, null, false, null, 'f680de5e-25d8-4a11-9d81-a76a9e6dac9f', '{"hideHeader": true}');
INSERT INTO $dbBoxSchema$.field (type, name, widget, "lookupEntity", "lookupValueField", "lookupQuery", "masterFields", "childFields", "childQuery", "default", "conditionFieldId", "conditionValues", params, read_only, required, field_uuid, form_uuid, child_form_uuid, function, min, max) VALUES ('static', 'intro', 'html', null, null, null, null, null, null, null, null, null, null, false, null, '8e0646ea-536b-4a72-acf6-d8755a70c35e', 'f680de5e-25d8-4a11-9d81-a76a9e6dac9f', null, null, null, null);
INSERT INTO $dbBoxSchema$.field_i18n (lang, label, placeholder, tooltip, hint, "lookupTextField", uuid, field_uuid) VALUES ('en', e'<h1>Welcome to Box Framework</h1>
<p>
To add forms and pages use the <a href="/admin">Admin section</a>
</p>
<p>More information on <a href="https://www.boxframework.com">www.boxframework.com</a>
<br><br>
<ul>
    <li><a href="/entities">Tables/Views</a></li>
    <li><a href="/forms">Forms</a></li>
</ul>', null, null, null, null, 'b3008e10-470b-427f-b98f-e465041c3ee8', '8e0646ea-536b-4a72-acf6-d8755a70c35e');

update $dbBoxSchema$.conf set value='$mainColor$' where key='color.main';
update $dbBoxSchema$.conf set value='#fff' where key='color.link';
update $dbBoxSchema$.ui set value='$title$' where key='title' or key='footerCopyright';

insert into $dbBoxSchema$.labels (lang, key, label) VALUES ('en','table.shp','Download SHP');
insert into $dbBoxSchema$.labels (lang, key, label) VALUES ('en','form.print','Print') on conflict (lang,key) do update set label='Print';

INSERT INTO $dbBoxSchema$.conf (key, value) VALUES ('map.options', e'{
    "features": {
        "point": true,
        "multiPoint": true,
        "line": true,
        "multiLine": true,
        "polygon": true,
        "multiPolygon": true,
        "geometryCollection": true
    },
    "projections": [
        {
            "name": "EPSG:4326",
            "proj": "+proj=longlat +datum=WGS84 +no_defs +type=crs",
            "unit": "°",
            "extent": [
                -180.0, -90.0, 180.0, 90.0
            ]
        }
    ],
    "defaultProjection": "EPSG:4326"
}');

